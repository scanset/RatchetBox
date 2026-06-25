# Compiler Error C3156

> 'class' : you cannot have a local definition of a managed or WinRT type

## Remarks

A function cannot contain the definition, or declaration, of a managed or WinRT class, struct, or interface.

## Example

The following example generates C3156.

```cpp
// C3156.cpp
// compile with: /clr /c
void f() {
   ref class X {};   // C3156
   ref class Y;   // C3156
}
```