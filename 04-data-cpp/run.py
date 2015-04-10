from test_cpp import *

print make_map()
print make_vector()

d = {
    1 : "bla",
    2 : "boodle",
}
print get_map(d)

d['error'] = 99
print get_map(d)
