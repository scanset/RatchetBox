# Builder (Creational Go design pattern)

Builder is a creational design pattern. Idiomatic Go implementation with a runnable example below.

## builder.go

```go
// Package builder is an example of the Builder Pattern.
package builder

// Builder provides a builder interface.
type Builder interface {
	MakeHeader(str string)
	MakeBody(str string)
	MakeFooter(str string)
}

// Director implements a manager
type Director struct {
	builder Builder
}

// Construct tells the builder what to do and in what order.
func (d *Director) Construct() {
	d.builder.MakeHeader("Header")
	d.builder.MakeBody("Body")
	d.builder.MakeFooter("Footer")
}

// ConcreteBuilder implements Builder interface.
type ConcreteBuilder struct {
	product *Product
}

// MakeHeader builds a header of document..
func (b *ConcreteBuilder) MakeHeader(str string) {
	b.product.Content += "<header>" + str + "</header>"
}

// MakeBody builds a body of document.
func (b *ConcreteBuilder) MakeBody(str string) {
	b.product.Content += "<article>" + str + "</article>"
}

// MakeFooter builds a footer of document.
func (b *ConcreteBuilder) MakeFooter(str string) {
	b.product.Content += "<footer>" + str + "</footer>"
}

// Product implementation.
type Product struct {
	Content string
}

// Show returns product.
func (p *Product) Show() string {
	return p.Content
}

```

## builder_test.go (runnable example)

```go
package builder

import (
	"testing"
)

func TestBuilder(t *testing.T) {

	expect := "<header>Header</header>" +
		"<article>Body</article>" +
		"<footer>Footer</footer>"

	product := new(Product)

	director := Director{&ConcreteBuilder{product}}
	director.Construct()

	result := product.Show()

	if result != expect {
		t.Errorf("Expect result to %s, but %s", result, expect)
	}
}

```

