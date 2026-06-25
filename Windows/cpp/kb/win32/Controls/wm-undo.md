# WM\_UNDO message

An application sends a **WM\_UNDO** message to an edit control to undo the last operation. When this message is sent to an edit control, the previously deleted text is restored or the previously added text is deleted.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Not used; must be zero.

</dd> <dt>

*lParam* 
</dt> <dd>

Not used; must be zero.

</dd> </dl>

## Return value

If the message succeeds, the return value is **TRUE**.

If the message fails, the return value is **FALSE**.

## Remarks

**Rich Edit:** It is recommended that [**EM\_UNDO**](em-undo.md) be used instead of **WM\_UNDO**.

## Requirements



| Requirement | Value |
|-------------------------------------|----------------------------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                                           |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                                     |
| Header<br/>                   | <dl> <dt>Winuser.h (include Windows.h)</dt> </dl> |



## See also

<dl> <dt>

**Other Resources**
</dt> <dt>

[**WM\_CLEAR**](/windows/desktop/dataxchg/wm-clear)
</dt> <dt>

[**WM\_COPY**](/windows/desktop/dataxchg/wm-copy)
</dt> <dt>

[**WM\_CUT**](/windows/desktop/dataxchg/wm-cut)
</dt> <dt>

[**WM\_PASTE**](/windows/desktop/dataxchg/wm-paste)
</dt> </dl>

**Header:** Winuser.h
