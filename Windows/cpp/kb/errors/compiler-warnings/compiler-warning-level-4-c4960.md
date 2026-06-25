# Compiler Warning (level 4) C4960

> 'function' is too big to be profiled

## Remarks

When using [/LTCG:PGOPTIMIZE](../../build/reference/ltcg-link-time-code-generation.md), the compiler detected an input module with a function larger than 65,535 instructions. Such a large function is not available for profile-guided optimizations.

To resolve this warning, reduce the size of the function.