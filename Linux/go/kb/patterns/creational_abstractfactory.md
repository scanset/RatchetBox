# AbstractFactory (Creational Go design pattern)

AbstractFactory is a creational design pattern. Idiomatic Go implementation with a runnable example below.

## abstract_factory.go

```go
// Package abstract_factory is an example of the Abstract Factory Pattern.
package abstract_factory

// AbstractFactory provides an interface for creating families of related objects.
type AbstractFactory interface {
	CreateWater(volume float64) AbstractWater
	CreateBottle(volume float64) AbstractBottle
}

// AbstractWater provides a water interface.
type AbstractWater interface {
	GetVolume() float64
}

// AbstractBottle provides a bottle interface.
type AbstractBottle interface {
	PourWater(water AbstractWater) // Bottle interacts with a water.
	GetBottleVolume() float64
	GetWaterVolume() float64
}

// CocaColaFactory implements AbstractFactory interface.
type CocaColaFactory struct {
}

// NewCocaColaFactory is the CocaColaFactory constructor.
func NewCocaColaFactory() AbstractFactory {
	return &CocaColaFactory{}
}

// CreateWater implementation.
func (f *CocaColaFactory) CreateWater(volume float64) AbstractWater {
	return &CocaColaWater{volume: volume}
}

// CreateBottle implementation.
func (f *CocaColaFactory) CreateBottle(volume float64) AbstractBottle {
	return &CocaColaBottle{volume: volume}
}

// CocaColaWater implements AbstractWater.
type CocaColaWater struct {
	volume float64 // Volume of drink.
}

// GetVolume returns volume of drink.
func (w *CocaColaWater) GetVolume() float64 {
	return w.volume
}

// CocaColaBottle implements AbstractBottle.
type CocaColaBottle struct {
	water  AbstractWater // Bottle must contain a drink.
	volume float64       // Volume of bottle.
}

// PourWater pours water into a bottle.
func (b *CocaColaBottle) PourWater(water AbstractWater) {
	b.water = water
}

// GetBottleVolume returns volume of bottle.
func (b *CocaColaBottle) GetBottleVolume() float64 {
	return b.volume
}

// GetWaterVolume returns volume of water.
func (b *CocaColaBottle) GetWaterVolume() float64 {
	return b.water.GetVolume()
}

```

## abstract_factory_test.go (runnable example)

```go
package abstract_factory

import (
	"testing"
)

func TestAbstractFactory(t *testing.T) {

	cocacolaFactory := NewCocaColaFactory()

	cocacolaWater := cocacolaFactory.CreateWater(2.5)
	cocacolaBottle := cocacolaFactory.CreateBottle(2.5)

	cocacolaBottle.PourWater(cocacolaWater)

	if cocacolaBottle.GetWaterVolume() != cocacolaBottle.GetBottleVolume() {
		t.Errorf("Expect volume to %.1fL, but %.1fL", cocacolaBottle.GetWaterVolume(), cocacolaBottle.GetBottleVolume())
	}
}

```

