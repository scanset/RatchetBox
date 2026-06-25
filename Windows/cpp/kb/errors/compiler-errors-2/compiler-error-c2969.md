# Compiler Error C2969

> syntax error : 'symbol' : expected member function definition to end with '}'

## Remarks

A template member function definition has an unmatched closing brace.

## Example

The following example generates C2969:

```cpp
// C2969.cpp
// compile with: /c
class A {
   int i;
public:
   A(int i) {}
};

A anA(1);

class B {
   A a;
   B() : a(anA);   // C2969
   // try the following line instead
   // B() : a(anA) {}
};
```