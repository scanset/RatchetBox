Decide which reference libraries would help implement and test the Go task below. Return a JSON object
with one search query per library - or an empty string `""` to skip a library that is not relevant.
Skipping is normal and preferred: most simple tasks need none.

- `stdlib_q`: a Go standard-library package or symbol query, when the task needs a specific stdlib API.
  Examples: "container/heap priority queue", "sort.Slice stable", "encoding/json struct tags",
  "sync.WaitGroup goroutines", "bufio.Scanner lines". Empty if plain language/arithmetic suffices.
- `patterns_q`: a GoF design-pattern query, only when the task IS naturally a design pattern.
  Examples: "observer subscribe notify", "factory create product", "strategy interchangeable algorithm".
  Empty for ordinary functions (most tasks).
- `idioms_q`: a Go-idioms query for buildable-code concerns. Examples: "error wrapping %w",
  "table-driven test", "slice preallocate append". Empty if not needed.

Pick the narrowest queries that retrieve the right reference. Do not invent a need; prefer empty.

## Task
{{ task }}

Output ONLY the JSON object.
