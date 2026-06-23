# Restrictions on exception handlers

The principal limitation to using exception handlers in code is that you can't use a **`goto`** statement to jump into a **`__try`** statement block. Instead, you must enter the statement block through normal flow of control. You can jump out of a **`__try`** statement block, and you can nest exception handlers as you choose.

## See also

[Writing an exception handler](../cpp/writing-an-exception-handler.md)<br/>
[Structured Exception Handling (C/C++)](../cpp/structured-exception-handling-c-cpp.md)