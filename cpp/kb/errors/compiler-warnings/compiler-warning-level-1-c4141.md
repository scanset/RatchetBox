# Compiler Warning (level 1, Error) C4141

> '*modifier*': used more than once

## Example

The following example generates C4141:

```cpp
// C4141.cpp
// compile with: /W1 /LD
inline inline void func ();   // C4141
```