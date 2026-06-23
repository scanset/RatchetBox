# TVN\_KEYDOWN notification code

Notifies a tree-view control's parent window that the user pressed a key and the tree-view control has the input focus. This notification code is sent in the form of a [**WM\_NOTIFY**](wm-notify.md) message.


```C++
TVN_KEYDOWN 

    ptvkd = (LPNMTVKEYDOWN) lParam 
```



## Parameters

<dl> <dt>

*lParam* 
</dt> <dd>

Pointer to an [**NMTVKEYDOWN**](/windows/win32/api/commctrl/ns-commctrl-nmtvkeydown) structure. The **wVKey** member specifies the virtual key code.

</dd> </dl>

## Return value

If the **wVKey** member of *lParam* is a character key code, the character will be used as part of an incremental search. Return nonzero to exclude the character from the incremental search, or zero to include the character in the search. For all other keys, the return value is ignored.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
