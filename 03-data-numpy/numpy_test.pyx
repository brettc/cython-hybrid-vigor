# distutils: include_dirs = NUMPY_PATH
# cython: wraparound=False
# cython: cdivision=True
# cython: boundscheck=False

cimport numpy as np
import numpy

def sum_array(np.npy_double[:, :] arr):
    cdef: 
        size_t i, j, maxi, maxj
        double total

    maxi = arr.shape[0]
    maxj = arr.shape[1]

    output = numpy.zeros(maxi)
    cdef:
        np.npy_double[:] numpy_output = output

    for i in range(maxi):
        total = 0.0
        for j in range(maxj):
            total += arr[i, j]
        numpy_output[i] = total

    return output

