# IPX Family of Protocol Identifiers

The *protocol* parameter in [**socket**](/windows/desktop/api/Winsock2/nf-winsock2-socket) and [**WSASocket**](/windows/desktop/api/Winsock2/nf-winsock2-wsasocketa) is an identifier that establishes a network type and a method for identifying the various transport protocols that run on the network. Unlike IP, IPX does not use a single protocol value for selecting a transport stack. Since there is no network requirement to use a specific value for each transport protocol, we are free to assign them in a manner convenient for Winsock applications. We avoid values 0–255 in order to avoid collisions with the corresponding PF\_INET protocol values.



| Name         | Value       | Socket types              | Description                                         |
|--------------|-------------|---------------------------|-----------------------------------------------------|
| Reserved     | 0-255       |                           | Reserved for PF\_INET protocol values.              |
| NSPROTO\_IPX | 1000 - 1255 | SOCK\_DGRAM SOCK\_RAW     | Datagram service for IPX.                           |
| NSPROTO\_SPX | 1256        | SOCK\_STREAM SOCK\_SEQPKT | Reliable packet exchange using fixed-sized packets. |



 

> [!Note]  
> When NSPROTO\_SPX is specified, the SPX II protocol is automatically utilized if both endpoints are capable of doing so.

 

 

 


