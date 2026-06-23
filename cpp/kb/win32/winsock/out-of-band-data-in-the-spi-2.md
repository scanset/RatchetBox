# Out-of-Band Data in the SPI

The service providers which support the out-of-band data (OOB) abstraction for the stream-style sockets must adhere to the semantics in this section. We will describe OOB data handling in a protocol-independent manner. Please refer to the [Winsock Annexes](winsock-annexes.md) for a discussion of OOB data implemented using urgent data in TCP/IP service providers. In the following, the use of [**WSPRecv**](/previous-versions/windows/hardware/network/ff566309(v=vs.85)) also applies to [**WSPRecvFrom**](/previous-versions/windows/desktop/legacy/ms742287(v=vs.85)).

 

 