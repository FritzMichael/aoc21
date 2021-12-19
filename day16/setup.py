from setuptools import setup
from Cython.Build import cythonize
import sys

sys.setrecursionlimit(1000_000)
setup(
    ext_modules = cythonize("output.pyx")
)