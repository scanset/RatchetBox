# Compiler Error C2838

> 'member' : illegal qualified name in member declaration

## Remarks

A class, structure, or union uses a fully qualified name to redeclare a member of another class, structure, or union.

## Example

The following example generates C2838:

```cpp
// C2838.cpp
// compile with: /c
class Bellini {
public:
    void Norma();
};

class Bottesini {
   Bellini::Norma();  // C2838
};
```