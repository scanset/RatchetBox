# /MACHINE (Specify Target Platform)

> **`/MACHINE:`**{**`ARM`**|**`ARM64`**|**`ARM64EC`**|**`EBC`**|**`X64`**|**`X86`**}

## Remarks

The **`/MACHINE`** option specifies the target platform for the program.

Usually, you don't have to specify the **`/MACHINE`** option. LINK infers the machine type from the *`.obj`* files. However, in some circumstances, LINK cannot determine the machine type and issues a [linker tools error LNK1113](../../error-messages/tool-errors/linker-tools-error-lnk1113.md). If such an error occurs, specify **`/MACHINE`**.

### To set this linker option in the Visual Studio development environment

1. Open the project's **Property Pages** dialog box. For details, see [Set C++ compiler and build properties in Visual Studio](../working-with-project-properties.md).

1. Select the **Configuration Properties** > **Linker** > **Advanced** property page.

1. Modify the **Target Machine** property.

### To set this linker option programmatically

1. See <xref:Microsoft.VisualStudio.VCProjectEngine.VCLinkerTool.TargetMachine%2A>.

## See also

[MSVC linker reference](linking.md)\
[MSVC Linker Options](linker-options.md)