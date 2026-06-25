# Compiler Error C2761

> 'function' : member function redeclaration not allowed

## Remarks

You cannot redeclare a member function. You can define it, but not redeclare it.

## Examples

The following example generates C2761.

```cpp
// C2761.cpp
class a {
   int t;
   void test();
};

void a::a;     // C2761
void a::test;  // C2761
```

Nonstatic members of a class or structure cannot be defined.  The following example generates C2761.

```cpp
// C2761_b.cpp
// compile with: /c
struct C {
   int s;
   static int t;
};

int C::s;   // C2761
int C::t;   // OK
```