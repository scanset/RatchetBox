# Compiler Error C2528

> 'name' : pointer to reference is illegal

## Remarks

You cannot declare a pointer to a reference. Dereference the variable before declaring a pointer to it.

## Example

The following example generates C2528:

```cpp
// C2528.cpp
int i;
int &ir = i;
int & (*irptr) = ir;    // C2528
```