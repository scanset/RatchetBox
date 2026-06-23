# LVM\_GETITEMSPACING message

Determines the spacing between items in a list-view control. You can send this message explicitly or by using the [**ListView\_GetItemSpacing**](/windows/desktop/api/Commctrl/nf-commctrl-listview_getitemspacing) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

View for which to retrieve the item spacing. This parameter is **TRUE** for small icon view, or **FALSE** for icon view.

</dd> <dt>

*lParam* 
</dt> <dd>Must be zero.</dd> </dl>

## Return value

Returns the amount of spacing between items. The horizontal spacing is contained in the [**LOWORD**](../winmsg/loword.md) and the vertical spacing is contained in the [**HIWORD**](../winmsg/hiword.md).

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
