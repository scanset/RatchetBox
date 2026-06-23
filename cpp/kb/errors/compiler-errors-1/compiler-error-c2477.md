# Compiler Error C2477

> 'member' : static data member cannot be initialized via derived class

## Remarks

A static data member of a template class was initialized incorrectly. This is a breaking change with versions of the Microsoft C++ compiler prior to Visual Studio .NET 2003, in order to conform to the ISO C++ standard.

## Example

The following example generates C2477:

```cpp
// C2477.cpp
// compile with: /Za /c
template <class T>
struct S {
   static int n;
};

struct X {};
struct A: S<X> {};

int A::n = 0;   // C2477

template<>
int S<X>::n = 0;
```