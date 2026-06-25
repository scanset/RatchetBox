# Compiler Error C3457

> 'attribute': attribute does not support unnamed arguments

## Remarks

Source annotation attributes, unlike CLR custom attribute or compiler attributes, only support named arguments.

## Example

The following example generates C3457.

```cpp
#include "SourceAnnotations.h"
[vc_attributes::Post( 1 )] int f();   // C3457
[vc_attributes::Post( Valid=vc_attributes::Yes )] int f2();   // OK
```