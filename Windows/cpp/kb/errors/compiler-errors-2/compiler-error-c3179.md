# Compiler Error C3179

> an unnamed managed or WinRT type is not allowed

## Remarks

All CLR and WinRT classes and structs must have names.

## Example

The following example generates C3179 and shows how to fix it:

```cpp
// C3179a.cpp
// compile with: /clr /c
typedef value struct { // C3179
// try the following line instead
// typedef value struct MyStruct {
   int i;
} V;
```