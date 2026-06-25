# Compiler Error C2634

> '&class::member' : pointer to reference member is illegal

## Remarks

A pointer to a reference member is declared.

## Example

The following example generates C2634:

```cpp
// C2634.cpp
int mem;
struct S {
   S() : rf(mem) { }
   int &rf;
};
int (S::*pdm) = &S::rf;   // C2634
```