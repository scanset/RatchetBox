# Memento (Behavioral Go design pattern)

Memento is a behavioral design pattern. Idiomatic Go implementation with a runnable example below.

## memento.go

```go
// Package memento is an example of the Memento Pattern.
package memento

// Originator implements a state master.
type Originator struct {
	State string
}

// CreateMemento returns state storage.
func (o *Originator) CreateMemento() *Memento {
	return &Memento{state: o.State}
}

// SetMemento sets old state.
func (o *Originator) SetMemento(memento *Memento) {
	o.State = memento.GetState()
}

// Memento implements storage for the state of Originator
type Memento struct {
	state string
}

// GetState returns state.
func (m *Memento) GetState() string {
	return m.state
}

// Caretaker keeps Memento until it is needed by Originator.
type Caretaker struct {
	Memento *Memento
}

```

## memento_test.go (runnable example)

```go
package memento

import (
	"testing"
)

func TestMomento(t *testing.T) {

	originator := new(Originator)
	caretaker := new(Caretaker)

	originator.State = "On"

	caretaker.Memento = originator.CreateMemento()

	originator.State = "Off"

	originator.SetMemento(caretaker.Memento)

	if originator.State != "On" {
		t.Errorf("Expect State to %s, but %s", originator.State, "On")
	}
}

```

