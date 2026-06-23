# Compiler Error C2904

> 'identifier' : name already used for a template in the current scope

## Remarks

Check the code for duplicate names.

## Example

The following example generates C2904:

```cpp
// C2904.cpp
// compile with: /c
void X();  // X is declared as a function
template<class T> class X{};  // C2904
```