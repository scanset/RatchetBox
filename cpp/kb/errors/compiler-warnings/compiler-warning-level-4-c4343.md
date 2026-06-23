# Compiler Warning (level 4) C4343

> #pragma optimize("g",off) overrides /Og option

## Remarks

This warning, only valid in the Itanium Processor Family (IPF) compiler, reports that a pragma [optimize](../../preprocessor/optimize.md) overrode a [/Og](../../build/reference/og-global-optimizations.md) compiler option.

## Example

The following example generates C4343:

```cpp
// C4343.cpp
// compile with: /Og /W4 /LD
// processor: IPF
#pragma optimize ("g", off)   // C4343
```