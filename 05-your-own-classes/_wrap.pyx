# distutils: language = c++

from wrapped cimport *

cdef class PyClass:
    cdef:
        MyClass *_this

    def __cinit__(self, size_t seed):
        self._this = new MyClass(seed)

    def __dealloc__(self):
        if self._this != NULL:
            del self._this

    def uniform(self):
        return self._this.uniform()
    
    def uniform_list(self, size=10):
        return [self._this.uniform() for _ in range(size)]


