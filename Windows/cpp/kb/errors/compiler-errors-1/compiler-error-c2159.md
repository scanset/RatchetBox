# Compiler Error C2159

> more than one storage class specified

## Remarks

A declaration contains more than one storage class.

## Example

The following example generates C2159:

```cpp
// C2159.cpp
// compile with: /c
static int i;   // OK
extern static int i;   // C2159
```