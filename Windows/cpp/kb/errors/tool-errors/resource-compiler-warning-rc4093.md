# Resource Compiler Warning RC4093

> unescaped newline in character constant in inactive code

## Remarks

The constant expression of an `#if`, `#elif`, **#ifdef**, or **#ifndef** preprocessor directive evaluated to zero, making the code that follows inactive. Within that inactive code, a newline character appeared within a set of single or double quotation marks.

All text until the next double quotation mark was considered to be within a character constant.