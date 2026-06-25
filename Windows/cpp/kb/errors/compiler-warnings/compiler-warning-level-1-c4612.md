# Compiler Warning (level 1) C4612

> error in include filename

## Remarks

This warning occurs with **#pragma include_alias** when a filename is incorrect or missing.

The arguments to the **#pragma include_alias** statement can use the quote form ("*filename*") or angle-bracket form (\<*filename*>), but both must use the same form.

## Example

The following example generates C4612:

```cpp
// C4612.cpp
// compile with: /W1 /LD
#pragma include_alias("StandardIO", <stdio.h>) // C4612
```