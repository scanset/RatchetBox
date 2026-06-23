# LVM\_HASGROUP message

Determines whether the list-view control has a specified group.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>ID of the group.</dd> <dt>

*lParam* 

</dt> <dd>Must be <b>NULL</b>.</dd> </dl>

## Return value

Returns **TRUE** if the list-view control has the specified group, or **FALSE** otherwise.

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
