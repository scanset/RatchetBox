# Determining the Size of a File

The [**GetFileSize**](/windows/desktop/api/FileAPI/nf-fileapi-getfilesize) function retrieves the size of a file.

Because the NTFS file system implementation of files allows for multiple streams within a file, any application you write that accesses files must account for the possibility that the creator of the file can include multiple streams in the file. If multiple streams are not checked for in a file, the application can underestimate the total size of the file, among other errors.

 

 


