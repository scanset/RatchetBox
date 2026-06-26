name: CounterTest
role: test
intent: prove the Counter is correct and race-free
behavior:
  - a Go test file (package main) with func TestCounter(t *testing.T)
  - launch 50 goroutines, each calling Add(1) 100 times, synchronized with a sync.WaitGroup
  - after all finish, Value() must equal exactly 5000; fail with t.Errorf otherwise
constraints: standard library only; use the existing Counter API verbatim
