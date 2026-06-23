# Compiler Warning (level 1) C4122

> 'function' : alloc_text applicable only to functions with C linkage

## Remarks

The **alloc_text** pragma applies only to functions declared with **extern c**. It cannot be used with external C++ functions.

The pragma is ignored.