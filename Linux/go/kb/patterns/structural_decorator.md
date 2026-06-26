# Decorator (Structural Go design pattern)

Decorator is a structural design pattern. Idiomatic Go implementation with a runnable example below.

## decorator.go

```go
// Package decorator is an example of the Decorator Pattern.
package decorator

// Component provides an interface for a decorator and component.
type Component interface {
	Operation() string
}

// ConcreteComponent implements a component.
type ConcreteComponent struct {
}

// Operation implementation.
func (c *ConcreteComponent) Operation() string {
	return "I am component!"
}

// ConcreteDecorator implements a decorator.
type ConcreteDecorator struct {
	component Component
}

// Operation wraps operation of component
func (d *ConcreteDecorator) Operation() string {
	return "<strong>" + d.component.Operation() + "</strong>"
}

```

## decorator_test.go (runnable example)

```go
package decorator

import (
	"testing"
)

func TestDecorator(t *testing.T) {

	expect := "<strong>I am component!</strong>"

	decorator := &ConcreteDecorator{&ConcreteComponent{}}

	result := decorator.Operation()

	if result != expect {
		t.Errorf("Expect result to equal %s, but %s.\n", expect, result)
	}
}

```

