# Compiler Error C2094

> label 'identifier' was undefined

## Remarks

The label used by a [goto](../../cpp/goto-statement-cpp.md) statement does not exist in the function.

## Example

The following example generates C2094:

```cpp
// C2094.c
int main() {
   goto test;
}   // C2094
```

Possible resolution:

```cpp
// C2094b.c
int main() {
   goto test;
   test:
   {
   }
}
```