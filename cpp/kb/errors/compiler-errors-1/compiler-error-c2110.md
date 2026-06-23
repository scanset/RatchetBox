# Compiler Error C2110

> '+' : cannot add two pointers

## Remarks

An attempt was made to add two pointer values using the plus (`+`) operator.

## Example

The following example generates C2110:

```cpp
// C2110.cpp
int main() {
   int a = 0;
   int *pa;
   int *pb;
   a = pa + pb;   // C2110
}
```