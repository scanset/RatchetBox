package main

import (
	"sync"
	"testing"
)

func TestCounter(t *testing.T) {
	counter := NewCounter()
	var wg sync.WaitGroup

	for i := 0; i < 50; i++ {
		wg.Add(1)
		go func() {
			defer wg.Done()
			for j := 0; j < 100; j++ {
				counter.Add(1)
			}
		}()
	}

	wg.Wait()

	if actual := counter.Value(); actual != 5000 {
		t.Errorf("Expected counter value to be 5000, but got %d", actual)
	}
}
