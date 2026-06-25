# Discussion: If a class is a resource handle, it needs a constructor, a destructor, and copy and/or move operations

##### Reason

To provide complete control of the lifetime of the resource. To provide a coherent set of operations on the resource.

##### Example

    ??? Messing with pointers

##### Note

If all members are resource handles, rely on the compiler-generated operations where possible.

    template<typename T> struct Named {
        string name;
        T value;
    };

Now `Named` has a default constructor, a destructor, and efficient copy and move operations, provided `T` has.

##### Enforcement

In general, a tool cannot know if a class is a resource handle. However, if a class has some of [the default operations](#ss-ctor), it should have all, and if a class has a member that is a resource handle, it should be considered as resource handle.
