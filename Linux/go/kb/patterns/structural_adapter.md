# Adapter (Structural Go design pattern)

Adapter is a structural design pattern. Idiomatic Go implementation with a runnable example below.

## adapter.go

```go
// Package adapter is an example of the Adapter Pattern.
package adapter

// Target provides an interface with which the system should work.
type Target interface {
	Request() string
}

// Adaptee implements system to be adapted.
type Adaptee struct {
}

// NewAdapter is the Adapter constructor.
func NewAdapter(adaptee *Adaptee) Target {
	return &Adapter{adaptee}
}

// SpecificRequest implementation.
func (a *Adaptee) SpecificRequest() string {
	return "Request"
}

// Adapter implements Target interface and is an adapter.
type Adapter struct {
	*Adaptee
}

// Request is an adaptive method.
func (a *Adapter) Request() string {
	return a.SpecificRequest()
}

```

## adapter_test.go (runnable example)

```go
package adapter

import (
	"testing"
)

func TestAdapter(t *testing.T) {

	adapter := NewAdapter(&Adaptee{})

	req := adapter.Request()

	if req != "Request" {
		t.Errorf("Expect volume to %s, but %s", "Request", req)
	}
}

```

