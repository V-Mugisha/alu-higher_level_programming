#!/usr/bin/python3
if __name__ == "__main__":
    import sys
    length = len(sys.argv) - 1
    if length == 0:
        print("0 arguments.")
    elif length == 1:
        print("1 argument:")
    else:
        print(f"{length} arguments:")
    for i in range(1, len(sys.argv)):
        print(f"{i}: {sys.argv[i]}")
