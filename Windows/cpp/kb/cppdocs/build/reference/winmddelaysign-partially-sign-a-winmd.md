# /WINMDDELAYSIGN (Partially Sign a winmd)

Enables partial signing of a Windows Runtime Metadata (.winmd) file by putting the public key in the file.

```
/WINMDDELAYSIGN[:NO]
```

## Remarks

Resembles the [/DELAYSIGN](delaysign-partially-sign-an-assembly.md) linker option that is applied to the .winmd file. Use **/WINMDDELAYSIGN** if you want to put only the public key in the .winmd file. By default, the linker acts as if **/WINMDDELAYSIGN:NO** were specified; that is, it does not sign the winmd file.

### To set this linker option in the Visual Studio development environment

1. Open the project's **Property Pages** dialog box. For details, see [Set C++ compiler and build properties in Visual Studio](../working-with-project-properties.md).

1. Select the **Configuration Properties** > **Linker** > **Windows Metadata** property page.

1. In the **Windows Metadata Delay Sign** drop-down list box, select the option you want.

## See also

[MSVC linker reference](linking.md)<br/>
[MSVC Linker Options](linker-options.md)