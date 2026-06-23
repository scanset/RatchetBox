# Discussion: Never let a pointer outlive the object it points to

##### Reason

To avoid extremely hard-to-find errors. Dereferencing such a pointer is undefined behavior and could lead to violations of the type system.

##### Example

    string* bad()   // really bad
    {
        vector<string> v = { "This", "will", "cause", "trouble", "!" };
        // leaking a pointer into a destroyed member of a destroyed object (v)
        return &v[0];
    }

    void use()
    {
        string* p = bad();
        vector<int> xx = {7, 8, 9};
        // undefined behavior: x might not be the string "This"
        string x = *p;
        // undefined behavior: we don't know what (if anything) is allocated a location p
        *p = "Evil!";
    }

The `string`s of `v` are destroyed upon exit from `bad()` and so is `v` itself. The returned pointer points to unallocated memory on the free store. This memory (pointed into by `p`) might have been reallocated by the time `*p` is executed. There might be no `string` to read and a write through `p` could easily corrupt objects of unrelated types.

##### Enforcement

Most compilers already warn about simple cases and have the information to do more. Consider any pointer returned from a function suspect. Use containers, resource handles, and views (e.g., `span` known not to be resource handles) to lower the number of cases to be examined. For starters, consider every class with a destructor as resource handle.
