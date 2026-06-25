# Compiler Error C2531

> 'identifier' : reference to a bit field illegal

## Remarks

References to bit fields are not allowed.

## Example

The following example generates C2531:

```cpp
// C2531.cpp
// compile with: /c
class P {
   int &b1 : 10;   // C2531
   int b2 : 10;   // OK
};
```