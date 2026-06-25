# Compiler Error C2124

> divide or mod by zero

## Remarks

A constant expression has a zero denominator. To resolve the error, do not divide by zero.

## Example

The following example generates C2124:

```cpp
// C2124.cpp
int main() {
  int i = 1 / 0;   // C2124  do not divide by zero
  int i2 = 12 / 2;   // OK
}
```