# Compiler Warning (level 4) C4206

> nonstandard extension used : translation unit is empty

## Remarks

The file was empty after preprocessing.

This extension can prevent your code from being portable to other compilers. It generates an error under ANSI compatibility ([/Za](../../build/reference/za-ze-disable-language-extensions.md)) and only applies to C source code.