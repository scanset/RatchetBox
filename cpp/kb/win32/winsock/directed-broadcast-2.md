# Directed Broadcast

Generally considered more network friendly than an all-routes broadcast, a directed broadcast limits itself to the local network that you specify. Fill **sa\_netnum** with the target network number and **sa\_nodenum** with binary ones. Routers forward this request to the destination network where it becomes a local broadcast. Intermediate networks do not see this packet as a broadcast.

 

 


