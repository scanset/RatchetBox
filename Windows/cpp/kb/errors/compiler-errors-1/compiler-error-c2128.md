# Compiler Error C2128

> 'function' : alloc_text/same_seg applicable only to functions with C linkage

## Remarks

`#pragma alloc_text` can only be used with functions declared to have C linkage.

## Example

The following example generates C2128:

```cpp
// C2128.cpp
// compile with: /c

// Delete the following line to resolve.
void func();
// #pragma alloc_text("my segment", func)   // C2128

extern "C" {
void func();
}

#pragma alloc_text("my segment", func)
void func() {}
```