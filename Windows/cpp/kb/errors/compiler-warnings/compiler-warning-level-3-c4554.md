# Compiler Warning (level 3) C4554

> 'operator' : check operator precedence for possible error; use parentheses to clarify precedence

## Example

The following example generates C4554:

```cpp
// C4554.cpp
// compile with: /W3 /WX
int main() {
   int a = 0, b = 0, c = 0;
   a = a << b + c;   // C4554
   // probably intended (a << b) + c,
   // but will get a << (b + c)
}
```