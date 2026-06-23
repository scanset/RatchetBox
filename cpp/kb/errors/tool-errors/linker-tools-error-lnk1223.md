# Linker Tools Error LNK1223

> invalid or corrupt file: file contains invalid .pdata contributions

## Remarks

For RISC platforms that use pdata, this error will occur if the compiler emitted a .pdata section with unsorted entries.

To fix this issue, try compiling without [/GL (Whole Program Optimization)](../../error-messages/tool-errors/linker-tools-error-lnk1223.md) enabled. Empty function bodies can also cause this error in some cases.