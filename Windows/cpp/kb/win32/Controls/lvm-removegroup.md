# LVM\_REMOVEGROUP message

Removes a group from a list-view control.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>ID that specifies the group to remove.</dd> <dt>

*lParam* 
</dt> <dd>

Must be **NULL**.

</dd> </dl>

## Return value

Returns the index of the group if successful, or -1 otherwise.

## Remarks

> [!Note]  
> To use this message, you must provide a manifest specifying Comclt32.dll version 6.0. For more information on manifests, see [Enabling Visual Styles](cookbook-overview.md).

 

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
