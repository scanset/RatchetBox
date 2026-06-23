# TBM\_SETSELSTART message

Sets the starting logical position of the current selection range in a trackbar. This message is ignored if the trackbar does not have the [**TBS\_ENABLESELRANGE**](trackbar-control-styles.md) style.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Redraw flag. If this parameter is **TRUE**, the message redraws the trackbar after the selection range is set. If this parameter is **FALSE**, the message sets the selection range but does not redraw the trackbar.

</dd> <dt>

*lParam* 
</dt> <dd>

Starting position of the selection range.

</dd> </dl>

## Return value

No return value.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |



## See also

<dl> <dt>

**Reference**
</dt> <dt>

[**TBM\_GETSELEND**](tbm-getselend.md)
</dt> <dt>

[**TBM\_GETSELSTART**](tbm-getselstart.md)
</dt> <dt>

[**TBM\_SETSEL**](tbm-setsel.md)
</dt> <dt>

[**TBM\_SETSELEND**](tbm-setselend.md)
</dt> </dl>

**Header:** Commctrl.h
