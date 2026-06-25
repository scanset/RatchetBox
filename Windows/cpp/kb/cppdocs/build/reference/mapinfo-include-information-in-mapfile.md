# /MAPINFO (Include Information in Mapfile)

```
/MAPINFO:EXPORTS
```

## Remarks

The /MAPINFO option tells the linker to include the specified information in a mapfile, which is created if you specify the [/MAP](map-generate-mapfile.md) option.  EXPORTS tells the linker to include exported functions.

### To set this linker option in the Visual Studio development environment

1. Open the project's **Property Pages** dialog box. For details, see [Set C++ compiler and build properties in Visual Studio](../working-with-project-properties.md).

1. Select the **Configuration Properties** > **Linker** > **Debug** property page.

1. Modify of the **Map Exports** properties:

### To set this linker option programmatically

- See <xref:Microsoft.VisualStudio.VCProjectEngine.VCLinkerTool.MapExports%2A>.

## See also

[MSVC linker reference](linking.md)<br/>
[MSVC Linker Options](linker-options.md)