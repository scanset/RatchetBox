# Compiler Error C2473

> 'identifier' : looks like a function definition, but there is no parameter list.

## Remarks

The compiler detected what looked like a function, without the parameter list.

## Example

The following example generates C2473.

```cpp
// C2473.cpp
// compile with: /clr /c
class A {
   int i {}   // C2473
};

class B {
   int i() {}   // OK
};
```