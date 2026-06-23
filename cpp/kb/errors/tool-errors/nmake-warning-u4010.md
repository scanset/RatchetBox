# NMAKE Warning U4010

> 'target' : build failed; /K specified, continuing ...

## Remarks

A command in the commands block for the given target returned a nonzero exit code. The /K option told NMAKE to continue processing unrelated parts of the build and to issue an exit code 1 when the NMAKE session is finished.

If the given target is, itself, a dependent for another target, NMAKE issues warning [U4011](../../error-messages/tool-errors/nmake-warning-u4011.md) after this warning.