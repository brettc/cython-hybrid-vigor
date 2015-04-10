# distutils: language = c++

from libcpp.map cimport map
from libcpp.string cimport string

def f():
    cdef map[string,int] mymap

    mymap['bob']=10
    mymap['sue']=100

    return mymap

