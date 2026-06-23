# Compiler Error C2794

> 'function' : is not a member of any direct or indirect base class of 'class'

## Remarks

You tried to use [super](../../cpp/super.md) to call a nonexistent member function.

## Example

The following example generates C2794

```cpp
// C2794.cpp
struct B {
   void mf();
};

struct D : B {
   void mf() {
      __super::f();  // C2794
   }
};
```