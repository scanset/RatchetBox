# Compiler Error C2191

> second parameter list longer than first

## Remarks

A C function was declared a second time with a longer parameter list. C does not support overloaded functions. Without [`/Za`](../../build/reference/za-ze-disable-language-extensions.md), the compiler emits [Compiler Warning (level 1) C4031](../compiler-warnings/compiler-warning-level-1-c4031.md) instead.

## Example

The following example generates C2191:

```c
// C2191.c
// compile with: /Za /c

void func1(int);
void func1(int, float);   // C2191, longer parameter list

void func2(int, float);   // OK
```

## See also

[Compiler Error C2190](compiler-error-c2190.md)