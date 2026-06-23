# Controlling streams

[`fopen`](./reference/fopen-wfopen.md) returns the address of an object of type `FILE`. You use this address as the `stream` argument to several library functions to perform various operations on an open file. For a byte stream, all input takes place as if each character is read by calling [`fgetc`](./reference/fgetc-fgetwc.md). All output takes place as if each character is written by calling [`fputc`](./reference/fputc-fputwc.md). For a wide stream, all input takes place as if each character is read by calling [`fgetwc`](./reference/fgetc-fgetwc.md). All output takes place as if each character is written by calling [`fputwc`](./reference/fputc-fputwc.md).

You can close a file by calling [`fclose`](./reference/fclose-fcloseall.md), after which the address of the `FILE` object is invalid.

A `FILE` object stores the state of a stream, including:

- An error indicator set nonzero by a function that encounters a read or write error.

- An end-of-file indicator set nonzero by a function that encounters the end of the file while reading.

- A file-position indicator specifies the next byte in the stream to read or write, if the file can support positioning requests.

- A [stream state](./stream-states.md) specifies whether the stream will accept reads and/or writes and whether the stream is unbound, byte oriented, or wide oriented.

- A conversion state remembers the state of any partly assembled or generated generalized multibyte character, and any shift state for the sequence of bytes in the file).

- A file buffer specifies the address and size of an array object. Library functions can use it to improve the performance of read and write operations to the stream.

Don't alter any value stored in a `FILE` object or in a file buffer that you specify for use with that object. You can't copy a `FILE` object and portably use the address of the copy as a `stream` argument to a library function.

## See also

[Files and streams](./files-and-streams.md)