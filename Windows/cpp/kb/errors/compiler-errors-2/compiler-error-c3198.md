# Compiler Error C3198

> invalid use of floating-point pragmas: fenv_access pragma operates only in precise mode

## Remarks

[fenv_access](../../preprocessor/fenv-access.md) pragma was used under an [/fp](../../build/reference/fp-specify-floating-point-behavior.md) setting other than **/fp:precise**.

## Example

The following example generates C3198:

```cpp
// C3198.cpp
// compile with: /fp:fast
#pragma fenv_access(on)   // C3198
```