# Singleton (Creational Go design pattern)

Singleton is a creational design pattern. Idiomatic Go implementation with a runnable example below.

## singleton.go

```go
// Package singleton is an example of the Singleton Pattern.
package singleton

import (
	"sync"
)

// Singleton implementation.
type Singleton struct {
}

var (
	instance *Singleton
	once     sync.Once
)

// GetInstance returns singleton
func GetInstance() *Singleton {
	once.Do(func() {
		instance = &Singleton{}
	})
	return instance
}

```

## singleton_test.go (runnable example)

```go
package singleton

import (
	"testing"
)

func TestSingleton(t *testing.T) {

	instance1 := GetInstance()
	instance2 := GetInstance()

	if instance1 != instance2 {
		t.Error("Objects are not equal!\n")
	}
}

```

