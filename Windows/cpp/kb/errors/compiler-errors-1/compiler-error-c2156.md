# Compiler Error C2156

> pragma must be outside function

## Remarks

A pragma that must be specified at a global level (outside a function body) is within a function.

## Example

The following example generates C2156:

```cpp
// C2156.cpp
#pragma optimize( "l", on )   // OK
int main() {
   #pragma optimize( "l", on )   // C2156
}
```