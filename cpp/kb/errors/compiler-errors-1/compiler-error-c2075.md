# Compiler Error C2075

> 'identifier' : array initialization needs curly braces

## Remarks

There were no curly braces around the specified array initializer.

## Example

The following example generates C2075:

```c
// C2075.c
int main() {
   int i[] = 1, 2, 3 };   // C2075
}
```

Possible resolution:

```c
// C2075b.c
int main() {
   int j[] = { 1, 2, 3 };
}
```