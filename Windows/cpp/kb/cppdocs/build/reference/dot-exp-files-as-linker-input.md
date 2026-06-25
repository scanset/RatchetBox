# .Exp Files as Linker Input

Export (.exp) files contain information about exported functions and data items. When LIB creates an import library, it also creates an .exp file. You use the .exp file when you link a program that both exports to and imports from another program, either directly or indirectly. If you link with an .exp file, LINK does not produce an import library, because it assumes that LIB already created one. For details about .exp files and import libraries, see [Working with Import Libraries and Export Files](working-with-import-libraries-and-export-files.md).

## See also

[LINK Input Files](link-input-files.md)<br/>
[MSVC Linker Options](linker-options.md)