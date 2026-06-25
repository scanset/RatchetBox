# Compiler Error C2628

> 'type1' followed by 'type2' is illegal (did you forget a ';'?)

## Remarks

A semicolon may be missing.

## Example

The following example generates C2628:

```cpp
// C2628.cpp
class CMyClass {}
int main(){}   // C2628 error
```

Possible resolution:

```cpp
// C2628b.cpp
class CMyClass {};
int main(){}
```