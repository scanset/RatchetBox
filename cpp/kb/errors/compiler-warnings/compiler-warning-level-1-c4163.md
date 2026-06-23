# Compiler Warning (level 1) C4163

> 'identifier' : not available as an intrinsic function

## Remarks

The specified function cannot be used as an [intrinsic](../../preprocessor/intrinsic.md) function. The compiler ignores the invalid function name.

## Example

The following example generates C4163:

```cpp
// C4163.cpp
// compile with: /W1 /LD
#include <math.h>
#pragma intrinsic(mysin)   // C4163
// try the following line instead
// #pragma intrinsic(sin)
```