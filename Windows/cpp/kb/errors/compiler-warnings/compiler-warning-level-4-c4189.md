# Compiler Warning (level 3 and level 4) C4189

> '*identifier*' : local variable is initialized but not referenced

## Remarks

A variable is declared and initialized but not used.

## Examples

The following example generates C4189:

```cpp
// C4189.cpp
// compile with: /W4
int main() {
   int a = 1;   // C4189
}
```

In Visual Studio 2017 version 15.5 and later, warning C4189 is emitted in more cases, as shown in the following code:

```cpp
void f() {
    char s[2] = {0}; // C4189
}
```

To fix the error, remove the unused variable or add the `[[maybe_unused]]` attribute.