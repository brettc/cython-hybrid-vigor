# distutils: language = c++

from wrapped cimport *
from libcpp cimport string

cdef class PyClass:
    cdef:
        MyClass *_this

    def __cinit__(self, string name, size_t seed):
        self._this = new MyClass(name, seed)

    def __dealloc__(self):
        if self._this != NULL:
            del self._this

    def uniform(self):
        return self._this.uniform()
    
    def named_pairs(self, size=5):
        return [(self.name, self._this.uniform()) for _ in range(size)]

    property name:
        def __get__(self):
            return self._this.name
        def __set__(self, string name):
            self._this.name = name





