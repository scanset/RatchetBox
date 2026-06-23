# Compiler Error C2624

> local classes cannot be used to declare 'extern' variables

## Remarks

A local class or structure cannot be used to declare **`extern`** variables.

## Example

The following example generates C2624:

```cpp
// C2624.cpp
int main() {
   struct C {};
   extern C ac;   // C2624
}
```