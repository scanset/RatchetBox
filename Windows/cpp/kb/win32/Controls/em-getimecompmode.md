# EM\_GETIMECOMPMODE message

Retrieves the current Input Method Editor (IME) mode for a rich edit control.

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

The return value is one of the following values.



| Return code                                                                                     | Description                  |
|-------------------------------------------------------------------------------------------------|------------------------------|
| <dl> <dt>**ICM\_NOTOPEN**</dt> </dl>     | IME is not open.<br/>  |
| <dl> <dt>**ICM\_LEVEL3**</dt> </dl>      | True inline mode.<br/> |
| <dl> <dt>**ICM\_LEVEL2**</dt> </dl>      | Level 2.<br/>          |
| <dl> <dt>**ICM\_LEVEL2\_5**</dt> </dl>   | Level 2.5<br/>         |
| <dl> <dt>**ICM\_LEVEL2\_SUI**</dt> </dl> | Special UI.<br/>       |



 

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Richedit.h</dt> </dl> |

**Header:** Richedit.h
