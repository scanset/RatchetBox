name: Counter
role: data
intent: A thread-safe in-memory counter using atomic operations for increment and get
api:
  - type Counter struct{}
  - func (c *Counter) Inc() int64
  - func (c *Counter) Get() int64
behavior:
  - Counter should support concurrent increment and get operations
  - Each Inc() call should atomically increment the counter and return the new value
  - Get() should return the current value of the counter atomically
constraints: package: main
