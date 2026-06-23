# Compiler Error C2586

> incorrect user-defined conversion syntax : illegal indirections

## Remarks

Indirection of a conversion operator is not allowed.

## Example

The following example generates C2586:

```cpp
// c2586.cpp
// compile with: /c
struct C {
   * operator int();   // C2586
   operator char();   // OK
};
```