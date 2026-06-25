# TB\_GETITEMDROPDOWNRECT message

Gets the bounding rectangle of the dropdown window for a toolbar item with style [**BTNS\_DROPDOWN**](toolbar-control-and-button-styles.md).

## Parameters

<dl> <dt>

*wParam* \[in\]
</dt> <dd>

The zero-based index of the toolbar control item for which to retrieve the bounding rectangle.

</dd> <dt>

*lParam* \[in, out\]
</dt> <dd>A pointer to a <a href="/windows/win32/api/windef/ns-windef-rect">**RECT**</a> structure to receive the bounding rectangle information. The message sender is responsible for allocating this structure. The coordinates returned in the **RECT** structure are expressed as client coordinates.</dd> </dl>

## Return value

Always returns nonzero.

## Remarks

The item must have the [**BTNS\_DROPDOWN**](toolbar-control-and-button-styles.md) style.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
