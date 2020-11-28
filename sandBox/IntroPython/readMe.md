---
title: Intro to Python
author: Michael Colaresi

---

# This directory includes some example code to learn python

## Introduction to Python Objects

The files

- pythonObjects1.ipynb -- includes basic types in python

- pythonImmutableObjects.ipynb -- provides examples of tuples and strings and why immutability can be useful


## Functions and module development

- `Intro2Functions.ipynb` -- a jupyter notebook that walks through functions in python and creates a smoothie function with a docstring, a test, and type hinting

- `smoothie.py` -- this file is an example module file. The function was developed in Intro2Functions.ipynb.
  - A few changes were made including matching naming conventions to snake\_case.
  - In addition a short test for the function is protected by `__name__ == "__main__"`
d
- `format_lint_typeCheck_test_py.sh NAME_OF_MODULE_HERE.py` -- this file is a shell script that runs;
  - the **formatter** black.
  - the **linting tool** pylint
  - the **type checking tool** mypy
  - the **tests within the module itself** if any by calling the module directly

  
