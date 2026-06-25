# Math Error M6111

> stack underflow

## Remarks

A floating-point operation resulted in a stack underflow on the 8087/287/387 coprocessor or the emulator.

This error is often caused by a call to a **`long double`** function that does not return a value.

## Example

For example, the following generates this error when compiled and run:

```c
long double ld() {}
int main ()
{
  ld();
}
```

Program terminates with exit code 139.