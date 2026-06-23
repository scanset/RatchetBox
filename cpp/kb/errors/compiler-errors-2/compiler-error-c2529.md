# Compiler Error C2529

> 'name' : reference to reference is illegal

## Remarks

This error may be fixed by using pointer syntax and declaring a reference to a pointer.

## Example

The following example generates C2529:

```cpp
// C2529.cpp
// compile with: /c
int i;
int &ri = i;
int &(&rri) = ri;   // C2529
```