# CQRS Command/Event processors

CommandProcessor and EventProcessor subscribe to the command/event topics and dispatch incoming messages to the registered handlers inside the Router (with its middleware/retries). They are the consuming side that the buses publish to. Keywords: watermill cqrs command processor event processor subscribe dispatch handler router consume processing group.

## source: components/cqrs/command_processor.go (from watermill, MIT)

```go
package cqrs

import (
	stdErrors "errors"
	"fmt"

	"github.com/pkg/errors"

	"github.com/ThreeDotsLabs/watermill"
	"github.com/ThreeDotsLabs/watermill/message"
)

type CommandProcessorConfig struct {
	// GenerateSubscribeTopic is used to generate topic for subscribing command.
	GenerateSubscribeTopic CommandProcessorGenerateSubscribeTopicFn

	// SubscriberConstructor is used to create subscriber for CommandHandler.
	SubscriberConstructor CommandProcessorSubscriberConstructorFn

	// OnHandle is called before handling command.
	// OnHandle works in a similar way to middlewares: you can inject additional logic before and after handling a command.
	//
	// Because of that, you need to explicitly call params.Handler.Handle() to handle the command.
	//  func(params CommandProcessorOnHandleParams) (err error) {
	//      // logic before handle
	//      //  (...)
	//
	//      err := params.Handler.Handle(params.Message.Context(), params.Command)
	//
	//      // logic after handle
	//      //  (...)
	//
	//      return err
	//  }
	//
	// This option is not required.
	OnHandle CommandProcessorOnHandleFn

	// Marshaler is used to marshal and unmarshal commands.
	// It is required.
	Marshaler CommandEventMarshaler

	// Logger instance used to log.
	// If not provided, watermill.NopLogger is used.
	Logger watermill.LoggerAdapter

	// If true, CommandProcessor will ack messages even if CommandHandler returns an error.
	// If RequestReplyBackend is not null and sending reply fails, the message will be nack-ed anyway.
	//
	// Warning: It's not recommended to use this option when you are using requestreply component
	// (requestreply.NewCommandHandler or requestreply.NewCommandHandlerWithResult), as it may ack the
	// command when sending reply failed.
	//
	// When you are using requestreply, you should use requestreply.PubSubBackendConfig.AckCommandErrors.
	AckCommandHandlingErrors bool

	// disableRouterAutoAddHandlers is used to keep backwards compatibility.
	// it is set when CommandProcessor is created by NewCommandProcessor.
	// Deprecated: please migrate to NewCommandProcessorWithConfig.
	disableRouterAutoAddHandlers bool
}

func (c *CommandProcessorConfig) setDefaults() {
	if c.Logger == nil {
		c.Logger = watermill.NopLogger{}
	}
}

func (c CommandProcessorConfig) Validate() error {
	var err error

	if c.Marshaler == nil {
		err = stdErrors.Join(err, errors.New("missing Marshaler"))
	}

	if c.GenerateSubscribeTopic == nil {
		err = stdErrors.Join(err, errors.New("missing GenerateSubscribeTopic"))
	}
	if c.SubscriberConstructor == nil {
		err = stdErrors.Join(err, errors.New("missing SubscriberConstructor"))
	}

	return err
}

type CommandProcessorGenerateSubscribeTopicFn func(CommandProcessorGenerateSubscribeTopicParams) (string, error)

type CommandProcessorGenerateSubscribeTopicParams struct {
	CommandName    string
	CommandHandler CommandHandler
}

// CommandProcessorSubscriberConstructorFn creates subscriber for CommandHandler.
// It allows you to create a separate customized Subscriber for every command handler.
type CommandProcessorSubscriberConstructorFn func(CommandProcessorSubscriberConstructorParams) (message.Subscriber, error)

type CommandProcessorSubscriberConstructorParams struct {
	CommandName string
	HandlerName string
	Handler     CommandHandler
}

type CommandProcessorOnHandleFn func(params CommandProcessorOnHandleParams) error

type CommandProcessorOnHandleParams struct {
	Handler CommandHandler

	CommandName string
	Command     any

	// Message is never nil and can be modified.
	Message *message.Message
}

// CommandProcessor determines which CommandHandler should handle the command received from the command bus.
type CommandProcessor struct {
	router *message.Router

	handlers []CommandHandler

	config CommandProcessorConfig
}

func NewCommandProcessorWithConfig(router *message.Router, config CommandProcessorConfig) (*CommandProcessor, error) {
	config.setDefaults()

	if err := config.Validate(); err != nil {
		return nil, err
	}

	if router == nil && !config.disableRouterAutoAddHandlers {
		return nil, errors.New("missing router")
	}

	return &CommandProcessor{
		router: router,
		config: config,
	}, nil
}

// NewCommandProcessor creates a new CommandProcessor.
// Deprecated. Use NewCommandProcessorWithConfig instead.
func NewCommandProcessor(
	handlers []CommandHandler,
	generateTopic func(commandName string) string,
	subscriberConstructor CommandsSubscriberConstructor,
	marshaler CommandEventMarshaler,
	logger watermill.LoggerAdapter,
) (*CommandProcessor, error) {
	if len(handlers) == 0 {
		return nil, errors.New("missing handlers")
	}
	if generateTopic == nil {
		return nil, errors.New("missing generateTopic")
	}
	if subscriberConstructor == nil {
		return nil, errors.New("missing subscriberConstructor")
	}

	cp, err := NewCommandProcessorWithConfig(
		nil,
		CommandProcessorConfig{
			GenerateSubscribeTopic: func(params CommandProcessorGenerateSubscribeTopicParams) (string, error) {
				return generateTopic(params.CommandName), nil
			},
			SubscriberConstructor: func(params CommandProcessorSubscriberConstructorParams) (message.Subscriber, error) {
				return subscriberConstructor(params.HandlerName)
			},
			Marshaler:                    marshaler,
			Logger:                       logger,
			disableRouterAutoAddHandlers: true,
		},
	)
	if err != nil {
		return nil, err
	}

	for _, handler := range handlers {
		if err := cp.AddHandlers(handler); err != nil {
			return nil, err
		}
	}

	return cp, nil
}

// CommandsSubscriberConstructor creates subscriber for CommandHandler.
// It allows you to create a separate customized Subscriber for every command handler.
//
// Deprecated: please use CommandProcessorSubscriberConstructorFn instead.
type CommandsSubscriberConstructor func(handlerName string) (message.Subscriber, error)

// AddHandlers adds a new CommandHandler to the CommandProcessor and adds it to the router.
func (p *CommandProcessor) AddHandlers(handlers ...CommandHandler) error {
	handledCommands := map[string]struct{}{}
	for _, handler := range handlers {
		commandName := p.config.Marshaler.Name(handler.NewCommand())
		if _, ok := handledCommands[commandName]; ok {
			return DuplicateCommandHandlerError{commandName}
		}

		handledCommands[commandName] = struct{}{}
	}

	if p.config.disableRouterAutoAddHandlers {
		p.handlers = append(p.handlers, handlers...)
		return nil
	}

	for _, handler := range handlers {
		if _, err := p.addHandlerToRouter(p.router, handler); err != nil {
			return err
		}

		p.handlers = append(p.handlers, handler)
	}

	return nil
}

// AddHandler adds a new CommandHandler to the CommandProcessor and adds it to the router.
func (p *CommandProcessor) AddHandler(handler CommandHandler) (*message.Handler, error) {
	if p.config.disableRouterAutoAddHandlers {
		p.handlers = append(p.handlers, handler)

		return nil, nil
	}

	h, err := p.addHandlerToRouter(p.router, handler)
	if err != nil {
		return nil, err
	}

	p.handlers = append(p.handlers, handler)

	return h, nil
}

// DuplicateCommandHandlerError occurs when a handler with the same name already exists.
type DuplicateCommandHandlerError struct {
	CommandName string
}

func (d DuplicateCommandHandlerError) Error() string {
	return fmt.Sprintf("command handler for command %s already exists", d.CommandName)
}

// AddHandlersToRouter adds the CommandProcessor's handlers to the given router.
// It should be called only once per CommandProcessor instance.
//
// It is required to call AddHandlersToRouter only if command processor is created with NewCommandProcessor (disableRouterAutoAddHandlers is set to true).
// Deprecated: please migrate to command processor created by NewCommandProcessorWithConfig.
func (p CommandProcessor) AddHandlersToRouter(r *message.Router) error {
	if !p.config.disableRouterAutoAddHandlers {
		return errors.New("AddHandlersToRouter should be called only when using deprecated NewCommandProcessor")
	}

	for i := range p.Handlers() {
		handler := p.handlers[i]

		if _, err := p.addHandlerToRouter(r, handler); err != nil {
			return err
		}
	}

	return nil
}

func (p CommandProcessor) addHandlerToRouter(r *message.Router, handler CommandHandler) (*message.Handler, error) {
	handlerName := handler.HandlerName()
	commandName := p.config.Marshaler.Name(handler.NewCommand())

	topicName, err := p.config.GenerateSubscribeTopic(CommandProcessorGenerateSubscribeTopicParams{
		CommandName:    commandName,
		CommandHandler: handler,
	})
	if err != nil {
		return nil, errors.Wrapf(err, "cannot generate topic for command handler %s", handlerName)
	}

	logger := p.config.Logger.With(watermill.LogFields{
		"command_handler_name": handlerName,
		"topic":                topicName,
	})

	handlerFunc, err := p.routerHandlerFunc(handler, logger)
	if err != nil {
		return nil, err
	}

	logger.Debug("Adding CQRS command handler to router", nil)

	subscriber, err := p.config.SubscriberConstructor(CommandProcessorSubscriberConstructorParams{
		CommandName: commandName,
		HandlerName: handlerName,
		Handler:     handler,
	})
	if err != nil {
		return nil, errors.Wrap(err, "cannot create subscriber for command processor")
	}

	return r.AddConsumerHandler(
		handlerName,
		topicName,
		subscriber,
		handlerFunc,
	), nil
}

// Handlers returns the CommandProcessor's handlers.
func (p CommandProcessor) Handlers() []CommandHandler {
	return p.handlers
}

func (p CommandProcessor) routerHandlerFunc(handler CommandHandler, logger watermill.LoggerAdapter) (message.NoPublishHandlerFunc, error) {
	cmd := handler.NewCommand()
	cmdName := p.config.Marshaler.Name(cmd)

	if err := p.validateCommand(cmd); err != nil {
		return nil, err
	}

	return func(msg *message.Message) error {
		cmd := handler.NewCommand()
		messageCmdName := p.config.Marshaler.NameFromMessage(msg)

		if messageCmdName != cmdName {
			logger.Trace("Received different command type than expected, ignoring", watermill.LogFields{
				"message_uuid":          msg.UUID,
				"expected_command_type": cmdName,
				"received_command_type": messageCmdName,
			})
			return nil
		}

		logger.Debug("Handling command", watermill.LogFields{
			"message_uuid":          msg.UUID,
			"received_command_type": messageCmdName,
		})

		ctx := CtxWithOriginalMessage(msg.Context(), msg)
		msg.SetContext(ctx)

		if err := p.config.Marshaler.Unmarshal(msg, cmd); err != nil {
			return err
		}

		handle := func(params CommandProcessorOnHandleParams) (err error) {
			return params.Handler.Handle(ctx, params.Command)
		}
		if p.config.OnHandle != nil {
			handle = p.config.OnHandle
		}

		err := handle(CommandProcessorOnHandleParams{
			Handler:     handler,
			CommandName: messageCmdName,
			Command:     cmd,
			Message:     msg,
		})

		if p.config.AckCommandHandlingErrors && err != nil {
			logger.Error("Error when handling command, acking (AckCommandHandlingErrors is enabled)", err, nil)
			return nil
		}
		if err != nil {
			logger.Debug("Error when handling command, nacking", watermill.LogFields{"err": err})
			return err
		}

		return nil
	}, nil
}

func (p CommandProcessor) validateCommand(cmd interface{}) error {
	// CommandHandler's NewCommand must return a pointer, because it is used to unmarshal
	if err := isPointer(cmd); err != nil {
		return errors.Wrap(err, "command must be a non-nil pointer")
	}

	return nil
}

```

## source: components/cqrs/event_processor.go (from watermill, MIT)

```go
package cqrs

import (
	stdErrors "errors"
	"fmt"

	"github.com/pkg/errors"

	"github.com/ThreeDotsLabs/watermill"
	"github.com/ThreeDotsLabs/watermill/message"
)

type EventProcessorConfig struct {
	// GenerateSubscribeTopic is used to generate topic for subscribing to events.
	// If event processor is using handler groups, GenerateSubscribeTopic is used instead.
	GenerateSubscribeTopic EventProcessorGenerateSubscribeTopicFn

	// SubscriberConstructor is used to create subscriber for EventHandler.
	//
	// This function is called for every EventHandler instance.
	// If you want to re-use one subscriber for multiple handlers, use GroupEventProcessor instead.
	SubscriberConstructor EventProcessorSubscriberConstructorFn

	// OnHandle is called before handling event.
	// OnHandle works in a similar way to middlewares: you can inject additional logic before and after handling an event.
	//
	// Because of that, you need to explicitly call params.Handler.Handle() to handle the event.
	//
	//  func(params EventProcessorOnHandleParams) (err error) {
	//      // logic before handle
	//      //  (...)
	//
	//      err := params.Handler.Handle(params.Message.Context(), params.Event)
	//
	//      // logic after handle
	//      //  (...)
	//
	//      return err
	//  }
	//
	// This option is not required.
	OnHandle EventProcessorOnHandleFn

	// AckOnUnknownEvent is used to decide if message should be acked if event has no handler defined.
	AckOnUnknownEvent bool

	// Marshaler is used to marshal and unmarshal events.
	// It is required.
	Marshaler CommandEventMarshaler

	// Logger instance used to log.
	// If not provided, watermill.NopLogger is used.
	Logger watermill.LoggerAdapter

	// disableRouterAutoAddHandlers is used to keep backwards compatibility.
	// it is set when EventProcessor is created by NewEventProcessor.
	// Deprecated: please migrate to NewEventProcessorWithConfig.
	disableRouterAutoAddHandlers bool
}

func (c *EventProcessorConfig) setDefaults() {
	if c.Logger == nil {
		c.Logger = watermill.NopLogger{}
	}
}

func (c EventProcessorConfig) Validate() error {
	var err error

	if c.Marshaler == nil {
		err = stdErrors.Join(err, errors.New("missing Marshaler"))
	}

	if c.GenerateSubscribeTopic == nil {
		err = stdErrors.Join(err, errors.New("missing GenerateHandlerTopic"))
	}
	if c.SubscriberConstructor == nil {
		err = stdErrors.Join(err, errors.New("missing SubscriberConstructor"))
	}

	return err
}

type EventProcessorGenerateSubscribeTopicFn func(EventProcessorGenerateSubscribeTopicParams) (string, error)

type EventProcessorGenerateSubscribeTopicParams struct {
	EventName    string
	EventHandler EventHandler
}

type EventProcessorSubscriberConstructorFn func(EventProcessorSubscriberConstructorParams) (message.Subscriber, error)

type EventProcessorSubscriberConstructorParams struct {
	EventName    string
	HandlerName  string
	EventHandler EventHandler
}

type EventProcessorOnHandleFn func(params EventProcessorOnHandleParams) error

type EventProcessorOnHandleParams struct {
	Handler EventHandler

	Event     any
	EventName string

	// Message is never nil and can be modified.
	Message *message.Message
}

// EventProcessor determines which EventHandler should handle event received from event bus.
type EventProcessor struct {
	router   *message.Router
	handlers []EventHandler
	config   EventProcessorConfig
}

// NewEventProcessorWithConfig creates a new EventProcessor.
func NewEventProcessorWithConfig(router *message.Router, config EventProcessorConfig) (*EventProcessor, error) {
	config.setDefaults()

	if err := config.Validate(); err != nil {
		return nil, errors.Wrap(err, "invalid config EventProcessor")
	}
	if router == nil && !config.disableRouterAutoAddHandlers {
		return nil, errors.New("missing router")
	}

	return &EventProcessor{
		router: router,
		config: config,
	}, nil
}

// NewEventProcessor creates a new EventProcessor.
// Deprecated. Use NewEventProcessorWithConfig instead.
func NewEventProcessor(
	individualHandlers []EventHandler,
	generateTopic func(eventName string) string,
	subscriberConstructor EventsSubscriberConstructor,
	marshaler CommandEventMarshaler,
	logger watermill.LoggerAdapter,
) (*EventProcessor, error) {
	if len(individualHandlers) == 0 {
		return nil, errors.New("missing handlers")
	}
	if generateTopic == nil {
		return nil, errors.New("nil generateTopic")
	}
	if subscriberConstructor == nil {
		return nil, errors.New("missing subscriberConstructor")
	}
	if marshaler == nil {
		return nil, errors.New("missing marshaler")
	}
	if logger == nil {
		logger = watermill.NopLogger{}
	}

	eventProcessorConfig := EventProcessorConfig{
		AckOnUnknownEvent: true, // this is the previous default behaviour - keeping backwards compatibility
		GenerateSubscribeTopic: func(params EventProcessorGenerateSubscribeTopicParams) (string, error) {
			return generateTopic(params.EventName), nil
		},
		SubscriberConstructor: func(params EventProcessorSubscriberConstructorParams) (message.Subscriber, error) {
			return subscriberConstructor(params.HandlerName)
		},
		Marshaler:                    marshaler,
		Logger:                       logger,
		disableRouterAutoAddHandlers: true,
	}
	eventProcessorConfig.setDefaults()

	ep, err := NewEventProcessorWithConfig(nil, eventProcessorConfig)
	if err != nil {
		return nil, err
	}

	for _, handler := range individualHandlers {
		if err := ep.AddHandlers(handler); err != nil {
			return nil, err
		}
	}

	return ep, nil
}

// EventsSubscriberConstructor creates a subscriber for EventHandler.
// It allows you to create separated customized Subscriber for every command handler.
//
// When handler groups are used, handler group is passed as handlerName.
// Deprecated: please use EventProcessorSubscriberConstructorFn instead.
type EventsSubscriberConstructor func(handlerName string) (message.Subscriber, error)

// AddHandlers adds a new EventHandler to the EventProcessor and adds it to the router.
func (p *EventProcessor) AddHandlers(handlers ...EventHandler) error {
	if p.config.disableRouterAutoAddHandlers {
		p.handlers = append(p.handlers, handlers...)
		return nil
	}

	for _, handler := range handlers {
		if _, err := p.addHandlerToRouter(p.router, handler); err != nil {
			return err
		}

		p.handlers = append(p.handlers, handler)
	}

	return nil
}

// AddHandler adds a new EventHandler to the EventProcessor and adds it to the router.
func (p *EventProcessor) AddHandler(handler EventHandler) (*message.Handler, error) {
	if p.config.disableRouterAutoAddHandlers {
		p.handlers = append(p.handlers, handler)

		return nil, nil
	}

	h, err := p.addHandlerToRouter(p.router, handler)
	if err != nil {
		return nil, err
	}

	p.handlers = append(p.handlers, handler)

	return h, nil
}

// AddHandlersToRouter adds the EventProcessor's handlers to the given router.
// It should be called only once per EventProcessor instance.
//
// It is required to call AddHandlersToRouter only if command processor is created with NewEventProcessor (disableRouterAutoAddHandlers is set to true).
// Deprecated: please migrate to event processor created by NewEventProcessorWithConfig.
func (p EventProcessor) AddHandlersToRouter(r *message.Router) error {
	if !p.config.disableRouterAutoAddHandlers {
		return errors.New("AddHandlersToRouter should be called only when using deprecated NewEventProcessor")
	}

	for i := range p.handlers {
		handler := p.handlers[i]

		if _, err := p.addHandlerToRouter(r, handler); err != nil {
			return err
		}
	}

	return nil
}

func (p EventProcessor) addHandlerToRouter(r *message.Router, handler EventHandler) (*message.Handler, error) {
	if err := validateEvent(handler.NewEvent()); err != nil {
		return nil, errors.Wrapf(err, "invalid event for handler %s", handler.HandlerName())
	}

	handlerName := handler.HandlerName()
	eventName := p.config.Marshaler.Name(handler.NewEvent())

	topicName, err := p.config.GenerateSubscribeTopic(EventProcessorGenerateSubscribeTopicParams{
		EventName:    eventName,
		EventHandler: handler,
	})
	if err != nil {
		return nil, errors.Wrapf(err, "cannot generate topic name for handler %s", handlerName)
	}

	logger := p.config.Logger.With(watermill.LogFields{
		"event_handler_name": handlerName,
		"topic":              topicName,
	})

	handlerFunc, err := p.routerHandlerFunc(handler, logger)
	if err != nil {
		return nil, err
	}

	if p.config.SubscriberConstructor == nil {
		return nil, errors.New("missing SubscriberConstructor config option")
	}

	subscriber, err := p.config.SubscriberConstructor(EventProcessorSubscriberConstructorParams{
		EventName:    eventName,
		HandlerName:  handlerName,
		EventHandler: handler,
	})
	if err != nil {
		return nil, errors.Wrap(err, "cannot create subscriber for event processor")
	}

	return addHandlerToRouter(p.config.Logger, r, handlerName, topicName, handlerFunc, subscriber), nil
}

func (p EventProcessor) Handlers() []EventHandler {
	return p.handlers
}

func addHandlerToRouter(logger watermill.LoggerAdapter, r *message.Router, handlerName string, topicName string, handlerFunc message.NoPublishHandlerFunc, subscriber message.Subscriber) *message.Handler {
	logger = logger.With(watermill.LogFields{
		"event_handler_name": handlerName,
		"topic":              topicName,
	})

	logger.Debug("Adding CQRS event handler to router", nil)

	return r.AddConsumerHandler(
		handlerName,
		topicName,
		subscriber,
		handlerFunc,
	)
}

func (p EventProcessor) routerHandlerFunc(handler EventHandler, logger watermill.LoggerAdapter) (message.NoPublishHandlerFunc, error) {
	initEvent := handler.NewEvent()
	expectedEventName := p.config.Marshaler.Name(initEvent)

	if err := validateEvent(initEvent); err != nil {
		return nil, err
	}

	return func(msg *message.Message) error {
		event := handler.NewEvent()
		messageEventName := p.config.Marshaler.NameFromMessage(msg)

		if messageEventName != expectedEventName {
			if !p.config.AckOnUnknownEvent {
				return fmt.Errorf("received unexpected event type %s, expected %s", messageEventName, expectedEventName)
			} else {
				logger.Trace("Received different event type than expected, ignoring", watermill.LogFields{
					"message_uuid":        msg.UUID,
					"expected_event_type": expectedEventName,
					"received_event_type": messageEventName,
				})
				return nil
			}
		}

		logger.Debug("Handling event", watermill.LogFields{
			"message_uuid":        msg.UUID,
			"received_event_type": messageEventName,
		})

		ctx := CtxWithOriginalMessage(msg.Context(), msg)
		msg.SetContext(ctx)

		if err := p.config.Marshaler.Unmarshal(msg, event); err != nil {
			return err
		}

		handle := func(params EventProcessorOnHandleParams) error {
			return params.Handler.Handle(ctx, params.Event)
		}
		if p.config.OnHandle != nil {
			handle = p.config.OnHandle
		}

		err := handle(EventProcessorOnHandleParams{
			Handler:   handler,
			Event:     event,
			EventName: messageEventName,
			Message:   msg,
		})
		if err != nil {
			logger.Debug("Error when handling event", watermill.LogFields{"err": err})
			return err
		}

		return nil
	}, nil
}

func validateEvent(event interface{}) error {
	// EventHandler's NewEvent must return a pointer, because it is used to unmarshal
	if err := isPointer(event); err != nil {
		return errors.Wrap(err, "command must be a non-nil pointer")
	}

	return nil
}

```

