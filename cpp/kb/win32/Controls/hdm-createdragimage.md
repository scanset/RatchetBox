# HDM\_CREATEDRAGIMAGE message

Creates a semi-transparent version of an item's image for use as a dragging image. You can send this message explicitly or use the [**Header\_CreateDragImage**](/windows/desktop/api/Commctrl/nf-commctrl-header_createdragimage) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

The zero-based index of the item within the header control. The image assigned to this item is the basis for the transparent image.

</dd> <dt>

*lParam* 
</dt> <dd>Must be zero.</dd> </dl>

## Return value

Returns a handle to an image list that contains the new image as its only element.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
