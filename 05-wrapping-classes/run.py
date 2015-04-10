from bitset import Bitset

b = Bitset(10)
b.set(1)
b.set(5)

a = Bitset(10)
a.set(1)

print a
print b
print a.is_subset_of(b)
print b.is_subset_of(a)

