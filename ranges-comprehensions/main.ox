// Ranges and List Comprehensions in Oxide
// Powerful tools for generating and transforming lists

print("=== Ranges and List Comprehensions ===\n")

// RANGE FUNCTION
print("--- range() Function ---")

// Basic range: 0 to n-1
print("range(5):")
r1 = range(5)
print("  " + join(r1, ", "))

// Range with start and end
print("\nrange(1, 6):")
r2 = range(1, 6)
print("  " + join(r2, ", "))

// Range with step
print("\nrange(0, 10, 2) - even numbers:")
r3 = range(0, 10, 2)
print("  " + join(r3, ", "))

print("\nrange(10, 0, -1) - countdown:")
r4 = range(10, 0, -1)
print("  " + join(r4, ", "))

// LIST COMPREHENSIONS
print("\n--- List Comprehensions ---")

// Basic comprehension: squares
print("\n[x*x for x in range(6)] - Squares:")
squares = [x*x for x in range(6)]
print("  " + join(squares, ", "))

// With condition: even squares
print("\n[x*x for x in range(10) if x % 2 == 0] - Even squares:")
evenSquares = [x*x for x in range(10) if x % 2 == 0]
print("  " + join(evenSquares, ", "))

// Transformations
print("\n[x * 3 for x in range(1, 6)] - Multiples of 3:")
multiples = [x * 3 for x in range(1, 6)]
print("  " + join(multiples, ", "))

// PRACTICAL EXAMPLES
print("\n=== Practical Examples ===")

// Generate Fibonacci-like sequence start
print("\n--- Number Sequences ---")
numbers = range(1, 11)
print("First 10 natural numbers: " + join(numbers, ", "))

// Generate multiplication table
print("\n--- 5x Multiplication Table ---")
table5 = [5 * x for x in range(1, 11)]
foreach i in range(10) {
    print("5 x " + (i + 1) + " = " + table5[i])
}

// Filter with comprehension
print("\n--- Filter Numbers ---")
allNums = range(1, 21)
print("Numbers 1-20: " + join(allNums, ", "))

divisibleBy3 = filter(allNums, lambda(x) => x % 3 == 0)
print("Divisible by 3: " + join(divisibleBy3, ", "))

// Using range with foreach
print("\n--- Using range() with foreach ---")
print("Counting down:")
foreach i in range(5, 0, -1) {
    print("  " + i + "...")
}
print("  Liftoff!")

// Generate grid coordinates
print("\n--- Grid Coordinates ---")
print("3x3 Grid:")
foreach row in range(3) {
    foreach col in range(3) {
        print("  (" + row + ", " + col + ")")
    }
}

// Sum of range
print("\n--- Sum of Range ---")
nums = range(1, 101)
total = sum(nums)
print("Sum of 1 to 100: " + total)

// Character codes (using ASCII values)
print("\n--- Working with Ranges ---")
indices = range(0, 5)
print("Indices: " + join(indices, ", "))

// Using range for iteration
print("\n--- Indexed Iteration ---")
fruits = ["apple", "banana", "cherry", "date", "elderberry"]
foreach i in range(len(fruits)) {
    print("  " + i + ": " + fruits[i])
}

// Combining range with map
print("\n--- Powers of 2 ---")
powers = map(range(0, 8), lambda(x) => pow(2, x))
print("2^0 to 2^7: " + join(powers, ", "))

// Even/Odd split using comprehensions
print("\n--- Even/Odd Split ---")
all = range(1, 11)
evens = filter(all, lambda(x) => x % 2 == 0)
odds = filter(all, lambda(x) => x % 2 != 0)
print("All: " + join(all, ", "))
print("Evens: " + join(evens, ", "))
print("Odds: " + join(odds, ", "))
