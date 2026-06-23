# /Zs (Syntax Check Only)

Tells the compiler to check only the syntax of the source files on the command line.

## Syntax

```
/Zs
```

## Remarks

When using this option, no output files are created, and error messages are written to standard output.

The **/Zs** option provides a quick way to find and correct syntax errors before you compile and link a source file.

### To set this compiler option in the Visual Studio development environment

1. Open the project's **Property Pages** dialog box. For details, see [Set C++ compiler and build properties in Visual Studio](../working-with-project-properties.md).

1. Select the **Configuration Properties** > **C/C++** > **Command Line** property page.

1. Enter the compiler option in the **Additional Options** box.

### To set this compiler option programmatically

- See <xref:Microsoft.VisualStudio.VCProjectEngine.VCCLCompilerTool.AdditionalOptions%2A>.

## See also

[MSVC Compiler Options](compiler-options.md)<br/>
[MSVC Compiler Command-Line Syntax](compiler-command-line-syntax.md)