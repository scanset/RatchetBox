# Compiler Error C3136

> 'interface' : a COM interface can only inherit from another COM interface, 'interface' is not a COM interface

## Remarks

An interface to which you applied an [interface attribute](../../windows/attributes/interface-attributes.md) inherits from an interface that is not a COM interface. A COM interface ultimately inherits from `IUnknown`. Any interface preceded by an interface attribute is a COM interface.

## Example

The following example generates C3136:

```cpp
// C3136.cpp
#include "unknwn.h"

__interface A   // C3136
// try the following line instead
// _interface A : IUnknown
{
   int a();
};

[object]
__interface B : A
{
   int aa();
};
```