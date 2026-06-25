# Compiler Error C3553

> decltype expects an expression not a type

## Remarks

The `decltype()` keyword requires an expression as an argument, not the name of a type.

## Example

For example, the last statement in the following code fragment yields error C3553.

```cpp
int x = 0;
decltype(x+1);
decltype(int); // C3553
```