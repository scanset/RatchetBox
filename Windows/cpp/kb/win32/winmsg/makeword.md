# MAKEWORD macro

Creates a **WORD** value by concatenating the specified values.

## Syntax

``` c++
WORD MAKEWORD(
   BYTE a,
   BYTE b
);
```

## -parameters

### -param a

The low-order byte of the new value.

### -param b

The high-order byte of the new value.

## -return

Type: **WORD**

The new value.

## Requirements

| Requirement | Value |
|---------|---------|
|Minimum supported client     | Windows 2000 Professional [desktop apps only]        |
|Minimum supported server     | Windows 2000 Server [desktop apps only]        |
|Header     | minwindef.h (include Windows.h)        |

## See also

[Windows Data Types](/windows/win32/winprog/windows-data-types)

**Header:** minwindef.h
