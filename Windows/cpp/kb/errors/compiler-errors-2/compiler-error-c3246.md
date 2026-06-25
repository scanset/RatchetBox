# Compiler Error C3246

> 'class' : cannot inherit from 'type' as it has been declared as 'sealed'

## Remarks

A class that is marked as [sealed](../../extensions/sealed-cpp-component-extensions.md) cannot be the base class for any other classes.

## Example

The following example generates C3246:

```cpp
// C3246_2.cpp
// compile with: /clr /LD
ref class X sealed {};

ref class Y : public X {}; // C3246
```