# NMake Property Page

The **NMake** property page lets you specify build settings for *Makefile* projects. (NMAKE is the Microsoft implementation of [Make](https://wikipedia.org/wiki/Make_(software)).)

For more information about Makefile projects, see [Creating a Makefile Project](creating-a-makefile-project.md). For non-Windows Makefile projects, see [Makefile Project Properties (Linux C++)](../../linux/prop-pages/makefile-linux.md), [General Project Properties (Android C++ Makefile)](/visualstudio/cross-platform/general-makefile-android-prop-page) or [NMake Properties (Android C++)](/visualstudio/cross-platform/nmake-android-prop-page).

The property page contains the following properties:

## General

- **Build Command Line**

   Specifies the command to be run when **Build** is clicked on the **Build** menu.

- **Rebuild All Command Line**

   Specifies the command to be run when **Rebuild All** is clicked on the **Build** menu.

- **Clean Command Line**

   Specifies the command to be run when **Clean** is clicked on the **Build** menu.

- **Output**

   Specifies the name of the file that will contain the output for the command line. By default, this file name is based on the project name.

## IntelliSense

- **Preprocessor Definitions**

   Specifies any preprocessor definitions that the source files use. The default value is determined by the current platform and configuration.

- **Include Search Path**

   Specifies the directories where the compiler searches for include files.

- **Forced Includes**

   Specifies files that the preprocessor automatically processes even if they aren't included in the project files.

- **Assembly Search Path**

   Specifies the directories where the .NET Framework searches when it resolves .NET assemblies.

- **Forced Using Assemblies**

   Specifies assemblies that the .NET Framework automatically processes.

- **Additional Options**

   Specifies any extra compiler switches for IntelliSense to use when it parses C++ files.

For information about how to access this property page, see [Set C++ compiler and build properties in Visual Studio](../working-with-project-properties.md).

For information about how to programmatically access members of this object, see <xref:Microsoft.VisualStudio.VCProjectEngine.VCNMakeTool>.

## See also

[C++ project property page reference](property-pages-visual-cpp.md)<br>