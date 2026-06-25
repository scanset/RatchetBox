# BSCMAKE Warning BK4502

> truncated .SBR file 'filename' not in filename

## Remarks

A zero-length .sbr file that was not originally part of the .bsc file was specified during an update.

### To fix by checking the following possible causes

1. Wrong filename specified.

1. File deleted. (Error [BK1513](../../error-messages/tool-errors/bscmake-error-bk1513.md) results.)

1. File corrupted, requiring BSCMAKE to do a full build.