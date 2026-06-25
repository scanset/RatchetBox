# RBN\_MINMAX notification code

Sent by a rebar control prior to maximizing or minimizing a band. This notification code is sent in the form of a [**WM\_NOTIFY**](wm-notify.md) message.


```C++
RBN_MINMAX
```



## Parameters

This notification code has no parameters.

## Return value

Return a nonzero value to prevent the operation from taking place, zero to allow it to continue.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
