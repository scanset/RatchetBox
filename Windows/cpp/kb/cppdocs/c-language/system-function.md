# system Function

**ANSI 4.10.4.5** The contents and mode of execution of the string by the **system** function

The **system** function executes an internal operating system command, or an .EXE, .COM, .CMD, or .BAT file from within a C program rather than from the command line.

The system function finds the command interpreter, which is typically CMD.EXE in the Windows operating system. The system function then passes the argument string to the command interpreter.

For more information, see [system, _wsystem](../c-runtime-library/reference/system-wsystem.md).

## See also

[Library Functions](../c-language/library-functions.md)