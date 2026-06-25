# Compiler Error C2100

> illegal indirection

## Remarks

Indirection operator (`*`) is applied to a nonpointer value.

## Example

The following example generates C2100:

```cpp
// C2100.cpp
int main() {
   int r = 0, *s = 0;
   s = &r;
   *r = 200;   // C2100
   *s = 200;   // OK
}
```