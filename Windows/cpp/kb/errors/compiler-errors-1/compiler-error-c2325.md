# Compiler Error C2325

> 'type' : unexpected type to the right of 'name'

## Remarks

A call is made to a destructor of incorrect type.

## Example

The following example generates C2325:

```cpp
// C2325.cpp
// compile with: /c
class A {};
typedef A* pA_t;
void f() {
    A** ppa = new A *;
    ppa->~A*;   // C2325

   pA_t *ppa2 = new pA_t;
   ppa2->~pA_t();   // OK
}
```