# Linker Tools Error LNK1158

> cannot run 'filename'

## Remarks

The given executable file called by [LINK](../../build/reference/linking.md) is not in the directory that contains LINK nor in a directory specified in the PATH environment variable.

For example, you will get this error if you try to use the PGOPTIMIZE parameter to the [/LTCG](../../build/reference/ltcg-link-time-code-generation.md) linker option on a machine with a 32-bit operating system.