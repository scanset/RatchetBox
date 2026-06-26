package main

import "fmt"

func main() {
	counter := NewCounter()
	for i := 0; i < 1000; i++ {
		counter.Add(1)
	}
	fmt.Println(counter.Value())
}
