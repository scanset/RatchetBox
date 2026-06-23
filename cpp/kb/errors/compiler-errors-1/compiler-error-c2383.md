# Compiler Error C2383

> '*symbol*' : default-arguments are not allowed on this symbol

## Remarks

The C++ compiler does not allow default arguments on pointers to functions.

This code was accepted by the Microsoft C++ compiler in versions before Visual Studio 2005, but now gives an error. For code that works in all versions of Visual C++, do not assign a default value to a pointer-to-function argument.

## Example

The following example generates C2383, and shows a possible solution:

```cpp
// C2383.cpp
// compile with: /c
void (*pf)(int = 0);   // C2383
void (*pf)(int);   // OK
```