# `<forward_list>` functions

## <a name="swap"></a> swap

Exchanges the elements of two forward lists.

```cpp
void swap(forward_list <Type, Allocator>& left, forward_list <Type, Allocator>& right);
```

### Parameters

*left*\
An object of type `forward_list`.

*right*\
An object of type `forward_list`.

### Remarks

This template function executes `left.swap(right)`.