#!/usr/bin/python3
"""This module defines a Square class with private size attribute."""


class Square:
    """A class that defines a square by its size."""
    
    def __init__(self, size):
        """Initialize a square with a given size.
        
        Args:
            size: The size of the square.
        """
        self.__size = size
