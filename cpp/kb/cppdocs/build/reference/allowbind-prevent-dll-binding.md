# `/ALLOWBIND` (Prevent DLL binding)

Set a flag to disallow DLL binding.

## Syntax

> **`/ALLOWBIND`**\[**`:NO`**]

## Remarks

The **`/ALLOWBIND:NO`** linker option sets a bit in a DLL's header that indicates to Bind.exe that the image can't be bound. You may not want a DLL to be bound if it's been digitally signed (binding invalidates the signature).

You can edit an existing DLL for **`/ALLOWBIND`** functionality with the [`/ALLOWBIND`](allowbind.md) option of the EDITBIN utility.

### To set this linker option in the Visual Studio development environment

1. Open the project's **Property Pages** dialog box. For details, see [Set C++ compiler and build properties in Visual Studio](../working-with-project-properties.md).

1. Select the **Configuration Properties** > **Linker** > **Command Line** property page.

1. Enter *`/ALLOWBIND:NO`* into **Additional Options**. Choose **OK** or **Apply** to apply the change.

### To set this linker option programmatically

- See <xref:Microsoft.VisualStudio.VCProjectEngine.VCCLCompilerTool.AdditionalOptions%2A>.

## See also

[MSVC linker reference](linking.md)\
[MSVC linker options](linker-options.md)\
[`BindImage` function](/windows/win32/api/imagehlp/nf-imagehlp-bindimage)\
[`BindImageEx` function](/windows/win32/api/imagehlp/nf-imagehlp-bindimageex)