# Compiler Error C2614

> 'class1' : illegal member initialization: 'class2' is not a base or member

## Remarks

Only member or base classes can appear in the initialization list for a class or structure.

## Example

The following example generates C2614.

```cpp
// C2614.cpp
// compile with: /c
struct A {
   int i;
   A( int ia ) : B( i ) {}   // C2614 B is not a member of A
};

struct A2 {
   int B;
   int i;
   A2( int ia ) : B( i ) {}   // OK
};
```