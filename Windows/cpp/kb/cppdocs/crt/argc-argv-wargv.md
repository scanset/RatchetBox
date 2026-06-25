# `__argc`, `__argv`, `__wargv`

The **`__argc`** global variable is a count of the number of command-line arguments passed to the program. **`__argv`** is a pointer to an array of single-byte-character or multi-byte-character strings that contain the program arguments, and **`__wargv`** is a pointer to an array of wide-character strings that contain the program arguments. These global variables provide the arguments to `main` or `wmain`.

## Syntax

```C
extern int __argc;
extern char ** __argv;
extern wchar_t ** __wargv;
```

## Remarks

In a program that uses the `main` function, **`__argc`** and **`__argv`** are initialized at program startup by using the command line that's used to start the program. The command line is parsed into individual arguments, and wildcards are expanded. The count of arguments is assigned to **`__argc`** and the argument strings are allocated on the heap, and a pointer to the array of arguments is assigned to **`__argv`**. In a program compiled to use wide characters and a `wmain` function, the arguments are parsed and wildcards are expanded as wide-character strings, and a pointer to the array of argument strings is assigned to **`__wargv`**.

For portable code, we recommend you use the arguments passed to `main` to get the command-line arguments in your program.

### Generic-text routine mappings

| Tchar.h routine | `_UNICODE` not defined | `_UNICODE` defined |
|---|---|---|
| `__targv` | **`__argv`** | **`__wargv`** |

## Requirements

| Global variable | Required header |
|---|---|
| **`__argc`**, **`__argv`**, **`__wargv`** | \<stdlib.h>, \<cstdlib> (C++) |

**`__argc`**, **`__argv`**, and **`__wargv`** are Microsoft extensions. For compatibility information, see [Compatibility](./compatibility.md).

## See also

[Global variables](./global-variables.md)\
[`main` function and command-line arguments (C++)](../cpp/main-function-command-line-args.md)\
[Using `wmain` instead of `main`](../cpp/main-function-command-line-args.md)