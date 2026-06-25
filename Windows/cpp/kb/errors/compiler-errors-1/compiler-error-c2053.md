# Compiler Error C2053

> 'identifier' : wide string mismatch

## Remarks

The wide string is assigned to an incompatible type.

## Example

The following example generates C2053:

```c
// C2053.c
int main() {
   char array[] = L"Rika";   // C2053
}
```