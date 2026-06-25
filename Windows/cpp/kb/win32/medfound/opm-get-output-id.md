# OPM\_GET\_OUTPUT\_ID

Returns the unique identifier of the monitor associated with this video output.



| Requirement | Value |
|--------------|------------------------------------------------------------------|
| Request GUID | OPM\_GET\_OUTPUT\_ID                                             |
| Input data   | None                                                             |
| Return data  | An [**OPM\_OUTPUT\_ID\_DATA**](/windows/desktop/api/opmapi/ns-opmapi-opm_output_id_data) structure |



 

## Remarks

The video driver assigns a unique identifier to each monitor. This query returns the identifier for the monitor that is associated with the current [**IOPMVideoOutput**](/windows/desktop/api/opmapi/nn-opmapi-iopmvideooutput) pointer.

## Requirements



| Requirement | Value |
|-------------------------------------|-------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                      |
| Minimum supported server<br/> | Windows Server 2008 \[desktop apps only\]<br/>                                |
| Header<br/>                   | <dl> <dt>Opmapi.h</dt> </dl> |



## See also

<dl> <dt>

[**IOPMVideoOutput::GetInformation**](/windows/desktop/api/opmapi/nf-opmapi-iopmvideooutput-getinformation)
</dt> <dt>

[OPM Status Requests](opm-status-requests.md)
</dt> </dl>

 

 



