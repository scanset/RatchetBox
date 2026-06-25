# Compiler Error C2612

> trailing 'char' illegal in base/member initializer list

## Remarks

A character appears after the last base or member in an initializer list.

## Example

The following example generates C2612:

```cpp
// C2612.cpp
class A {
public:
   int i;
   A( int ia ) : i( ia ) + {};   // C2612
};
```