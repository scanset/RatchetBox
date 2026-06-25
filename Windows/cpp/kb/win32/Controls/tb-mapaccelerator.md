# TB\_MAPACCELERATOR message

Determines the ID of the button that corresponds to the specified accelerator character.

## Parameters

<dl> <dt>

*wParam* \[in\]
</dt> <dd>

The accelerator character.

</dd> <dt>

*lParam* \[out\]
</dt> <dd>

Pointer to a **UINT**. On return, if successful, this parameter will hold the id of the button that has *wParam* as its accelerator character.

</dd> </dl>

## Return value

Returns a nonzero value if one of the buttons has *wParam* as its accelerator character, or zero otherwise.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |
| Unicode and ANSI names<br/>   | **TB\_MAPACCELERATORW** (Unicode) and **TB\_MAPACCELERATORA** (ANSI)<br/>       |

**Header:** Commctrl.h
