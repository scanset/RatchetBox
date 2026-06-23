# LVM\_MAPINDEXTOID message

Maps the index of an item to a unique ID.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

The index of an item.

</dd> <dt>

*lParam* 
</dt> <dd>

Must be zero.

</dd> </dl>

## Return value

Returns a unique ID.

## Remarks

List-view controls internally track items by index. This can present problems because indexes can change during the control's lifetime.

The list-view control can tag an item with an ID when the item is created. You can use this ID to guarantee uniqueness during the lifetime of the list-view control.

To uniquely identify an item, take the index that is returned from a call such as [**IComponent::GetDisplayInfo**](/windows/desktop/api/mmc/nf-mmc-icomponent-getdisplayinfo) and call **LVM\_MAPINDEXTOID**. The return value is a unique ID.

> [!Note]  
> In a multithreaded environment, the index is only guaranteed on the thread that hosts the list-view control, not on background threads.

 

> [!Note]  
> To use this message, you must provide a manifest specifying Comclt32.dll version 6.0. For more information on manifests, see [Enabling Visual Styles](cookbook-overview.md).

 

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
