# Compiler Error C2379

> formal parameter number has different type when promoted

## Remarks

The type of the specified parameter is not compatible, through default promotions, with the type in a previous declaration. This is an error in ANSI C ([/Za](../../build/reference/za-ze-disable-language-extensions.md)) and a warning with Microsoft extensions (**/Ze**).

## Example

The following example generates C2379:

```c
// C2379.c
// compile with: /Za
void func();
void func(char);   // C2379, char promotes to int
```