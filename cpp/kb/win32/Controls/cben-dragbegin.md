# CBEN\_DRAGBEGIN notification code

Sent when the user begins dragging the image of the item displayed in the edit portion of the control. This notification code is sent in the form of a [**WM\_NOTIFY**](wm-notify.md) message.


```C++
CBEN_DRAGBEGIN

    lpnmdb = (LPNMCBEDRAGBEGIN) lParam;
```



## Parameters

<dl> <dt>

*lParam* 
</dt> <dd>

A pointer to a [**NMCBEDRAGBEGIN**](/windows/desktop/api/Commctrl/ns-commctrl-nmcbedragbegina) structure that contains information about the notification code.

</dd> </dl>

## Return value

The return value is ignored.

## Remarks

If the receiving application implements drag-and-drop functionality from the control, the application will begin the drag-and-drop operation in response to this notification code.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |
| Unicode and ANSI names<br/>   | **CBEN\_DRAGBEGINW** (Unicode) and **CBEN\_DRAGBEGINA** (ANSI)<br/>             |

**Header:** Commctrl.h
