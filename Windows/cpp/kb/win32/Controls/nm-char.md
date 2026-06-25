# NM\_CHAR notification code

The NM\_CHAR notification code is sent by a control when a character key is processed. This notification code is sent in the form of a [**WM\_NOTIFY**](wm-notify.md) message.


```C++
NM_CHAR

    lpnmc = (LPNMCHAR) lParam;
```



## Parameters

<dl> <dt>

*lParam* 
</dt> <dd>

A pointer to an [**NMCHAR**](/windows/win32/api/commctrl/ns-commctrl-nmchar) structure that contains additional information about the character that caused the notification code.

</dd> </dl>

## Return value

The return value is ignored by most controls. For more information, see the documentation for the individual controls.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |



## See also

<dl> <dt>

[NM\_CHAR (toolbar)](nm-char-toolbar.md)
</dt> </dl>

**Header:** Commctrl.h
