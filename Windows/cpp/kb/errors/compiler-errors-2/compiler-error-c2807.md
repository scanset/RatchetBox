# Compiler Error C2807

> the second formal parameter to postfix 'operator operator' must be 'int'

## Remarks

The second parameter to a postfix operator has the wrong type.

## Example

The following example generates C2807:

```cpp
// C2807.cpp
// compile with: /c
class X {
public:
   X operator++ ( X );   // C2807 nonvoid parameter
   X operator++ ( int );   // OK, int parameter
};
```