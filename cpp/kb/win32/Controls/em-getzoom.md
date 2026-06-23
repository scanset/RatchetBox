# EM\_GETZOOM message

Gets the current zoom ratio for a multiline edit control or a rich edit control. The zoom ration is always between 1/64 and 64.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Receives the numerator of the zoom ratio.

</dd> <dt>

*lParam* 
</dt> <dd>

Receives the denominator of the zoom ratio.

</dd> </dl>

## Return value

The message returns **TRUE** if message is processed, which it will be if both *wParam* and *lParam* are not **NULL**.

## Remarks

**Edit:** Supported in Windows 10 1809 and later. The edit control needs to have the **ES\_EX\_ZOOMABLE** extended style set, for this message to have an effect, see [Edit Control Extended Styles](edit-control-window-extended-styles.md). For information about the edit control, see [Edit Controls](edit-controls.md).

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Redistributable<br/>          | Rich Edit 3.0<br/>                                                              |
| Header<br/>                   | <dl> <dt>Richedit.h/Commctrl.h</dt> </dl> |



## See also

<dl> <dt>

[**EM\_SETZOOM**](em-setzoom.md)
</dt> </dl>

**Header:** Richedit.h, Commctrl.h
