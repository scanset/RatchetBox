# `_except_handler3`

Internal CRT function. Used by a framework to find the appropriate exception handler to process the current exception.

## Syntax

```C
int _except_handler3(
   PEXCEPTION_RECORD exception_record,
   PEXCEPTION_REGISTRATION registration,
   PCONTEXT context,
   PEXCEPTION_REGISTRATION dispatcher
);
```

#### Parameters

*`exception_record`*\
[in] Information about the specific exception.

*`registration`*\
[in] The record that indicates which scope table should be used to find the exception handler.

*`context`*\
[in] Reserved.

*`dispatcher`*\
[in] Reserved.

## Return value

If an exception should be dismissed, returns `DISPOSITION_DISMISS`. If the exception should be passed up a level to the encapsulating exception handlers, returns `DISPOSITION_CONTINUE_SEARCH`.

## Remarks

If this method finds an appropriate exception handler, it passes the exception to the handler. In this situation, this method doesn't return to the code that called it and the return value is irrelevant.

## See also

[Alphabetical function reference](./reference/crt-alphabetical-function-reference.md)