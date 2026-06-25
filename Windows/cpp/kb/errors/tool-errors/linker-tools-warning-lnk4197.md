# Linker Tools Warning LNK4197

> export '*exportname*' specified multiple times; using first specification

## Remarks

An export is specified in multiple and different ways. The linker uses the first specification and ignores the rest.

If you are rebuilding the C run-time library, you can ignore this message.

If an export is specified exactly the same way multiple times, the linker will not issue a warning.

For example, the following contents of a .def file would cause this warning:

```
EXPORTS
   functioname      NONAME
   functioname      @10
```

### To fix by checking the following possible causes

1. The same export is specified both on the command line (through export:) and in the .def file.

2. The same export is listed twice in the .def file with different attributes.