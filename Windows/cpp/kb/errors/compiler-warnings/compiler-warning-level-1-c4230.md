# Compiler Warning (level 1) C4230

> anachronism used : modifiers/qualifiers interspersed; qualifier ignored

## Remarks

Using a qualifier before a Microsoft modifier such as **`__cdecl`** is an outdated practice.

## Example

The following example generates C4230:

```cpp
// C4230.cpp
// compile with: /W1 /LD
int __cdecl const function1();   // C4230 const ignored
```