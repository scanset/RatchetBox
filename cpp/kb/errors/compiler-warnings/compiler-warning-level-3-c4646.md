# Compiler Warning (level 3) C4646

> function declared with __declspec(noreturn) has non-void return type

## Remarks

A function marked with the [noreturn](../../cpp/noreturn.md) **`__declspec`** modifier should have a [void](../../cpp/void-cpp.md) return type.

## Example

The following example generates C4646:

```cpp
// C4646.cpp
// compile with: /W3 /WX
int __declspec(noreturn) TestFunction()
{   // C4646  make return type void
}
```