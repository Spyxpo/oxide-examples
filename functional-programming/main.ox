// Functional Programming in Oxide
// Using map, filter, reduce, and other functional methods

print("=== Functional Programming in Oxide ===\n")

// Sample data
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print("Original numbers: " + join(numbers, ", "))

// MAP - Transform each element
print("\n--- map() - Transform Elements ---")

doubled = map(numbers, lambda(x) => x * 2)
print("Doubled: " + join(doubled, ", "))

squared = map(numbers, lambda(x) => x * x)
print("Squared: " + join(squared, ", "))

// FILTER - Select elements that match a condition
print("\n--- filter() - Select Elements ---")

evens = filter(numbers, lambda(x) => x % 2 == 0)
print("Even numbers: " + join(evens, ", "))

odds = filter(numbers, lambda(x) => x % 2 != 0)
print("Odd numbers: " + join(odds, ", "))

greaterThan5 = filter(numbers, lambda(x) => x > 5)
print("Greater than 5: " + join(greaterThan5, ", "))

// REDUCE - Combine all elements into one value
print("\n--- reduce() - Combine Elements ---")

total = reduce(numbers, lambda(acc, x) => acc + x, 0)
print("Sum of all: " + total)

product = reduce(numbers, lambda(acc, x) => acc * x, 1)
print("Product of all: " + product)

// Finding max using reduce
findMax = reduce(numbers, lambda(acc, x) => x)
print("Using reduce for iteration: " + findMax)

// AGGREGATE FUNCTIONS
print("\n--- Aggregate Functions ---")

print("sum(numbers) = " + sum(numbers))
print("min(numbers) = " + min(numbers))
print("max(numbers) = " + max(numbers))

// SORT
print("\n--- sort() - Sort Elements ---")

unsorted = [5, 2, 8, 1, 9, 3]
print("Unsorted: " + join(unsorted, ", "))

sorted_list = sort(unsorted)
print("Sorted: " + join(sorted_list, ", "))

// REVERSE
print("\n--- reverse() - Reverse Elements ---")
original = [1, 2, 3, 4, 5]
reversed_list = reverse(original)
print("Original: " + join(original, ", "))
print("Reversed: " + join(reversed_list, ", "))

// CHAINING OPERATIONS
print("\n--- Chaining Operations ---")

// Get even numbers, double them, and sum
data = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
step1 = filter(data, lambda(x) => x % 2 == 0)
step2 = map(step1, lambda(x) => x * 2)
step3 = sum(step2)
print("Filter evens -> Double -> Sum: " + step3)
print("(2,4,6,8,10 -> 4,8,12,16,20 -> 60)")

// PRACTICAL EXAMPLE: Grade Processing
print("\n--- Practical: Grade Processing ---")

grades = [85, 92, 78, 95, 88, 72, 90]
print("Student grades: " + join(grades, ", "))

passingGrades = filter(grades, lambda(g) => g >= 75)
print("Passing grades (>=75): " + join(passingGrades, ", "))

average = sum(grades) / len(grades)
print("Class average: " + average)

highest = max(grades)
lowest = min(grades)
print("Highest: " + highest + ", Lowest: " + lowest)

// WORKING WITH STRINGS
print("\n--- Functional Operations on Strings ---")

words = ["hello", "world", "oxide", "programming"]
print("Words: " + join(words, ", "))

// Note: String functions work directly
foreach word in words {
    print("  " + word + " -> " + upper(word))
}

// LENGTH CHECK
print("\n--- Using len() with filter ---")
items = [1, 2, 3, 4, 5]
count = len(filter(items, lambda(x) => x > 3))
print("Count of items > 3: " + count)
