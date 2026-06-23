# EM\_POSFROMCHAR message

Retrieves the client area coordinates of a specified character in an edit control. You can send this message to either an edit control or a rich edit control.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

**Rich Edit 1.0 and 3.0:** A pointer to a [**POINTL**](/windows/win32/api/windef/ns-windef-pointl) structure that receives the client area coordinates of the character. The coordinates are in screen units and are relative to the upper-left corner of the control's client area.

**Edit controls and Rich Edit 2.0:** The zero-based index of the character.

</dd> <dt>

*lParam* 
</dt> <dd>

**Rich Edit 1.0 and 3.0:** The zero-based index of the character.

**Edit controls and Rich Edit 2.0:** This parameter is not used.

</dd> </dl>

## Return value

**Rich Edit 1.0 and 3.0:** The return value is not used.

**Edit controls and Rich Edit 2.0:** The return value contains the client area coordinates of the character. The [**LOWORD**](../winmsg/loword.md) contains the horizontal coordinate and the [**HIWORD**](../winmsg/hiword.md) contains the vertical coordinate.

## Remarks

A returned coordinate can be a negative value if the specified character is not displayed in the edit control's client area. The coordinates are truncated to integer values.

If the character is a line delimiter, the returned coordinates indicate a point just beyond the last visible character in the line. If the specified index is greater than the index of the last character in the control, the control returns -1.

**Rich Edit 3.0 and later:** For backward compatibility, Microsoft Rich Edit 3.0 supports the syntax used by Microsoft Rich Edit 2.0. If Microsoft Rich Edit 3.0 detects that *wParam* is not a valid [**POINTL**](/windows/win32/api/windef/ns-windef-pointl) pointer, it assumes the message was sent using the Microsoft Rich Edit 2.0 syntax. In this case, it uses the return value to return the coordinates.

**Rich Edit:** Supported in Microsoft Rich Edit 1.0 and later. For information about the compatibility of rich edit versions with the various system versions, see [About Rich Edit Controls](about-rich-edit-controls.md).

## Requirements



| Requirement | Value |
|-------------------------------------|----------------------------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                                           |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                                     |
| Header<br/>                   | <dl> <dt>Winuser.h (include Windows.h)</dt> </dl> |



## See also

<dl> <dt>

**Reference**
</dt> <dt>

[**EM\_CHARFROMPOS**](em-charfrompos.md)
</dt> <dt>

**Other Resources**
</dt> <dt>

[**POINTL**](/windows/win32/api/windef/ns-windef-pointl)
</dt> </dl>

**Header:** Winuser.h
