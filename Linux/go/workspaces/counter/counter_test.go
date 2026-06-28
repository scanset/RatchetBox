package main

import (
	"sync"
	"testing"
)

func TestCounter(t *testing.T) {
	counter := &Counter{}
	var wg sync.WaitGroup

	// Launch 1000 goroutines, each incrementing the counter 1000 times
	for i := 0; i < 1000; i++ {
		wg.Add(1)
		go func() {
			defer wg.Done()
			for j := 0; j < 1000; j++ {
				counter.Inc()
			}
		}()
	}

	wg.Wait()

	// Verify the final counter value
	expected := int64(1000000)
	actual := counter.Get()
	if actual != expected {
		t.Errorf("Expected counter value %d, got %d", expected, actual)
	}
}
