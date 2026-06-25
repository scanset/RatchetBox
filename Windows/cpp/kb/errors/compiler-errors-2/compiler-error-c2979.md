# Compiler Error C2979

> explicit specializations are not supported in generics

## Remarks

A generic class was declared incorrectly.  See [Generics](../../extensions/generics-cpp-component-extensions.md) for more information.

## Example

The following example generates C2979.

```cpp
// C2979.cpp
// compile with: /clr /c
generic <>
ref class Utils {};   // C2979 error

generic <class T>
ref class Utils2 {};   // OK
```