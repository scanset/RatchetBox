# LVN\_ODSTATECHANGED notification code

Sent by a list-view control when the state of an item or range of items has changed. This notification code is sent in the form of a [**WM\_NOTIFY**](wm-notify.md) message.


```C++
LVN_ODSTATECHANGED

    lpStateChange = (LPNMLVODSTATECHANGE) lParam;
```



## Parameters

<dl> <dt>

*lParam* 
</dt> <dd>

Pointer to an [**NMLVODSTATECHANGE**](/windows/win32/api/commctrl/ns-commctrl-nmlvodstatechange) structure that contains information about the item or items that have changed.

</dd> </dl>

## Return value

The application receiving this notification code must return zero.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
