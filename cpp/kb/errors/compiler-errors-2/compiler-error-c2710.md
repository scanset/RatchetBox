# Compiler Error C2710

> 'construct' : '__declspec(modifier)' can only be applied to a function returning a pointer

## Remarks

A function whose return value is a pointer is the only construct to which `modifier` can be applied.

## Example

The following example generates C2710:

```cpp
// C2710.cpp
__declspec(restrict) void f();   // C2710
// try the following line instead
__declspec(restrict) int * g();
```