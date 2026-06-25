### Usage

- alignas specifier

### Example

struct s1 final {};
struct alignas(2) s2 final {};
 
static_assert(alignof(s1) == 1);
static_assert(alignof(s2) == 2);

### See also

- alignof