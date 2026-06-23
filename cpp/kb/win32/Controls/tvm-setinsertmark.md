# TVM\_SETINSERTMARK message

Sets the insertion mark in a tree-view control. You can send this message explicitly or by using the [**TreeView\_SetInsertMark**](/windows/desktop/api/Commctrl/nf-commctrl-treeview_setinsertmark) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

**BOOL** value that specifies if the insertion mark is placed before or after the specified item. If this argument is nonzero, the insertion mark will be placed after the item. If this argument is zero, the insertion mark will be placed before the item.

</dd> <dt>

*lParam* 
</dt> <dd>

**HTREEITEM** that specifies at which item the insertion mark will be placed. If this argument is **NULL**, the insertion mark is removed.

</dd> </dl>

## Return value

Returns nonzero if successful, or zero otherwise.

## Remarks

In some circumstances, the insert mark can appear in two places after a node is expanded. If you are using insertion marks, it is recommended that you force a refresh of the control after expanding a node.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
