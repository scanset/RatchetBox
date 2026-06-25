# Compiler Error C3320

> 'type': type cannot have the same name as the module 'name' property

## Remarks

An exported user-defined type (UDT), which could be a struct, class, enum, or union, cannot have the same name as the parameter passed to the [module](../../windows/attributes/module-cpp.md) attribute's name property.

## Example

The following example generates C3320:

```cpp
// C3320.cpp
#include "unknwn.h"
[module(name="xx")];

[export] struct xx {   // C3320
// Try the following line instead
// [export] struct yy {
   int i;
};
```