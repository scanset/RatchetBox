# Compiler Warning (levels 2 and 3) C4008

> 'identifier' : 'attribute' attribute ignored

## Remarks

The compiler ignored the **`__fastcall`**, **`static`**, or **`inline`** attribute for a function (level 3 warning) or data (level 2 warning).

### To fix by checking the following possible causes

1. **`__fastcall`** attribute with data.

1. **`static`** or **`inline`** attribute with **main** function.