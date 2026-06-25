# Compiler Error C3874

> return type of 'function' should be 'int' instead of 'type'

## Remarks

A function does not have the return type that was expected by the compiler.

## Example

The following example generates C3874:

```cpp
// C3874b.cpp
double main()
{   // C3874
}
```