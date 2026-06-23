# Compiler Error C2104

> '&' on bit field ignored

## Remarks

You cannot take the address of a bit field.

## Example

The following example generates C2104:

```cpp
// C2104.cpp
struct X {
   int sb : 1;
};

int main() {
   X x;
   &x.sb;   // C2104
   x.sb;   // OK
}
```