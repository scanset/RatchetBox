# Compiler Warning (level 1) C4804

> 'operation' : unsafe use of type 'bool' in operation

## Remarks

This warning is for when you used a **`bool`** variable or value in an unexpected way. For example, C4804 is generated if you use operators such as the negative unary operator (**-**) or the complement operator (`~`). The compiler evaluates the expression.

## Example

The following example generates C4804:

```cpp
// C4804.cpp
// compile with: /W1

int main()
{
   bool i = true;
   if (-i)   // C4804, remove the '-' to resolve
   {
      i = false;
   }
}
```