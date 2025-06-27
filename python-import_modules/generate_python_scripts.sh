#!/bin/bash

# Directory where Python files will be created
DIR="python-import_modules"

# Ensure the directory exists
if [ ! -d "$DIR" ]; then
    echo "[INFO] Creating directory: $DIR"
    mkdir -p "$DIR"
else
    echo "[INFO] Directory already exists: $DIR"
fi

cd "$DIR" || { echo "[ERROR] Failed to change to directory: $DIR"; exit 1; }

# Task 0: 0-add.py
echo "[INFO] Creating and writing to 0-add.py"
cat > 0-add.py << 'EOF'
#!/usr/bin/python3
from add_0 import add

if __name__ == "__main__":
    a = 1
    b = 2
    print("{} + {} = {}".format(a, b, add(a, b)))
EOF
echo "[INFO] Setting executable permissions for 0-add.py"
chmod +x 0-add.py
echo "[INFO] Staging 0-add.py for git"
git add 0-add.py
echo "[INFO] Committing 0-add.py"
git commit -m "Add 0-add.py for task 0" || { echo "[ERROR] Failed to commit 0-add.py"; exit 1; }

# Task 1: 1-calculation.py
echo "[INFO] Creating and writing to 1-calculation.py"
cat > 1-calculation.py << 'EOF'
#!/usr/bin/python3
from calculator_1 import add, sub, mul, div

if __name__ == "__main__":
    a = 10
    b = 5
    print("{} + {} = {}".format(a, b, add(a, b)))
    print("{} - {} = {}".format(a, b, sub(a, b)))
    print("{} * {} = {}".format(a, b, mul(a, b)))
    print("{} / {} = {}".format(a, b, div(a, b)))
EOF
echo "[INFO] Setting executable permissions for 1-calculation.py"
chmod +x 1-calculation.py
echo "[INFO] Staging 1-calculation.py for git"
git add 1-calculation.py
echo "[INFO] Committing 1-calculation.py"
git commit -m "Add 1-calculation.py for task 1" || { echo "[ERROR] Failed to commit 1-calculation.py"; exit 1; }

# Task 2: 2-args.py
echo "[INFO] Creating and writing to 2-args.py"
cat > 2-args.py << 'EOF'
#!/usr/bin/python3
import sys

if __name__ == "__main__":
    args = sys.argv[1:]
    num_args = len(args)
    
    if num_args == 0:
        print("0 arguments.")
    elif num_args == 1:
        print("1 argument:")
    else:
        print("{} arguments:".format(num_args))
    
    for i, arg in enumerate(args, 1):
        print("{}: {}".format(i, arg))
EOF
echo "[INFO] Setting executable permissions for 2-args.py"
chmod +x 2-args.py
echo "[INFO] Staging 2-args.py for git"
git add 2-args.py
echo "[INFO] Committing 2-args.py"
git commit -m "Add 2-args.py for task 2" || { echo "[ERROR] Failed to commit 2-args.py"; exit 1; }

# Task 3: 3-infinite_add.py
echo "[INFO] Creating and writing to 3-infinite_add.py"
cat > 3-infinite_add.py << 'EOF'
#!/usr/bin/python3
import sys

if __name__ == "__main__":
    args = sys.argv[1:]
    result = sum(int(arg) for arg in args)
    print(result)
EOF
echo "[INFO] Setting executable permissions for 3-infinite_add.py"
chmod +x 3-infinite_add.py
echo "[INFO] Staging 3-infinite_add.py for git"
git add 3-infinite_add.py
echo "[INFO] Committing 3-infinite_add.py"
git commit -m "Add 3-infinite_add.py for task 3" || { echo "[ERROR] Failed to commit 3-infinite_add.py"; exit 1; }

# Task 4: 4-hidden_discovery.py
echo "[INFO] Creating and writing to 4-hidden_discovery.py"
cat > 4-hidden_discovery.py << 'EOF'
#!/usr/bin/python3
import hidden_4

if __name__ == "__main__":
    for name in sorted(dir(hidden_4)):
        if not name.startswith("__"):
            print(name)
EOF
echo "[INFO] Setting executable permissions for 4-hidden_discovery.py"
chmod +x 4-hidden_discovery.py
echo "[INFO] Staging 4-hidden_discovery.py for git"
git add 4-hidden_discovery.py
echo "[INFO] Committing 4-hidden_discovery.py"
git commit -m "Add 4-hidden_discovery.py for task 4" || { echo "[ERROR] Failed to commit 4-hidden_discovery.py"; exit 1; }

# Task 5: 5-variable_load.py
echo "[INFO] Creating and writing to 5-variable_load.py"
cat > 5-variable_load.py << 'EOF'
#!/usr/bin/python3
from variable_load_5 import a

if __name__ == "__main__":
    print(a)
EOF
echo "[INFO] Setting executable permissions for 5-variable_load.py"
chmod +x 5-variable_load.py
echo "[INFO] Staging 5-variable_load.py for git"
git add 5-variable_load.py
echo "[INFO] Committing 5-variable_load.py"
git commit -m "Add 5-variable_load.py for task 5" || { echo "[ERROR] Failed to commit 5-variable_load.py"; exit 1; }

# Perform a single git push
echo "[INFO] Pushing all changes to the repository"
git push || { echo "[ERROR] Failed to push changes"; exit 1; }

echo "[INFO] Script completed successfully"
