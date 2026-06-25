# Compiler Warning (level 1, Error) C4229

> anachronism used: modifiers on data are ignored

## Remarks

Using a Microsoft modifier such as **`__cdecl`** on a data declaration is an outdated practice.

## Example

The following example generates C4229:

```cpp
// C4229.cpp
// compile with: /W1 /LD
int __cdecl counter;   // C4229
```