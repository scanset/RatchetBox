# Compiler Error C2345

> align(value) : illegal alignment value

## Remarks

You passed a value to the [align](../../cpp/align-cpp.md) keyword that is outside the allowable range.

## Example

The following example generates C2345:

```cpp
// C2345.cpp
// compile with: /c
__declspec(align(8)) int a;   // OK
__declspec(align(16384)) int b;   // C2345
```