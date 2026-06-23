# LVM\_GETINSERTMARKRECT message

Retrieves the rectangle that bounds the insertion point.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>Not used; must be zero.</dd> <dt>

*lParam* 
</dt> <dd>Pointer to a <a href="/windows/win32/api/windef/ns-windef-rect">RECT</a> structure that contains the coordinates of a rectangle that bounds the insertion point.</dd> </dl>

## Return value

Returns one of the following values.



| Return code                                                                      | Description                          |
|----------------------------------------------------------------------------------|--------------------------------------|
| <dl> <dt>**0**</dt> </dl> | No insertion point found.<br/> |
| <dl> <dt>**1**</dt> </dl> | Insertion point found.<br/>    |



 

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
