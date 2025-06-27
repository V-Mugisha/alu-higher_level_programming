#!/usr/bin/python3


def uppercase(str):
    result = ""
    for char in str:
        if ord(char) >= 97 and \
           ord(char) <= 122:  # Check if lowercase (a-z)
            result += chr(ord(char) - 32)  # Convert to uppercase
        else:
            result += char  # Keep non-lowercase characters unchanged
    print("{}".format(result))
