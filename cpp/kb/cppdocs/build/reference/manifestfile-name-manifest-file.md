# /MANIFESTFILE (Name Manifest File)

Change the default name of the manifest file.

## Syntax

> `/MANIFESTFILE:`**filename**

## Arguments

**filename**\
The default name of the manifest file is *filename* with `.manifest` appended.

## Remarks

`/MANIFESTFILE` has no effect if you do not also link with [/MANIFEST](manifest-create-side-by-side-assembly-manifest.md).

### To set this linker option in the Visual Studio development environment

1. Open the project's **Property Pages** dialog box. For details, see [Set C++ compiler and build properties in Visual Studio](../working-with-project-properties.md).
1. Select the **Configuration Properties** > **Linker** > **Manifest File** property page.
1. Modify the **Manifest File** property.

### To set this linker option programmatically

1. See <xref:Microsoft.VisualStudio.VCProjectEngine.VCLinkerTool.ManifestFile%2A>.

## See also

[MSVC linker reference](linking.md)\
[MSVC Linker Options](linker-options.md)