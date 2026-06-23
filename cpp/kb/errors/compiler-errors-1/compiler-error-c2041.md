# Compiler Error C2041

> illegal digit 'character' for base 'number'

## Remarks

The specified character is not a valid digit for the base (such as octal or hex).

## Example

The following example generates C2041:

```cpp
// C2041.cpp
int i = 081;   // C2041  8 is not a base 8 digit
```

Possible resolution:

```cpp
// C2041b.cpp
// compile with: /c
int j = 071;
```