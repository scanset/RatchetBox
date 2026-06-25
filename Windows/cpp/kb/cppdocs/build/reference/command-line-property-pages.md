# Command line property pages

Most property page folders that correspond with a command-line tool contain a **Command Line** property page. For information on how to access the **Command Line** property pages, see [Set compiler and build properties](../working-with-project-properties.md).

## Command Line property page

### All Options

The **All Options** display-only control shows the tool command line created by the properties set in the folder.

### Additional Options

This property's edit control lets you specify other command-line options that are valid for the tool but that don't have a corresponding property.

The options that you enter in the edit box are passed through to the tool for the folder after the options listed in **All Options**. No verification or validity checks are done on the options you enter, and there's no dependency checking.

## See also

[Windows C++ project property page reference](property-pages-visual-cpp.md)\
[Linux C++ property page reference](../../linux/prop-pages-linux.md)\
[Linker property pages](./linker-property-pages.md)\
[Manifest tool property pages](manifest-tool-property-pages.md)\
[MIDL property pages](midl-property-pages.md)\
[NMake property page](nmake-property-page.md)\
[XML document generator tool property pages](xml-document-generator-tool-property-pages.md)