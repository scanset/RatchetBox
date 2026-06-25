# Project Build Error PRJ0030

> Macro expansion error. Evaluate recursion exceeded 32 levels for $(macro).

## Remarks

This error is caused by recursion in your macros. For example, if you set the **Intermediate Directory** property (see [General Property Page (Project)](../../build/reference/general-property-page-project.md)) to $(IntDir), you will have recursion.

To resolve this error, do not define macros or properties in terms of macros they are used to define.