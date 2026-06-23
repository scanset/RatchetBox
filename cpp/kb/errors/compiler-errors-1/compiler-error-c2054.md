# Compiler Error C2054

> expected '(' to follow 'identifier'

## Remarks

The function identifier is used in a context that requires trailing parentheses.

This error can be caused by omitting an equal sign (=) on a complex initialization.

## Example

The following example generates C2054:

```c
// C2054.c
int array1[] { 1, 2, 3 };   // C2054, missing =
```

Possible resolution:

```c
// C2054b.c
int main() {
   int array2[] = { 1, 2, 3 };
}
```