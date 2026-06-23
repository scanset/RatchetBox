# Linker Tools Error LNK1164

> section section alignment (number) greater than /ALIGN value

## Remarks

The alignment size for the given section in the object file exceeds the value specified with the [/ALIGN](../../build/reference/align-section-alignment.md) option. The **/ALIGN** value must be a power of 2 and must equal or exceed the section alignment given in the object file.

Either recompile with a smaller section alignment or increase the **/ALIGN** value.