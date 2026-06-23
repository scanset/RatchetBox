# DL\_DROPPED notification code

Signals that the user has completed a drag operation by releasing the left mouse button. A drag list box sends this notification code to its parent window in the form of a drag list message. For more information, see [Drag List Box Messages](about-list-boxes.md).


```C++
DL_DROPPED

    pDragInfo = (LPARAM)(LPDRAGLISTINFO) lParam;
```



## Parameters

<dl> <dt>

*lParam* 
</dt> <dd>

A pointer to a [**DRAGLISTINFO**](/windows/win32/api/commctrl/ns-commctrl-draglistinfo) structure that contains the DL\_DROPPED notification code, the handle to the drag list box, and the cursor position.

</dd> </dl>

## Return value

No return value.

## Remarks

This notification code is normally processed by inserting the item being dragged into the list in front of the item under the cursor. To retrieve the index of the item at the cursor position, use the [**LBItemFromPt**](/windows/desktop/api/Commctrl/nf-commctrl-lbitemfrompt) function. Note that the DL\_DROPPED notification code is sent even if the cursor is not on a list item. In that case, **LBItemFromPt** returns -1.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
