# Compiler Error C2461

> '*class*' : constructor syntax missing formal parameters

## Remarks

The constructor for the class does not specify any formal parameters. The declaration of a constructor must specify a formal parameter list. The list can be empty.

To fix this issue, add a pair of parentheses after the declaration of *class*::**class*.

## Example

The following example shows how to fix C2461:

```cpp
// C2461.cpp
// compile with: /c
class C {
   C::C;     // C2461
   C::C();   // OK
};
```