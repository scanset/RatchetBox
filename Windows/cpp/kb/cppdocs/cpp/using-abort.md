# Using abort

Calling the [abort](../c-runtime-library/reference/abort.md) function causes immediate termination. It bypasses the normal destruction process for initialized global static objects. It also bypasses any special processing that was specified using the `atexit` function.

## See also

[Additional Termination Considerations](../cpp/additional-termination-considerations.md)