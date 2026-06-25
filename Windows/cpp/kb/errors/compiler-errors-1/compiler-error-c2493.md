# Compiler Error C2493

> illegal form of __based

## Remarks

A **`__based`** expression must be based on a pointer.

## Example

The following example generates C2493:

```cpp
// C2493.cpp
// compile with: /c
char mybase;
int __based(mybase) ptr;   // C2493

// OK
char * mybase;
int __based(mybase) * ptr;
```