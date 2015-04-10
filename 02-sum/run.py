import timeit

for i in range(3):
    fun = "sum_{}()".format(i+1)
    t = timeit.Timer(fun, 'from sum import sum_{}'.format(i+1))
    print fun, 'x10000', "{:.5f}".format(t.timeit(10000)), 'sec'

