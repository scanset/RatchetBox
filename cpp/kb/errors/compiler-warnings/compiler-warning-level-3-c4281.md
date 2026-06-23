# Compiler Warning (level 3) C4281

> 'operator ->' recursion occurred through type 'type'

## Remarks

Your code allows **operator->** to call itself.

## Example

The following example generates C4281:

```cpp
// C4281.cpp
// compile with: /W3 /WX
struct A;
struct B;
struct C;

struct A
{
   int z;
   B& operator->();
};

struct B
{
   C& operator->();
};

struct C
{
   A& operator->();
};

void f(A p)
{
   int i = p->z; // C4281
}
```