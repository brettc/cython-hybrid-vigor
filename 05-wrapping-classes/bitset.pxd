from libcpp.string cimport string

cdef extern from "<boost/dynamic_bitset.hpp>" namespace "boost":
    # We're wrapping a Template class from boost.
    cdef cppclass dynamic_bitset[T]:
        dynamic_bitset(size_t)
        void resize(size_t)
        void set(size_t)
        void reset(size_t)
        void flip(size_t)

        size_t size()
        bint test(size_t)
        bint empty()
        bint all()
        bint any()
        bint none()
        size_t count()
        bint is_subset_of(dynamic_bitset[T]&)
        bint is_proper_subset_of(dynamic_bitset[T]&)
        bint intersects(dynamic_bitset[T]& a)

    # This function is templated, so will automatically work.
    cdef void to_string(dynamic_bitset[size_t], string s)

# Although it is a template, we really only want to use it one way,
# instantiated with size_t, so we typedef the particular case we want.
ctypedef dynamic_bitset[size_t] bitset_t

