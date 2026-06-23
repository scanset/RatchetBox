# BCN\_DROPDOWN notification code

Sent when the user clicks a drop down arrow on a button. The parent window of the control receives this notification code in the form of a [**WM\_NOTIFY**](wm-notify.md) message.


```C++
BCN_DROPDOWN
        
    pnmdropdown = (NMBCDROPDOWN*) lParam;
```



## Parameters

<dl> <dt>

*lParam* 
</dt> <dd>

A pointer to a [**NMBCDROPDOWN**](/windows/win32/api/commctrl/ns-commctrl-nmbcdropdown) structure. The **rcButton** member is set to describe the drop-down area.

</dd> </dl>

## Return value

No return value.

## Remarks

The notification receiver casts **LPARAM** to retrieve the [**NMBCDROPDOWN**](/windows/win32/api/commctrl/ns-commctrl-nmbcdropdown) structure. **WPARAM** contains the ID of the control that sends this message. The button control must have a drop-down button style.

## Requirements



| Requirement | Value |
|-------------------------------------|----------------------------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                                           |
| Minimum supported server<br/> | Windows Server 2008 \[desktop apps only\]<br/>                                                     |
| Header<br/>                   | <dl> <dt>Winuser.h (include Windows.h)</dt> </dl> |

**Header:** Winuser.h
