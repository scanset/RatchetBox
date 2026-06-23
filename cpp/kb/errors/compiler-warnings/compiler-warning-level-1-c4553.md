# Compiler Warning (level 1) C4553

> 'operator' : operator has no effect; did you intend 'operator'?

## Remarks

If an expression statement has an operator with no side effect as the top of the expression, it's probably a mistake.

## Example

The following example generates C4553:

```cpp
// C4553.cpp
// compile with: /W1
int func()
{
   return 0;
}

int main()
{
   int i;
   i == func();   // C4553
   // try the following line instead
   // i = func();
}
```