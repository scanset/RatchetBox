# Bridge (Structural Go design pattern)

Bridge is a structural design pattern. Idiomatic Go implementation with a runnable example below.

## bridge.go

```go
// Package bridge is an example of the Bridge Pattern.
package bridge

// Carer provides car interface.
type Carer interface {
	Rase() string
}

// Enginer provides engine interface.
type Enginer interface {
	GetSound() string
}

// Car implementation.
type Car struct {
	engine Enginer
}

// NewCar is the Car constructor.
func NewCar(engine Enginer) Carer {
	return &Car{
		engine: engine,
	}
}

// Rase implementation.
func (c *Car) Rase() string {
	return c.engine.GetSound()
}

// EngineSuzuki implements Suzuki engine.
type EngineSuzuki struct {
}

// GetSound returns sound of the engine.
func (e *EngineSuzuki) GetSound() string {
	return "SssuuuuZzzuuuuKkiiiii"
}

// EngineHonda implements Honda engine.
type EngineHonda struct {
}

// GetSound returns sound of the engine.
func (e *EngineHonda) GetSound() string {
	return "HhoooNnnnnnnnnDddaaaaaaa"
}

// EngineLada implements Lada engine.
type EngineLada struct {
}

// GetSound returns sound of the engine.
func (e *EngineLada) GetSound() string {
	return "PhhhhPhhhhPhPhPhPhPh"
}

```

## bridge_test.go (runnable example)

```go
package bridge

import (
	"testing"
)

func TestBridge(t *testing.T) {

	expect := "SssuuuuZzzuuuuKkiiiii"

	car := NewCar(&EngineSuzuki{})

	sound := car.Rase()

	if sound != expect {
		t.Errorf("Expect sound to %s, but %s", expect, sound)
	}
}

```

