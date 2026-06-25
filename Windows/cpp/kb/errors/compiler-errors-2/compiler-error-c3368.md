# Compiler Error C3368

> 'function declaration' : invalid calling convention for IDL

## Remarks

You can only use the [__stdcall](../../cpp/stdcall.md) or [__cdecl](../../cpp/cdecl.md) calling conventions in an .idl file.

## Example

The following example generates C3368:

```cpp
// C3368.cpp
// processor: x86
[idl_module(name="Name", dllname="Some.dll")];

[idl_module(name="Name")]
int __fastcall f1();   // C3368
```