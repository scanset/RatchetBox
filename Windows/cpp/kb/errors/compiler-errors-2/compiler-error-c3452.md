# Compiler Error C3452

> list argument member not constant

## Remarks

An argument was passed to an attribute that expected a constant, a value that can be evaluated at compile time.

## Example

The following example generates C3452.

```cpp
// C3452.cpp
// compile with: /c
int i;
[module( name="mod", type=dll, custom={i} ) ];   // C3452
// try the following line instead
// [module( name="mod", type=dll, custom={"a"} ) ];
```