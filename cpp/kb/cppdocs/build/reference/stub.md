# STUB

When used in a module definition file that builds a virtual device driver (VxD), allows you to specify a file name that contains an IMAGE_DOS_HEADER structure (defined in WINNT.H) to be used in the virtual device driver (VxD), rather than the default header.

```
STUB:filename
```

## Remarks

An equivalent way to specify *filename* is with the [/STUB](stub-ms-dos-stub-file-name.md) linker option.

STUB is valid in a module definition file only when building a VxD.

## See also

[Rules for Module-Definition Statements](rules-for-module-definition-statements.md)