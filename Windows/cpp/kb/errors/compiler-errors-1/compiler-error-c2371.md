# Compiler Error C2371

> 'identifier' : redefinition; different basic types

## Remarks

The identifier is already declared.

## Example

The following example generates C2371:

```cpp
// C2371.cpp
int main() {
   int i;
   float i;   // C2371, redefinition
   float f;   // OK
}
```