copyable_function& operator=( const copyable_function& other );

(1)
(since C++26)

copyable_function& operator=( copyable_function&& other );

(2)
(since C++26)

copyable_function& operator=( std::nullptr_t ) noexcept;

(3)
(since C++26)

template< class F >

copyable_function& operator=( F&& f );

(4)
(since C++26)

Assigns a new target to std::copyable_function or destroys its target.

1) Assigns a copy of the target of other to *this as if by executing auto(other).swap(*this).

2) Moves the target of other to *this or destroys the target of *this (if any) if other is empty, by auto(std::move(other)).swap(*this). other is in a valid state with an unspecified value after move assignment.

3) Destroys the current target if it exists. *this is empty after the call.

4) Sets the target of *this to the callable f, or destroys the current target if f is a null function pointer, a null pointer to member function, or an empty std::copyable_function, as if by executing copyable_function(std::forward<F>(f)).swap(*this);. This overload participates in overload resolution only if the constructor of copyable_function from F participates in overload resolution. The program is ill-formed or has undefined behavior if the selected constructor call is ill-formed or has undefined behavior.

### Parameters

other

-

another std::copyable_function object to copy or move the target of

f

-

a callable object to initialize the new target with

### Return value

*this

### Example

This section is incomplete
Reason: no example

### See also

operator=

assigns a new target 
(public member function of std::function<R(Args...)>)

operator=

replaces or destroys the target 
(public member function of std::move_only_function)