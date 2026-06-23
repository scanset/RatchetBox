# Compiler Error C3291

> 'default' : cannot be the name of a trivial property

## Remarks

A trivial property cannot be named **`default`**. See [property](../../extensions/property-cpp-component-extensions.md) for more information.

## Example

The following example generates C3291.

```cpp
// C3291.cpp
// compile with: /clr /c
ref struct C {
   property System::String ^ default;   // C3291
   property System::String ^ Default;   // OK
};
```