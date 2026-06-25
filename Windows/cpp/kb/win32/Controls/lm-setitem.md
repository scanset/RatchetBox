# LM\_SETITEM message

Sets the states and attributes of an item.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>Must be **NULL**. </dd> <dt>

*lParam* 
</dt> <dd>Pointer to a <a href="/windows/win32/api/commctrl/ns-commctrl-litem">LITEM</a> structure containing the new states and attributes desired for the link. </dd> </dl>

## Return value

Returns **TRUE** if the message succeeds in setting the values and attributes specified.

## Remarks

With the [**LM\_GETITEM**](lm-getitem.md) message, links can only be accessed through the numeric index returned in the **iLink** member of [**LITEM**](/windows/win32/api/commctrl/ns-commctrl-litem). Accessing the link through the ID name returned in **szID** is not supported.

> [!Note]  
> To use this message, you must provide a manifest specifying Comctl32.dll version 6.0. For more information on manifests, see [Enabling Visual Styles](cookbook-overview.md).

 

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
