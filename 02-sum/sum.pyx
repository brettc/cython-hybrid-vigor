def sum_1():
    total = 0
    for i in range(1000):
        total += i
    return total

def sum_2():
    cdef int total = 0
    for i in range(1000):
        total += i
    return total

def sum_3():
    cdef int total = 0
    cdef int i
    for i in range(1000):
        total += i
    return total

