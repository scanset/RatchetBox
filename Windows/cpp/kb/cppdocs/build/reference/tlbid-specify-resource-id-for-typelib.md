# /TLBID (Specify Resource ID for TypeLib)

```
/TLBID:id
```

## Arguments

*id*<br/>
A user-specified value for a linker-created type library. It overrides the default resource ID of 1.

## Remarks

When compiling a program that uses attributes, the linker will create a type library. The linker will assign a resource ID of 1 to the type library.

If this resource ID conflicts with one of your existing resources, you can specify another ID with /TLBID. The range of values that you can pass to `id` is 1 to 65535.

### To set this linker option in the Visual Studio development environment

1. Open the project's **Property Pages** dialog box. For details, see [Set C++ compiler and build properties in Visual Studio](../working-with-project-properties.md).

1. Select the **Configuration Properties** > **Linker** > **Embedded IDL** property page.

1. Modify the **TypeLib Resource ID** property.

### To set this linker option programmatically

1. See <xref:Microsoft.VisualStudio.VCProjectEngine.VCLinkerTool.TypeLibraryResourceID%2A>.

## See also

[MSVC linker reference](linking.md)<br/>
[MSVC Linker Options](linker-options.md)