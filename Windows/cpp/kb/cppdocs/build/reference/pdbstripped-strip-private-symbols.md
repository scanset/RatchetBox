# /PDBSTRIPPED (Strip Private Symbols)

```
/PDBSTRIPPED:pdb_file_name
```

## Arguments

*pdb_file_name*<br/>
A user-specified name for the stripped program database (PDB) that the linker creates.

## Remarks

The /PDBSTRIPPED option creates a second program database (PDB) file when you build your program image with any of the compiler or linker options that generate a PDB file ([/DEBUG](debug-generate-debug-info.md), [/Z7](z7-zi-zi-debug-information-format.md), /Zd, or /Zi). This second PDB file omits symbols that you would not want to ship to your customers. The second PDB file will only contain:

- Public symbols

- The list of object files and the portions of the executable to which they contribute

- Frame pointer optimization (FPO) debug records used to traverse the stack

The stripped PDB file will not contain:

- Type information

- Line number information

- Per-object file CodeView symbols such as those for functions, locals, and static data

The full PDB file will still be generated when you use /PDBSTRIPPED.

If you do not create a PDB file, /PDBSTRIPPED is ignored.

### To set this linker option in the Visual Studio development environment

1. Open the project's **Property Pages** dialog box. For details, see [Set C++ compiler and build properties in Visual Studio](../working-with-project-properties.md).

1. Select the **Configuration Properties** > **Linker** > **Debug** property page.

1. Modify the **Strip Private Symbols** property.

### To set this linker option programmatically

- See <xref:Microsoft.VisualStudio.VCProjectEngine.VCLinkerTool.StripPrivateSymbols%2A>.

## See also

[MSVC linker reference](linking.md)<br/>
[MSVC Linker Options](linker-options.md)