# Define a class
class Point
    func init(x, y)
        self.x = x
        self.y = y
    endfunc

    # Method to calculate distance from origin
    func distanceFromOrigin()
        return (self.x * self.x + self.y * self.y) ** 0.5
    endfunc

    # Method to add two points
    func add(other)
        return new Point(self.x + other.x, self.y + other.y)
    endfunc

    func toString()
        return "(" + self.x + ", " + self.y + ")"
    endfunc
endclass

# Create instances
p1 = new Point(3.0, 4.0)
p2 = new Point(1.0, 2.0)

print "Point 1:", p1.toString()
print "Distance from origin:", p1.distanceFromOrigin()

p3 = p1.add(p2)
print "Sum:", p3.toString()
