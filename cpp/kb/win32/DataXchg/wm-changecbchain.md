# WM\_CHANGECBCHAIN message

Sent to the first window in the clipboard viewer chain when a window is being removed from the chain.

A window receives this message through its [**WindowProc**](/windows/win32/api/winuser/nc-winuser-wndproc) function.


```C++
#define WM_CHANGECBCHAIN                0x030D
```



## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

A handle to the window being removed from the clipboard viewer chain.

</dd> <dt>

*lParam* 
</dt> <dd>

A handle to the next window in the chain following the window being removed. This parameter is **NULL** if the window being removed is the last window in the chain.

</dd> </dl>

## Return value

If an application processes this message, it should return zero.

## Remarks

Each clipboard viewer window saves the handle to the next window in the clipboard viewer chain. Initially, this handle is the return value of the [**SetClipboardViewer**](/windows/desktop/api/Winuser/nf-winuser-setclipboardviewer) function.

When a clipboard viewer window receives the **WM\_CHANGECBCHAIN** message, it should call the [**SendMessage**](/windows/desktop/api/winuser/nf-winuser-sendmessage) function to pass the message to the next window in the chain, unless the next window is the window being removed. In this case, the clipboard viewer should save the handle specified by the *lParam* parameter as the next window in the chain.

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

[**SendMessage**](/windows/desktop/api/winuser/nf-winuser-sendmessage)
</dt> <dt>

[**SetClipboardViewer**](/windows/desktop/api/Winuser/nf-winuser-setclipboardviewer)
</dt> <dt>

**Conceptual**
</dt> <dt>

[Clipboard](clipboard.md)
</dt> </dl>

**Header:** Winuser.h
