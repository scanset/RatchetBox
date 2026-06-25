# Compiler Error C2109

> subscript requires array or pointer type

## Remarks

The subscript was used on a variable that was not an array.

## Example

The following example generates C2109:

```cpp
// C2109.cpp
int main() {
   int a, b[10] = {0};
   a[0] = 1;   // C2109
   b[0] = 1;   // OK
}
```