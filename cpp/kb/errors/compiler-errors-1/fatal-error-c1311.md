# Fatal Error C1311

> COFF format cannot statically initialize 'var' with number byte(s) of an address

## Remarks

An address whose value is not known at compile time cannot be statically assigned to a variable whose type has storage of less than four bytes.

This error can occur on code that is otherwise valid C++.

## Example

The following example shows one condition that might cause C1311.

```
char c = (char)"Hello, world";   // C1311
char *d = (char*)"Hello, world";   // OK
```