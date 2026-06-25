# NMAKE Fatal Error U1087

> cannot have : and :: dependents for same target

## Remarks

A target cannot be specified in both a single-colon (**:**) and a double-colon (`::`) dependency.

To specify a target in multiple description blocks, use `::` in each dependency line.