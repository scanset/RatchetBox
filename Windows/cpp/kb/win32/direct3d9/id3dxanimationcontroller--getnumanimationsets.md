# ID3DXAnimationController::GetNumAnimationSets method

Returns the number of animation sets currently registered in the animation controller.

## Syntax


```C++
UINT GetNumAnimationSets();
```



## Parameters

This method has no parameters.

## Return value

Type: **[**UINT**](../winprog/windows-data-types.md)**

Number of animation sets.

## Remarks

The controller contains any number of animations sets and tracks. Animation sets can be registered with [**RegisterAnimationOutput**](id3dxanimationcontroller--registeranimationoutput.md). An animation controller created by a call to [**D3DXLoadMeshHierarchyFromX**](d3dxloadmeshhierarchyfromx.md) will automatically register loaded animation sets.

## Requirements



| Requirement | Value |
|--------------------|----------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>D3dx9anim.h</dt> </dl> |
| Library<br/> | <dl> <dt>D3dx9.lib</dt> </dl>   |



## See also

<dl> <dt>

[ID3DXAnimationController](id3dxanimationcontroller.md)
</dt> </dl>

 

 