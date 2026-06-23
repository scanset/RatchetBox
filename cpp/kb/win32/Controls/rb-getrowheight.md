# RB\_GETROWHEIGHT message

Retrieves the height of a specified row in a rebar control.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Zero-based index of a band. The height of the row that contains the specified band will be retrieved.

</dd> <dt>

*lParam* 
</dt> <dd>Must be zero.</dd> </dl>

## Return value

Returns a **UINT** value that represents the row height, in pixels.

## Remarks

To retrieve the number of rows in a rebar control, use the [**RB\_GETROWCOUNT**](rb-getrowcount.md) message.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
