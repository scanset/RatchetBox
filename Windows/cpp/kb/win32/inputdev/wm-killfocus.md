# WM\_KILLFOCUS message

Sent to a window immediately before it loses the keyboard focus.


```C++
#define WM_KILLFOCUS                    0x0008
```



## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

A handle to the window that receives the keyboard focus. This parameter can be **NULL**.

</dd> <dt>

*lParam* 
</dt> <dd>

This parameter is not used.

</dd> </dl>

## Return value

An application should return zero if it processes this message.

## Remarks

If an application is displaying a caret, the caret should be destroyed at this point.

While processing this message, do not make any function calls that display or activate a window. This causes the thread to yield control and can cause the application to stop responding to messages. For more information, see [Message Deadlocks](/windows/desktop/winmsg/about-messages-and-message-queues).

## Requirements



| Requirement | Value |
|-------------------------------------|----------------------------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows 2000 Professional \[desktop apps only\]<br/>                                               |
| Minimum supported server<br/> | Windows 2000 Server \[desktop apps only\]<br/>                                                     |
| Header<br/>                   | <dl> <dt>Winuser.h (include Windows.h)</dt> </dl> |



## See also

<dl> <dt>

**Reference**
</dt> <dt>

[**SetFocus**](/windows/win32/api/winuser/nf-winuser-setfocus)
</dt> <dt>

[**WM\_SETFOCUS**](wm-setfocus.md)
</dt> <dt>

**Conceptual**
</dt> <dt>

[Keyboard Input](keyboard-input.md)
</dt> </dl>

**Header:** Winuser.h
