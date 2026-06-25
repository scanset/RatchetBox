# shuffle_order_engine Class

Generates a random sequence by reordering the values returned from its base engine.

## Syntax

```cpp
template <class Engine, size_t K>
class shuffle_order_engine;
```

### Parameters

*Engine*\
The base engine type.

*K*\
**Table size**. Number of elements in the buffer (table). **Precondition**: `0 < K`

## Members

`shuffle_order_engine::shuffle_order_engine`\
`shuffle_order_engine::base`\
`shuffle_order_engine::base_type`\
`shuffle_order_engine::discard`\
`shuffle_order_engine::operator()`\
`shuffle_order_engine::seed`

For more information about engine members, see [\<random>](../standard-library/random.md).

## Remarks

This class template describes an *engine adaptor* that produces values by reordering the values returned by its base engine. Each constructor fills the internal table with *K* values returned by the base engine, and a random element is selected from the table when a value is requested.

## Requirements

**Header:** \<random>

**Namespace:** std

## See also

[\<random>](../standard-library/random.md)