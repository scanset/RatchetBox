# Compiler Warning (level 1) C4470

> floating-point control pragmas ignored under /clr

## Remarks

The float-control pragmas:

- [fenv_access](../../preprocessor/fenv-access.md)

- [float_control](../../preprocessor/float-control.md)

- [fp_contract](../../preprocessor/fp-contract.md)

have no effect under [/clr](../../build/reference/clr-common-language-runtime-compilation.md).

## Example

The following example generates C4470:

```cpp
// C4470.cpp
// compile with: /clr /W1 /LD
#pragma float_control(except, on)   // C4470
```