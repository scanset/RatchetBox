# TVM\_GETCOUNT message

Retrieves a count of the items in a tree-view control. You can send this message explicitly or by using the [**TreeView\_GetCount**](/windows/desktop/api/Commctrl/nf-commctrl-treeview_getcount) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>Must be zero.</dd> <dt>

*lParam* 
</dt> <dd>Must be zero.</dd> </dl>

## Return value

Returns the count of items.

## Remarks

The node count returned by [**TreeView\_GetCount**](/windows/desktop/api/Commctrl/nf-commctrl-treeview_getcount) is limited to integer values. If you add a node beyond 32767 the macro returns a negative value. After adding 65536 nodes the count returns to zero. When this occurs, the tree-view control appears empty with no scrollbars.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
