# Linker Tools Error LNK1241

> resource file 'resource file' already specified

## Remarks

This error is generated if you run **cvtres** manually from the command line and if you then pass the resulting .obj file to the linker in addition to other .res files.

To specify multiple .res files, pass them all to the linker as .res files, not from within .obj files created by **cvtres**.