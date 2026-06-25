# Compiler Error C2489

> 'identifier' : initialized auto or register variable not allowed at function scope in 'naked' function

## Remarks

For more information, see [naked](../../cpp/naked-cpp.md).

## Example

The following example generates C2489:

```cpp
// C2489.cpp
// processor: x86
__declspec( naked ) int func() {
   int i = 1;   // C2489
   register int j = 1;   // C2489
}
```