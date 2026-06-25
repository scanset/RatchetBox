# Compiler Error C2250

> 'identifier' : ambiguous inheritance of 'class::member'

## Remarks

The derived class inherits more than one override of a virtual function of a virtual base class. These overrides are ambiguous in the derived class.

## Example

The following example generates C2250:

```cpp
// C2250.cpp
// compile with: /c
// C2250 expected
struct V {
   virtual void vf();
};

struct A : virtual V {
   void vf();
};

struct B : virtual V {
   void vf();
};

struct D : A, B {
   // Uncomment the following line to resolve.
   // void vf();
};
```