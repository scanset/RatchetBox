name: Counter
role: data
intent: a goroutine-safe integer counter
api:
  - type Counter, holding an int and a sync.Mutex
  - func NewCounter() *Counter
  - method (*Counter) Add(n int)   adds n under the lock
  - method (*Counter) Value() int  returns the current value under the lock
constraints: standard library only; must be safe for concurrent use (sync.Mutex)
