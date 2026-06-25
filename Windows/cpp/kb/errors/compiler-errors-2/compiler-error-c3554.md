# Compiler Error C3554

> 'decltype' cannot be combined with any other type-specifier

## Remarks

You cannot qualify the `decltype()` keyword with any type specifier.

## Example

For example, the following code fragment yields error C3554.

```cpp
int x;
unsigned decltype(x); // C3554
```