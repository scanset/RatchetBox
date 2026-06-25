# Compiler Error C2238

> unexpected token(s) preceding 'token'

## Remarks

An incorrect token was found.

## Example

The following example generates C2238:

```cpp
// C2238.cpp
// compile with: /c
class v {
virtual: int vvv;   // C2238
};
```