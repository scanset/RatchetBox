# Compiler Error C2809

> 'operator operator' has no formal parameters

## Remarks

The operator lacks required parameters.

## Example

The following example generates C2809:

```cpp
// C2809.cpp
// compile with: /c
class A{};
int operator+ ();   // C2809
int operator+ (A);   // OK
```