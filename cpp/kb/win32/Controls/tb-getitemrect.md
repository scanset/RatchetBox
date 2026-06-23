# TB\_GETITEMRECT message

Retrieves the bounding rectangle of a button in a toolbar.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Zero-based index of the button for which to retrieve information.

</dd> <dt>

*lParam* 
</dt> <dd>

Pointer to a [**RECT**](/windows/win32/api/windef/ns-windef-rect) structure that receives the client coordinates of the bounding rectangle.

</dd> </dl>

## Return value

Returns **TRUE** if successful, or **FALSE** otherwise.

## Remarks

This message does not retrieve the bounding rectangle for buttons whose state is set to the [**TBSTATE\_HIDDEN**](toolbar-button-states.md) value.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
