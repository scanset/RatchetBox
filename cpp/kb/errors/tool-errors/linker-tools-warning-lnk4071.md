# Linker Tools Warning LNK4071

> cannot be incrementally linked on subsequent links

## Remarks

LINK found multiple definitions for one or more symbols, but [/FORCE](../../build/reference/force-force-file-output.md) or **/FORCE:MULTIPLE** was used to create an output file regardless of errors. LINK deleted the incremental status (.ilk) file.