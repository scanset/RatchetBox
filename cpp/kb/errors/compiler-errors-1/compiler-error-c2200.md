# Compiler Error C2200

> 'function': function has already been defined

## Remarks

An [`alloc_text`](../../preprocessor/alloc-text.md) pragma uses a function name already defined. Ensure the `alloc_text` pragma appears after the function declaration but before its definition.

## Example

The following example generates C2200:

```cpp
// C2200.cpp
// compile with: /c
extern "C" void func() {}
#pragma alloc_text("section", func)   // C2200
```