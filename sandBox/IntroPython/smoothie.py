#! /usr/bin/env python
"""a module file to make a string smooth
functions:
    smoothie
    main
requirements:
    typing
"""

import typing


def smoothie(s_1: str, s_2: str) -> str:
    """function to blend two strings together
    to make a a string smoothie
    Args:
        s1 (str): first string to blend
        s2 (str): second string to blend
    Returns:
        str: a blended version of s1 and s2
    """
    assert isinstance(s_1, str), "s1 needs to be a str"
    assert isinstance(s_2, str), "s2 needs to be a str"
    glass: str = ""
    for i, j in zip(s_1, s_2[::-1]):
        glass += j + i
    return glass


def main() -> None:
    """Function to run some tests, not to be called when imported"""
    assert smoothie("ba", "ab") == "bbaa", "something is wrong"
    print("module test passed \U0001F44D")


if __name__ == "__main__":
    main()
