# Compiler Error C2334

> unexpected token(s) preceding ': or {'; skipping apparent function body

## Example

The following example generates C2334. This error occurs after error C2059:

```cpp
// C2334.cpp
// compile with: /c
// C2059 expected
struct s1 {
   s1   {}   // C2334
   s1() {}   // OK
};
```