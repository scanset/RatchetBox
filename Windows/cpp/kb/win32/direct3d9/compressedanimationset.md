# CompressedAnimationSet

Contains animation set data.

``` syntax
template CompressedAnimationSet
{
    <7F9B00B3-F125-4890-876E-1C42BF697C4D>
    DWORD CompressedBlockSize;
    FLOAT TicksPerSec;
    DWORD PlaybackType;
    DWORD BufferLength;
    array DWORD CompressedData[BufferLength];
}
```

Where:

-   CompressedBlockSize - Total size, in bytes, of the compressed data in the compressed key frame animation data buffer.
-   TicksPerSec - Number of animation key frame ticks that occur per second.
-   PlaybackType - Type of the animation set playback loop. See [**D3DXPLAYBACK\_TYPE**](./d3dxplayback-type.md).
-   BufferLength - Minimum buffer size, in bytes, required to hold compressed key frame animation data. Value is equal to ( ( CompressedBlockSize + 3 ) / 4 ).
-   CompressedData\[BufferLength\] - An array of compressed data values.

## See also

<dl> <dt>

[Templates](dx9-graphics-reference-x-file-format-templates.md)
</dt> <dt>

[**XFILECOMPRESSEDANIMATIONSET**](xfilecompressedanimationset.md)
</dt> </dl>

 

 