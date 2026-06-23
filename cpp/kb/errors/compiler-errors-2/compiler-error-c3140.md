# Compiler Error C3140

> cannot have multiple 'module' attributes in the same compilation unit

## Remarks

The [module](../../windows/attributes/module-cpp.md) attribute can only be defined once per project.

## Example

The following example generates C3140:

```cpp
// C3140.cpp
// compile with: /c
[emitidl];
[module(name = "MyLibrary")];
[module(name = "MyLibrary2")];   // C3140
```