# Compiler Error C2674

> a generic declaration is not allowed in this context

## Remarks

A generic was declared incorrectly. For more information, see [Generics](../../extensions/generics-cpp-component-extensions.md).

## Example

The following example generates C2674.

```cpp
// C2674.cpp
// compile with: /clr /c
void F(generic <class T> ref class R1);   // C2674
generic <class T> ref class R2 {};   // OK
```