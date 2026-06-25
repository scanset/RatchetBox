# Linker Tools Warning LNK4086

> entrypoint 'function' is not __stdcall with 'number' bytes of arguments; image may not run

## Remarks

The entry point for a DLL must be **`__stdcall`**. Either recompile the function with the [/Gz](../../build/reference/gd-gr-gv-gz-calling-convention.md) option or specify **`__stdcall`** or WINAPI when you define the function.