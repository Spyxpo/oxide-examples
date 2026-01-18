# Function with parameters
func greet(name)
    return "Hello, " + name + "!"
endfunc

# Function with multiple parameters
func add(a, b)
    return a + b
endfunc

# Function with typed parameters
func power(base: i32, exp: i32) -> i32
    result = 1
    for i = 1 to exp
        result = result * base
    endfor
    return result
endfunc

# Call functions
print greet("Developer")
print "Sum:", add(5, 3)
print "Square:", power(4, 2)
print "Cube:", power(3, 3)
