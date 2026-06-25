# Compiler Warning (level 3) C4622

> Overwriting debug information formed during creation of the precompiled header in object file: 'file'

## Remarks

CodeView information in the specified file was lost when it was compiled with the [/Yu](../../build/reference/yu-use-precompiled-header-file.md) (Use Precompiled Headers) option.

Rename the object file (using [/Fo](../../build/reference/fo-object-file-name.md)) when creating or using the precompiled header file, and link using the new object file.