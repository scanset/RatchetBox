# WM_INTERCEPTED_WINDOW_ACTION message

Message sent to Intercept windows when an action is intercepted.

```cpp
#define WM_INTERCEPTED_WINDOW_ACTION 0x0346
```

## Parameters

`wParam`

Not used.

`lParam`

A pointer to a [WINDOW_ACTION](ns-winuser-windowaction.md), describing the
changes to the window that were intercepted (skipped).

## Remarks

Intercept windows are ones that have called
[ConvertToInterceptWindow](nf-winuser-converttointerceptwindow.md).

When an action is intercepted, the provided
[WINDOW_ACTION](ns-winuser-windowaction.md),
describes the changes to the window that were intercepted (skipped). For the
window to respond to this action, it must call
[ApplyWindowAction](nf-winuser-applywindowaction.md).

It is not required for Intercept windows to apply intercepted actions
immediately (before returning from the intercepted window action message
handler). These changes can be applied at any time, and in most cases the
Intercept window is free to change the values in the action or choose not to
respond at all.

An intercept window can generate intercepted messages on itself. (Calling any
windowing API other than, like
[SetWindowPos](/windows/win32/api/winuser/nf-winuser-setwindowpos), will
generate
[ApplyWindowAction](nf-winuser-applywindowaction.md)
an intercepted window action.)

This message is sent synchronously, before the call to the original API that
caused this operation returns.

There is no default processing (DefWindowProc) for this message, and the return
value is ignored.

## Requirements

| &nbsp; | &nbsp; |
| ---- |:---- |
| **Minimum supported client** | Windows 11 [desktop apps only] |
| **Target Platform** | Windows |
| **Header** | None |
| **Library** | None |
| **DLL** | User32.dll |