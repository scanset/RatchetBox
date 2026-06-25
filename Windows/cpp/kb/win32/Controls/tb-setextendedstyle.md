# TB\_SETEXTENDEDSTYLE message

Sets the extended styles for a toolbar control.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>Must be zero.</dd> <dt>

*lParam* 
</dt> <dd>

Value specifying the new extended styles. This parameter can be a combination of [extended styles](toolbar-extended-styles.md).

</dd> </dl>

## Return value

Returns a **DWORD** that represents the previous extended styles. This value can be a combination of [extended styles](toolbar-extended-styles.md).

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |



## See also

<dl> <dt>

[**TB\_GETEXTENDEDSTYLE**](tb-getextendedstyle.md)
</dt> </dl>

**Header:** Commctrl.h
