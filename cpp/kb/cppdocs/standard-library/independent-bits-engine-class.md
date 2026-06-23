# independent_bits_engine Class

Generates a random sequence of numbers with a specified number of bits by repacking bits from the values returned by its base engine.

## Syntax

```cpp
template <class Engine, size_t W, class UIntType>
class independent_bits_engine;
```

### Parameters

*Engine*\
The base engine type.

*W*\
**Word size**. Size, in bits, of each number generated. **Precondition**: `0 < W ≤ numeric_limits<UIntType>::digits`

*UIntType*\
The unsigned integer result type. For possible types, see [\<random>](../standard-library/random.md).

## Members

`independent_bits_engine::independent_bits_engine`\
`independent_bits_engine::base`\
`independent_bits_engine::base_type`\
`independent_bits_engine::discard`\
`independent_bits_engine::operator()`\
`independent_bits_engine::seed`

For more information about engine members, see [\<random>](../standard-library/random.md).

## Remarks

This class template describes an *engine adaptor* that produces values by repacking bits from the values returned by its base engine, resulting in *W*-bit values.

## Requirements

**Header:** \<random>

**Namespace:** std

## See also

[\<random>](../standard-library/random.md)