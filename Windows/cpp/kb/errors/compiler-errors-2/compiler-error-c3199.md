# Compiler Error C3199

> invalid use of floating-point pragmas: exceptions are not supported in non-precise mode

## Remarks

The [float_control](../../preprocessor/float-control.md) pragma was used to specify floating-point exception model under an [/fp](../../build/reference/fp-specify-floating-point-behavior.md) setting other than **/fp:precise**.

## Example

The following example generates C3199:

```cpp
// C3199.cpp
// compile with: /fp:fast
#pragma float_control(except, on)   // C3199
```