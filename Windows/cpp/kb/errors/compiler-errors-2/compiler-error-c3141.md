# Compiler Error C3141

> 'interface_name' : interfaces only support public inheritance

## Remarks

Interfaces defined with the [interface (or __interface)](../../cpp/interface.md) keyword only support public inheritance.

## Example

The following example generates C3141:

```cpp
// C3141.cpp
__interface IBase {};
__interface IDerived1 : protected IBase {};  // C3141
__interface IDerived2 : private IBase {};    // C3141
```