# Compiler Error C2111

> '+' : pointer addition requires integral operand

## Remarks

An attempt was made to add a nonintegral value to a pointer using the plus (`+`) operator.

## Example

The following example generates C2111:

```cpp
// C2111.cpp
int main() {
   int *a = 0, *pa = 0, b = 0;
   double d = 0.00;

   a = pa + d;   // C2111
   a = pa + b;   // OK
}
```