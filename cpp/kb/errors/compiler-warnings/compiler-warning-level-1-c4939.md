# Compiler Warning (level 1) C4939

> #pragma vtordisp is deprecated and will be removed in a future release of Visual C++

## Remarks

The [vtordisp](../../preprocessor/vtordisp.md) pragma will be removed in a future release of Visual C++.

## Example

The following example generates C4939.

```cpp
// C4939.cpp
// compile with: /c /W1
#pragma vtordisp(off)   // C4939
```