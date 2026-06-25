# Compiler Error C2798

> 'super::member' is ambiguous

## Remarks

Multiple inherited structures contain the member you referenced with [super](../../cpp/super.md). You could fix the error by either:

- Removing B1 or B2 from the inheritance list of D.

- Changing the name of the data member in B1 or B2.

## Example

The following example generates C2798:

```cpp
// C2798.cpp
struct B1 {
   int i;
};

struct B2 {
   int i;
};

struct D : B1, B2 {
   void g() {
      __super::i = 4; // C2798
   }
};
```