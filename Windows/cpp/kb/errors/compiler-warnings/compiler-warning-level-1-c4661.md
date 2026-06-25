# Compiler Warning (level 1) C4661

> 'identifier' : no suitable definition provided for explicit template instantiation request

## Remarks

A member of the template class is not defined.

## Example

The following example generates C4661:

```cpp
// C4661.cpp
// compile with: /W1 /LD
template<class T> class MyClass {
public:
   void i();   // declaration but not definition
};
template MyClass< int >;  // C4661
```