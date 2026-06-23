# WM\_PASTE message

An application sends a **WM\_PASTE** message to an edit control or combo box to copy the current content of the clipboard to the edit control at the current caret position. Data is inserted only if the clipboard contains data in [**CF\_TEXT**](standard-clipboard-formats.md) format.


```C++
#define WM_PASTE                        0x0302
```



## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

This parameter is not used and must be zero.

</dd> <dt>

*lParam* 
</dt> <dd>

This parameter is not used and must be zero.

</dd> </dl>

## Return value

This message does not return a value.

## Remarks

When sent to a combo box, the **WM\_PASTE** message is handled by its edit control. This message has no effect when sent to a combo box with the [**CBS\_DROPDOWNLIST**](../controls/combo-box-styles.md) style.

## Requirements



| Requirement | Value |
|-------------------------------------|----------------------------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows 2000 Professional \[desktop apps only\]<br/>                                               |
| Minimum supported server<br/> | Windows 2000 Server \[desktop apps only\]<br/>                                                     |
| Header<br/>                   | <dl> <dt>Winuser.h (include Windows.h)</dt> </dl> |



## See also

<dl> <dt>

**Reference**
</dt> <dt>

[**WM\_CLEAR**](wm-clear.md)
</dt> <dt>

[**WM\_COPY**](wm-copy.md)
</dt> <dt>

[**WM\_CUT**](wm-cut.md)
</dt> <dt>

[**WM\_UNDO**](/windows/desktop/Controls/wm-undo)
</dt> <dt>

**Conceptual**
</dt> <dt>

[Clipboard](clipboard.md)
</dt> </dl>

**Header:** Winuser.h
