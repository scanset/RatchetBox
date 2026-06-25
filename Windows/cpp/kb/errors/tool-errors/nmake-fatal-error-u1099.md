# NMAKE Fatal Error U1099

> stack overflow

## Remarks

The makefile being processed was too complex for the current stack allocation in NMAKE. NMAKE has an allocation of 0x3000 (12K).

To increase NMAKE's stack allocation, run the [editbin /stack](../../build/reference/stack.md) utility with a larger stack option:

**editbin /STACK:reserve NMAKE.EXE**

where *reserve* is a number greater than the current stack allocation in NMAKE.