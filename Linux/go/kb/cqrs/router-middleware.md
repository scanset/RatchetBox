# Router resilience middleware

Cross-cutting middleware for the Router: Recoverer recovers panics into errors; Retry retries failing handlers with backoff; PoisonQueue routes repeatedly-failing messages to a separate topic. Also available: throttle, timeout, circuit_breaker, deduplicator, correlation. Keywords: watermill middleware recoverer recover panic retry backoff poison queue dead letter throttle timeout circuit breaker resilience.

## source: message/router/middleware/recoverer.go (from watermill, MIT)

```go
package middleware

import (
	"fmt"
	"runtime/debug"

	"github.com/ThreeDotsLabs/watermill/message"
	"github.com/pkg/errors"
)

// RecoveredPanicError holds the recovered panic's error along with the stacktrace.
type RecoveredPanicError struct {
	V          interface{}
	Stacktrace string
}

func (p RecoveredPanicError) Error() string {
	return fmt.Sprintf("panic occurred: %#v, stacktrace: \n%s", p.V, p.Stacktrace)
}

// Recoverer recovers from any panic in the handler and appends RecoveredPanicError with the stacktrace
// to any error returned from the handler.
func Recoverer(h message.HandlerFunc) message.HandlerFunc {
	return func(event *message.Message) (events []*message.Message, err error) {
		panicked := true

		defer func() {
			if r := recover(); r != nil || panicked {
				err = errors.WithStack(RecoveredPanicError{V: r, Stacktrace: string(debug.Stack())})
			}
		}()

		events, err = h(event)
		panicked = false
		return events, err
	}
}

```

## source: message/router/middleware/retry.go (from watermill, MIT)

```go
package middleware

import (
	"time"

	"github.com/cenkalti/backoff/v5"
	"github.com/pkg/errors"

	"github.com/ThreeDotsLabs/watermill"
	"github.com/ThreeDotsLabs/watermill/message"
)

// RetryParams holds the parameters for a retry attempt
type RetryParams struct {
	// Err is the error that caused the retry attempt.
	Err error
	// RetryNum is the number of the retry attempt, starting from 1.
	RetryNum int
	// Delay is the delay for the next retry attempt.
	Delay time.Duration
}

// RetriesExhaustedParams holds the parameters passed to OnRetriesExhausted.
type RetriesExhaustedParams struct {
	// Err is the last error returned by the handler before retries were exhausted.
	Err error
	// RetryNum is the total number of attempts performed (1 initial + MaxRetries retries).
	// For MaxRetries=N this will equal N+1.
	RetryNum int
}

// Retry provides a middleware that retries the handler if errors are returned.
// The retry behaviour is configurable, with exponential backoff and maximum elapsed time.
type Retry struct {
	// MaxRetries is maximum number of times a retry will be attempted.
	MaxRetries int

	// InitialInterval is the first interval between retries. Subsequent intervals will be scaled by Multiplier.
	InitialInterval time.Duration
	// MaxInterval sets the limit for the exponential backoff of retries. The interval will not be increased beyond MaxInterval.
	MaxInterval time.Duration
	// Multiplier is the factor by which the waiting interval will be multiplied between retries.
	Multiplier float64
	// MaxElapsedTime sets the time limit of how long retries will be attempted. Disabled if 0.
	MaxElapsedTime time.Duration
	// RandomizationFactor randomizes the spread of the backoff times within the interval of:
	// [currentInterval * (1 - RandomizationFactor), currentInterval * (1 + RandomizationFactor)].
	RandomizationFactor float64

	// OnRetryHook is an optional function that will be executed on each retry attempt.
	// The number of the current retry is passed as retryNum,
	OnRetryHook func(retryNum int, delay time.Duration)

	// OnRetriesExhausted is an optional function that will be executed when all retries are exhausted.
	// This is called when MaxRetries is reached and the handler still returns an error.
	// It is NOT called when ShouldRetry returns false (that path returns a permanent error and exits earlier).
	OnRetriesExhausted func(params RetriesExhaustedParams)

	// ShouldRetry is an optional function that will be executed before each retry attempt.
	// If ShouldRetry returns false, the retry will not be attempted.
	ShouldRetry func(params RetryParams) bool

	// ResetContextOnRetry indicates whether the message context should be reset on each retry attempt.
	// See more: https://github.com/ThreeDotsLabs/watermill/issues/467
	//
	// This is not enabled by default to keep backward compatibility
	// (in theory, someone may want to preserve context values between retries).
	ResetContextOnRetry bool

	Logger watermill.LoggerAdapter
}

// Middleware returns the Retry middleware.
func (r Retry) Middleware(h message.HandlerFunc) message.HandlerFunc {
	return func(msg *message.Message) ([]*message.Message, error) {
		originalCtx := msg.Context()
		retryNum := 0
		// stoppedByPermanent is set when ShouldRetry returns false, so we know
		// to skip OnRetriesExhausted — retries weren't actually exhausted, they
		// were short-circuited. backoff/v5 strips the *PermanentError wrapper
		// inside Retry, so we can't detect this from the returned error alone.
		stoppedByPermanent := false

		expBackoff := backoff.NewExponentialBackOff()
		expBackoff.InitialInterval = r.InitialInterval
		expBackoff.MaxInterval = r.MaxInterval
		expBackoff.Multiplier = r.Multiplier
		expBackoff.RandomizationFactor = r.RandomizationFactor

		// MaxRetries + 1 because the first attempt is not a retry
		retryBackoff := backoff.WithMaxTries(uint(r.MaxRetries + 1))

		maxElapsedBackoff := backoff.WithMaxElapsedTime(r.MaxElapsedTime)

		// notification is called on a failed retry attempt.
		notification := func(err error, delay time.Duration) {
			if r.Logger != nil {
				r.Logger.Error("Error occurred, retrying", err, watermill.LogFields{
					"retry_no":    retryNum,
					"max_retries": r.MaxRetries,
					"wait_time":   delay,
				})
			}
		}

		// operation: the function that will be retried.
		operation := func() ([]*message.Message, error) {
			select {
			case <-originalCtx.Done():
				return nil, originalCtx.Err()
			default:
				if r.ResetContextOnRetry {
					// message is passed as a pointer, so its context can be canceled
					// by the previous attempts -> it will break retries, because any
					// underlying logic that relies on the context will fail.
					// see more: https://github.com/ThreeDotsLabs/watermill/issues/467
					//
					// to avoid this, we need to reset the original context on each attempt
					// we may lose context value that was set by the previous attempt
					msg.SetContext(originalCtx)
				}

				producedMessages, err := h(msg)
				if err == nil {
					return producedMessages, nil
				}

				if r.ShouldRetry != nil && !r.ShouldRetry(RetryParams{
					RetryNum: retryNum,
					Err:      err,
					Delay:    expBackoff.NextBackOff(),
				}) {
					// backoff.Permanent will stop the retry attempts
					stoppedByPermanent = true
					return producedMessages, backoff.Permanent(err)
				}

				if r.OnRetryHook != nil && retryNum > 0 {
					// call RetryHook function on each retry attempt.
					r.OnRetryHook(retryNum, expBackoff.NextBackOff())
				}
				retryNum++
				return producedMessages, err
			}
		}

		producedMessages, retryErr := backoff.Retry(
			originalCtx,
			operation,
			backoff.WithBackOff(expBackoff),
			retryBackoff,
			maxElapsedBackoff,
			backoff.WithNotify(notification),
		)
		var backoffPermanentError *backoff.PermanentError
		if errors.As(retryErr, &backoffPermanentError) {
			// just in case, we don't want to expose backoff.PermanentError to the outside world
			return producedMessages, backoffPermanentError.Unwrap()
		}
		if retryErr != nil {
			if r.OnRetriesExhausted != nil && !stoppedByPermanent {
				r.OnRetriesExhausted(RetriesExhaustedParams{
					Err:      retryErr,
					RetryNum: retryNum,
				})
			}
			return producedMessages, retryErr
		}

		return producedMessages, nil
	}
}

```

## source: message/router/middleware/poison.go (from watermill, MIT)

```go
package middleware

import (
	stdErrors "errors"

	"github.com/ThreeDotsLabs/watermill/message"
	"github.com/pkg/errors"
)

// ErrInvalidPoisonQueueTopic occurs when the topic supplied to the PoisonQueue constructor is invalid.
var ErrInvalidPoisonQueueTopic = errors.New("invalid poison queue topic")

// Metadata keys that mark the reason and context for why the message was deemed poisoned.
const (
	ReasonForPoisonedKey  = "reason_poisoned"
	PoisonedTopicKey      = "topic_poisoned"
	PoisonedHandlerKey    = "handler_poisoned"
	PoisonedSubscriberKey = "subscriber_poisoned"
)

type poisonQueue struct {
	topic string
	pub   message.Publisher

	shouldGoToPoisonQueue func(err error) bool
}

// PoisonQueue provides a middleware that salvages unprocessable messages and publishes them on a separate topic.
// The main middleware chain then continues on, business as usual.
func PoisonQueue(pub message.Publisher, topic string) (message.HandlerMiddleware, error) {
	if topic == "" {
		return nil, ErrInvalidPoisonQueueTopic
	}

	pq := poisonQueue{
		topic: topic,
		pub:   pub,
		shouldGoToPoisonQueue: func(err error) bool {
			return true
		},
	}

	return pq.Middleware, nil
}

// PoisonQueueWithFilter is just like PoisonQueue, but accepts a function that decides which errors qualify for the poison queue.
func PoisonQueueWithFilter(pub message.Publisher, topic string, shouldGoToPoisonQueue func(err error) bool) (message.HandlerMiddleware, error) {
	if topic == "" {
		return nil, ErrInvalidPoisonQueueTopic
	}

	pq := poisonQueue{
		topic: topic,
		pub:   pub,

		shouldGoToPoisonQueue: shouldGoToPoisonQueue,
	}

	return pq.Middleware, nil
}

func (pq poisonQueue) publishPoisonMessage(msg *message.Message, err error) error {
	// no problems encountered, carry on
	if err == nil {
		return nil
	}

	// add context why it was poisoned
	msg.Metadata.Set(ReasonForPoisonedKey, err.Error())
	msg.Metadata.Set(PoisonedTopicKey, message.SubscribeTopicFromCtx(msg.Context()))
	msg.Metadata.Set(PoisonedHandlerKey, message.HandlerNameFromCtx(msg.Context()))
	msg.Metadata.Set(PoisonedSubscriberKey, message.SubscriberNameFromCtx(msg.Context()))

	// don't intercept error from publish. Can't help you if the publisher is down as well.
	return pq.pub.Publish(pq.topic, msg)
}

func (pq poisonQueue) Middleware(h message.HandlerFunc) message.HandlerFunc {
	return func(msg *message.Message) (events []*message.Message, err error) {
		defer func() {
			if err != nil {
				if !pq.shouldGoToPoisonQueue(err) {
					return
				}

				// handler didn't cope with the message; publish it on the poison topic and carry on as usual
				publishErr := pq.publishPoisonMessage(msg, err)
				if publishErr != nil {
					publishErr = errors.Wrap(publishErr, "cannot publish message to poison queue")
					err = stdErrors.Join(err, publishErr)
					return
				}

				err = nil
				return
			}
		}()

		// if h fails, the deferred function will salvage all that it can
		return h(msg)
	}
}

```

