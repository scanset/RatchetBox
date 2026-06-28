package main

import (
	"strconv"
	"sync"
)

// Store implements in-process storage for items with unique ID generation
type Store struct {
	mu    sync.RWMutex
	items map[string]string
	next  int64
}

// Put stores an item and returns a unique ID
func (s *Store) Put(name string) string {
	s.mu.Lock()
	id := s.next
	s.next++
	s.items[strconv.FormatInt(id, 10)] = name
	s.mu.Unlock()
	return strconv.FormatInt(id, 10)
}

// Get retrieves an item by ID
func (s *Store) Get(id string) (string, bool) {
	s.mu.RLock()
	name, exists := s.items[id]
	s.mu.RUnlock()
	return name, exists
}
