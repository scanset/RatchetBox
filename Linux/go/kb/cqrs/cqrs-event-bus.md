# CQRS EventBus + EventHandler

Publish an event to all interested handlers: EventBus.Publish(ctx, event) marshals and publishes; EventHandler[Event] subscribes. One event -> many handlers (fan-out / pub-sub). Keywords: watermill cqrs event bus publish handler event handler fan-out subscribe notify projections read side.

## source: components/cqrs/event_bus.go (from watermill, MIT)

```go
package cqrs

import (
	"context"
	stdErrors "errors"

	"github.com/ThreeDotsLabs/watermill"
	"github.com/ThreeDotsLabs/watermill/message"
	"github.com/pkg/errors"
)

type EventBusConfig struct {
	// GeneratePublishTopic is used to generate topic name for publishing event.
	GeneratePublishTopic GenerateEventPublishTopicFn

	// OnPublish is called before sending the event.
	// The *message.Message can be modified.
	//
	// This option is not required.
	OnPublish OnEventSendFn

	// Marshaler is used to marshal and unmarshal events.
	// It is required.
	Marshaler CommandEventMarshaler

	// Logger instance used to log.
	// If not provided, watermill.NopLogger is used.
	Logger watermill.LoggerAdapter
}

func (c *EventBusConfig) setDefaults() {
	if c.Logger == nil {
		c.Logger = watermill.NopLogger{}
	}
}

func (c EventBusConfig) Validate() error {
	var err error

	if c.Marshaler == nil {
		err = stdErrors.Join(err, errors.New("missing Marshaler"))
	}

	if c.GeneratePublishTopic == nil {
		err = stdErrors.Join(err, errors.New("missing GenerateHandlerTopic"))
	}

	return err
}

type GenerateEventPublishTopicFn func(GenerateEventPublishTopicParams) (string, error)

type GenerateEventPublishTopicParams struct {
	EventName string
	Event     any
}

type OnEventSendFn func(params OnEventSendParams) error

type OnEventSendParams struct {
	EventName string
	Event     any

	// Message is never nil and can be modified.
	Message *message.Message
}

// EventBus transports events to event handlers.
type EventBus struct {
	publisher message.Publisher
	config    EventBusConfig
}

// NewEventBus creates a new CommandBus.
// Deprecated: use NewEventBusWithConfig instead.
func NewEventBus(
	publisher message.Publisher,
	generateTopic func(eventName string) string,
	marshaler CommandEventMarshaler,
) (*EventBus, error) {
	if publisher == nil {
		return nil, errors.New("missing publisher")
	}
	if generateTopic == nil {
		return nil, errors.New("missing generateTopic")
	}
	if marshaler == nil {
		return nil, errors.New("missing marshaler")
	}

	return &EventBus{
		publisher: publisher,
		config: EventBusConfig{
			GeneratePublishTopic: func(params GenerateEventPublishTopicParams) (string, error) {
				return generateTopic(params.EventName), nil
			},
			Marshaler: marshaler,
		},
	}, nil
}

// NewEventBusWithConfig creates a new EventBus.
func NewEventBusWithConfig(publisher message.Publisher, config EventBusConfig) (*EventBus, error) {
	if publisher == nil {
		return nil, errors.New("missing publisher")
	}

	config.setDefaults()
	if err := config.Validate(); err != nil {
		return nil, errors.Wrap(err, "invalid config")
	}

	return &EventBus{publisher, config}, nil
}

// Publish sends event to the event bus.
func (c EventBus) Publish(ctx context.Context, event any) error {
	msg, err := c.config.Marshaler.Marshal(event)
	if err != nil {
		return err
	}

	eventName := c.config.Marshaler.Name(event)
	topicName, err := c.config.GeneratePublishTopic(GenerateEventPublishTopicParams{
		EventName: eventName,
		Event:     event,
	})
	if err != nil {
		return errors.Wrap(err, "cannot generate topic")
	}

	msg.SetContext(ctx)

	if c.config.OnPublish != nil {
		err := c.config.OnPublish(OnEventSendParams{
			EventName: eventName,
			Event:     event,
			Message:   msg,
		})
		if err != nil {
			return errors.Wrap(err, "cannot execute OnPublish")
		}
	}

	return c.publisher.Publish(topicName, msg)
}

```

## source: components/cqrs/event_handler.go (from watermill, MIT)

```go
package cqrs

import (
	"context"
)

// EventHandler receives events defined by NewEvent and handles them with its Handle method.
// If using DDD, CommandHandler may modify and persist the aggregate.
// It can also invoke a process manager, a saga or just build a read model.
//
// In contrast to CommandHandler, every Event can have multiple EventHandlers.
//
// One instance of EventHandler is used during handling messages.
// When multiple events are delivered at the same time, Handle method can be executed multiple times at the same time.
// Because of that, Handle method needs to be thread safe!
type EventHandler interface {
	// HandlerName is the name used in message.Router while creating handler.
	//
	// It will be also passed to EventsSubscriberConstructor.
	// May be useful, for example, to create a consumer group per each handler.
	//
	// WARNING: If HandlerName was changed and is used for generating consumer groups,
	// it may result with **reconsuming all messages** !!!
	HandlerName() string

	NewEvent() any

	Handle(ctx context.Context, event any) error
}

type genericEventHandler[T any] struct {
	handleFunc  func(ctx context.Context, event *T) error
	handlerName string
}

// NewEventHandler creates a new EventHandler implementation based on provided function
// and event type inferred from function argument.
func NewEventHandler[T any](
	handlerName string,
	handleFunc func(ctx context.Context, event *T) error,
) EventHandler {
	return &genericEventHandler[T]{
		handleFunc:  handleFunc,
		handlerName: handlerName,
	}
}

func (c genericEventHandler[T]) HandlerName() string {
	return c.handlerName
}

func (c genericEventHandler[T]) NewEvent() any {
	tVar := new(T)
	return tVar
}

func (c genericEventHandler[T]) Handle(ctx context.Context, e any) error {
	event := e.(*T)
	return c.handleFunc(ctx, event)
}

type GroupEventHandler interface {
	NewEvent() interface{}
	Handle(ctx context.Context, event interface{}) error
}

// NewGroupEventHandler creates a new GroupEventHandler implementation based on provided function
// and event type inferred from function argument.
func NewGroupEventHandler[T any](handleFunc func(ctx context.Context, event *T) error) GroupEventHandler {
	return &genericEventHandler[T]{
		handleFunc: handleFunc,
	}
}

```

