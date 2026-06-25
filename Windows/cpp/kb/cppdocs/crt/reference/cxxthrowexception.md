# `_CxxThrowException`

Builds the exception record and calls the runtime environment to start processing the exception.

## Syntax

```C
extern "C" void __stdcall _CxxThrowException(
   void* pExceptionObject,
   _ThrowInfo* pThrowInfo
);
```

### Parameters

*`pExceptionObject`*\
The object that generated the exception.

*`pThrowInfo`*\
The information that is required to process the exception.

## Remarks

This method is included in a compiler-only file that the compiler uses to process exceptions. Don't call the method directly from your code.

## Requirements

**Source:** Throw.cpp

## See also

[Alphabetical function reference](crt-alphabetical-function-reference.md)