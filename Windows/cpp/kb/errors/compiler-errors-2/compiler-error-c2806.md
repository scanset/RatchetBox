# Compiler Error C2806

> 'operator operator' has too many formal parameters

## Remarks

An overloaded operator has too many parameters.

## Example

The following example generates C2806:

```cpp
// C2806.cpp
// compile with: /c
class X {
public:
   X operator++ ( int, int );   // C2806 more than 1 parameter
   X operator++ ( int );   // OK
} ;
```