# TemplateMethod (Behavioral Go design pattern)

TemplateMethod is a behavioral design pattern. Idiomatic Go implementation with a runnable example below.

## template_method.go

```go
// Package template_method is an example of the Template Method Pattern.
// In fact, this pattern is based on Abstract Class and Polymorphism.
// But there’s nothing like that in Go, so the composition will be applied.
package template_method

// QuotesInterface provides an interface for setting different quotes.
type QuotesInterface interface {
	Open() string
	Close() string
}

// Quotes implements a Template Method.
type Quotes struct {
	QuotesInterface
}

// Quotes is the Template Method.
func (q *Quotes) Quotes(str string) string {
	return q.Open() + str + q.Close()
}

// NewQuotes is the Quotes constructor.
func NewQuotes(qt QuotesInterface) *Quotes {
	return &Quotes{qt}
}

// FrenchQuotes implements wrapping the string in French quotes.
type FrenchQuotes struct {
}

// Open sets opening quotes.
func (q *FrenchQuotes) Open() string {
	return "«"
}

// Close sets closing quotes.
func (q *FrenchQuotes) Close() string {
	return "»"
}

// GermanQuotes implements wrapping the string in German quotes.
type GermanQuotes struct {
}

// Open sets opening quotes.
func (q *GermanQuotes) Open() string {
	return "„"
}

// Close sets closing quotes.
func (q *GermanQuotes) Close() string {
	return "“"
}

```

## template_method_test.go (runnable example)

```go
package template_method

import (
	"testing"
)

func TestTemplateMethod(t *testing.T) {

	expect := "«Test String»"

	qt := NewQuotes(&FrenchQuotes{})

	result := qt.Quotes("Test String")

	if result != expect {
		t.Errorf("Expect result to equal %s, but %s.\n", expect, result)
	}
}

```

