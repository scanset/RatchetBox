# Translation: Diagnostics

**ANSI 2.1.1.3** How a diagnostic is identified

Microsoft C produces error messages in the form:

> *filename* **(** *line-number* **) :** *diagnostic* **C**<em>number</em> *message*

where *filename* is the name of the source file in which the error was encountered; *line-number* is the line number at which the compiler detected the error; *diagnostic* is either "error" or "warning"; *number* is a unique four-digit number (preceded by a **C**, as noted in the syntax) that identifies the error or warning; *message* is an explanatory message.

## See also

[Implementation-Defined Behavior](../c-language/implementation-defined-behavior.md)