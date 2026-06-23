# MCN\_SELECT notification code

Sent by a month calendar control when the user makes an explicit date selection within a month calendar control. This notification code is sent in the form of a [**WM\_NOTIFY**](wm-notify.md) message.


```C++
MCN_SELECT

    lpNMSelChange = (LPNMSELCHANGE) lParam;
```



## Parameters

<dl> <dt>

*lParam* 
</dt> <dd>

Pointer to an [**NMSELCHANGE**](/windows/win32/api/commctrl/ns-commctrl-nmselchange) structure that contains information about the currently selected date range.

</dd> </dl>

## Return value

No return value.

## Remarks

The **MCN\_SELECT** notification code is similar to [**MCN\_SELCHANGE**](mcn-selchange.md), but **MCN\_SELECT** is sent only in response to a user's explicit date selections. **MCN\_SELCHANGE** applies to any selection change.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
