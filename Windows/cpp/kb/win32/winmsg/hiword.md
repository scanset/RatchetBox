# HIWORD macro

Retrieves the high-order word from the specified 32-bit value.

## Syntax

``` c++
WORD HIWORD(
   DWORD l
);
```

## -parameters

### -param l

The value to be converted.

## -return

Type: **WORD**

The return value is the high-order word of the specified value.

## Requirements

| Requirement | Value |
|---------|---------|
|Minimum supported client     | Windows 2000 Professional [desktop apps only]        |
|Minimum supported server     | Windows 2000 Server [desktop apps only]        |
|Header     | minwindef.h (include Windows.h)        |

## See also

[HIBYTE](./hibyte.md), [LOWORD](./loword.md), [MAKELPARAM](/windows/win32/api/winuser/nf-winuser-makelparam), [MAKEWPARAM](/windows/win32/api/winuser/nf-winuser-makewparam), [Windows Data Types](/windows/win32/winprog/windows-data-types)

**Header:** minwindef.h
