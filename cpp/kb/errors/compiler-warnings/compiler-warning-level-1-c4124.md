# Compiler Warning (level 1) C4124

> __fastcall with stack checking is inefficient

## Remarks

The **`__fastcall`** keyword was used with stack checking enabled.

The **`__fastcall`** convention generates faster code, but stack checking causes slower code. When using **`__fastcall`**, turn off stack checking with the **check_stack** pragma or /Gs.

This warning is issued only for the first function declared under these conditions.