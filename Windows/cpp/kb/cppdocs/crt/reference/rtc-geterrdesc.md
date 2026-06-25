# `_RTC_GetErrDesc`

Returns a brief description of a run-time error check (RTC) type.

## Syntax

```C
const char * _RTC_GetErrDesc(
   _RTC_ErrorNumber errnum
);
```

### Parameters

*`errnum`*\
A number between zero and one less than the value returned by `_RTC_NumErrors`.

## Return value

A character string that contains a short description of one of the error types detected by the run-time error check system. If error is less than zero or greater than or equal to the value returned by [`_RTC_NumErrors`](rtc-numerrors.md), **`_RTC_GetErrDesc`** returns `NULL`.

## Requirements

| Routine | Required header |
|---|---|
| **`_RTC_GetErrDesc`** | \<rtcapi.h> |

For more information, see [Compatibility](../compatibility.md).

## Libraries

All versions of the [C run-time libraries](../crt-library-features.md).

## See also

[`_RTC_NumErrors`](rtc-numerrors.md)\
[Runtime error checking](../run-time-error-checking.md)