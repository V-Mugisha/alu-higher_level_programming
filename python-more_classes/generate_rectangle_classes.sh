#!/bin/bash

# Rectangle Classes Generator Script
# This script generates all 9 Rectangle class files with proper PEP 8 formatting
# and commits each file to git with appropriate logging

set -e  # Exit on any error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Logging function
log() {
    echo -e "${BLUE}[$(date '+%Y-%m-%d %H:%M:%S')]${NC} $1"
}

log_success() {
    echo -e "${GREEN}[$(date '+%Y-%m-%d %H:%M:%S')] SUCCESS:${NC} $1"
}

log_error() {
    echo -e "${RED}[$(date '+%Y-%m-%d %H:%M:%S')] ERROR:${NC} $1"
}

log_warning() {
    echo -e "${YELLOW}[$(date '+%Y-%m-%d %H:%M:%S')] WARNING:${NC} $1"
}

# Function to create and commit a file
create_and_commit() {
    local filename="$1"
    local content="$2"
    
    log "Creating file: $filename"
    
    # Write content to file
    echo "$content" > "$filename"
    
    # Check if file was created successfully
    if [ -f "$filename" ]; then
        log_success "File $filename created successfully"
        
        # Add to git
        log "Adding $filename to git..."
        git add "$filename"
        
        # Commit with filename as message
        log "Committing $filename..."
        git commit -m "$filename"
        
        log_success "File $filename committed successfully"
    else
        log_error "Failed to create file $filename"
        exit 1
    fi
}

# Start of script
log "Starting Rectangle classes generation script"

# Check if we're in a git repository
if ! git rev-parse --git-dir > /dev/null 2>&1; then
    log_error "Not in a git repository. Please run this script in a git repository."
    exit 1
fi

# Task 1: Real definition of a rectangle
log "Generating Task 1: Real definition of a rectangle"
TASK1_CONTENT='#!/usr/bin/python3
"""
Rectangle class module.
This module defines a Rectangle class with width and height properties.
"""


class Rectangle:
    """A class that defines a rectangle."""
    
    def __init__(self, width=0, height=0):
        """Initialize a rectangle with optional width and height.
        
        Args:
            width (int): The width of the rectangle. Default is 0.
            height (int): The height of the rectangle. Default is 0.
        """
        self.width = width
        self.height = height
    
    @property
    def width(self):
        """Get the width of the rectangle."""
        return self.__width
    
    @width.setter
    def width(self, value):
        """Set the width of the rectangle.
        
        Args:
            value (int): The width value to set.
            
        Raises:
            TypeError: If width is not an integer.
            ValueError: If width is less than 0.
        """
        if not isinstance(value, int):
            raise TypeError("width must be an integer")
        if value < 0:
            raise ValueError("width must be >= 0")
        self.__width = value
    
    @property
    def height(self):
        """Get the height of the rectangle."""
        return self.__height
    
    @height.setter
    def height(self, value):
        """Set the height of the rectangle.
        
        Args:
            value (int): The height value to set.
            
        Raises:
            TypeError: If height is not an integer.
            ValueError: If height is less than 0.
        """
        if not isinstance(value, int):
            raise TypeError("height must be an integer")
        if value < 0:
            raise ValueError("height must be >= 0")
        self.__height = value'

create_and_commit "1-rectangle.py" "$TASK1_CONTENT"

# Task 2: Area and Perimeter
log "Generating Task 2: Area and Perimeter"
TASK2_CONTENT='#!/usr/bin/python3
"""
Rectangle class module.
This module defines a Rectangle class with width and height properties,
and methods to calculate area and perimeter.
"""


class Rectangle:
    """A class that defines a rectangle."""
    
    def __init__(self, width=0, height=0):
        """Initialize a rectangle with optional width and height.
        
        Args:
            width (int): The width of the rectangle. Default is 0.
            height (int): The height of the rectangle. Default is 0.
        """
        self.width = width
        self.height = height
    
    @property
    def width(self):
        """Get the width of the rectangle."""
        return self.__width
    
    @width.setter
    def width(self, value):
        """Set the width of the rectangle.
        
        Args:
            value (int): The width value to set.
            
        Raises:
            TypeError: If width is not an integer.
            ValueError: If width is less than 0.
        """
        if not isinstance(value, int):
            raise TypeError("width must be an integer")
        if value < 0:
            raise ValueError("width must be >= 0")
        self.__width = value
    
    @property
    def height(self):
        """Get the height of the rectangle."""
        return self.__height
    
    @height.setter
    def height(self, value):
        """Set the height of the rectangle.
        
        Args:
            value (int): The height value to set.
            
        Raises:
            TypeError: If height is not an integer.
            ValueError: If height is less than 0.
        """
        if not isinstance(value, int):
            raise TypeError("height must be an integer")
        if value < 0:
            raise ValueError("height must be >= 0")
        self.__height = value
    
    def area(self):
        """Calculate and return the area of the rectangle.
        
        Returns:
            int: The area of the rectangle (width * height).
        """
        return self.__width * self.__height
    
    def perimeter(self):
        """Calculate and return the perimeter of the rectangle.
        
        Returns:
            int: The perimeter of the rectangle. If width or height is 0,
                 returns 0.
        """
        if self.__width == 0 or self.__height == 0:
            return 0
        return 2 * (self.__width + self.__height)'

create_and_commit "2-rectangle.py" "$TASK2_CONTENT"

# Task 3: String representation
log "Generating Task 3: String representation"
TASK3_CONTENT='#!/usr/bin/python3
"""
Rectangle class module.
This module defines a Rectangle class with width and height properties,
methods to calculate area and perimeter, and string representation.
"""


class Rectangle:
    """A class that defines a rectangle."""
    
    def __init__(self, width=0, height=0):
        """Initialize a rectangle with optional width and height.
        
        Args:
            width (int): The width of the rectangle. Default is 0.
            height (int): The height of the rectangle. Default is 0.
        """
        self.width = width
        self.height = height
    
    @property
    def width(self):
        """Get the width of the rectangle."""
        return self.__width
    
    @width.setter
    def width(self, value):
        """Set the width of the rectangle.
        
        Args:
            value (int): The width value to set.
            
        Raises:
            TypeError: If width is not an integer.
            ValueError: If width is less than 0.
        """
        if not isinstance(value, int):
            raise TypeError("width must be an integer")
        if value < 0:
            raise ValueError("width must be >= 0")
        self.__width = value
    
    @property
    def height(self):
        """Get the height of the rectangle."""
        return self.__height
    
    @height.setter
    def height(self, value):
        """Set the height of the rectangle.
        
        Args:
            value (int): The height value to set.
            
        Raises:
            TypeError: If height is not an integer.
            ValueError: If height is less than 0.
        """
        if not isinstance(value, int):
            raise TypeError("height must be an integer")
        if value < 0:
            raise ValueError("height must be >= 0")
        self.__height = value
    
    def area(self):
        """Calculate and return the area of the rectangle.
        
        Returns:
            int: The area of the rectangle (width * height).
        """
        return self.__width * self.__height
    
    def perimeter(self):
        """Calculate and return the perimeter of the rectangle.
        
        Returns:
            int: The perimeter of the rectangle. If width or height is 0,
                 returns 0.
        """
        if self.__width == 0 or self.__height == 0:
            return 0
        return 2 * (self.__width + self.__height)
    
    def __str__(self):
        """Return a string representation of the rectangle.
        
        Returns:
            str: A string representation of the rectangle using print_symbol.
                 If width or height is 0, returns an empty string.
        """
        if self.__width == 0 or self.__height == 0:
            return ""
        
        rectangle_str = []
        for i in range(self.__height):
            rectangle_str.append(str(self.print_symbol) * self.__width)
        
        return "\n".join(rectangle_str)
    
    def __repr__(self):
        """Return a string representation of the rectangle for eval().
        
        Returns:
            str: A string representation that can be used to recreate
                 the rectangle using eval().
        """
        return "Rectangle({}, {})".format(self.__width, self.__height)
    
    def __del__(self):
        """Print a message when the rectangle is deleted."""
        print("Bye rectangle...")
        Rectangle.number_of_instances -= 1
    
    @staticmethod
    def bigger_or_equal(rect_1, rect_2):
        """Return the biggest rectangle based on the area.
        
        Args:
            rect_1 (Rectangle): First rectangle to compare.
            rect_2 (Rectangle): Second rectangle to compare.
            
        Returns:
            Rectangle: The rectangle with the bigger area, or rect_1 if equal.
            
        Raises:
            TypeError: If rect_1 or rect_2 is not an instance of Rectangle.
        """
        if not isinstance(rect_1, Rectangle):
            raise TypeError("rect_1 must be an instance of Rectangle")
        if not isinstance(rect_2, Rectangle):
            raise TypeError("rect_2 must be an instance of Rectangle")
        
        if rect_1.area() >= rect_2.area():
            return rect_1
        return rect_2
    
    @classmethod
    def square(cls, size=0):
        """Create a new Rectangle instance with width == height == size.
        
        Args:
            size (int): The size of the square. Default is 0.
            
        Returns:
            Rectangle: A new Rectangle instance representing a square.
        """
        return cls(size, size)'

create_and_commit "9-rectangle.py" "$TASK9_CONTENT"

# Final summary
log "Rectangle classes generation completed successfully!"
log_success "All 9 files have been created and committed to git:"
echo -e "${GREEN}✓ 1-rectangle.py${NC} - Real definition of a rectangle"
echo -e "${GREEN}✓ 2-rectangle.py${NC} - Area and Perimeter"
echo -e "${GREEN}✓ 3-rectangle.py${NC} - String representation"
echo -e "${GREEN}✓ 4-rectangle.py${NC} - Eval is magic"
echo -e "${GREEN}✓ 5-rectangle.py${NC} - Detect instance deletion"
echo -e "${GREEN}✓ 6-rectangle.py${NC} - How many instances"
echo -e "${GREEN}✓ 7-rectangle.py${NC} - Change representation"
echo -e "${GREEN}✓ 8-rectangle.py${NC} - Compare rectangles"
echo -e "${GREEN}✓ 9-rectangle.py${NC} - A square is a rectangle"

log "All files follow PEP 8 style guidelines and include proper documentation."
log "Script execution completed at $(date '+%Y-%m-%d %H:%M:%S')"
        """Return a string representation of the rectangle.
        
        Returns:
            str: A string representation of the rectangle using '#' character.
                 If width or height is 0, returns an empty string.
        """
        if self.__width == 0 or self.__height == 0:
            return ""
        
        rectangle_str = []
        for i in range(self.__height):
            rectangle_str.append("#" * self.__width)
        
        return "\n".join(rectangle_str)'

create_and_commit "3-rectangle.py" "$TASK3_CONTENT"

# Task 4: Eval is magic
log "Generating Task 4: Eval is magic"
TASK4_CONTENT='#!/usr/bin/python3
"""
Rectangle class module.
This module defines a Rectangle class with width and height properties,
methods to calculate area and perimeter, and string representation
with eval() support.
"""


class Rectangle:
    """A class that defines a rectangle."""
    
    def __init__(self, width=0, height=0):
        """Initialize a rectangle with optional width and height.
        
        Args:
            width (int): The width of the rectangle. Default is 0.
            height (int): The height of the rectangle. Default is 0.
        """
        self.width = width
        self.height = height
    
    @property
    def width(self):
        """Get the width of the rectangle."""
        return self.__width
    
    @width.setter
    def width(self, value):
        """Set the width of the rectangle.
        
        Args:
            value (int): The width value to set.
            
        Raises:
            TypeError: If width is not an integer.
            ValueError: If width is less than 0.
        """
        if not isinstance(value, int):
            raise TypeError("width must be an integer")
        if value < 0:
            raise ValueError("width must be >= 0")
        self.__width = value
    
    @property
    def height(self):
        """Get the height of the rectangle."""
        return self.__height
    
    @height.setter
    def height(self, value):
        """Set the height of the rectangle.
        
        Args:
            value (int): The height value to set.
            
        Raises:
            TypeError: If height is not an integer.
            ValueError: If height is less than 0.
        """
        if not isinstance(value, int):
            raise TypeError("height must be an integer")
        if value < 0:
            raise ValueError("height must be >= 0")
        self.__height = value
    
    def area(self):
        """Calculate and return the area of the rectangle.
        
        Returns:
            int: The area of the rectangle (width * height).
        """
        return self.__width * self.__height
    
    def perimeter(self):
        """Calculate and return the perimeter of the rectangle.
        
        Returns:
            int: The perimeter of the rectangle. If width or height is 0,
                 returns 0.
        """
        if self.__width == 0 or self.__height == 0:
            return 0
        return 2 * (self.__width + self.__height)
    
    def __str__(self):
        """Return a string representation of the rectangle.
        
        Returns:
            str: A string representation of the rectangle using '#' character.
                 If width or height is 0, returns an empty string.
        """
        if self.__width == 0 or self.__height == 0:
            return ""
        
        rectangle_str = []
        for i in range(self.__height):
            rectangle_str.append("#" * self.__width)
        
        return "\n".join(rectangle_str)
    
    def __repr__(self):
        """Return a string representation of the rectangle for eval().
        
        Returns:
            str: A string representation that can be used to recreate
                 the rectangle using eval().
        """
        return "Rectangle({}, {})".format(self.__width, self.__height)'

create_and_commit "4-rectangle.py" "$TASK4_CONTENT"

# Task 5: Detect instance deletion
log "Generating Task 5: Detect instance deletion"
TASK5_CONTENT='#!/usr/bin/python3
"""
Rectangle class module.
This module defines a Rectangle class with width and height properties,
methods to calculate area and perimeter, string representation
with eval() support, and deletion detection.
"""


class Rectangle:
    """A class that defines a rectangle."""
    
    def __init__(self, width=0, height=0):
        """Initialize a rectangle with optional width and height.
        
        Args:
            width (int): The width of the rectangle. Default is 0.
            height (int): The height of the rectangle. Default is 0.
        """
        self.width = width
        self.height = height
    
    @property
    def width(self):
        """Get the width of the rectangle."""
        return self.__width
    
    @width.setter
    def width(self, value):
        """Set the width of the rectangle.
        
        Args:
            value (int): The width value to set.
            
        Raises:
            TypeError: If width is not an integer.
            ValueError: If width is less than 0.
        """
        if not isinstance(value, int):
            raise TypeError("width must be an integer")
        if value < 0:
            raise ValueError("width must be >= 0")
        self.__width = value
    
    @property
    def height(self):
        """Get the height of the rectangle."""
        return self.__height
    
    @height.setter
    def height(self, value):
        """Set the height of the rectangle.
        
        Args:
            value (int): The height value to set.
            
        Raises:
            TypeError: If height is not an integer.
            ValueError: If height is less than 0.
        """
        if not isinstance(value, int):
            raise TypeError("height must be an integer")
        if value < 0:
            raise ValueError("height must be >= 0")
        self.__height = value
    
    def area(self):
        """Calculate and return the area of the rectangle.
        
        Returns:
            int: The area of the rectangle (width * height).
        """
        return self.__width * self.__height
    
    def perimeter(self):
        """Calculate and return the perimeter of the rectangle.
        
        Returns:
            int: The perimeter of the rectangle. If width or height is 0,
                 returns 0.
        """
        if self.__width == 0 or self.__height == 0:
            return 0
        return 2 * (self.__width + self.__height)
    
    def __str__(self):
        """Return a string representation of the rectangle.
        
        Returns:
            str: A string representation of the rectangle using '#' character.
                 If width or height is 0, returns an empty string.
        """
        if self.__width == 0 or self.__height == 0:
            return ""
        
        rectangle_str = []
        for i in range(self.__height):
            rectangle_str.append("#" * self.__width)
        
        return "\n".join(rectangle_str)
    
    def __repr__(self):
        """Return a string representation of the rectangle for eval().
        
        Returns:
            str: A string representation that can be used to recreate
                 the rectangle using eval().
        """
        return "Rectangle({}, {})".format(self.__width, self.__height)
    
    def __del__(self):
        """Print a message when the rectangle is deleted."""
        print("Bye rectangle...")'

create_and_commit "5-rectangle.py" "$TASK5_CONTENT"

# Task 6: How many instances
log "Generating Task 6: How many instances"
TASK6_CONTENT='#!/usr/bin/python3
"""
Rectangle class module.
This module defines a Rectangle class with width and height properties,
methods to calculate area and perimeter, string representation
with eval() support, deletion detection, and instance counting.
"""


class Rectangle:
    """A class that defines a rectangle."""
    
    number_of_instances = 0
    
    def __init__(self, width=0, height=0):
        """Initialize a rectangle with optional width and height.
        
        Args:
            width (int): The width of the rectangle. Default is 0.
            height (int): The height of the rectangle. Default is 0.
        """
        self.width = width
        self.height = height
        Rectangle.number_of_instances += 1
    
    @property
    def width(self):
        """Get the width of the rectangle."""
        return self.__width
    
    @width.setter
    def width(self, value):
        """Set the width of the rectangle.
        
        Args:
            value (int): The width value to set.
            
        Raises:
            TypeError: If width is not an integer.
            ValueError: If width is less than 0.
        """
        if not isinstance(value, int):
            raise TypeError("width must be an integer")
        if value < 0:
            raise ValueError("width must be >= 0")
        self.__width = value
    
    @property
    def height(self):
        """Get the height of the rectangle."""
        return self.__height
    
    @height.setter
    def height(self, value):
        """Set the height of the rectangle.
        
        Args:
            value (int): The height value to set.
            
        Raises:
            TypeError: If height is not an integer.
            ValueError: If height is less than 0.
        """
        if not isinstance(value, int):
            raise TypeError("height must be an integer")
        if value < 0:
            raise ValueError("height must be >= 0")
        self.__height = value
    
    def area(self):
        """Calculate and return the area of the rectangle.
        
        Returns:
            int: The area of the rectangle (width * height).
        """
        return self.__width * self.__height
    
    def perimeter(self):
        """Calculate and return the perimeter of the rectangle.
        
        Returns:
            int: The perimeter of the rectangle. If width or height is 0,
                 returns 0.
        """
        if self.__width == 0 or self.__height == 0:
            return 0
        return 2 * (self.__width + self.__height)
    
    def __str__(self):
        """Return a string representation of the rectangle.
        
        Returns:
            str: A string representation of the rectangle using '#' character.
                 If width or height is 0, returns an empty string.
        """
        if self.__width == 0 or self.__height == 0:
            return ""
        
        rectangle_str = []
        for i in range(self.__height):
            rectangle_str.append("#" * self.__width)
        
        return "\n".join(rectangle_str)
    
    def __repr__(self):
        """Return a string representation of the rectangle for eval().
        
        Returns:
            str: A string representation that can be used to recreate
                 the rectangle using eval().
        """
        return "Rectangle({}, {})".format(self.__width, self.__height)
    
    def __del__(self):
        """Print a message when the rectangle is deleted."""
        print("Bye rectangle...")
        Rectangle.number_of_instances -= 1'

create_and_commit "6-rectangle.py" "$TASK6_CONTENT"

# Task 7: Change representation
log "Generating Task 7: Change representation"
TASK7_CONTENT='#!/usr/bin/python3
"""
Rectangle class module.
This module defines a Rectangle class with width and height properties,
methods to calculate area and perimeter, string representation
with eval() support, deletion detection, instance counting,
and customizable print symbol.
"""


class Rectangle:
    """A class that defines a rectangle."""
    
    number_of_instances = 0
    print_symbol = "#"
    
    def __init__(self, width=0, height=0):
        """Initialize a rectangle with optional width and height.
        
        Args:
            width (int): The width of the rectangle. Default is 0.
            height (int): The height of the rectangle. Default is 0.
        """
        self.width = width
        self.height = height
        Rectangle.number_of_instances += 1
    
    @property
    def width(self):
        """Get the width of the rectangle."""
        return self.__width
    
    @width.setter
    def width(self, value):
        """Set the width of the rectangle.
        
        Args:
            value (int): The width value to set.
            
        Raises:
            TypeError: If width is not an integer.
            ValueError: If width is less than 0.
        """
        if not isinstance(value, int):
            raise TypeError("width must be an integer")
        if value < 0:
            raise ValueError("width must be >= 0")
        self.__width = value
    
    @property
    def height(self):
        """Get the height of the rectangle."""
        return self.__height
    
    @height.setter
    def height(self, value):
        """Set the height of the rectangle.
        
        Args:
            value (int): The height value to set.
            
        Raises:
            TypeError: If height is not an integer.
            ValueError: If height is less than 0.
        """
        if not isinstance(value, int):
            raise TypeError("height must be an integer")
        if value < 0:
            raise ValueError("height must be >= 0")
        self.__height = value
    
    def area(self):
        """Calculate and return the area of the rectangle.
        
        Returns:
            int: The area of the rectangle (width * height).
        """
        return self.__width * self.__height
    
    def perimeter(self):
        """Calculate and return the perimeter of the rectangle.
        
        Returns:
            int: The perimeter of the rectangle. If width or height is 0,
                 returns 0.
        """
        if self.__width == 0 or self.__height == 0:
            return 0
        return 2 * (self.__width + self.__height)
    
    def __str__(self):
        """Return a string representation of the rectangle.
        
        Returns:
            str: A string representation of the rectangle using print_symbol.
                 If width or height is 0, returns an empty string.
        """
        if self.__width == 0 or self.__height == 0:
            return ""
        
        rectangle_str = []
        for i in range(self.__height):
            rectangle_str.append(str(self.print_symbol) * self.__width)
        
        return "\n".join(rectangle_str)
    
    def __repr__(self):
        """Return a string representation of the rectangle for eval().
        
        Returns:
            str: A string representation that can be used to recreate
                 the rectangle using eval().
        """
        return "Rectangle({}, {})".format(self.__width, self.__height)
    
    def __del__(self):
        """Print a message when the rectangle is deleted."""
        print("Bye rectangle...")
        Rectangle.number_of_instances -= 1'

create_and_commit "7-rectangle.py" "$TASK7_CONTENT"

# Task 8: Compare rectangles
log "Generating Task 8: Compare rectangles"
TASK8_CONTENT='#!/usr/bin/python3
"""
Rectangle class module.
This module defines a Rectangle class with width and height properties,
methods to calculate area and perimeter, string representation
with eval() support, deletion detection, instance counting,
customizable print symbol, and rectangle comparison.
"""


class Rectangle:
    """A class that defines a rectangle."""
    
    number_of_instances = 0
    print_symbol = "#"
    
    def __init__(self, width=0, height=0):
        """Initialize a rectangle with optional width and height.
        
        Args:
            width (int): The width of the rectangle. Default is 0.
            height (int): The height of the rectangle. Default is 0.
        """
        self.width = width
        self.height = height
        Rectangle.number_of_instances += 1
    
    @property
    def width(self):
        """Get the width of the rectangle."""
        return self.__width
    
    @width.setter
    def width(self, value):
        """Set the width of the rectangle.
        
        Args:
            value (int): The width value to set.
            
        Raises:
            TypeError: If width is not an integer.
            ValueError: If width is less than 0.
        """
        if not isinstance(value, int):
            raise TypeError("width must be an integer")
        if value < 0:
            raise ValueError("width must be >= 0")
        self.__width = value
    
    @property
    def height(self):
        """Get the height of the rectangle."""
        return self.__height
    
    @height.setter
    def height(self, value):
        """Set the height of the rectangle.
        
        Args:
            value (int): The height value to set.
            
        Raises:
            TypeError: If height is not an integer.
            ValueError: If height is less than 0.
        """
        if not isinstance(value, int):
            raise TypeError("height must be an integer")
        if value < 0:
            raise ValueError("height must be >= 0")
        self.__height = value
    
    def area(self):
        """Calculate and return the area of the rectangle.
        
        Returns:
            int: The area of the rectangle (width * height).
        """
        return self.__width * self.__height
    
    def perimeter(self):
        """Calculate and return the perimeter of the rectangle.
        
        Returns:
            int: The perimeter of the rectangle. If width or height is 0,
                 returns 0.
        """
        if self.__width == 0 or self.__height == 0:
            return 0
        return 2 * (self.__width + self.__height)
    
    def __str__(self):
        """Return a string representation of the rectangle.
        
        Returns:
            str: A string representation of the rectangle using print_symbol.
                 If width or height is 0, returns an empty string.
        """
        if self.__width == 0 or self.__height == 0:
            return ""
        
        rectangle_str = []
        for i in range(self.__height):
            rectangle_str.append(str(self.print_symbol) * self.__width)
        
        return "\n".join(rectangle_str)
    
    def __repr__(self):
        """Return a string representation of the rectangle for eval().
        
        Returns:
            str: A string representation that can be used to recreate
                 the rectangle using eval().
        """
        return "Rectangle({}, {})".format(self.__width, self.__height)
    
    def __del__(self):
        """Print a message when the rectangle is deleted."""
        print("Bye rectangle...")
        Rectangle.number_of_instances -= 1
    
    @staticmethod
    def bigger_or_equal(rect_1, rect_2):
        """Return the biggest rectangle based on the area.
        
        Args:
            rect_1 (Rectangle): First rectangle to compare.
            rect_2 (Rectangle): Second rectangle to compare.
            
        Returns:
            Rectangle: The rectangle with the bigger area, or rect_1 if equal.
            
        Raises:
            TypeError: If rect_1 or rect_2 is not an instance of Rectangle.
        """
        if not isinstance(rect_1, Rectangle):
            raise TypeError("rect_1 must be an instance of Rectangle")
        if not isinstance(rect_2, Rectangle):
            raise TypeError("rect_2 must be an instance of Rectangle")
        
        if rect_1.area() >= rect_2.area():
            return rect_1
        return rect_2'

create_and_commit "8-rectangle.py" "$TASK8_CONTENT"

# Task 9: A square is a rectangle
log "Generating Task 9: A square is a rectangle"
TASK9_CONTENT='#!/usr/bin/python3
"""
Rectangle class module.
This module defines a Rectangle class with width and height properties,
methods to calculate area and perimeter, string representation
with eval() support, deletion detection, instance counting,
customizable print symbol, rectangle comparison, and square creation.
"""


class Rectangle:
    """A class that defines a rectangle."""
    
    number_of_instances = 0
    print_symbol = "#"
    
    def __init__(self, width=0, height=0):
        """Initialize a rectangle with optional width and height.
        
        Args:
            width (int): The width of the rectangle. Default is 0.
            height (int): The height of the rectangle. Default is 0.
        """
        self.width = width
        self.height = height
        Rectangle.number_of_instances += 1
    
    @property
    def width(self):
        """Get the width of the rectangle."""
        return self.__width
    
    @width.setter
    def width(self, value):
        """Set the width of the rectangle.
        
        Args:
            value (int): The width value to set.
            
        Raises:
            TypeError: If width is not an integer.
            ValueError: If width is less than 0.
        """
        if not isinstance(value, int):
            raise TypeError("width must be an integer")
        if value < 0:
            raise ValueError("width must be >= 0")
        self.__width = value
    
    @property
    def height(self):
        """Get the height of the rectangle."""
        return self.__height
    
    @height.setter
    def height(self, value):
        """Set the height of the rectangle.
        
        Args:
            value (int): The height value to set.
            
        Raises:
            TypeError: If height is not an integer.
            ValueError: If height is less than 0.
        """
        if not isinstance(value, int):
            raise TypeError("height must be an integer")
        if value < 0:
            raise ValueError("height must be >= 0")
        self.__height = value
    
    def area(self):
        """Calculate and return the area of the rectangle.
        
        Returns:
            int: The area of the rectangle (width * height).
        """
        return self.__width * self.__height
    
    def perimeter(self):
        """Calculate and return the perimeter of the rectangle.
        
        Returns:
            int: The perimeter of the rectangle. If width or height is 0,
                 returns 0.
        """
        if self.__width == 0 or self.__height == 0:
            return 0
        return 2 * (self.__width + self.__height)
    
    def __str__(self):
