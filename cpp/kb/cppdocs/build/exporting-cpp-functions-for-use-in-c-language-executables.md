# Exporting C++ Functions for Use in C-Language Executables

If you have functions in a DLL written in C++ that you want to access from a C-language module, you should declare these functions with C linkage instead of C++ linkage. Unless otherwise specified, the C++ compiler uses C++ type-safe naming (also known as name decoration) and C++ calling conventions, which can be difficult to call from C.

To specify C linkage, specify `extern "C"` for your function declarations. For example:

```
extern "C" __declspec( dllexport ) int MyFunc(long parm1);
```

## What do you want to do?

- [Export from a DLL using .def files](exporting-from-a-dll-using-def-files.md)

- [Export from a DLL using __declspec(dllexport)](exporting-from-a-dll-using-declspec-dllexport.md)

- [Export and import using AFX_EXT_CLASS](exporting-and-importing-using-afx-ext-class.md)

- [Export C functions for use in C or C++-language executables](exporting-c-functions-for-use-in-c-or-cpp-language-executables.md)

- [Determine which exporting method to use](determining-which-exporting-method-to-use.md)

- [Import into an application using __declspec(dllimport)](importing-into-an-application-using-declspec-dllimport.md)

- [Initialize a DLL](run-time-library-behavior.md#initializing-a-dll)

## What do you want to know more about?

- [Decorated names](reference/decorated-names.md)

- [Using extern to Specify Linkage](../cpp/extern-cpp.md)

## See also

[Exporting from a DLL](exporting-from-a-dll.md)