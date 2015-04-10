import numpy
import numpy_test

arr = numpy.random.uniform(0.0, 1.0, (10, 10))
print arr
print arr.sum(axis=1)
print numpy_test.sum_array(arr)

import timeit

setup = """
import numpy
from numpy_test import sum_array
arr = numpy.random.uniform(0.0, 1.0, (1000, 1000))
"""

t = timeit.Timer("arr.sum(axis=0)", setup)
print "numpy", t.timeit(1)
t = timeit.Timer("sum_array(arr)", setup)
print "cython", t.timeit(1)

