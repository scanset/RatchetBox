# Truncating or Extending Files

An application can truncate or extend a file by calling [**SetEndOfFile**](/windows/desktop/api/FileAPI/nf-fileapi-setendoffile). This function sets the end-of-file marker to the current position of the file pointer.

Note that when a file is extended, the contents between the old and new end-of-file locations are not defined.

 

 


