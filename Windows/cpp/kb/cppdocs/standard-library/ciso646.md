# `<ciso646>`

Includes the C standard library header \<iso646.h>, and adds the associated names to the `std` namespace.

> [!NOTE]
> Because this compatibility header defines names that are keywords in C++, including it has no effect. The \<iso646.h> header is deprecated in C++. The \<ciso646> header is removed in the draft C++20 standard.

## Requirements

**Header:** \<ciso646>

**Namespace:** std

## Remarks

Including this header ensures that the names declared using external linkage in the C standard library header are declared in the `std` namespace.

## See also

[Header files reference](cpp-standard-library-header-files.md)\
[C++ standard library overview](cpp-standard-library-overview.md)\
[Thread safety in the C++ standard library](thread-safety-in-the-cpp-standard-library.md)