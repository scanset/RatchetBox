# CQRS CommandBus + CommandHandler

Send a command to its single handler: CommandBus.Send(ctx, cmd) marshals and publishes the command; a CommandHandler[Cmd] handles exactly one command type. One command -> one handler. Keywords: watermill cqrs command bus send handler command handler dispatch single handler write side.

## source: components/cqrs/command_bus.go (from watermill, MIT)

```go
package cqrs

import (
	"context"
	stdErrors "errors"

	"github.com/ThreeDotsLabs/watermill"
	"github.com/pkg/errors"

	"github.com/ThreeDotsLabs/watermill/message"
)

type CommandBusConfig struct {
	// GeneratePublishTopic is used to generate topic for publishing command.
	GeneratePublishTopic CommandBusGeneratePublishTopicFn

	// OnSend is called before publishing the command.
	// The *message.Message can be modified.
	//
	// This option is not required.
	OnSend CommandBusOnSendFn

	// Marshaler is used to marshal and unmarshal commands.
	// It is required.
	Marshaler CommandEventMarshaler

	// Logger instance used to log.
	// If not provided, watermill.NopLogger is used.
	Logger watermill.LoggerAdapter
}

func (c *CommandBusConfig) setDefaults() {
	if c.Logger == nil {
		c.Logger = watermill.NopLogger{}
	}
}

func (c CommandBusConfig) Validate() error {
	var err error

	if c.Marshaler == nil {
		err = stdErrors.Join(err, errors.New("missing Marshaler"))
	}

	if c.GeneratePublishTopic == nil {
		err = stdErrors.Join(err, errors.New("missing GeneratePublishTopic"))
	}

	return err
}

type CommandBusGeneratePublishTopicFn func(CommandBusGeneratePublishTopicParams) (string, error)

type CommandBusGeneratePublishTopicParams struct {
	CommandName string
	Command     any
}

type CommandBusOnSendFn func(params CommandBusOnSendParams) error

type CommandBusOnSendParams struct {
	CommandName string
	Command     any

	// Message is never nil and can be modified.
	Message *message.Message
}

// CommandBus transports commands to command handlers.
type CommandBus struct {
	publisher message.Publisher

	config CommandBusConfig
}

// NewCommandBusWithConfig creates a new CommandBus.
func NewCommandBusWithConfig(publisher message.Publisher, config CommandBusConfig) (*CommandBus, error) {
	if publisher == nil {
		return nil, errors.New("missing publisher")
	}

	config.setDefaults()
	if err := config.Validate(); err != nil {
		return nil, errors.Wrap(err, "invalid config")
	}

	return &CommandBus{publisher, config}, nil
}

// NewCommandBus creates a new CommandBus.
// Deprecated: use NewCommandBusWithConfig instead.
func NewCommandBus(
	publisher message.Publisher,
	generateTopic func(commandName string) string,
	marshaler CommandEventMarshaler,
) (*CommandBus, error) {
	if publisher == nil {
		return nil, errors.New("missing publisher")
	}
	if generateTopic == nil {
		return nil, errors.New("missing generateTopic")
	}
	if marshaler == nil {
		return nil, errors.New("missing marshaler")
	}

	return &CommandBus{publisher, CommandBusConfig{
		GeneratePublishTopic: func(params CommandBusGeneratePublishTopicParams) (string, error) {
			return generateTopic(params.CommandName), nil
		},
		Marshaler: marshaler,
	}}, nil
}

// Send sends command to the command bus.
func (c CommandBus) Send(ctx context.Context, cmd any) error {
	return c.SendWithModifiedMessage(ctx, cmd, nil)
}

func (c CommandBus) SendWithModifiedMessage(ctx context.Context, cmd any, modify func(*message.Message) error) error {
	msg, topicName, err := c.newMessage(ctx, cmd)
	if err != nil {
		return err
	}

	if modify != nil {
		if err := modify(msg); err != nil {
			return errors.Wrap(err, "cannot modify message")
		}
	}

	if err := c.publisher.Publish(topicName, msg); err != nil {
		return err
	}

	return nil
}

func (c CommandBus) newMessage(ctx context.Context, command any) (*message.Message, string, error) {
	msg, err := c.config.Marshaler.Marshal(command)
	if err != nil {
		return nil, "", err
	}

	commandName := c.config.Marshaler.Name(command)
	topicName, err := c.config.GeneratePublishTopic(CommandBusGeneratePublishTopicParams{
		CommandName: commandName,
		Command:     command,
	})
	if err != nil {
		return nil, "", errors.Wrap(err, "cannot generate topic name")
	}

	msg.SetContext(ctx)

	if c.config.OnSend != nil {
		err := c.config.OnSend(CommandBusOnSendParams{
			CommandName: commandName,
			Command:     command,
			Message:     msg,
		})
		if err != nil {
			return nil, "", errors.Wrap(err, "cannot execute OnSend")
		}
	}

	return msg, topicName, nil
}

```

## source: components/cqrs/command_handler.go (from watermill, MIT)

```go
package cqrs

import (
	"context"
)

// CommandHandler receives a command defined by NewCommand and handles it with the Handle method.
// If using DDD, CommandHandler may modify and persist the aggregate.
//
// In contrast to EventHandler, every Command must have only one CommandHandler.
//
// One instance of CommandHandler is used during handling messages.
// When multiple commands are delivered at the same time, Handle method can be executed multiple times at the same time.
// Because of that, Handle method needs to be thread safe!
type CommandHandler interface {
	// HandlerName is the name used in message.Router while creating handler.
	//
	// It will be also passed to CommandsSubscriberConstructor.
	// May be useful, for example, to create a consumer group per each handler.
	//
	// WARNING: If HandlerName was changed and is used for generating consumer groups,
	// it may result with **reconsuming all messages**!
	HandlerName() string

	NewCommand() any

	Handle(ctx context.Context, cmd any) error
}

type genericCommandHandler[Command any] struct {
	handleFunc  func(ctx context.Context, cmd *Command) error
	handlerName string
}

// NewCommandHandler creates a new CommandHandler implementation based on provided function
// and command type inferred from function argument.
func NewCommandHandler[Command any](
	handlerName string,
	handleFunc func(ctx context.Context, cmd *Command) error,
) CommandHandler {
	return &genericCommandHandler[Command]{
		handleFunc:  handleFunc,
		handlerName: handlerName,
	}
}

func (c genericCommandHandler[Command]) HandlerName() string {
	return c.handlerName
}

func (c genericCommandHandler[Command]) NewCommand() any {
	tVar := new(Command)
	return tVar
}

func (c genericCommandHandler[Command]) Handle(ctx context.Context, cmd any) error {
	command := cmd.(*Command)
	return c.handleFunc(ctx, command)
}

```

