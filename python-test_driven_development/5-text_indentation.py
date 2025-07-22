#!/usr/bin/python3
"""Defines a text-indentation function."""


def text_indentation(text):
    """A function that prints two new lines after the char ...
        :param text:
        :type text:; string
        :raise TypeError: if text is not a string
        """
    if not isinstance(text, str):
        raise TypeError("text must be a string")

    c = 0
    while c < len(text) and text[c] == 
