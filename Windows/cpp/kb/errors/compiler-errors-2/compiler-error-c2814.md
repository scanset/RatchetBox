# Compiler Error C2814

> 'member' : a native type cannot be nested within a managed or WinRT type 'type'

## Remarks

A native type cannot be nested in a CLR or WinRT type.

## Example

The following example generates C2814 and shows how to fix it.

```cpp
// C2814.cpp
// compile with: /clr /c
ref class A {
   class B {};   // C2814
   ref class C {};   // OK
};
```