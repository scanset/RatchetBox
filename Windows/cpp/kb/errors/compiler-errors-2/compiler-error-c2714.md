# Compiler Error C2714

> `alignof(void)` is not allowed

## Remarks

An invalid value was passed to an operator.

See [`alignof` operator](../../cpp/alignof-operator.md) for more information.

## Example

The following example generates C2714.

```cpp
// C2714.cpp
int main() {
   return alignof(void);   // C2714
   return alignof(char);   // OK
}
```