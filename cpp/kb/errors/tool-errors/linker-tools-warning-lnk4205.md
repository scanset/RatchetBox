# Linker Tools Warning LNK4205

> 'filename' is missing current debugging information for referencing module; linking object as if no debug info

## Remarks

The .pdb file has out-of-date information. The linker will continue to link object without debug information. You may want to recompile the object file using the [/Zi](../../build/reference/z7-zi-zi-debug-information-format.md) option.