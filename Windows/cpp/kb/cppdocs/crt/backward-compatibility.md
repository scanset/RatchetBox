# Backward compatibility

For compatibility between product versions, the library OLDNAMES.LIB maps old names to new names. For instance, `open` maps to `_open`. You must explicitly link with OLDNAMES.LIB only when you compile with the following combinations of command-line options:

- `/Zl` (omit default library name from object file) and `/Ze` (the default: use Microsoft extensions)

- `/link` (linker-control), `/NOD` (no default-library search), and `/Ze`

For more information about compiler command-line options, see [Compiler options](../build/reference/compiler-options.md).

## See also

[Compatibility](./compatibility.md)