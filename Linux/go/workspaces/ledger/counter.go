package main

import "sync"

// Counter is a goroutine-safe integer counter
type Counter struct {
	value int
	mutex sync.Mutex
}

// NewCounter creates and returns a new Counter
func NewCounter() *Counter {
	return &Counter{}
}

// Add adds n to the counter value under the lock
func (c *Counter) Add(n int) {
	c.mutex.Lock()
	defer c.mutex.Unlock()
	c.value += n
}

// Value returns the current counter value under the lock
func (c *Counter) Value() int {
	c.mutex.Lock()
	defer c.mutex.Unlock()
	return c.value
}
