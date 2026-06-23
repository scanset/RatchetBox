# Linker Tools Error LNK1312

> invalid or corrupt file: unable to import assembly

## Remarks

When building an assembly, a file other than a module or assembly compiled with **/clr** was passed to the **/ASSEMBLYMODULE** linker option.  If you passed an object file to **/ASSEMBLYMODULE**, just pass the object directly to the linker, instead of to **/ASSEMBLYMODULE**.

## Example

The following example created the .obj file.

```cpp
// LNK1312.cpp
// compile with: /clr /LD
public ref class A {
public:
   int i;
};
```

The following example generates LNK1312.

```cpp
// LNK1312_b.cpp
// compile with: /clr /LD /link /assemblymodule:LNK1312.obj
// LNK1312 error expected
public ref class M {};
```