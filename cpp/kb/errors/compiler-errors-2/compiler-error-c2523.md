# Compiler Error C2523

> 'class::~identifier' : destructor/finalizer tag mismatch

## Remarks

The name of the destructor must be the class name preceded by a tilde (`~`). The constructor and destructor are the only members that have the same name as the class.

## Example

The following example generates C2523:

```cpp
// C2523.cpp
// compile with: /c
class A {
   ~B();    // C2523
   ~A();   // OK
};
```