# Discussion: Provide strong resource safety; that is, never leak anything that you think of as a resource

##### Reason

Prevent leaks. Leaks can lead to performance degradation, mysterious error, system crashes, and security violations.

**Alternative formulation**: Have every resource represented as an object of some class managing its lifetime.

##### Example

    template<class T>
    class Vector {
    private:
        T* elem;   // sz elements on the free store, owned by the class object
        int sz;
        // ...
    };

This class is a resource handle. It manages the lifetime of the `T`s. To do so, `Vector` must define or delete [the copy, move, and destruction operations](#rc-five).

##### Example

    ??? "odd" non-memory resource ???

##### Enforcement

The basic technique for preventing leaks is to have every resource owned by a resource handle with a suitable destructor. A checker can find "naked `new`s". Given a list of C-style allocation functions (e.g., `fopen()`), a checker can also find uses that are not managed by a resource handle. In general, "naked pointers" can be viewed with suspicion, flagged, and/or analyzed. A complete list of resources cannot be generated without human input (the definition of "a resource" is necessarily too general), but a tool can be "parameterized" with a resource list.
