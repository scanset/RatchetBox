# Compiler Error C2279

> exception specification cannot appear in a typedef declaration

## Remarks

Under **/Za**, [exception specifications](../../cpp/exception-specifications-throw-cpp.md) are not allowed in a typedef declaration.

## Example

The following example generates C2279:

```cpp
// C2279.cpp
// compile with: /Za /c
typedef int (*xy)() throw(...);   // C2279
typedef int (*xyz)();   // OK
```