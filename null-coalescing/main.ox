// Null Coalescing Operator Example in Oxide
// The ?? operator provides default values for null/empty values

print("=== Null Coalescing Operator (??) ===\n")

// Basic usage with empty strings
name = ""
displayName = name ?? "Anonymous"
print("Empty name ?? 'Anonymous' = " + displayName)

// With actual value
actualName = "John"
result = actualName ?? "Anonymous"
print("'John' ?? 'Anonymous' = " + result)

// Chaining null coalescing
print("\n=== Chaining ?? Operators ===")
first = ""
second = ""
third = "Fallback"
final = first ?? second ?? third
print("'' ?? '' ?? 'Fallback' = " + final)

// Practical example: User configuration
print("\n=== Practical: User Configuration ===")

// Simulating optional configuration values
userTheme = ""
systemTheme = ""
defaultTheme = "light"

theme = userTheme ?? systemTheme ?? defaultTheme
print("Selected theme: " + theme)

// With user preference set
userTheme = "dark"
theme = userTheme ?? systemTheme ?? defaultTheme
print("With user preference: " + theme)

// Working with function returns
print("\n=== With Function Returns ===")

func getUsername() {
    return ""
}

func getGuestName() {
    return "Guest_" + str(123)
}

username = getUsername() ?? getGuestName()
print("Username: " + username)

// Using with dictionaries
print("\n=== With Dictionary Values ===")
config = {
    "host": "localhost",
    "port": "",
    "debug": "true"
}

host = config["host"] ?? "127.0.0.1"
port = config["port"] ?? "8080"
timeout = config["timeout"] ?? "30"

print("Host: " + host)
print("Port: " + port)
print("Timeout: " + timeout + "s")

// Comparison with traditional approach
print("\n=== Traditional vs ?? Operator ===")
value = ""

// Traditional way
if value == "" {
    traditional = "default"
} else {
    traditional = value
}

// With ?? operator
modern = value ?? "default"

print("Traditional if/else: " + traditional)
print("Using ?? operator: " + modern)
