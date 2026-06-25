# LOWORD macro

Retrieves the low-order word from the specified value.

## Syntax

``` c++
WORD LOWORD(
   DWORD l
);
```

## -parameters

### -param l

The value to be converted.

## -return

Type: **WORD**

The return value is the low-order word of the specified value.

## Requirements

| Requirement | Value |
|---------|---------|
|Minimum supported client     | Windows 2000 Professional [desktop apps only]        |
|Minimum supported server     | Windows 2000 Server [desktop apps only]        |
|Header     | minwindef.h (include Windows.h)        |

## See also

[HIWORD](hiword.md), [LOBYTE](lobyte.md), [MAKELPARAM](/windows/win32/api/winuser/nf-winuser-makelparam), [MAKEWPARAM](/windows/win32/api/winuser/nf-winuser-makewparam), [Windows Data Types](/windows/win32/winprog/windows-data-types)

**Header:** minwindef.h
