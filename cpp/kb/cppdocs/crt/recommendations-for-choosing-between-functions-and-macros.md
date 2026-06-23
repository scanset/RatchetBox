# Recommendations for choosing between functions and macros

Most Microsoft run-time library routines are compiled or assembled functions, but some routines are implemented as macros. When a header file declares both a function and a macro version of a routine, the macro definition takes precedence, because it always appears after the function declaration. When you invoke a routine that is implemented as both a function and a macro, you can force the compiler to use the function version in two ways:

- Enclose the routine name in parentheses.

    ```C
    #include <ctype.h>
    a = _toupper(a);    // Use macro version of toupper.
    a = (_toupper)(a);  // Force compiler to use
                        // function version of toupper.
    ```

- "Undefine" the macro definition with the `#undef` directive:

    ```C
    #include <ctype.h>
    #undef _toupper
    ```

If you need to choose between a function and a macro implementation of a library routine, consider the following trade-offs:

- **Speed versus size** The main benefit of using macros is faster execution time. During preprocessing, a macro is expanded (replaced by its definition) inline each time it's used. A function definition occurs only once regardless of how many times it's called. Macros may increase code size but don't have the overhead associated with function calls.

- **Function evaluation** A function evaluates to an address; a macro doesn't. Thus you can't use a macro name in contexts requiring a pointer. For instance, you can declare a pointer to a function, but not a pointer to a macro.

- **Type-checking** When you declare a function, the compiler can check the argument types. Because you can't declare a macro, the compiler can't check macro argument types; although it can check the number of arguments you pass to a macro.

## See also

[Type-generic math](tgmath.md)\
[C runtime (CRT) and C++ Standard Library (STL) `.lib` files](./crt-library-features.md)