# BN\_CLICKED notification code

Sent when the user clicks a button.

The parent window of the button receives this notification code through the [**WM\_COMMAND**](/windows/desktop/menurc/wm-command) message.


```C++
BN_CLICKED

    WPARAM wParam;
    LPARAM lParam;
```



## Parameters

*wParam* 

The [**LOWORD**](../winmsg/loword.md) contains the button's control identifier. The [**HIWORD**](../winmsg/hiword.md) specifies the notification code.


*lParam* 

A handle to the button.


## Remarks

A disabled button does not send a BN\_CLICKED notification code to its parent window.

## Requirements

| Requirement | Value |
|-------------------------------------|----------------------------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                                           |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                                     |
| Header<br/>                   | <dl> <dt>Winuser.h (include Windows.h)</dt> </dl> |



## See also

<dl> <dt>

**Other Resources**
</dt> <dt>

[**HIWORD**](../winmsg/hiword.md)
</dt> <dt>

[**LOWORD**](../winmsg/loword.md)
</dt> <dt>

[**WM\_COMMAND**](/windows/desktop/menurc/wm-command)
</dt> </dl>

**Header:** Winuser.h
