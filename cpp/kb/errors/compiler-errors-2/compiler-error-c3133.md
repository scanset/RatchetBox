# Compiler Error C3133

> Attributes cannot be applied to C++ varargs

## Remarks

An attribute was applied incorrectly. Attributes can not be applied to an ellipsis representing variable arguments.

For more information, see [User-Defined Attributes](../../extensions/user-defined-attributes-cpp-component-extensions.md).

## Example

The following example generates C3133.

```cpp
// C3133.cpp
// compile with: /clr /c
ref struct MyAttr: System::Attribute {};
void Func([MyAttr]...);   // C3133
void Func2([MyAttr] int i);   // OK
```