# /NOENTRY (No Entry Point)

```
/NOENTRY
```

## Remarks

The /NOENTRY option is required for creating a resource-only DLL that contains no executable code. For more information, see [Creating a Resource-Only DLL](../creating-a-resource-only-dll.md).

Use this option to prevent LINK from linking a reference to `_main` into the DLL.

### To set this linker option in the Visual Studio development environment

1. Open the project's **Property Pages** dialog box. For details, see [Set C++ compiler and build properties in Visual Studio](../working-with-project-properties.md).

1. Select the **Configuration Properties** > **Linker** > **Advanced** property page.

1. Modify the **No Entry Point** property.

### To set this linker option programmatically

1. See <xref:Microsoft.VisualStudio.VCProjectEngine.VCLinkerTool.ResourceOnlyDLL%2A>.

## See also

[Creating a Resource-Only DLL](../creating-a-resource-only-dll.md)<br/>
[MSVC linker reference](linking.md)<br/>
[MSVC Linker Options](linker-options.md)