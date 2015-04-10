from libcpp.string cimport string

cdef extern from "wrapped.hpp" namespace "mystuff":
    cdef cppclass MyClass:
        MyClass(string name, size_t seed)
        double uniform()
        string name

        
