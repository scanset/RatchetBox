# LVM\_FINDITEM message

Searches for a list-view item with the specified characteristics. You can send this message explicitly or by using the [**ListView\_FindItem**](/windows/desktop/api/Commctrl/nf-commctrl-listview_finditem) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

The index of the item to begin the search with or -1 to start from the beginning. The specified item is itself excluded from the search.

</dd> <dt>

*lParam* 
</dt> <dd>

A pointer to an [**LVFINDINFO**](/windows/win32/api/commctrl/ns-commctrl-lvfindinfoa) structure that contains information about what to search for.

</dd> </dl>

## Return value

Returns the index of the item if successful, or -1 otherwise.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |
| Unicode and ANSI names<br/>   | **LVM\_FINDITEMW** (Unicode) and **LVM\_FINDITEMA** (ANSI)<br/>                 |

**Header:** Commctrl.h
