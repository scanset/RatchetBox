# Compiler Error C2882

> 'name' : illegal use of namespace identifier in expression

## Remarks

You tried to use the name of a namespace in an expression.

## Example

The following example generates C2882:

```cpp
// C2882.cpp
// compile with: /c
namespace A {
   int k;
}

int i = A;   // C2882, can't assign A to i
```