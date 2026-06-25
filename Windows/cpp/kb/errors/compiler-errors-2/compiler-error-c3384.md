# Compiler Error C3384

> 'type_parameter' : the value constraint and the ref constraint are mutually exclusive

## Remarks

You cannot constrain a generic type to both **`value class`** and **`ref class`**.

See [Constraints on Generic Type Parameters (C++/CLI)](../../extensions/constraints-on-generic-type-parameters-cpp-cli.md) for more information.

## Example

The following example generates C3384.

```cpp
// C3384.cpp
// compile with: /c /clr
generic <typename T>
where T : ref class
where T : value class   // C3384
ref class List {};
```