# `__CxxFrameHandler3`

Internal CRT function. Used by the CRT to handle structured exception frames.

## Syntax

```cpp
void* __CxxFrameHandler3(
      EHExceptionRecord  *pExcept,
      EHRegistrationNode *pRN,
      void               *pContext,
      DispatcherContext  *pDC
   );
```

## Parameters

*`pExcept`*\
Exception record that is passed to the possible **`catch`** statements.

*`pRN`*\
Dynamic information about the stack frame that is used to handle the exception.

*`pContext`*\
Context info. (Not used on Intel processors.)

*`pDC`*\
Additional information about the function entry and stack frame. (Not used on Intel processors.)

## Remarks

## Requirements

| Routine | Exported by |
|---|---|
| **`__CxxFrameHandler3`** | `<ucrtbase_enclave.dll>` |