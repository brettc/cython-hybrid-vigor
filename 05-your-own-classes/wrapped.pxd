from libcpp.vector cimport vector

cdef extern from "wrapped.hpp" namespace "mystuff":
    cdef cppclass MyClass:
        MyClass(size_t seed)
        double uniform()

        
