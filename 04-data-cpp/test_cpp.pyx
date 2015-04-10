# distutils: language = c++

from libcpp.map cimport map as cpp_map
from libcpp.vector cimport vector
from libcpp.string cimport string

def make_map():
    cdef cpp_map[string,int] mymap

    mymap['bob'] = 10
    mymap['sue'] = 100

    return mymap

def make_vector():
    cdef vector[int] myvec
    cdef int i

    for i in range(20):
        myvec.push_back(i)

    return myvec

ctypedef cpp_map[int, string] lookup_t

def get_map(lookup_t lookup):

    lookup[10] = 'ten'
    lookup[20] = 'twenty'

    return lookup

