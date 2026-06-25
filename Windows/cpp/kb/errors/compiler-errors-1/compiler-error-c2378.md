# Compiler Error C2378

> 'identifier' : redefinition; symbol cannot be overloaded with a typedef

## Remarks

The identifier was redefined as a **`typedef`**.

## Example

The following example generates C2378:

```cpp
// C2378.cpp
// compile with: /c
int i;
typedef int i;   // C2378
typedef int b;   // OK
```