# Prototype (Creational Go design pattern)

Prototype is a creational design pattern. Idiomatic Go implementation with a runnable example below.

## prototype.go

```go
// Package prototype is an example of the Singleton Pattern.
package prototype

// Prototyper provides a cloning interface.
type Prototyper interface {
	Clone() Prototyper
	GetName() string
}

// ConcreteProduct implements product "A"
type ConcreteProduct struct {
	name string // product name
}

// NewConcreteProduct is the Prototyper constructor.
func NewConcreteProduct(name string) Prototyper {
	return &ConcreteProduct{
		name: name,
	}
}

// GetName returns product name
func (p *ConcreteProduct) GetName() string {
	return p.name
}

// Clone returns a cloned object.
func (p *ConcreteProduct) Clone() Prototyper {
	return &ConcreteProduct{p.name}
}

```

## prototype_test.go (runnable example)

```go
package prototype

import (
	"testing"
)

func TestPrototype(t *testing.T) {

	product := NewConcreteProduct("A")
	cloneProduct := product.Clone()

	if cloneProduct.GetName() != product.GetName() {
		t.Error("Expect name \"A\" to equal, but not equal.")
	}
}

```

