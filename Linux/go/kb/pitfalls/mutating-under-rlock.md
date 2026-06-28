# Pitfall: mutating under RLock

Acquiring only a read lock (RLock) on a sync.RWMutex and then mutating shared state like a map
under that lock causes a data race. The race detector may not catch it unless the code path is
exercised concurrently, and the program panics at runtime.

- Use RLock only for reading; to mutate shared state, take the full write lock (Lock).
- When modifying a map under a read lock, release the RLock, re-check conditions, and then take Lock.
- Lazy cache expiry is a common case: do not delete or modify map entries under RLock.

```go
// WRONG - data race: delete under RLock
var m map[string]int
var mu sync.RWMutex

func Get(k string) int {
	mu.RLock()
	defer mu.RUnlock()
	if v, ok := m[k]; ok {
		return v
	}
	// Expensive computation...
	delete(m, k) // data race: RLock allows concurrent readers
	return 0
}

// RIGHT - use Lock for mutation
func Get(k string) int {
	mu.RLock()
	defer mu.RUnlock()
	if v, ok := m[k]; ok {
		return v
	}
	// Expensive computation...
	mu.RUnlock() // release RLock before mutating
	mu.Lock()
	defer mu.Unlock()
	delete(m, k) // safe: no readers
	return 0
}

// RIGHT - do expiry under Lock
func Get(k string) int {
	mu.RLock()
	defer mu.RUnlock()
	if v, ok := m[k]; ok {
		return v
	}
	// Expensive computation...
	mu.Lock()
	defer mu.Unlock()
	delete(m, k) // safe: no readers
	return 0
}
