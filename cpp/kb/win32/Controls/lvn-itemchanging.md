# LVN\_ITEMCHANGING notification code

Notifies a list-view control's parent window that an item is changing. This notification code is sent in the form of a [**WM\_NOTIFY**](wm-notify.md) message.


```C++
LVN_ITEMCHANGING

    pnmv = (LPNMLISTVIEW) lParam; 
```



## Parameters

<dl> <dt>

*lParam* 
</dt> <dd>

Pointer to an [**NMLISTVIEW**](/windows/win32/api/commctrl/ns-commctrl-nmlistview) structure that identifies the item and specifies which of its attributes are changing.

</dd> </dl>

## Return value

Returns **TRUE** to prevent the change, or **FALSE** to allow the change.

## Remarks

If the list-view control has the [**LVS\_OWNERDATA**](list-view-window-styles.md) style, LVN\_ITEMCHANGING notification codes are not sent.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
