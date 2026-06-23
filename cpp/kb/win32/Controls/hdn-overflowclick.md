# HDN\_OVERFLOWCLICK notification code

Sent by a header control to its parent when the header's overflow button is clicked. This notification code is sent in the form of an [**WM\_NOTIFY**](wm-notify.md) message.


```C++
HDN_OVERFLOWCLICK

    pNMHeader = (LPNMHEADER) lParam;
```



## Parameters

<dl> <dt>

*lParam* \[in\]
</dt> <dd>

A pointer to a [**NMHEADER**](/windows/win32/api/commctrl/ns-commctrl-nmheadera) structure that describes the notification code. The calling process is responsible for allocating this structure, including the contained [**NMHDR**](/windows/desktop/api/richedit/ns-richedit-nmhdr) structure. Set the members of the **NMHDR** structure, including the *code* member that must be set to HDN\_OVERFLOWCLICK.

Set the **iItem** member of the [**NMHEADER**](/windows/win32/api/commctrl/ns-commctrl-nmheadera) structure to the index of the first header item that is not visible and thus should be displayed on an overflow.

</dd> </dl>

## Return value

No return value.

## Remarks

The notification receiver casts **LPARAM** to retrieve the [**NMHEADER**](/windows/win32/api/commctrl/ns-commctrl-nmheadera) structure. **WPARAM** contains the ID of the control that sends the notification.

This message is sent only when style [**HDS\_OVERFLOW**](header-control-styles.md) is set on the header control.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2008 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
