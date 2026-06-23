# TVM\_SHOWINFOTIP message

Shows the infotip for a specified item in a tree-view control. You can send this message explicitly or by using the [**TreeView\_ShowInfoTip**](/windows/desktop/api/Commctrl/nf-commctrl-treeview_showinfotip) macro..

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>Must be zero.</dd> <dt>

*lParam* \[in\]
</dt> <dd>

Handle to the item.

</dd> </dl>

## Return value

Returns zero.

## Remarks

Most applications do not use this message. Infotips are shown automatically. For more information, see Using Tree-view Infotips in the [About Tree-View Controls](tree-view-controls.md) overview.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2008 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
