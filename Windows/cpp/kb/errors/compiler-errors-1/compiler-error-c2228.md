# Compiler Error C2228

> left of '.identifier' must have class/struct/union

## Remarks

The operand to the left of the period (.) is not a class, structure, or union.

## Example

The following example generates C2228:

```cpp
// C2228.cpp
int i;
struct S {
public:
    int member;
} s, *ps = &s;

int main() {
   i.member = 0;   // C2228 i is not a class type
   ps.member = 0;  // C2228 ps is a pointer to a structure

   s.member = 0;   // s is a structure type
   ps->member = 0; // ps points to a structure S
}
```

You will also see this error if you use incorrect syntax when using Managed Extensions. Whereas in other Visual Studio languages, you can use the dot operator to access a member of a managed class, a pointer to the object in C++ means you have to use the -> operator to access the member:

Wrong: `String * myString = checkedListBox1->CheckedItems->Item[0].ToString();`

Right: `String * myString = checkedListBox1->CheckedItems->Item[0]->ToString();`