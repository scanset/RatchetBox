# Discussion: Destructors, deallocation, and swap must never fail

Never allow an error to be reported from a destructor, a resource deallocation function (e.g., `operator delete`), or a `swap` function using `throw`. It is nearly impossible to write useful code if these operations can fail, and even if something does go wrong it nearly never makes any sense to retry. Specifically, types whose destructors might throw an exception are flatly forbidden from use with the C++ Standard Library. Most destructors are now implicitly `noexcept` by default.

##### Example

    class Nefarious {
    public:
        Nefarious() { /* code that could throw */ }    // ok
        ~Nefarious() { /* code that could throw */ }   // BAD, should not throw
        // ...
    };

1. `Nefarious` objects are hard to use safely even as local variables:


        void test(string& s)
        {
            Nefarious n;          // trouble brewing
            string copy = s;      // copy the string
        } // destroy copy and then n

    Here, copying `s` could throw, and if that throws and if `n`'s destructor then also throws, the program will exit via `std::terminate` because two exceptions can't be propagated simultaneously.

2. Classes with `Nefarious` members or bases are also hard to use safely, because their destructors must invoke `Nefarious`' destructor, and are similarly poisoned by its bad behavior:


        class Innocent_bystander {
            Nefarious member;     // oops, poisons the enclosing class's destructor
            // ...
        };

        void test(string& s)
        {
            Innocent_bystander i;  // more trouble brewing
            string copy2 = s;      // copy the string
        } // destroy copy and then i

    Here, if constructing `copy2` throws, we have the same problem because `i`'s destructor now also can throw, and if so we'll invoke `std::terminate`.

3. You can't reliably create global or static `Nefarious` objects either:


        static Nefarious n;       // oops, any destructor exception can't be caught

4. You can't reliably create arrays of `Nefarious`:


        void test()
        {
            std::array<Nefarious, 10> arr; // this line can std::terminate()
        }

    The behavior of arrays is undefined in the presence of destructors that throw because there is no reasonable rollback behavior that could ever be devised. Just think: What code can the compiler generate for constructing an `arr` where, if the fourth object's constructor throws, the code has to give up and in its cleanup mode tries to call the destructors of the already-constructed objects ... and one or more of those destructors throws? There is no satisfactory answer.

5. You can't use `Nefarious` objects in standard containers:


        std::vector<Nefarious> vec(10);   // this line can std::terminate()

    The standard library forbids all destructors used with it from throwing. You can't store `Nefarious` objects in standard containers or use them with any other part of the standard library.

##### Note

These are key functions that must not fail because they are necessary for the two key operations in transactional programming: to back out work if problems are encountered during processing, and to commit work if no problems occur. If there's no way to safely back out using no-fail operations, then no-fail rollback is impossible to implement. If there's no way to safely commit state changes using a no-fail operation (notably, but not limited to, `swap`), then no-fail commit is impossible to implement.

Consider the following advice and requirements found in the C++ Standard:

> If a destructor called during stack unwinding exits with an exception, terminate is called (15.5.1). So destructors should generally catch exceptions and not let them propagate out of the destructor. --[\[C++03\]](#Cplusplus03) §15.2(3)
>
> No destructor operation defined in the C++ Standard Library (including the destructor of any type that is used to instantiate a standard-library template) will throw an exception. --[\[C++03\]](#Cplusplus03) §17.4.4.8(3)

Deallocation functions, including specifically overloaded `operator delete` and `operator delete[]`, fall into the same category, because they too are used during cleanup in general, and during exception handling in particular, to back out of partial work that needs to be undone.
Besides destructors and deallocation functions, common error-safety techniques rely also on `swap` operations never failing -- in this case, not because they are used to implement a guaranteed rollback, but because they are used to implement a guaranteed commit. For example, here is an idiomatic implementation of `operator=` for a type `T` that performs copy construction followed by a call to a no-fail `swap`:

    T& T::operator=(const T& other)
    {
        auto temp = other;
        swap(temp);
        return *this;
    }

(See also Item 56. ???)

Fortunately, when releasing a resource, the scope for failure is definitely smaller. If using exceptions as the error reporting mechanism, make sure such functions handle all exceptions and other errors that their internal processing might generate. (For exceptions, simply wrap everything sensitive that your destructor does in a `try/catch(...)` block.) This is particularly important because a destructor might be called in a crisis situation, such as failure to allocate a system resource (e.g., memory, files, locks, ports, windows, or other system objects).

When using exceptions as your error handling mechanism, always document this behavior by declaring these functions `noexcept`. (See Item 75.)

**References**: [\[SuttAlex05\]](#SuttAlex05) Item 51; [\[C++03\]](#Cplusplus03) §15.2(3), §17.4.4.8(3), [\[Meyers96\]](#Meyers96) §11, [\[Stroustrup00\]](#Stroustrup00) §14.4.7, §E.2-4, [\[Sutter00\]](#Sutter00) §8, §16, [\[Sutter02\]](#Sutter02) §18-19
