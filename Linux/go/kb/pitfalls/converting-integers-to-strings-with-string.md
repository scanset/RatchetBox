# Pitfall: converting integers to strings with string()

Go ACCEPTS `string(n)` and `string(rune(n))` but produces the wrong result: the Unicode code point for that value, not its decimal text. This silently corrupts generated keys/ids/values at runtime.

- Use `strconv.Itoa(n)` or `fmt.Sprintf("%d", n)` to get decimal string representation.
- Use `string(rune(n))` ONLY when you actually want the character for a code point.
- Avoid implicit conversions that look like string operations but aren't.

```go
// WRONG - produces wrong character, not decimal text
key := string(65)     // yields "A", not "65"
val := string(rune(58)) // yields ":", not "58"

// RIGHT - produces decimal text
key := strconv.Itoa(65)     // yields "65"
val := strconv.Itoa(58)     // yields "58"
// or
key := fmt.Sprintf("%d", 65) // yields "65"
