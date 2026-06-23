# NMAKE Warning U4011

> 'target' : not all dependents available; target not built

## Remarks

A dependent of the given target either did not exist or was out-of-date, and a command for updating the dependent returned a nonzero exit code. The /K option told NMAKE to continue processing unrelated parts of the build and to issue an exit code 1 when the NMAKE session is finished.

This warning is preceded by warning [U4010](../../error-messages/tool-errors/nmake-warning-u4010.md) for each dependent that failed to be created or updated.