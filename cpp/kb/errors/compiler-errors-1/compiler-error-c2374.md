# Compiler Error C2374

> 'identifier' : redefinition; multiple initialization

## Remarks

The identifier is initialized more than once.

## Example

The following example generates C2374:

```cpp
// C2374.cpp
// compile with: /c
int i = 0;
int i = 1;   // C2374
int j = 1;   // OK
```