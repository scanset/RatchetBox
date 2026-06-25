# Compiler Error C2792

> 'super' : this keyword must be followed by '::'

## Remarks

The only token that can follow the keyword **`__super`** is `::`.

## Example

The following example generates C2792:

```cpp
// C2792.cpp
struct B {
   void mf();
};

struct D : B {
   void mf() {
      __super.();   // C2792

      // try the following line instead
      // __super::mf();
   }
};
```