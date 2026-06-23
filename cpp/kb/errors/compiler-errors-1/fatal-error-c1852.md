# Fatal Error C1852

> 'filename' is not a valid precompiled header file

## Remarks

The file is not a precompiled header.

### To fix by checking the following possible causes

1. Invalid file specified with **/Yu** or **#pragma hdrstop**.

1. The compiler assumes a file extension of .pch if you do not specify otherwise.