# Discussion: If a class is a container, give it an initializer-list constructor

##### Reason

It is common to need an initial set of elements.

##### Example

    template<typename T> class Vector {
    public:
        Vector(std::initializer_list<T>);
        // ...
    };

    Vector<string> vs { "Nygaard", "Ritchie" };

##### Enforcement

When is a class a container? ???

# <a name="s-tools"></a>Appendix D: Supporting tools

This section contains a list of tools that directly support adoption of the C++ Core Guidelines. This list is not intended to be an exhaustive list of tools
that are helpful in writing good C++ code. If a tool is designed specifically to support and links to the C++ Core Guidelines it is a candidate for inclusion.
