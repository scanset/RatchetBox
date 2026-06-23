# Compiler Error C3347

> 'arg': required argument is not specified in attribute idl_module

## Remarks

A required argument was not passed to the [idl_module](../../windows/attributes/idl-module.md) attribute.

## Example

The following example generates C3347:

```cpp
// C3347.cpp
// compile with: /c
[module(name="xx")];

[idl_module(dllname="x")];    // C3347
// try the following line instead
// [idl_module(name="test", dllname="x")];
```