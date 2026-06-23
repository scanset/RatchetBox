# Compiler Error C3240

> 'function' : must be a non-overloaded abstract member function of 'type'

## Remarks

A base type contained a function that was defined. Function must be virtual.

## Example

The following example generates C3240.

```cpp
// C3240.cpp
// compile with: /c
__interface I {
   void f();
};

struct A1 : I {
   void f() {}
};

struct A2 : I {
   void f() = 0;
};

template <class T>
struct A3 : T {
   void T::f() {}
};

template <class T>
struct A4 : T {
   void T::f() {}
};

A3<A1> x;   // C3240
A3<I> x2;
A4<A2> x3;
```