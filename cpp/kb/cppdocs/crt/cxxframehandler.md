# `__CxxFrameHandler`

Internal CRT function. Used by the CRT to handle structured exception frames.

## Syntax

```cpp
EXCEPTION_DISPOSITION __CxxFrameHandler(
      EHExceptionRecord  *pExcept,
      EHRegistrationNode *pRN,
      void               *pContext,
      DispatcherContext  *pDC
   );
```

#### Parameters

*`pExcept`*\
Exception record that is passed to the possible **`catch`** statements.

*`pRN`*\
Dynamic information about the stack frame that is used to handle the exception. For more information, see ehdata.h.

*`pContext`*\
Context. (Not used on Intel processors.)

*`pDC`*\
Additional information about the function entry and stack frame.

## Return value

One of the *filter expression* values used by the [try-except Statement](../cpp/try-except-statement.md).

## Requirements

| Routine | Required header |
|---|---|
| **`__CxxFrameHandler`** | `<excpt.h>`, `<ehdata.h>` |