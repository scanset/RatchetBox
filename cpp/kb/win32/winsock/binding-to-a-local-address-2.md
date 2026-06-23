# Binding to a Local Address

Before a socket can be used to set up a connection or receive a connection request, it needs to be bound to a local address. This could be done explicitly by calling [**WSPBind**](/previous-versions/windows/hardware/network/ff566268(v=vs.85)), or implicitly by [**WSPConnect**](/previous-versions/windows/hardware/network/ff566275(v=vs.85)) if the socket is unbound when this function is called.

 

 