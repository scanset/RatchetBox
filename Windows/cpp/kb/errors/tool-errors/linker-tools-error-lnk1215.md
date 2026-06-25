# Linker Tools Error LNK1215

> metadata operation failed (HRESULT) : error

## Remarks

The linker received an error from the .NET runtime while attempting to do a metadata update through the .NET runtime.

`HRESULT` is the HRESULT from the .NET runtime method. `error` is the .NET-supplied text.

You probably have a mismatched linker and .NET runtime; reinstall Visual C++.