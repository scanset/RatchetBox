# Compiler Warning (level 1) C4185

> ignoring unknown #import attribute 'attribute'

## Remarks

The attribute is not a valid attribute of `#import`. It is ignored.

## Example

The following example generates C4185:

```cpp
// C4185.cpp
// compile with: /W1 /c
#import "stdole2.tlb" no_such_attribute   // C4185
```