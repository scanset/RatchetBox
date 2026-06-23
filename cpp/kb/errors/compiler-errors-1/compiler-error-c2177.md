# Compiler Error C2177

> constant too big

## Remarks

A constant value is too large for the variable type it is assigned.

## Example

The following example generates C2177:

```cpp
// C2177.cpp
int main() {
   int a=18446744073709551616;   // C2177
   int b=18446744073709551615;   // OK
}
```