# Custom Draw Values

This section lists the values used to identify a Trackbar control's parts.



| Constant                                                                                                                                                   | Description                                                                                                     |
|:-----------------------------------------------------------------------------------------------------------------------------------------------------------|:----------------------------------------------------------------------------------------------------------------|
| <span id="TBCD_CHANNEL"></span><span id="tbcd_channel"></span><dl> <dt>**TBCD\_CHANNEL**</dt> </dl> | Identifies the channel that the trackbar control's thumb marker slides along.<br/>                        |
| <span id="TBCD_THUMB"></span><span id="tbcd_thumb"></span><dl> <dt>**TBCD\_THUMB**</dt> </dl>       | Identifies the trackbar control's thumb marker. This is the part of the control that the user moves.<br/> |
| <span id="TBCD_TICS"></span><span id="tbcd_tics"></span><dl> <dt>**TBCD\_TICS**</dt> </dl>          | Identifies the tick marks that are displayed along the trackbar control's edge.<br/>                      |



## Remarks

Custom Draw values, for example, are specified in the **dwItemSpec** member of the [**NMCUSTOMDRAW**](/windows/win32/api/commctrl/ns-commctrl-nmcustomdraw) structure.

## Requirements



| Requirement | Value |
|-------------------|---------------------------------------------------------------------------------------|
| Header<br/> | <dl> <dt>CommCtrl.h</dt> </dl> |

**Header:** CommCtrl.h
