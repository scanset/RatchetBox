# Compiler Error C2657

> 'class::*' found at the start of a statement (did you forget to specify a type?)

## Remarks

The line began with a pointer-to-member identifier.

This error can be caused by a missing type specifier in the declaration of a pointer to a member.

## Example

The following example generates C2657:

```cpp
// C2657.cpp
class C {};
int main() {
   C::* pmc1;        // C2657
   int C::* pmc2;   // OK
}
```