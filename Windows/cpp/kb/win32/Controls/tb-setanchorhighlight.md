# TB\_SETANCHORHIGHLIGHT message

Sets the anchor highlight setting for a toolbar.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

**BOOL** value that specifies if anchor highlighting is enabled or disabled. If this value is nonzero, anchor highlighting will be enabled. If this value is zero, anchor highlighting will be disabled.

</dd> <dt>

*lParam* 
</dt> <dd>Must be zero.</dd> </dl>

## Return value

Returns the previous anchor highlight setting. If this value is nonzero, anchor highlighting was enabled. If this value is zero, anchor highlighting was disabled.

## Remarks

Anchor highlighting in a toolbar means that the last highlighted item will remain highlighted until another item is highlighted. This occurs even if the cursor leaves the toolbar control.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
