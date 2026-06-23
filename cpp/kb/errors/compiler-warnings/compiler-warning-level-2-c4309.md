# Compiler Warning (level 2) C4309

> 'conversion' : truncation of constant value

## Remarks

The type conversion causes a constant to exceed the space allocated for it. You may need to use a larger type for the constant.

## Example

The following example generates C4309:

```cpp
// C4309.cpp
// compile with: /W2
int main()
{
   char c = 128;   // C4309
}
```