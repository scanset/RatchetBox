# Compiler Error C2092

> 'array name' array element type cannot be function

## Remarks

Arrays of functions are not allowed. Use an array of pointers to functions.

## Example

The following example generates C2092:

```cpp
// C2092.cpp
typedef void (F) ();
typedef F AT[10];   // C2092
```

Possible resolution:

```cpp
// C2092b.cpp
// compile with: /c
typedef void (F) ();
typedef F * AT[10];
```