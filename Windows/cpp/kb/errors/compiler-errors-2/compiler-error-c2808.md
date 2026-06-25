# Compiler Error C2808

> unary 'operator operator' has too many formal parameters

## Remarks

The unary operator has a nonvoid parameter list.

## Example

The following example generates C2808:

```cpp
// C2808.cpp
// compile with: /c
class X {
public:
   X operator! ( X );   // C2808 nonvoid parameter list
   X operator! ( void );   // OK
};
```