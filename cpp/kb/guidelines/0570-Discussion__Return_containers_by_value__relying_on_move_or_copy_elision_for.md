# Discussion: Return containers by value (relying on move or copy elision for efficiency)

##### Reason

To simplify code and eliminate a need for explicit memory management. To bring an object into a surrounding scope, thereby extending its lifetime.

**See also**: [F.20, the general item about "out" output values](#rf-out)

##### Example

    vector<int> get_large_vector()
    {
        return ...;
    }

    auto v = get_large_vector(); //  return by value is ok, most modern compilers will do copy elision

##### Exception

See the Exceptions in [F.20](#rf-out).

##### Enforcement

Check for pointers and references returned from functions and see if they are assigned to resource handles (e.g., to a `unique_ptr`).
