from distutils.core import setup
from Cython.Build import cythonize
import sys

# HACK
sys.argv = ['setup.py', 'build_ext', '--inplace']

setup(
    name = "hello",
    ext_modules = cythonize('hello.pyx'),
)

