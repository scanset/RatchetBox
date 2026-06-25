# Sparse Files and Disk Quotas

A sparse file affects user quotas by the nominal size of the file, not the actual allocated amount of disk space. That is, creating a 50-MB file with all zero bytes consumes 50 MB of that user's quota. This means that as the user writes data to the sparse file, they need not worry about exceeding their hard quota limit, because they have already been charged for the space. System administrators should not count on the size of a sparse file remaining small. Therefore they should not grant their users hard quota limits that exceed the physical space available, despite the use of sparse files.

 

 


