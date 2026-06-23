# Discussion: Use templates to express containers (and other resource handles)

##### Reason

To provide statically type-safe manipulation of elements.

##### Example

    template<typename T> class Vector {
        // ...
        T* elem;   // point to sz elements of type T
        int sz;
    };
