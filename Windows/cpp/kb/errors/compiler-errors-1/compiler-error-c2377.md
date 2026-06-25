# Compiler Error C2377

> 'identifier' : redefinition; typedef cannot be overloaded with any other symbol

## Remarks

A **`typedef`** identifier is redefined.

## Example

The following example generates C2377:

```cpp
// C2377.cpp
// compile with: /c
typedef int i;
int i;   // C2377
int j;   // OK
```