# Compiler Error C3354

> 'function' : the function used to create a delegate cannot have return type 'type'

## Remarks

The following types are invalid as return types for a **`delegate`**:

- Pointer to function

- Pointer to member

- Pointer to member function

- Reference to function

- Reference to member function

## Example

The following example generates C3354:

```cpp
// C3354_2.cpp
// compile with: /clr /c
using namespace System;
typedef void ( *VoidPfn )();

delegate VoidPfn func(); // C3354
// try the following line instead
// delegate  void func();
```