# Winsock ATM Structures

The following list provides concise descriptions of each Winsock ATM structure. For additional information on any structure, click the structure name.



| ATM Structure                           | Description                                                |
|-----------------------------------------|------------------------------------------------------------|
| [**ATM\_ADDRESS**](/windows/desktop/api/Ws2atm/ns-ws2atm-atm_address)   | Stores ATM address data for ATM-based sockets.             |
| [**ATM\_BHLI**](/windows/desktop/api/Ws2atm/ns-ws2atm-atm_bhli)         | Identifies B-HLI information for an associated ATM socket. |
| [**ATM\_BLLI**](/windows/desktop/api/Ws2atm/ns-ws2atm-atm_blli)         | Identifies B-LLI information for an associated ATM socket. |
| [**sockaddr\_atm**](/windows/desktop/api/Ws2atm/ns-ws2atm-sockaddr_atm) | Stores socket address information for ATM sockets.         |



 

For native ATM services, use AF\_ATM for address family and the [**sockaddr\_atm**](/windows/desktop/api/Ws2atm/ns-ws2atm-sockaddr_atm) socket address structure. To open a native ATM socket, pass AF\_ATM, SOCK\_RAW, and ATMPROTO\_AAL5 or ATMPROTO\_AALUSER into the [**socket**](/windows/desktop/api/Winsock2/nf-winsock2-socket) function, respectively.

 

 


