# Compiler Error C2118

> negative subscript

## Remarks

The value defining the array size is larger than the maximum array size or smaller than zero.

## Example

The following example generates C2118:

```cpp
// C2118.cpp
int main() {
   int array1[-1];   // C2118
   int array2[3];   // OK
}
```