// Pipe Operator Example in Oxide
// The pipe operator (|>) chains function calls for cleaner code

// Define some transformation functions
func double(x) {
    return x * 2
}

func addTen(x) {
    return x + 10
}

func square(x) {
    return x * x
}

func half(x) {
    return x / 2
}

// Traditional nested function calls (hard to read)
print("=== Traditional Function Calls ===")
result1 = half(addTen(double(5)))
print("half(addTen(double(5))) = " + result1)

// Using pipe operator (reads left to right)
print("\n=== Using Pipe Operator |> ===")
result2 = 5 |> double |> addTen |> half
print("5 |> double |> addTen |> half = " + result2)

// More complex example
print("\n=== Complex Pipeline ===")
value = 3
piped = value |> square |> double |> addTen
print("3 |> square |> double |> addTen = " + piped)
print("Step by step: 3 -> 9 -> 18 -> 28")

// Practical example: Data transformation
print("\n=== Practical Example: Temperature Conversion ===")

func celsiusToFahrenheit(c) {
    return c * 9 / 5 + 32
}

func roundToWhole(x) {
    return int(x)
}

func formatTemp(f) {
    return f + "F"
}

celsius = 25
fahrenheit = celsius |> celsiusToFahrenheit |> roundToWhole |> formatTemp
print("25 Celsius = " + fahrenheit)

// Chaining with string operations
print("\n=== String Pipeline ===")
text = "  Hello World  "
processed = trim(text)
print("Original: '" + text + "'")
print("After trim: '" + processed + "'")
print("Uppercase: '" + upper(processed) + "'")
