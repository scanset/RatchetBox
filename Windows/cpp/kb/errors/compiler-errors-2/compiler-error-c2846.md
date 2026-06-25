# Compiler Error C2846

> 'constructor' : an interface cannot have a constructor

## Remarks

A Visual C++ [interface](../../cpp/interface.md) cannot have a constructor.

## Example

The following example generates C2846:

```cpp
// C2846.cpp
// compile with: /c
__interface C {
   C();   // C2846 constructor not allowed in an interface
};
```