# Compiler Error C2438

> 'identifier' : cannot initialize static class data via constructor

## Remarks

A constructor is used to initialize a static member of a class. Static members must be initialized in a definition outside the class declaration.

## Example

The following example generates C2438:

```cpp
// C2438.cpp
struct X {
   X(int i) : j(i) {}   // C2438
   static int j;
};

int X::j;

int main() {
   X::j = 1;
}
```