#!/usr/bin/python3
"""function that writes(UTF8)and returns umber of characters written"""


def write_file(filename="", text=""):
    """ module write_file
    """
    with open(filename, 'w') as f:
        return f.write(text)
