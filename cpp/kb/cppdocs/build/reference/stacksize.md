# STACKSIZE

Sets the size of the stack in bytes.

```
STACKSIZE reserve[,commit]
```

## Remarks

An equivalent way to set the stack is with the [Stack Allocations](stack-stack-allocations.md) (/STACK) option. See the documentation on that option for details about the *reserve* and `commit` arguments.

This option has no effect on DLLs.

## See also

[Rules for Module-Definition Statements](rules-for-module-definition-statements.md)