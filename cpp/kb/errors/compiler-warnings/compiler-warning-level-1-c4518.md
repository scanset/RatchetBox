# Compiler Warning (level 1) C4518

> 'specifier' : storage-class or type specifier(s) unexpected here; ignored

## Example

The following example generates C4518:

```cpp
// C4518.cpp
// compile with: /c /W1
_declspec(dllexport) extern "C" void MyFunction();   // C4518

extern "C" void MyFunction();   // OK
```