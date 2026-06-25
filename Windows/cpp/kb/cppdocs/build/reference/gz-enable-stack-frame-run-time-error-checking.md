# /GZ (Enable Stack Frame Run-Time Error Checking)

Performs the same operations as the [/RTC (Run-Time Error Checks)](rtc-run-time-error-checks.md) option. Deprecated.

## Syntax

```
/GZ
```

## Remarks

**/GZ** is only for use in a nonoptimized ([/Od (Disable (Debug))](od-disable-debug.md)) build.

**/GZ** is deprecated since Visual Studio 2005; use [/RTC (Run-Time Error Checks)](rtc-run-time-error-checks.md) instead. For a list of deprecated compiler options, see **Deprecated and Removed Compiler Options** in [Compiler Options Listed by Category](compiler-options-listed-by-category.md).

### To set this compiler option in the Visual Studio development environment

1. Open the project's **Property Pages** dialog box. For details, see [Set C++ compiler and build properties in Visual Studio](../working-with-project-properties.md).

1. Select the **Configuration Properties** > **C/C++** > **Command Line** property page.

1. Enter the compiler option in the **Additional Options** box.

### To set this compiler option programmatically

- See <xref:Microsoft.VisualStudio.VCProjectEngine.VCCLCompilerTool.AdditionalOptions%2A>.

## See also

[MSVC Compiler Options](compiler-options.md)<br/>
[MSVC Compiler Command-Line Syntax](compiler-command-line-syntax.md)