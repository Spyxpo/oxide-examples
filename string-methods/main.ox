// String Methods in Oxide
// Comprehensive string manipulation examples

print("=== String Methods in Oxide ===\n")

// Sample strings
text = "  Hello, World!  "
sentence = "The quick brown fox jumps over the lazy dog"
csv = "apple,banana,cherry,date"

// TRIM - Remove whitespace
print("--- trim() - Remove Whitespace ---")
print("Original: '" + text + "'")
print("Trimmed:  '" + trim(text) + "'")

// UPPER / LOWER - Case conversion
print("\n--- upper() / lower() - Case Conversion ---")
sample = "Hello World"
print("Original: " + sample)
print("Upper:    " + upper(sample))
print("Lower:    " + lower(sample))

// SPLIT - Split string into list
print("\n--- split() - Split Into List ---")
print("CSV: " + csv)
fruits = split(csv, ",")
print("Split by comma:")
foreach fruit in fruits {
    print("  - " + fruit)
}

words = split(sentence, " ")
print("\nWord count: " + len(words))

// JOIN - Join list into string
print("\n--- join() - Join List Into String ---")
items = ["red", "green", "blue"]
print("Items: red, green, blue")
print("Join with '-': " + join(items, "-"))
print("Join with ' | ': " + join(items, " | "))

// CONTAINS - Check if substring exists
print("\n--- contains() - Check Substring ---")
haystack = "Hello, Oxide World!"
print("String: '" + haystack + "'")
print("Contains 'Oxide': " + contains(haystack, "Oxide"))
print("Contains 'Python': " + contains(haystack, "Python"))

// STARTSWITH / ENDSWITH
print("\n--- startsWith() / endsWith() ---")
filename = "document.pdf"
print("Filename: " + filename)
print("Starts with 'doc': " + startsWith(filename, "doc"))
print("Ends with '.pdf': " + endsWith(filename, ".pdf"))
print("Ends with '.txt': " + endsWith(filename, ".txt"))

// INDEXOF - Find position
print("\n--- indexOf() - Find Position ---")
message = "Hello, World!"
print("String: '" + message + "'")
print("Index of 'World': " + indexOf(message, "World"))
print("Index of 'o': " + indexOf(message, "o"))
print("Index of 'xyz': " + indexOf(message, "xyz"))

// SUBSTRING - Extract portion
print("\n--- substring() - Extract Portion ---")
fulltext = "Oxide Programming Language"
print("String: '" + fulltext + "'")
print("substring(0, 5): " + substring(fulltext, 0, 5))
print("substring(6, 17): " + substring(fulltext, 6, 17))

// REPLACE - Replace occurrences
print("\n--- replace() - Replace Text ---")
original = "Hello World, Hello Universe"
print("Original: " + original)
print("Replace 'Hello' with 'Hi': " + replace(original, "Hello", "Hi"))

// REPEAT - Repeat string
print("\n--- repeat() - Repeat String ---")
star = "*"
print("Repeat '*' 10 times: " + repeat(star, 10))
print("Repeat 'ab' 5 times: " + repeat("ab", 5))

// REVERSE - Reverse string
print("\n--- reverse() - Reverse String ---")
word = "Oxide"
print("Original: " + word)
print("Reversed: " + reverse(word))

// Check palindrome
palindrome = "radar"
print("\nPalindrome check for '" + palindrome + "':")
if palindrome == reverse(palindrome) {
    print("  Yes, it's a palindrome!")
} else {
    print("  No, it's not a palindrome.")
}

// PRACTICAL EXAMPLES
print("\n=== Practical Examples ===")

// Email validation (basic)
print("\n--- Email Check ---")
email = "user@example.com"
print("Email: " + email)
if contains(email, "@") {
    parts = split(email, "@")
    print("Username: " + parts[0])
    print("Domain: " + parts[1])
}

// File path parsing
print("\n--- File Path Parsing ---")
path = "/home/user/documents/report.pdf"
print("Path: " + path)
parts = split(path, "/")
filename = parts[len(parts) - 1]
print("Filename: " + filename)

// Name formatting
print("\n--- Name Formatting ---")
fullName = "  john   doe  "
trimmed = trim(fullName)
nameParts = split(trimmed, "   ")
print("Raw input: '" + fullName + "'")
print("First name: " + nameParts[0])
print("Last name: " + nameParts[1])

// Building strings
print("\n--- Building Strings ---")
separator = repeat("-", 30)
print(separator)
print("| Oxide String Methods Demo |")
print(separator)
