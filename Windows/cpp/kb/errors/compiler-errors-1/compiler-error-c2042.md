# Compiler Error C2042

> signed/unsigned keywords mutually exclusive

## Remarks

The keywords **`signed`** and **`unsigned`** are used in a single declaration.

## Example

The following example generates C2042:

```cpp
// C2042.cpp
unsigned signed int i;   // C2042
```

Possible resolution:

```cpp
// C2042b.cpp
// compile with: /c
unsigned int i;
signed int ii;
```