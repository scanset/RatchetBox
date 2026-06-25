# LVM\_INSERTGROUP message

Inserts a group into a list-view control.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>Index where the group is to be added. If this is -1, the group is added at the end of the list.</dd> <dt>

*lParam* 
</dt> <dd>Pointer to a <a href="/windows/win32/api/commctrl/ns-commctrl-lvgroup"><b>LVGROUP</b></a> structure that contains the group to add.</dd> </dl>

## Return value

Returns the index of the item that the group was added to, or -1 if the operation failed.

## Remarks

To turn on group mode, call [**LVM\_ENABLEGROUPVIEW**](lvm-enablegroupview.md) or [**ListView\_EnableGroupView**](/windows/desktop/api/Commctrl/nf-commctrl-listview_enablegroupview).

A group cannot be inserted into an empty list-view control.

Be sure to set the **iGroupId** in the item(s) the group was added to. Otherwise after [**LVM\_ENABLEGROUPVIEW**](lvm-enablegroupview.md) message processing with **TRUE** the listview control will not show any items.

> [!Note]  
> To use this message, you must provide a manifest specifying Comclt32 version 6.0. For more information on manifests, see [Enabling Visual Styles](cookbook-overview.md).

 

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
