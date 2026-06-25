# Compiler Error C3634

> 'function' : cannot define an abstract method of a managed or WinRTclass

## Remarks

An abstract method can be declared in a managed or WinRT class, but it cannot be defined.

## Example

The following example generates C3634:

```cpp
// C3634.cpp
// compile with: /clr
ref class C {
   virtual void f() = 0;
};

void C::f() {   // C3634 - don't define managed class' pure virtual method
}
```