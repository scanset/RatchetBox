# Compiler Warning (level 1) C4228

> nonstandard extension used : qualifiers after comma in declarator list are ignored

## Remarks

Use of qualifiers like **`const`** or **`volatile`** after a comma when declaring variables is a Microsoft extension ([/Ze](../../build/reference/za-ze-disable-language-extensions.md)).

## Example

The following example generates C4228:

```cpp
// C4228.cpp
// compile with: /W1
int j, const i = 0;  // C4228
int k;
int const m = 0;  // ok
int main()
{
}
```