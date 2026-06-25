# Expression Evaluator Error CXX0022

> function call before _main

## Remarks

The C expression evaluator cannot evaluate a function before the debugger has entered the function **_main**. The program is not properly initialized until **_main** has been called.

This error is identical to CAN0022.