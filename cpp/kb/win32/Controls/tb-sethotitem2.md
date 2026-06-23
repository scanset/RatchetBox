# TB\_SETHOTITEM2 message

Sets the hot item in a toolbar.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Index of the item that will be made hot. If this value is -1, none of the items will be hot.

</dd> <dt>

*lParam* 
</dt> <dd>A combination of HICF\_xxx flags. See <a href="/windows/win32/api/commctrl/ns-commctrl-nmtbhotitem">**NMTBHOTITEM**</a>.</dd> </dl>

## Return value

Returns the index of the previous hot item, or -1 if there was no hot item.

## Remarks

The behavior of this message is not defined for toolbars that do not have the [**TBSTYLE\_FLAT**](toolbar-control-and-button-styles.md) style.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
