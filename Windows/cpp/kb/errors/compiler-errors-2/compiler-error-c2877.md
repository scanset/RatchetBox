# Compiler Error C2877

> 'symbol' is not accessible from 'class'

## Remarks

All members derived from a base class must be accessible in the derived class.

## Example

The following example generates C2877:

```cpp
// C2877.cpp
// compile with: /c
class A {
private:
   int a;
};

class B : public A {
   using A::a;   // C2877
};
```