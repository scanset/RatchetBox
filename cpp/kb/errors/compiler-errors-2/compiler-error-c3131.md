# Compiler Error C3131

> project must have a 'module' attribute with a 'name' property

## Remarks

The [module](../../windows/attributes/module-cpp.md) attribute must have a name parameter.

## Example

The following example generates C3131:

```cpp
// C3131.cpp
[emitidl];
[module];   // C3131
// try the following line instead
// [module (name="MyLib")];

[public]
typedef long int LongInt;
```