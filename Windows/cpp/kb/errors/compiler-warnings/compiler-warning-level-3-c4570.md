# Compiler Warning (level 3) C4570

> 'type' : is not explicitly declared as abstract but has abstract functions

## Remarks

A type that contains [abstract](../../extensions/abstract-cpp-component-extensions.md) functions should itself be marked as abstract.

## Example

The following example generates C4570.

```cpp
// C4570.cpp
// compile with: /clr /W3 /c
ref struct X {   // C4570
// try the following line instead
// ref class X abstract {
   virtual void f() abstract;
};
```