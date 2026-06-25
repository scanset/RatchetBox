# Compiler Warning (level 1) C4041

> compiler limit : terminating browser output

## Remarks

Browser information exceeded the compiler limit.

This warning can be caused by compiling with [/FR](../../build/reference/fr-fr-create-dot-sbr-file.md) (browser information including local variables).

### To fix by using the following possible solutions

1. Compile with /Fr (browser information without local variables).

1. Disable browser output (compile without /FR or /Fr).