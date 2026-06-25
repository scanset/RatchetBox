# compress/bzip2 (Go standard library)

Package bzip2 implements bzip2 decompression.

Import path: compress/bzip2   Toolchain: go1.26.4

package bzip2 // import "compress/bzip2"

Package bzip2 implements bzip2 decompression.

FUNCTIONS

func NewReader(r io.Reader) io.Reader
    NewReader returns an io.Reader which decompresses bzip2 data from r.
    If r does not also implement io.ByteReader, the decompressor may read more
    data than necessary from r.


TYPES

type StructuralError string
    A StructuralError is returned when the bzip2 data is found to be
    syntactically invalid.

func (s StructuralError) Error() string
