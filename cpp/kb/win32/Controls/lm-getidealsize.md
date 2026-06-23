# LM\_GETIDEALSIZE message

Retrieves the preferred height of a link for the control's current width.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>Maximum width of the link, in pixels.</dd> <dt>

*lParam* \[out\]
</dt> <dd>When this message returns, contains a pointer to a <a href="/windows/win32/api/windef/ns-windef-size">**SIZE**</a> structure. The **cy** member of this structure indicates the ideal height of the control for the given width. It adjusts the **cx** member to the amount of space actually needed.</dd> </dl>

## Return value

Integer that represents the preferred height of the link text, in pixels.

## Remarks

> [!Note]  
> To use this API, you must provide a manifest that specifies Comclt32.dll version 6.0. For more information on manifests, see [Enabling Visual Styles](cookbook-overview.md).

 

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2008 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
