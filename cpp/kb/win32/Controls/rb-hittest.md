# RB\_HITTEST message

Determines which portion of a rebar band is at a given point on the screen, if a rebar band exists at that point.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>Must be zero.</dd> <dt>

*lParam* 
</dt> <dd>

Pointer to an [**RBHITTESTINFO**](/windows/win32/api/commctrl/ns-commctrl-rbhittestinfo) structure. Before sending the message, the **pt** member of this structure must be initialized to the point that will be hit tested, in client coordinates.

</dd> </dl>

## Return value

Returns the zero-based index of the band at the given point, or -1 if no rebar band was at the point.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
