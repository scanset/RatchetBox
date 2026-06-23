# TVM\_GETITEMHEIGHT message

Retrieves the current height of the each tree-view item. You can send this message explicitly or by using the [**TreeView\_GetItemHeight**](/windows/desktop/api/Commctrl/nf-commctrl-treeview_getitemheight) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>Must be zero.</dd> <dt>

*lParam* 
</dt> <dd>Must be zero.</dd> </dl>

## Return value

Returns the height of each item, in pixels.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |



## See also

<dl> <dt>

[**TVM\_SETITEMHEIGHT**](tvm-setitemheight.md)
</dt> </dl>

**Header:** Commctrl.h
