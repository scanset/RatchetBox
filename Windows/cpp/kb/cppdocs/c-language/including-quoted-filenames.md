# Including Quoted Filenames

**ANSI 3.8.2** The support for quoted names for includable source files

If you specify a complete, unambiguous path specification for the include file between two sets of double quotation marks (" "), the preprocessor searches only that path specification and ignores the standard directories.

For include files specified as [#include](../preprocessor/hash-include-directive-c-cpp.md) "path-spec", directory searching begins with the directories of the parent file, then proceeds through the directories of any grandparent files. Thus, searching begins relative to the directory containing the source file currently being processed. If there is no grandparent file and the file has not been found, the search continues as if the filename were enclosed in angle brackets.

## See also

[Preprocessing Directives](../c-language/preprocessing-directives.md)