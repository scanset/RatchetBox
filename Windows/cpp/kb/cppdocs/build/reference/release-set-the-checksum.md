# /RELEASE (Set the Checksum)

```
/RELEASE
```

## Remarks

The /RELEASE option sets the Checksum in the header of an .exe file.

The operating system requires the Checksum for device drivers. Set the Checksum for release versions of your device drivers to ensure compatibility with future operating systems.

The /RELEASE option is set by default when the [/SUBSYSTEM:NATIVE](subsystem-specify-subsystem.md) option is specified.

### To set this linker option in the Visual Studio development environment

1. Open the project's **Property Pages** dialog box. For details, see [Set C++ compiler and build properties in Visual Studio](../working-with-project-properties.md).

1. Click the **Linker** folder.

1. Click the **Advanced** property page.

1. Modify the **Set Checksum** property.

### To set this linker option programmatically

- See <xref:Microsoft.VisualStudio.VCProjectEngine.VCLinkerTool.SetChecksum%2A>.

## See also

[MSVC linker reference](linking.md)<br/>
[MSVC Linker Options](linker-options.md)