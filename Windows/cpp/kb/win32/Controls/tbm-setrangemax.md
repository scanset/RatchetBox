# TBM\_SETRANGEMAX message

Sets the maximum logical position for the slider in a trackbar.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Redraw flag. If this parameter is **TRUE**, the trackbar is redrawn after the range is set. If this parameter is **FALSE**, the message sets the range but does not redraw the trackbar.

</dd> <dt>

*lParam* 
</dt> <dd>

Maximum position for the slider.

</dd> </dl>

## Return value

No return value.

## Remarks

If the current slider position is greater than the new maximum, the **TBM\_SETRANGEMAX** message sets the slider position to the new maximum value.

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

[**TBM\_SETRANGE**](tbm-setrange.md)
</dt> <dt>

[**TBM\_SETRANGEMIN**](tbm-setrangemin.md)
</dt> </dl>

**Header:** Commctrl.h
