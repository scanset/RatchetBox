# CBEM\_GETEDITCONTROL message

Gets the handle to the edit control portion of a ComboBoxEx control. A ComboBoxEx control uses an edit box when it is set to the [**CBS\_DROPDOWN**](combo-box-styles.md) style.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>Must be zero.</dd> <dt>

*lParam* 
</dt> <dd>Must be zero.</dd> </dl>

## Return value

Returns the handle to the edit control within the ComboBoxEx control if it uses the [**CBS\_DROPDOWN**](combo-box-styles.md) style. Otherwise, the message returns **NULL**.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
