# Compiler Warning (level 1) C4348

> 'type' : redefinition of default parameter : parameter number

## Remarks

A template parameter was redefined.

## Example

The following example generates C4348:

```cpp
// C4348.cpp
// compile with: /LD /W1
template <class T=int> struct A;   // forward declaration

template <class T=int> struct A { };
// C4348, redefinition of default parameter
// try the following line instead
// template <class T> struct A { };
```