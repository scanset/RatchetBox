# ICE29

ICE29 validates that truncated stream names remain unique. Any table having a Binary or Object column is validated. See the [Binary](binary.md) column data type.

Handling of streams by the Win32 OLE structured storage implementation limits stream names. See [OLE Limitations on Streams](ole-limitations-on-streams.md). The installer can compress stream names up to 62 characters in length. Names longer than this are truncated.

## Related topics

<dl> <dt>

[ICE Reference](ice-reference.md)
</dt> </dl>

 

 


