# `/X` (Ignore standard include paths)

Prevents the compiler from searching for include files in directories specified in the `PATH` and `INCLUDE` environment variables.

## Syntax

> **`/X`**

## Remarks

You can use this option with the [`/I` (Additional include directories)](i-additional-include-directories.md) option to specify an alternate path to the standard include files.

### To set this compiler option in the Visual Studio development environment

1. Open the project's **Property Pages** dialog box. For details, see [Set C++ compiler and build properties in Visual Studio](../working-with-project-properties.md).

1. Select the **Configuration Properties** > **C/C++** > **Preprocessor** property page.

1. Modify the **Ignore Standard Include Path** property.

### To set this compiler option programmatically

- See <xref:Microsoft.VisualStudio.VCProjectEngine.VCCLCompilerTool.IgnoreStandardIncludePath%2A>.

## Example

In the following command, **`/X`** tells the compiler to ignore locations specified by the `PATH` and `INCLUDE` environment variables, and **`/I`** specifies the directory to look in for include files:

```cmd
CL /X /I \ALT\INCLUDE MAIN.C
```

## See also

[MSVC compiler options](compiler-options.md)<br/>
[MSVC compiler command-line syntax](compiler-command-line-syntax.md)