Defined in header <new>

struct destroying_delete_t { explicit destroying_delete_t() = default; };

(1)
(since C++20)

inline constexpr destroying_delete_t destroying_delete{};

(2)
(since C++20)

Tag type used to identify the destroying delete form of operator delete.

### See also

operator deleteoperator delete[]

deallocation functions 
(function)