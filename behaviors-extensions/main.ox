# behavior - define interfaces (like traits)
# extend - add methods to types

behavior Printable
    func to_string(this: borrow This) -> str
endbehavior

struct Rectangle
    width: i32
    height: i32
endstruct

# Add methods to Rectangle
extend Rectangle
    # Static method (no this parameter)
    func new(w: i32, h: i32) -> Rectangle
        return Rectangle { width: w, height: h }
    endfunc

    # Instance method - immutable borrow
    func area(this: borrow This) -> i32
        return this.width * this.height
    endfunc

    func perimeter(this: borrow This) -> i32
        return 2 * (this.width + this.height)
    endfunc

    func is_square(this: borrow This) -> bool
        return this.width == this.height
    endfunc

    # Instance method - mutable borrow
    func scale(this: borrow mut This, factor: i32)
        this.width = this.width * factor
        this.height = this.height * factor
    endfunc

    # Implement Printable behavior
    func to_string(this: borrow This) -> str
        return "Rect(" + str(this.width) + "x" + str(this.height) + ")"
    endfunc
endextend

# Use static method
rect: mut Rectangle = Rectangle::new(10, 5)
print "Created:", rect.to_string()
print "Area:", rect.area()
print "Perimeter:", rect.perimeter()
print "Is square:", rect.is_square()

# Use mutable method
rect.scale(2)
print ""
print "After scale(2):"
print "Rectangle:", rect.to_string()
print "Area:", rect.area()

# Create a square
square = Rectangle::new(7, 7)
print ""
print "Square:", square.to_string()
print "Is square:", square.is_square()
