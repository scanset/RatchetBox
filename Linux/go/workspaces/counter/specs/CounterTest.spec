name: CounterTest
role: test
intent: Test that the Counter handles concurrent increment operations correctly
api:
  - func TestCounter(t *testing.T)
behavior:
  - Launch multiple goroutines (1000) that increment the counter
  - Each goroutine should increment the counter 1000 times
  - Verify that the final counter value equals 1000000
  - Test should pass without data races
constraints: package: main
