# Compiler Warning (level 3) C4280

> 'operator ->' was self recursive through type 'type'

## Remarks

Your code incorrectly allows **operator->** to call itself.

## Example

The following example generates C4280:

```cpp
// C4280.cpp
// compile with: /W3 /WX
struct A
{
   int z;
   A& operator ->();
};

void f(A y)
{
   int i = y->z; // C4280
}
```