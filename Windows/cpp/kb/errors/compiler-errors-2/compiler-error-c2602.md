# Compiler Error C2602

> 'class::Identifier' is not a member of a base class of 'class'

## Remarks

`Identifier` cannot be accessed because it is not a member inherited from any base class.

## Example

The following example generates C2602:

```cpp
// C2602.cpp
// compile with: /c
struct X {
   int x;
};
struct A {
   int a;
};
struct B : public A {
   X::x;   // C2602 B is not derived from X
   A::a;   // OK
};
```