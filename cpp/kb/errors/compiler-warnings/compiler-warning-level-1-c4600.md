# Compiler Warning (level 1) C4600

> #pragma 'macro name' : expected a valid non-empty string

## Remarks

You cannot specify an empty string when you push or pop a macro name with either the [pop_macro](../../preprocessor/pop-macro.md) or [push_macro](../../preprocessor/push-macro.md).

## Example

The following example generates C4600:

```cpp
// C4600.cpp
// compile with: /W1
int main()
{
   #pragma push_macro("")   // C4600 passing an empty string
}
```