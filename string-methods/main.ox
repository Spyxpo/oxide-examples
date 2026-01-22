# String Methods in Oxide
# Comprehensive string manipulation examples

print "=== String Methods in Oxide ==="
print ""

# Sample strings
text = "  Hello, World!  "
sentence = "The quick brown fox jumps over the lazy dog"
csv = "apple,banana,cherry,date"

# TRIM - Remove whitespace
print "--- trim() - Remove Whitespace ---"
print "Original: '" + text + "'"
print "Trimmed:  '" + trim(text) + "'"

# UPPER / LOWER - Case conversion
print ""
print "--- upper() / lower() - Case Conversion ---"
sample = "Hello World"
print "Original: " + sample
print "Upper:    " + upper(sample)
print "Lower:    " + lower(sample)

# SPLIT - Split string into list
print ""
print "--- split() - Split Into List ---"
print "CSV: " + csv
fruits = split(csv, ",")
print "Split by comma:"
for fruit in fruits
    print "  - " + fruit
endfor

words = split(sentence, " ")
print ""
print "Word count: " + str(len(words))

# JOIN - Join list into string
print ""
print "--- join() - Join List Into String ---"
items = ["red", "green", "blue"]
print "Items: red, green, blue"
print "Join with '-': " + join(items, "-")
print "Join with ' | ': " + join(items, " | ")

# CONTAINS - Check if substring exists
print ""
print "--- contains() - Check Substring ---"
haystack = "Hello, Oxide World!"
print "String: '" + haystack + "'"
print "Contains 'Oxide': " + str(contains(haystack, "Oxide"))
print "Contains 'Python': " + str(contains(haystack, "Python"))

# STARTSWITH / ENDSWITH
print ""
print "--- startsWith() / endsWith() ---"
filename = "document.pdf"
print "Filename: " + filename
print "Starts with 'doc': " + str(startsWith(filename, "doc"))
print "Ends with '.pdf': " + str(endsWith(filename, ".pdf"))
print "Ends with '.txt': " + str(endsWith(filename, ".txt"))

# INDEXOF - Find position
print ""
print "--- indexOf() - Find Position ---"
message = "Hello, World!"
print "String: '" + message + "'"
print "Index of 'World': " + str(indexOf(message, "World"))
print "Index of 'o': " + str(indexOf(message, "o"))
print "Index of 'xyz': " + str(indexOf(message, "xyz"))

# SUBSTRING - Extract portion
print ""
print "--- substring() - Extract Portion ---"
fulltext = "Oxide Programming Language"
print "String: '" + fulltext + "'"
print "substring(0, 5): " + substring(fulltext, 0, 5)
print "substring(6, 17): " + substring(fulltext, 6, 17)

# REPLACE - Replace occurrences
print ""
print "--- replace() - Replace Text ---"
original = "Hello World, Hello Universe"
print "Original: " + original
print "Replace 'Hello' with 'Hi': " + replace(original, "Hello", "Hi")

# REPEAT - Repeat string
print ""
print "--- repeat() - Repeat String ---"
star = "*"
print "Repeat '*' 10 times: " + repeat(star, 10)
print "Repeat 'ab' 5 times: " + repeat("ab", 5)

# REVERSE - Reverse string
print ""
print "--- reverse() - Reverse String ---"
word = "Oxide"
print "Original: " + word
print "Reversed: " + reverse(word)

# Check palindrome
palindrome = "radar"
print ""
print "Palindrome check for '" + palindrome + "':"
if palindrome == reverse(palindrome)
    print "  Yes, it's a palindrome!"
else
    print "  No, it's not a palindrome."
endif

# PRACTICAL EXAMPLES
print ""
print "=== Practical Examples ==="

# Email validation (basic)
print ""
print "--- Email Check ---"
email = "user@example.com"
print "Email: " + email
if contains(email, "@")
    parts = split(email, "@")
    print "Username: " + parts[0]
    print "Domain: " + parts[1]
endif

# File path parsing
print ""
print "--- File Path Parsing ---"
path = "/home/user/documents/report.pdf"
print "Path: " + path
parts = split(path, "/")
filename = parts[len(parts) - 1]
print "Filename: " + filename

# Name formatting
print ""
print "--- Name Formatting ---"
fullName = "  john   doe  "
trimmed = trim(fullName)
nameParts = split(trimmed, "   ")
print "Raw input: '" + fullName + "'"
print "First name: " + nameParts[0]
print "Last name: " + nameParts[1]

# Building strings
print ""
print "--- Building Strings ---"
separator = repeat("-", 30)
print separator
print "| Oxide String Methods Demo |"
print separator
