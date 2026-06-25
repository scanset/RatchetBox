# TVM\_SORTCHILDREN message

Sorts the child items of the specified parent item in a tree-view control. You can send this message explicitly or by using the [**TreeView\_SortChildren**](/windows/desktop/api/Commctrl/nf-commctrl-treeview_sortchildren) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Value that specifies whether the sorting is recursive. Set *wParam* to **TRUE** to sort all levels of child items below the parent item. Otherwise, only the parent's immediate children are sorted.

</dd> <dt>

*lParam* 
</dt> <dd>

Handle to the parent item whose child items are to be sorted.

</dd> </dl>

## Return value

Returns **TRUE** if successful, or **FALSE** otherwise.

## Remarks

This message alphabetizes the tree items using [**lstrcmpi**](/windows/desktop/api/winbase/nf-winbase-lstrcmpia) on the item name. You can use the [**TVM\_SORTCHILDRENCB**](tvm-sortchildrencb.md) message to customize the ordering behavior.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
