# Compiler Warning (level 1) C4076

> '*type modifier*' : can not be used with type '*typename*'

## Remarks

A type modifier, whether it is **`signed`** or **`unsigned`**, cannot be used with a non-integer type. *type modifier* is ignored.

## Example

The following example generates C4076; to fix it, remove the **`unsigned`** type modifier:

```cpp
// C4076.cpp
// compile with: /W1 /LD
unsigned double x;   // C4076
```