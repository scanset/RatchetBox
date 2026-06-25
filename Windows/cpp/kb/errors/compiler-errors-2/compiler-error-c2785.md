# Compiler Error C2785

> 'declaration1' and 'declaration2' have different return types

## Remarks

The return type of function template specialization differs from the return type of the primary function template.

### To correct this error

1. Check all specializations of the function template for consistency.

## Example

The following example generates C2785:

```cpp
// C2785.cpp
// compile with: /c
template<class T> void f(T);

template<> int f(int); // C2785
template<> void f(int); // OK
```