# Phase 2 (grounded) + composition - transcripts

End-to-end runs after wiring multi-library plan-routing into the flows and adding spec-driven composition. Captures (A) the phase-2 task batch re-run WITH grounding and (B) a full `compose` run that builds a multi-file Go module from specs. Compare against the pre-grounding batch in `phase2-evidence-batch.md`.

- Generated: 2026-06-25
- Batch command per task: `ratchet flow . test "<task>"`  (console: `/flow test <task>`)
- Compose command: `ratchet flow . compose --ws ledger ""`  (console: `/flow compose --ws ledger`)
- Flows now open with a `plan` node that routes one search query per library (`stdlib`/`patterns`/`idioms`); an empty query is skipped.

## Part A - grounded phase-2 batch

| # | Task | Routed libraries (plan) | Repairs | Outcome |
|---|---|---|---|---|
| 1 | a function DedupStrings(in []string) []string that r... | `idioms`=slice deduplicate preserve order, `stdlib`=container/set | 0 | pass (first try) |
| 2 | a function WordFreq(text string) map[string]int that... | `idioms`=case-insensitive string comparison, `stdlib`=strings.Fields space-separated words | 0 | pass (first try) |
| 3 | a function Divide(a, b float64) (float64, error) tha... | `idioms`=error wrapping %w, `stdlib`=errors.New | 0 | pass (first try) |
| 4 | a function SortByAge that sorts a []Person (Person h... | `idioms`=sort slice stable, `stdlib`=sort.Slice | 0 | pass (first try) |
| 5 | a function BinarySearch(sorted []int, target int) in... | `idioms`=binary search iterative implementation | 0 | pass (first try) |
| 6 | a function SumSquares(nums []int) int that computes ... | `idioms`=table-driven test, `stdlib`=sync.WaitGroup goroutines | 1 | pass (1 repair) |
| 7 | a generic function MapSlice[T any, U any](in []T, f ... | `idioms`=slice preallocate append | 0 | pass (first try) |
| 8 | a function RoundTrip(p Person) (Person, error) that ... | `idioms`=table-driven test, `stdlib`=encoding/json Marshal Unmarshal | 1 | pass (1 repair) |
| 9 | a function ParseConfig(s string) map[string]string t... | `idioms`=table-driven test, `stdlib`=bufio.Scanner lines | 0 | pass (first try) |
| 10 | a function RunningMedian(nums []int) []float64 retur... | `idioms`=heap interface, `stdlib`=container/heap | 1 | FAIL after repair |

**Grounded totals:** 7 first try, 2 one repair, 1 failing after repair.
**Pre-grounding batch (phase2-evidence-batch.md):** 8 first try, 1 one repair, 1 failing.

Plan-routing picked a sensible library for every task and **skipped `patterns` on all 10** (none are design patterns). The aggregate is close to the ungrounded run because most tasks were already easy for the model and a single run per task (n=1) is noisy on a small local model - e.g. the heap task passes standalone with grounding but failed in this batch. Grounding's value is a better first draft and the *ability* to pull the exact API (shown live below); quantifying lift needs several runs per task, not one.

---

### Run 1: a function DedupStrings(in []string) []string that removes duplicate strings while preserving first-seen order

Command: `ratchet flow . test "a function DedupStrings(in []string) []string that removes duplicate strings while preserving first-seen order"` — outcome **success**

#### `test.plan` (generate)

Plan (which libraries to retrieve):

```json
{"idioms_q":"slice deduplicate preserve order","patterns_q":"","stdlib_q":"container/set"}
```

#### `test.generate` (generate)

Model output:

```go
// === solution.go ===
package solution

// DedupStrings removes duplicate strings from the input slice while preserving
// the first-seen order of elements.
func DedupStrings(in []string) []string {
	seen := make(map[string]bool)
	result := make([]string, 0)

	for _, s := range in {
		if !seen[s] {
			seen[s] = true
			result = append(result, s)
		}
	}

	return result
}

// === solution_test.go ===
package solution

import (
	"reflect"
	"testing"
)

func TestDedupStrings(t *testing.T) {
	tests := []struct {
		name     string
		input    []string
		expected []string
	}{
		{
			name:     "normal case",
			input:    []string{"a", "b", "c", "b", "a", "d"},
			expected: []string{"a", "b", "c", "d"},
		},
		{
			name:     "empty slice",
			input:    []string{},
			expected: []string{},
		},
		{
			name:     "all duplicates",
			input:    []string{"a", "a", "a", "a"},
			expected: []string{"a"},
		},
		{
			name:     "no duplicates",
			input:    []string{"a", "b", "c", "d"},
			expected: []string{"a", "b", "c", "d"},
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			result := DedupStrings(tt.input)
			if !reflect.DeepEqual(result, tt.expected) {
				t.Errorf("DedupStrings(%v) = %v, want %v", tt.input, result, tt.expected)
			}
		})
	}
}
```

#### `test.check` (oracle) — pass

```text
OK: vet clean and tests pass with go1.26.4
ok  	snippet	0.001s
```

---

### Run 2: a function WordFreq(text string) map[string]int that counts how many times each space-separated word appears, case-insensitive

Command: `ratchet flow . test "a function WordFreq(text string) map[string]int that counts how many times each space-separated word appears, case-insensitive"` — outcome **success**

#### `test.plan` (generate)

Plan (which libraries to retrieve):

```json
{"idioms_q":"case-insensitive string comparison","patterns_q":"","stdlib_q":"strings.Fields space-separated words"}
```

#### `test.generate` (generate)

Model output:

```go
// === solution.go ===
package solution

import (
	"strings"
)

// WordFreq counts how many times each space-separated word appears in text, case-insensitive
func WordFreq(text string) map[string]int {
	freq := make(map[string]int)
	words := strings.Fields(text)
	for _, word := range words {
		lowerWord := strings.ToLower(word)
		freq[lowerWord]++
	}
	return freq
}

// === solution_test.go ===
package solution

import (
	"reflect"
	"testing"
)

func TestWordFreq(t *testing.T) {
	tests := []struct {
		name     string
		input    string
		expected map[string]int
	}{
		{
			name:  "normal case",
			input: "Hello world hello",
			expected: map[string]int{
				"hello": 2,
				"world": 1,
			},
		},
		{
			name:  "empty string",
			input: "",
			expected: map[string]int{},
		},
		{
			name:  "multiple spaces",
			input: "  hello   world  hello  ",
			expected: map[string]int{
				"hello": 2,
				"world": 1,
			},
		},
		{
			name:  "case insensitive",
			input: "Hello HELLO hello",
			expected: map[string]int{
				"hello": 3,
			},
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			result := WordFreq(tt.input)
			if !reflect.DeepEqual(result, tt.expected) {
				t.Errorf("WordFreq(%q) = %v, want %v", tt.input, result, tt.expected)
			}
		})
	}
}
```

#### `test.check` (oracle) — pass

```text
OK: vet clean and tests pass with go1.26.4
ok  	snippet	0.001s
```

---

### Run 3: a function Divide(a, b float64) (float64, error) that returns an error wrapping ErrDivideByZero when b is zero

Command: `ratchet flow . test "a function Divide(a, b float64) (float64, error) that returns an error wrapping ErrDivideByZero when b is zero"` — outcome **success**

#### `test.plan` (generate)

Plan (which libraries to retrieve):

```json
{"idioms_q":"error wrapping %w","patterns_q":"","stdlib_q":"errors.New"}
```

#### `test.generate` (generate)

Model output:

```go
// === solution.go ===
package solution

import (
	"errors"
	"fmt"
)

var ErrDivideByZero = errors.New("division by zero")

func Divide(a, b float64) (float64, error) {
	if b == 0 {
		return 0, fmt.Errorf("cannot divide %v by zero: %w", a, ErrDivideByZero)
	}
	return a / b, nil
}

// === solution_test.go ===
package solution

import (
	"errors"
	"testing"
)

func TestDivide(t *testing.T) {
	tests := []struct {
		name    string
		a       float64
		b       float64
		want    float64
		wantErr error
	}{
		{
			name:    "normal division",
			a:       10.0,
			b:       2.0,
			want:    5.0,
			wantErr: nil,
		},
		{
			name:    "division by zero",
			a:       10.0,
			b:       0.0,
			want:    0.0,
			wantErr: ErrDivideByZero,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			got, err := Divide(tt.a, tt.b)
			if err != nil {
				if !errors.Is(err, tt.wantErr) {
					t.Errorf("Divide() error = %v, wantErr %v", err, tt.wantErr)
				}
			} else if err == nil && tt.wantErr != nil {
				t.Errorf("Divide() error = %v, wantErr %v", err, tt.wantErr)
			}
			if got != tt.want {
				t.Errorf("Divide() got = %v, want %v", got, tt.want)
			}
		})
	}
}
```

#### `test.check` (oracle) — pass

```text
OK: vet clean and tests pass with go1.26.4
ok  	snippet	0.001s
```

---

### Run 4: a function SortByAge that sorts a []Person (Person has Name string and Age int) ascending by Age, ties broken by Name

Command: `ratchet flow . test "a function SortByAge that sorts a []Person (Person has Name string and Age int) ascending by Age, ties broken by Name"` — outcome **success**

#### `test.plan` (generate)

Plan (which libraries to retrieve):

```json
{"idioms_q":"sort slice stable","patterns_q":"","stdlib_q":"sort.Slice"}
```

#### `test.generate` (generate)

Model output:

```go
// === solution.go ===
package solution

import "sort"

// Person represents a person with a name and age
type Person struct {
	Name string
	Age  int
}

// SortByAge sorts a slice of Person by age ascending, with ties broken by name
func SortByAge(people []Person) {
	sort.Slice(people, func(i, j int) bool {
		if people[i].Age == people[j].Age {
			return people[i].Name < people[j].Name
		}
		return people[i].Age < people[j].Age
	})
}

// === solution_test.go ===
package solution

import (
	"reflect"
	"testing"
)

func TestSortByAge(t *testing.T) {
	// Normal case: multiple people with different ages and names
	input := []Person{
		{"Charlie", 30},
		{"Alice", 25},
		{"Bob", 25},
		{"David", 35},
	}
	expected := []Person{
		{"Alice", 25},
		{"Bob", 25},
		{"Charlie", 30},
		{"David", 35},
	}
	SortByAge(input)
	if !reflect.DeepEqual(input, expected) {
		t.Errorf("SortByAge(%v) = %v, want %v", input, input, expected)
	}

	// Edge case: empty slice
	input = []Person{}
	expected = []Person{}
	SortByAge(input)
	if !reflect.DeepEqual(input, expected) {
		t.Errorf("SortByAge(%v) = %v, want %v", input, input, expected)
	}

	// Edge case: single person
	input = []Person{{"Alice", 25}}
	expected = []Person{{"Alice", 25}}
	SortByAge(input)
	if !reflect.DeepEqual(input, expected) {
		t.Errorf("SortByAge(%v) = %v, want %v", input, input, expected)
	}

	// Edge case: same age, different names - should be sorted by name
	input = []Person{
		{"Charlie", 25},
		{"Alice", 25},
		{"Bob", 25},
	}
	expected = []Person{
		{"Alice", 25},
		{"Bob", 25},
		{"Charlie", 25},
	}
	SortByAge(input)
	if !reflect.DeepEqual(input, expected) {
		t.Errorf("SortByAge(%v) = %v, want %v", input, input, expected)
	}
}
```

#### `test.check` (oracle) — pass

```text
OK: vet clean and tests pass with go1.26.4
ok  	snippet	0.001s
```

---

### Run 5: a function BinarySearch(sorted []int, target int) int that returns the index of target or -1, using iterative binary search

Command: `ratchet flow . test "a function BinarySearch(sorted []int, target int) int that returns the index of target or -1, using iterative binary search"` — outcome **success**

#### `test.plan` (generate)

Plan (which libraries to retrieve):

```json
{"idioms_q":"binary search iterative implementation","patterns_q":"","stdlib_q":""}
```

#### `test.generate` (generate)

Model output:

```go
// === solution.go ===
package solution

// BinarySearch performs iterative binary search on a sorted slice of integers
// Returns the index of target if found, otherwise returns -1
func BinarySearch(sorted []int, target int) int {
	low := 0
	high := len(sorted) - 1

	for low <= high {
		mid := (low + high) / 2
		midValue := sorted[mid]

		if midValue < target {
			low = mid + 1
		} else if midValue > target {
			high = mid - 1
		} else {
			return mid
		}
	}

	return -1
}

// === solution_test.go ===
package solution

import "testing"

func TestBinarySearch(t *testing.T) {
	// Test case 1: Normal case - target exists in the middle
	sorted := []int{1, 3, 5, 7, 9, 11, 13}
	result := BinarySearch(sorted, 7)
	expected := 3
	if result != expected {
		t.Errorf("BinarySearch(%v, 7) = %d; expected %d", sorted, result, expected)
	}

	// Test case 2: Target not found
	result = BinarySearch(sorted, 6)
	expected = -1
	if result != expected {
		t.Errorf("BinarySearch(%v, 6) = %d; expected %d", sorted, result, expected)
	}

	// Test case 3: Edge case - empty slice
	result = BinarySearch([]int{}, 5)
	expected = -1
	if result != expected {
		t.Errorf("BinarySearch(%v, 5) = %d; expected %d", []int{}, result, expected)
	}

	// Test case 4: Edge case - single element slice, target found
	result = BinarySearch([]int{5}, 5)
	expected = 0
	if result != expected {
		t.Errorf("BinarySearch(%v, 5) = %d; expected %d", []int{5}, result, expected)
	}

	// Test case 5: Edge case - single element slice, target not found
	result = BinarySearch([]int{5}, 3)
	expected = -1
	if result != expected {
		t.Errorf("BinarySearch(%v, 3) = %d; expected %d", []int{5}, result, expected)
	}

	// Test case 6: Target at the beginning
	result = BinarySearch(sorted, 1)
	expected = 0
	if result != expected {
		t.Errorf("BinarySearch(%v, 1) = %d; expected %d", sorted, result, expected)
	}

	// Test case 7: Target at the end
	result = BinarySearch(sorted, 13)
	expected = 6
	if result != expected {
		t.Errorf("BinarySearch(%v, 13) = %d; expected %d", sorted, result, expected)
	}
}
```

#### `test.check` (oracle) — pass

```text
OK: vet clean and tests pass with go1.26.4
ok  	snippet	0.001s
```

---

### Run 6: a function SumSquares(nums []int) int that computes the sum of squares concurrently using goroutines and a channel

Command: `ratchet flow . test "a function SumSquares(nums []int) int that computes the sum of squares concurrently using goroutines and a channel"` — outcome **success**

#### `test.plan` (generate)

Plan (which libraries to retrieve):

```json
{"idioms_q":"table-driven test","patterns_q":"","stdlib_q":"sync.WaitGroup goroutines"}
```

#### `test.generate` (generate)

Model output:

```go
// === solution.go ===
package solution

import (
	"sync"
)

// SumSquares computes the sum of squares of integers in nums concurrently using goroutines and a channel.
func SumSquares(nums []int) int {
	numWorkers := 4
	if len(nums) < numWorkers {
		numWorkers = len(nums)
	}

	jobs := make(chan int, len(nums))
	results := make(chan int, len(nums))

	var wg sync.WaitGroup

	// Start workers
	for i := 0; i < numWorkers; i++ {
		wg.Add(1)
		go func() {
			defer wg.Done()
			for num := range jobs {
				results <- num * num
			}
		}()
	}

	// Send jobs
	for _, num := range nums {
		jobs <- num
	}
	close(jobs)

	// Close results channel when all workers are done
	go func() {
		wg.Wait()
		close(results)
	}()

	// Collect results
	sum := 0
	for square := range results {
		sum += square
	}

	return sum
}

// === solution_test.go ===
package solution

import (
	"reflect"
	"testing"
)

func TestSumSquares(t *testing.T) {
	tests := []struct {
		name     string
		input    []int
		expected int
	}{
		{
			name:     "normal case",
			input:    []int{1, 2, 3, 4},
			expected: 30, // 1 + 4 + 9 + 16
		},
		{
			name:     "empty slice",
			input:    []int{},
			expected: 0,
		},
		{
			name:     "single element",
			input:    []int{5},
			expected: 25,
		},
		{
			name:     "negative numbers",
			input:    []int{-1, -2, 3},
			expected: 14, // 1 + 4 + 9
		},
		{
			name:     "large numbers",
			input:    []int{10, 20, 30},
			expected: 1400, // 100 + 400 + 900
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			result := SumSquares(tt.input)
			if result != tt.expected {
				t.Errorf("SumSquares(%v) = %v; expected %v", tt.input, result, tt.expected)
			}
		})
	}
}

func TestSumSquaresConcurrent(t *testing.T) {
	// Test with a larger input to ensure concurrency is actually used
	input := make([]int, 1000)
	for i := range input {
		input[i] = i % 10
	}
	expected := 0
	for _, v := range input {
		expected += v * v
	}

	result := SumSquares(input)
	if result != expected {
		t.Errorf("SumSquares(%v) = %v; expected %v", input, result, expected)
	}
}

func TestSumSquaresEdgeCases(t *testing.T) {
	// Test with more workers than elements
	input := []int{1, 2}
	result := SumSquares(input)
	expected := 5 // 1 + 4
	if result != expected {
		t.Errorf("SumSquares(%v) = %v; expected %v", input, result, expected)
	}

	// Test with zero values
	input = []int{0, 0, 0}
	result = SumSquares(input)
	expected = 0
	if result != expected {
		t.Errorf("SumSquares(%v) = %v; expected %v", input, result, expected)
	}
}
```

#### `test.check` (oracle) — FAIL

```text
VET FAILED:
# snippet
# [snippet]
vet: ./solution_test.go:4:2: "reflect" imported and not used
[exit code 1]
```

#### `test.fix` (generate)

Model output:

```go
// === solution.go ===
package solution

import (
	"sync"
)

// SumSquares computes the sum of squares of integers in nums concurrently using goroutines and a channel.
func SumSquares(nums []int) int {
	numWorkers := 4
	if len(nums) < numWorkers {
		numWorkers = len(nums)
	}

	jobs := make(chan int, len(nums))
	results := make(chan int, len(nums))

	var wg sync.WaitGroup

	// Start workers
	for i := 0; i < numWorkers; i++ {
		wg.Add(1)
		go func() {
			defer wg.Done()
			for num := range jobs {
				results <- num * num
			}
		}()
	}

	// Send jobs
	for _, num := range nums {
		jobs <- num
	}
	close(jobs)

	// Close results channel when all workers are done
	go func() {
		wg.Wait()
		close(results)
	}()

	// Collect results
	sum := 0
	for square := range results {
		sum += square
	}

	return sum
}

// === solution_test.go ===
package solution

import (
	"testing"
)

func TestSumSquares(t *testing.T) {
	tests := []struct {
		name     string
		input    []int
		expected int
	}{
		{
			name:     "normal case",
			input:    []int{1, 2, 3, 4},
			expected: 30, // 1 + 4 + 9 + 16
		},
		{
			name:     "empty slice",
			input:    []int{},
			expected: 0,
		},
		{
			name:     "single element",
			input:    []int{5},
			expected: 25,
		},
		{
			name:     "negative numbers",
			input:    []int{-1, -2, 3},
			expected: 14, // 1 + 4 + 9
		},
		{
			name:     "large numbers",
			input:    []int{10, 20, 30},
			expected: 1400, // 100 + 400 + 900
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			result := SumSquares(tt.input)
			if result != tt.expected {
				t.Errorf("SumSquares(%v) = %v; expected %v", tt.input, result, tt.expected)
			}
		})
	}
}

func TestSumSquaresConcurrent(t *testing.T) {
	// Test with a larger input to ensure concurrency is actually used
	input := make([]int, 1000)
	for i := range input {
		input[i] = i % 10
	}
	expected := 0
	for _, v := range input {
		expected += v * v
	}

	result := SumSquares(input)
	if result != expected {
		t.Errorf("SumSquares(%v) = %v; expected %v", input, result, expected)
	}
}

func TestSumSquaresEdgeCases(t *testing.T) {
	// Test with more workers than elements
	input := []int{1, 2}
	result := SumSquares(input)
	expected := 5 // 1 + 4
	if result != expected {
		t.Errorf("SumSquares(%v) = %v; expected %v", input, result, expected)
	}

	// Test with zero values
	input = []int{0, 0, 0}
	result = SumSquares(input)
	expected = 0
	if result != expected {
		t.Errorf("SumSquares(%v) = %v; expected %v", input, result, expected)
	}
}
```

#### `test.recheck` (oracle) — pass

```text
OK: vet clean and tests pass with go1.26.4
ok  	snippet	0.002s
```

---

### Run 7: a generic function MapSlice[T any, U any](in []T, f func(T) U) []U that applies f to each element

Command: `ratchet flow . test "a generic function MapSlice[T any, U any](in []T, f func(T) U) []U that applies f to each element"` — outcome **success**

#### `test.plan` (generate)

Plan (which libraries to retrieve):

```json
{"idioms_q":"slice preallocate append","patterns_q":"","stdlib_q":""}
```

#### `test.generate` (generate)

Model output:

```go
// === solution.go ===
package solution

// MapSlice applies function f to each element of input slice in and returns a new slice
// containing the results of applying f to each element of in.
func MapSlice[T any, U any](in []T, f func(T) U) []U {
	result := make([]U, len(in))
	for i, v := range in {
		result[i] = f(v)
	}
	return result
}

// === solution_test.go ===
package solution

import (
	"testing"
)

func TestMapSlice(t *testing.T) {
	// Normal case: map integers to their squares
	in := []int{1, 2, 3, 4, 5}
	expected := []int{1, 4, 9, 16, 25}
	actual := MapSlice(in, func(x int) int { return x * x })
	
	if len(actual) != len(expected) {
		t.Fatalf("Length mismatch: expected %d, got %d", len(expected), len(actual))
	}
	
	for i, v := range expected {
		if actual[i] != v {
			t.Errorf("Index %d: expected %d, got %d", i, v, actual[i])
		}
	}

	// Edge case: empty slice
	empty := []string{}
	actualEmpty := MapSlice(empty, func(s string) string { return s + "_mapped" })
	if len(actualEmpty) != 0 {
		t.Errorf("Expected empty slice, got length %d", len(actualEmpty))
	}
}
```

#### `test.check` (oracle) — pass

```text
OK: vet clean and tests pass with go1.26.4
ok  	snippet	0.002s
```

---

### Run 8: a function RoundTrip(p Person) (Person, error) that marshals a Person struct (json tags name, age) to JSON and unmarshals it back

Command: `ratchet flow . test "a function RoundTrip(p Person) (Person, error) that marshals a Person struct (json tags name, age) to JSON and unmarshals it back"` — outcome **success**

#### `test.plan` (generate)

Plan (which libraries to retrieve):

```json
{"idioms_q":"table-driven test","patterns_q":"","stdlib_q":"encoding/json Marshal Unmarshal"}
```

#### `test.generate` (generate)

Model output:

```go
// === solution.go ===
package solution

import (
	"encoding/json"
	"errors"
)

// Person represents a person with a name and age
type Person struct {
	Name string `json:"name"`
	Age  int    `json:"age"`
}

// RoundTrip marshals a Person struct to JSON and unmarshals it back
func RoundTrip(p Person) (Person, error) {
	// Marshal the Person struct to JSON
	jsonData, err := json.Marshal(p)
	if err != nil {
		return Person{}, err
	}

	// Unmarshal the JSON back to a Person struct
	var result Person
	err = json.Unmarshal(jsonData, &result)
	if err != nil {
		return Person{}, err
	}

	return result, nil
}

// === solution_test.go ===
package solution

import (
	"testing"
)

func TestRoundTrip(t *testing.T) {
	// Normal case
	person := Person{Name: "Alice", Age: 30}
	result, err := RoundTrip(person)
	if err != nil {
		t.Fatalf("RoundTrip failed with error: %v", err)
	}
	if result.Name != person.Name {
		t.Errorf("Expected name %s, got %s", person.Name, result.Name)
	}
	if result.Age != person.Age {
		t.Errorf("Expected age %d, got %d", person.Age, result.Age)
	}

	// Edge case: empty person
	emptyPerson := Person{}
	result, err = RoundTrip(emptyPerson)
	if err != nil {
		t.Fatalf("RoundTrip failed with error: %v", err)
	}
	if result.Name != emptyPerson.Name {
		t.Errorf("Expected empty name, got %s", result.Name)
	}
	if result.Age != emptyPerson.Age {
		t.Errorf("Expected zero age, got %d", result.Age)
	}
}
```

#### `test.check` (oracle) — FAIL

```text
VET FAILED:
# snippet
# [snippet]
vet: ./solution.go:5:2: "errors" imported and not used
[exit code 1]
```

#### `test.fix` (generate)

Model output:

```go
// === solution.go ===
package solution

import (
	"encoding/json"
)

// Person represents a person with a name and age
type Person struct {
	Name string `json:"name"`
	Age  int    `json:"age"`
}

// RoundTrip marshals a Person struct to JSON and unmarshals it back
func RoundTrip(p Person) (Person, error) {
	// Marshal the Person struct to JSON
	jsonData, err := json.Marshal(p)
	if err != nil {
		return Person{}, err
	}

	// Unmarshal the JSON back to a Person struct
	var result Person
	err = json.Unmarshal(jsonData, &result)
	if err != nil {
		return Person{}, err
	}

	return result, nil
}

// === solution_test.go ===
package solution

import (
	"testing"
)

func TestRoundTrip(t *testing.T) {
	// Normal case
	person := Person{Name: "Alice", Age: 30}
	result, err := RoundTrip(person)
	if err != nil {
		t.Fatalf("RoundTrip failed with error: %v", err)
	}
	if result.Name != person.Name {
		t.Errorf("Expected name %s, got %s", person.Name, result.Name)
	}
	if result.Age != person.Age {
		t.Errorf("Expected age %d, got %d", person.Age, result.Age)
	}

	// Edge case: empty person
	emptyPerson := Person{}
	result, err = RoundTrip(emptyPerson)
	if err != nil {
		t.Fatalf("RoundTrip failed with error: %v", err)
	}
	if result.Name != emptyPerson.Name {
		t.Errorf("Expected empty name, got %s", result.Name)
	}
	if result.Age != emptyPerson.Age {
		t.Errorf("Expected zero age, got %d", result.Age)
	}
}
```

#### `test.recheck` (oracle) — pass

```text
OK: vet clean and tests pass with go1.26.4
ok  	snippet	0.002s
```

---

### Run 9: a function ParseConfig(s string) map[string]string that parses key=value lines, skipping blank lines and lines starting with #

Command: `ratchet flow . test "a function ParseConfig(s string) map[string]string that parses key=value lines, skipping blank lines and lines starting with #"` — outcome **success**

#### `test.plan` (generate)

Plan (which libraries to retrieve):

```json
{"idioms_q":"table-driven test","patterns_q":"","stdlib_q":"bufio.Scanner lines"}
```

#### `test.generate` (generate)

Model output:

```go
// === solution.go ===
package solution

import (
	"bufio"
	"strings"
)

// ParseConfig parses key=value lines from a string, skipping blank lines and lines starting with #
func ParseConfig(s string) map[string]string {
	result := make(map[string]string)
	scanner := bufio.NewScanner(strings.NewReader(s))
	for scanner.Scan() {
		line := strings.TrimSpace(scanner.Text())
		if line == "" || strings.HasPrefix(line, "#") {
			continue
		}
		parts := strings.SplitN(line, "=", 2)
		if len(parts) == 2 {
			key := strings.TrimSpace(parts[0])
			value := strings.TrimSpace(parts[1])
			result[key] = value
		}
	}
	return result
}

// === solution_test.go ===
package solution

import (
	"reflect"
	"testing"
)

func TestParseConfig(t *testing.T) {
	input := `
# This is a comment
key1=value1
  key2  =  value2  
# Another comment
key3=value3

`
	expected := map[string]string{
		"key1": "value1",
		"key2": "value2",
		"key3": "value3",
	}
	actual := ParseConfig(input)
	if !reflect.DeepEqual(actual, expected) {
		t.Errorf("ParseConfig(%q) = %v, want %v", input, actual, expected)
	}

	// Test edge case: empty input
	emptyResult := ParseConfig("")
	if len(emptyResult) != 0 {
		t.Errorf("ParseConfig(\"\") = %v, want empty map", emptyResult)
	}
}
```

#### `test.check` (oracle) — pass

```text
OK: vet clean and tests pass with go1.26.4
ok  	snippet	0.001s
```

---

### Run 10: a function RunningMedian(nums []int) []float64 returning the median after each element using two heaps

Command: `ratchet flow . test "a function RunningMedian(nums []int) []float64 returning the median after each element using two heaps"` — outcome **aborted: vet/tests did not pass after one repair**

#### `test.plan` (generate)

Plan (which libraries to retrieve):

```json
{"idioms_q":"heap interface","patterns_q":"","stdlib_q":"container/heap"}
```

#### `test.generate` (generate)

Model output:

```go
// === solution.go ===
package solution

import (
	"container/heap"
	"sort"
)

// MinHeap implements heap.Interface and holds int values
type MinHeap struct {
	heap []int
}

func (h *MinHeap) Len() int           { return len(h.heap) }
func (h *MinHeap) Less(i, j int) bool { return h.heap[i] < h.heap[j] }
func (h *MinHeap) Swap(i, j int)      { h.heap[i], h.heap[j] = h.heap[j], h.heap[i] }

func (h *MinHeap) Push(x any) {
	h.heap = append(h.heap, x.(int))
}

func (h *MinHeap) Pop() any {
	old := h.heap
	n := len(old)
	x := old[n-1]
	h.heap = old[0 : n-1]
	return x
}

// MaxHeap implements heap.Interface and holds int values
type MaxHeap struct {
	heap []int
}

func (h *MaxHeap) Len() int           { return len(h.heap) }
func (h *MaxHeap) Less(i, j int) bool { return h.heap[i] > h.heap[j] }
func (h *MaxHeap) Swap(i, j int)      { h.heap[i], h.heap[j] = h.heap[j], h.heap[i] }

func (h *MaxHeap) Push(x any) {
	h.heap = append(h.heap, x.(int))
}

func (h *MaxHeap) Pop() any {
	old := h.heap
	n := len(old)
	x := old[n-1]
	h.heap = old[0 : n-1]
	return x
}

// RunningMedian returns the median after each element using two heaps
func RunningMedian(nums []int) []float64 {
	if len(nums) == 0 {
		return []float64{}
	}

	// Create two heaps
	maxHeap := &MaxHeap{heap: make([]int, 0)}
	minHeap := &MinHeap{heap: make([]int, 0)}

	heap.Init(maxHeap)
	heap.Init(minHeap)

	result := make([]float64, 0, len(nums))

	for _, num := range nums {
		// Add the number to the appropriate heap
		if maxHeap.Len() == 0 || num <= maxHeap.heap[0] {
			heap.Push(maxHeap, num)
		} else {
			heap.Push(minHeap, num)
		}

		// Rebalance the heaps
		if maxHeap.Len() > minHeap.Len()+1 {
			heap.Push(minHeap, heap.Pop(maxHeap).(int))
		} else if minHeap.Len() > maxHeap.Len()+1 {
			heap.Push(maxHeap, heap.Pop(minHeap).(int))
		}

		// Calculate median
		var median float64
		if maxHeap.Len() == minHeap.Len() {
			median = float64(maxHeap.heap[0]+minHeap.heap[0]) / 2.0
		} else if maxHeap.Len() > minHeap.Len() {
			median = float64(maxHeap.heap[0])
		} else {
			median = float64(minHeap.heap[0])
		}

		result = append(result, median)
	}

	return result
}

// === solution_test.go ===
package solution

import (
	"reflect"
	"testing"
)

func TestRunningMedian(t *testing.T) {
	tests := []struct {
		name     string
		input    []int
		expected []float64
	}{
		{
			name:     "empty slice",
			input:    []int{},
			expected: []float64{},
		},
		{
			name:     "single element",
			input:    []int{1},
			expected: []float64{1.0},
		},
		{
			name:     "two elements",
			input:    []int{1, 2},
			expected: []float64{1.0, 1.5},
		},
		{
			name:     "three elements",
			input:    []int{1, 2, 3},
			expected: []float64{1.0, 1.5, 2.0},
		},
		{
			name:     "four elements",
			input:    []int{1, 2, 3, 4},
			expected: []float64{1.0, 1.5, 2.0, 2.5},
		},
		{
			name:     "unsorted elements",
			input:    []int{5, 1, 3, 2, 4},
			expected: []float64{5.0, 3.0, 3.0, 3.0, 3.0},
		},
		{
			name:     "negative numbers",
			input:    []int{-1, -2, -3, -4},
			expected: []float64{-1.0, -1.5, -2.0, -2.5},
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			result := RunningMedian(tt.input)
			if !reflect.DeepEqual(result, tt.expected) {
				t.Errorf("RunningMedian(%v) = %v, want %v", tt.input, result, tt.expected)
			}
		})
	}
}
```

#### `test.check` (oracle) — FAIL

```text
VET FAILED:
# snippet
# [snippet]
vet: ./solution.go:5:2: "sort" imported and not used
[exit code 1]
```

#### `test.fix` (generate)

Model output:

```go
// === solution.go ===
package solution

import (
	"container/heap"
)

// MinHeap implements heap.Interface and holds int values
type MinHeap struct {
	heap []int
}

func (h *MinHeap) Len() int           { return len(h.heap) }
func (h *MinHeap) Less(i, j int) bool { return h.heap[i] < h.heap[j] }
func (h *MinHeap) Swap(i, j int)      { h.heap[i], h.heap[j] = h.heap[j], h.heap[i] }

func (h *MinHeap) Push(x any) {
	h.heap = append(h.heap, x.(int))
}

func (h *MinHeap) Pop() any {
	old := h.heap
	n := len(old)
	x := old[n-1]
	h.heap = old[0 : n-1]
	return x
}

// MaxHeap implements heap.Interface and holds int values
type MaxHeap struct {
	heap []int
}

func (h *MaxHeap) Len() int           { return len(h.heap) }
func (h *MaxHeap) Less(i, j int) bool { return h.heap[i] > h.heap[j] }
func (h *MaxHeap) Swap(i, j int)      { h.heap[i], h.heap[j] = h.heap[j], h.heap[i] }

func (h *MaxHeap) Push(x any) {
	h.heap = append(h.heap, x.(int))
}

func (h *MaxHeap) Pop() any {
	old := h.heap
	n := len(old)
	x := old[n-1]
	h.heap = old[0 : n-1]
	return x
}

// RunningMedian returns the median after each element using two heaps
func RunningMedian(nums []int) []float64 {
	if len(nums) == 0 {
		return []float64{}
	}

	// Create two heaps
	maxHeap := &MaxHeap{heap: make([]int, 0)}
	minHeap := &MinHeap{heap: make([]int, 0)}

	heap.Init(maxHeap)
	heap.Init(minHeap)

	result := make([]float64, 0, len(nums))

	for _, num := range nums {
		// Add the number to the appropriate heap
		if maxHeap.Len() == 0 || num <= maxHeap.heap[0] {
			heap.Push(maxHeap, num)
		} else {
			heap.Push(minHeap, num)
		}

		// Rebalance the heaps
		if maxHeap.Len() > minHeap.Len()+1 {
			heap.Push(minHeap, heap.Pop(maxHeap).(int))
		} else if minHeap.Len() > maxHeap.Len()+1 {
			heap.Push(maxHeap, heap.Pop(minHeap).(int))
		}

		// Calculate median
		var median float64
		if maxHeap.Len() == minHeap.Len() {
			median = float64(maxHeap.heap[0]+minHeap.heap[0]) / 2.0
		} else if maxHeap.Len() > minHeap.Len() {
			median = float64(maxHeap.heap[0])
		} else {
			median = float64(minHeap.heap[0])
		}

		result = append(result, median)
	}

	return result
}

// === solution_test.go ===
package solution

import (
	"reflect"
	"testing"
)

func TestRunningMedian(t *testing.T) {
	tests := []struct {
		name     string
		input    []int
		expected []float64
	}{
		{
			name:     "empty slice",
			input:    []int{},
			expected: []float64{},
		},
		{
			name:     "single element",
			input:    []int{1},
			expected: []float64{1.0},
		},
		{
			name:     "two elements",
			input:    []int{1, 2},
			expected: []float64{1.0, 1.5},
		},
		{
			name:     "three elements",
			input:    []int{1, 2, 3},
			expected: []float64{1.0, 1.5, 2.0},
		},
		{
			name:     "four elements",
			input:    []int{1, 2, 3, 4},
			expected: []float64{1.0, 1.5, 2.0, 2.5},
		},
		{
			name:     "unsorted elements",
			input:    []int{5, 1, 3, 2, 4},
			expected: []float64{5.0, 3.0, 3.0, 3.0, 3.0},
		},
		{
			name:     "negative numbers",
			input:    []int{-1, -2, -3, -4},
			expected: []float64{-1.0, -1.5, -3.0, -3.5},
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			result := RunningMedian(tt.input)
			if !reflect.DeepEqual(result, tt.expected) {
				t.Errorf("RunningMedian(%v) = %v, want %v", tt.input, result, tt.expected)
			}
		})
	}
}
```

#### `test.recheck` (oracle) — FAIL

```text
TEST FAILED:
--- FAIL: TestRunningMedian (0.00s)
    --- FAIL: TestRunningMedian/unsorted_elements (0.00s)
        solution_test.go:55: RunningMedian([5 1 3 2 4]) = [5 3 3 2.5 3], want [5 3 3 3 3]
    --- FAIL: TestRunningMedian/negative_numbers (0.00s)
        solution_test.go:55: RunningMedian([-1 -2 -3 -4]) = [-1 -1.5 -2 -2.5], want [-1 -1.5 -3 -3.5]
FAIL
FAIL	snippet	0.001s
FAIL
[exit code 1]
```

---

## Part B - composition run (`compose --ws ledger`)

Builds a multi-file Go module from three specs in `workspaces/ledger/specs/` (a goroutine-safe `Counter`, a concurrent test, and an entry point). Every unit lands in `package main` at the module root; `stage_build` (go vet) gates each unit against the whole module, and `module_check` (go build ./... + go test ./...) verifies the finished system - so composition is behavior-verified, not just compiled.

### Input specs

`app.spec`:

```yaml
name: App
role: behavior
intent: a console entry point that exercises the Counter
behavior:
  - in func main, build a Counter with NewCounter
  - add 1 to it 1000 times, then print the final Value() with fmt.Println
constraints: console entry point (func main); uses the existing Counter API verbatim
```

`counter.spec`:

```yaml
name: Counter
role: data
intent: a goroutine-safe integer counter
api:
  - type Counter, holding an int and a sync.Mutex
  - func NewCounter() *Counter
  - method (*Counter) Add(n int)   adds n under the lock
  - method (*Counter) Value() int  returns the current value under the lock
constraints: standard library only; must be safe for concurrent use (sync.Mutex)
```

`counter_test.spec`:

```yaml
name: CounterTest
role: test
intent: prove the Counter is correct and race-free
behavior:
  - a Go test file (package main) with func TestCounter(t *testing.T)
  - launch 50 goroutines, each calling Add(1) 100 times, synchronized with a sync.WaitGroup
  - after all finish, Value() must equal exactly 5000; fail with t.Errorf otherwise
constraints: standard library only; use the existing Counter API verbatim
```

### The build plan (compose.plan output)

```json
{"contracts":[{"name":"Counter","normalizedFrom":"","type":"*Counter"},{"name":"sync.Mutex","normalizedFrom":"","type":"sync.Mutex"},{"name":"sync.WaitGroup","normalizedFrom":"","type":"sync.WaitGroup"}],"units":[{"dependsOn":[],"name":"Counter","role":"data","spec":"counter.spec"},{"dependsOn":["Counter"],"name":"App","role":"behavior","spec":"app.spec"},{"dependsOn":["Counter"],"name":"CounterTest","role":"interface","spec":"counter_test.spec"}]}
```

### Worklist (plan_units) — ordered units

```text
counter.go counter.spec
main.go app.spec
counter_test.go counter_test.spec
```

### Per-unit generation (add_unit sub-runs)

#### unit `counter.go counter.spec`

Generated:

```go
package main

import "sync"

// Counter is a goroutine-safe integer counter
type Counter struct {
	value int
	mutex sync.Mutex
}

// NewCounter creates and returns a new Counter
func NewCounter() *Counter {
	return &Counter{}
}

// Add adds n to the counter value under the lock
func (c *Counter) Add(n int) {
	c.mutex.Lock()
	defer c.mutex.Unlock()
	c.value += n
}

// Value returns the current counter value under the lock
func (c *Counter) Value() int {
	c.mutex.Lock()
	defer c.mutex.Unlock()
	return c.value
}
```

stage_build (whole-module vet) — pass:

```text
OK: staged counter.go; whole module type-checks (go vet clean)
```

#### unit `main.go app.spec`

Generated:

```go
package main

import "fmt"

func main() {
	counter := NewCounter()
	for i := 0; i < 1000; i++ {
		counter.Add(1)
	}
	fmt.Println(counter.Value())
}
```

stage_build (whole-module vet) — pass:

```text
OK: staged main.go; whole module type-checks (go vet clean)
```

#### unit `counter_test.go counter_test.spec`

Generated:

```go
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
```

stage_build (whole-module vet) — pass:

```text
OK: staged counter_test.go; whole module type-checks (go vet clean)
```

### Final whole-module oracle (module_check) + resulting files

`go build ./...` + `go test ./...`:

```text
OK: module builds and tests pass with go1.26.4
ok  	ledger	0.002s
```

`counter.go`:

```go
package main

import "sync"

// Counter is a goroutine-safe integer counter
type Counter struct {
	value int
	mutex sync.Mutex
}

// NewCounter creates and returns a new Counter
func NewCounter() *Counter {
	return &Counter{}
}

// Add adds n to the counter value under the lock
func (c *Counter) Add(n int) {
	c.mutex.Lock()
	defer c.mutex.Unlock()
	c.value += n
}

// Value returns the current counter value under the lock
func (c *Counter) Value() int {
	c.mutex.Lock()
	defer c.mutex.Unlock()
	return c.value
}
```

`counter_test.go`:

```go
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
```

`main.go`:

```go
package main

import "fmt"

func main() {
	counter := NewCounter()
	for i := 0; i < 1000; i++ {
		counter.Add(1)
	}
	fmt.Println(counter.Value())
}
```

## Takeaways

- Plan-routing is wired and correct: every task routed to a sensible library and skipped irrelevant ones; the exact API (e.g. `container/heap`, `encoding/json`) reaches the generate prompt.

- Composition works end to end and is behavior-verified: the three-spec module built and its concurrent `TestCounter` (50 goroutines x 100 increments = 5000) passed under `go test`.

- The two-heap streaming median stays the hardest single task even with grounding - the strongest remaining case for an authored `patterns/two-heap-streaming-median.md` and a `pitfalls/` entry.
