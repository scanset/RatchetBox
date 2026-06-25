# TVM\_SETLINECOLOR message

The **TVM\_SETLINECOLOR** message sets the current line color.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>Must be zero.</dd> <dt>

*lParam* 
</dt> <dd>

New line color. Use the CLR\_DEFAULT value to restore the system default colors.

</dd> </dl>

## Return value

Returns the previous line color.

## Remarks

This message only changes line colors. To change the colors of the '+' and '-' inside the buttons, use the [**TVM\_SETTEXTCOLOR**](tvm-settextcolor.md) message.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |



## See also

<dl> <dt>

[**TVM\_GETLINECOLOR**](tvm-getlinecolor.md)
</dt> </dl>

**Header:** Commctrl.h
