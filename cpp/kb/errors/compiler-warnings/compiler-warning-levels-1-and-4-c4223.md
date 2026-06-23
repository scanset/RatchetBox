# Compiler Warning (level 1 and level 4) C4223

> nonstandard extension used: non-lvalue array converted to pointer

## Remarks

In standard C, you can't convert a nonlvalue array to a pointer. With the default Microsoft extensions ([`/Ze`](../../build/reference/za-ze-disable-language-extensions.md)), you can.