# Compiler Warning (level 1) C4602

> #pragma pop_macro : 'macro name' no previous #pragma push_macro for this identifier

## Remarks

If you use [pop_macro](../../preprocessor/pop-macro.md) for a particular macro, you must first have passed that macro name to [push_macro](../../preprocessor/push-macro.md).

## Example

For example, the following example generates C4602:

```cpp
// C4602.cpp
// compile with: /W1
int main()
{
   #pragma pop_macro("x")   // C4602 x is not on the stack
}
```