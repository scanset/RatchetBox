# Compiler Error C2637

> 'identifier' : cannot modify pointers to data members

## Remarks

A pointer to a data member cannot have a calling convention. To resolve, either remove the calling convention or declare a pointer to member function.

## Example

The following example generates C2637:

```cpp
// C2637.cpp
// compile with: /c
struct S {};
int __stdcall S::*pms1;   // C2637

// OK
int S::*pms2;
int (__stdcall S::*pms3)(...);
```