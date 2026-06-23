# Expression Evaluator Error CXX0052

> member function not present

## Remarks

A member function was specified as a breakpoint but could not be found. Setting a breakpoint at a function that has been inlined can cause this error.

Recompile the file with inlining forced off (/Ob0) to set a breakpoint in this function.

An expression called a function that was not defined.

This error is identical to CAN0052.