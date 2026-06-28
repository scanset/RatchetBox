name: main
role: behavior
intent: Entry point that demonstrates concurrent counter usage
api:
  - func main()
behavior:
  - Create a new Counter instance
  - Launch 1000 goroutines
  - Each goroutine increments the counter 1000 times
  - Print the final counter value
  - Should complete without data races
constraints: package: main
