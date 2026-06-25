# `_RTC_NumErrors`

Returns the total number of errors that can be detected by run-time error checks (RTC). You can use this number as the control in a **`for`** loop, where each value in the loop is passed to [`_RTC_GetErrDesc`](rtc-geterrdesc.md).

## Syntax

```C
int _RTC_NumErrors( void );
```

## Return value

An integer whose value represents the total number of errors that can be detected by the Visual C++ run-time error checks.

## Requirements

| Routine | Required header |
|---|---|
| **`_RTC_NumErrors`** | \<rtcapi.h> |

For more information, see [Compatibility](../compatibility.md).

## Libraries

All versions of the [C run-time libraries](../crt-library-features.md).

## See also

[`_RTC_GetErrDesc`](rtc-geterrdesc.md)\
[Runtime error checking](../run-time-error-checking.md)