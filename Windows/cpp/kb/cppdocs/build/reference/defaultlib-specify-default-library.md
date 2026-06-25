# /DEFAULTLIB (Specify Default Library)

Specify a default library to search to resolve external references.

## Syntax

> **/DEFAULTLIB**:_library_

### Arguments

*library*<br/>
The name of a library to search when resolving external references.

## Remarks

The **/DEFAULTLIB** option adds one *library* to the list of libraries that LINK searches when resolving references. A library specified with **/DEFAULTLIB** is searched after libraries specified explicitly on the command line and before default libraries named in .obj files.

When used without arguments, the [/NODEFAULTLIB (Ignore All Default Libraries)](nodefaultlib-ignore-libraries.md) option overrides all **/DEFAULTLIB**:*library* options. The **/NODEFAULTLIB**:*library* option overrides **/DEFAULTLIB**:*library* when the same *library* name is specified in both.

### To set this linker option in the Visual Studio development environment

1. Open the project **Property Pages** dialog box. For more information, see [Set C++ compiler and build properties in Visual Studio](../working-with-project-properties.md).

1. Select the **Configuration Properties** > **Linker** > **Command Line** property page.

1. In **Additional Options**, enter a **/DEFAULTLIB**:*library* option for each library to search. Choose **OK** to save your changes.

### To set this linker option programmatically

- See <xref:Microsoft.VisualStudio.VCProjectEngine.VCLinkerTool.AdditionalOptions%2A>.

## See also

- [MSVC linker reference](linking.md)
- [MSVC Linker Options](linker-options.md)