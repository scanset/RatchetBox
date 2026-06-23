# TBN\_GETINFOTIP notification code

Retrieves infotip information for a toolbar item. This notification code is sent in the form of a [**WM\_NOTIFY**](wm-notify.md) message.


```C++
TBN_GETINFOTIP

    lptbgit = (LPNMTBGETINFOTIP) lParam; 
```



## Parameters

<dl> <dt>

*lParam* 
</dt> <dd>

Pointer to an [**NMTBGETINFOTIP**](/windows/win32/api/commctrl/ns-commctrl-nmtbgetinfotipa) structure that contains item information and receives infotip information.

</dd> </dl>

## Return value

The return value is ignored by the control.

## Remarks

The infotip support in the toolbar allows the toolbar to display tooltips for items that are as large as INFOTIPSIZE characters. If this notification code is not processed, the toolbar will use the item's text for the infotip.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |
| Unicode and ANSI names<br/>   | **TBN\_GETINFOTIPW** (Unicode) and **TBN\_GETINFOTIPA** (ANSI)<br/>             |

**Header:** Commctrl.h
