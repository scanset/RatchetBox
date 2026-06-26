# FactoryMethod (Creational Go design pattern)

FactoryMethod is a creational design pattern. Idiomatic Go implementation with a runnable example below.

## factory_method.go

```go
// Package factory_method is an example of the Factory Method pattern.
package factory_method

import (
	"log"
)

// action helps clients to find out available actions.
type action string

const (
	A action = "A"
	B action = "B"
	C action = "C"
)

// Creator provides a factory interface.
type Creator interface {
	CreateProduct(action action) Product // Factory Method
}

// Product provides a product interface.
// All products returned by factory must provide a single interface.
type Product interface {
	Use() string // Every product should be usable
}

// ConcreteCreator implements Creator interface.
type ConcreteCreator struct{}

// NewCreator is the ConcreteCreator constructor.
func NewCreator() Creator {
	return &ConcreteCreator{}
}

// CreateProduct is a Factory Method.
func (p *ConcreteCreator) CreateProduct(action action) Product {
	var product Product

	switch action {
	case A:
		product = &ConcreteProductA{string(action)}
	case B:
		product = &ConcreteProductB{string(action)}
	case C:
		product = &ConcreteProductC{string(action)}
	default:
		log.Fatalln("Unknown Action")
	}

	return product
}

// ConcreteProductA implements product "A".
type ConcreteProductA struct {
	action string
}

// Use returns product action.
func (p *ConcreteProductA) Use() string {
	return p.action
}

// ConcreteProductB implements product "B".
type ConcreteProductB struct {
	action string
}

// Use returns product action.
func (p *ConcreteProductB) Use() string {
	return p.action
}

// ConcreteProductC implements product "C".
type ConcreteProductC struct {
	action string
}

// Use returns product action.
func (p *ConcreteProductC) Use() string {
	return p.action
}

```

## factory_method_test.go (runnable example)

```go
package factory_method

import (
	"testing"
)

func TestFactoryMethod(t *testing.T) {

	assert := []string{"A", "B", "C"}

	factory := NewCreator()
	products := []Product{
		factory.CreateProduct(A),
		factory.CreateProduct(B),
		factory.CreateProduct(C),
	}

	for i, product := range products {
		if action := product.Use(); action != assert[i] {
			t.Errorf("Expect action to %s, but %s.\n", assert[i], action)
		}
	}
}

```

