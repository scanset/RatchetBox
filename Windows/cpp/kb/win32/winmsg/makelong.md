# MAKELONG macro

Creates a **LONG** value by concatenating the specified values.

## Syntax

``` c++
DWORD MAKELONG(
   WORD a,
   WORD b
);
```

## -parameters

### -param a

The low-order word of the new value.

### -param b

The high-order word of the new value.

## -return

Type: **LONG**

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
