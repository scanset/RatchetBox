# Compiler Error C2793

> 'token' : unexpected token following '::', identifier or keyword 'operator' expected

## Remarks

The only tokens that can follow `__super::` are an identifier or the keyword **`operator`**.

## Example

The following example generates C2793

```cpp
// C2793.cpp
struct B {
   void mf();
};

struct D : B {
   void mf() {
      __super::(); // C2793
   }
};
```