from distutils.core import setup
from Cython.Build import cythonize
import sys
import numpy

# HACK
sys.argv = ['setup.py', 'build_ext', '--inplace']

setup(
    name = "tutorial app",
    ext_modules = cythonize(
        '*.pyx',
        aliases = {'NUMPY_PATH': numpy.get_include()},
    )
)
