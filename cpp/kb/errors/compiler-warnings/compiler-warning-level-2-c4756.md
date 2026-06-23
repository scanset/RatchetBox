# Compiler Warning (level 2) C4756

> overflow in constant arithmetic

## Remarks

The compiler generated an exception while doing constant arithmetic during compilation.

## Example

The following example generates C4756:

```cpp
// C4756.cpp
// compile with: /W2 /Od
int main()
{
   float f = 1e100+1e100;   // C4756
}
```