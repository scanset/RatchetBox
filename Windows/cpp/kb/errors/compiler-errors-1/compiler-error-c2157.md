# Compiler Error C2157

> 'function' : must be declared before use in pragma list

## Remarks

The function name is not declared before being referenced in the list of functions for an [alloc_text](../../preprocessor/alloc-text.md) pragma.

## Example

The following example generates C2157:

```cpp
// C2157.cpp
// compile with: /c
#pragma alloc_text( "func", func)   // C2157

// OK
extern "C" void func();
#pragma alloc_text( "func", func)
```