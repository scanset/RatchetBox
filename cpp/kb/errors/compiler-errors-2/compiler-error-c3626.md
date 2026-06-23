# Compiler Error C3626

> 'keyword': '__event' keyword can only be used on COM interfaces, member functions and data members that are pointers to delegates

## Remarks

A keyword was used incorrectly.

## Example

The following example generates C3626:

```cpp
// C3626.cpp
// compile with: /c
struct A {
   __event int i;   // C3626
// try the following line instead
// __event int i();
};
```