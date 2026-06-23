# Compiler Error C2671

> 'function' : static member functions do not have 'this' pointers

## Remarks

A **`static`** member function tried to access **`this`**.

## Example

The following example generates C2671:

```cpp
// C2671.cpp
struct S {
   static S* const func() { return this; }  // C2671
};
```