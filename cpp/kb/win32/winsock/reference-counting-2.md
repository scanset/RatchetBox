# Reference Counting

A process may call [**WSPCloseSocket**](/previous-versions/windows/hardware/network/ff566273(v=vs.85)) on a duplicated socket and the descriptor will become deallocated. The underlying socket, however, will remain open until **WSPCloseSocket** is called on the last remaining descriptor.

 

 