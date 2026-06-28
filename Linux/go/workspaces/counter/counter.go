package main

import (
	"sync/atomic"
)

// Counter is a thread-safe in-memory counter using atomic operations
type Counter struct {
	value atomic.Int64
}

// Inc atomically increments the counter and returns the new value
func (c *Counter) Inc() int64 {
	return c.value.Add(1)
}

// Get atomically returns the current value of the counter
func (c *Counter) Get() int64 {
	return c.value.Load()
}
