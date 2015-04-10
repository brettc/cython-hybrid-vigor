from distutils.core import setup
from distutils.extension import Extension
from Cython.Build import cythonize
import sys

# HACK
sys.argv = ['setup.py', 'build_ext', '--inplace']

extensions = [
    Extension(
        "_wrap", 
        ["_wrap.pyx", "wrapped.cpp"],
        extra_compile_args = [
            '-Wno-unused-function', 
            '-stdlib=libc++',
            '-std=c++11', 
            '-mmacosx-version-min=10.8',
        ],
    )
]
setup(
    name='wrapping-example',
    ext_modules=cythonize(
        extensions,
    )
)

