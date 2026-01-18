// Resource Management in Oxide
// Using defer, with statements, and type checking

print("=== Resource Management in Oxide ===\n")

// DEFER STATEMENT
print("--- defer Statement ---")
print("Defer ensures cleanup runs when scope exits\n")

func processData() {
    print("1. Starting data processing")
    defer print("4. Cleanup: Releasing resources")
    print("2. Processing data...")
    print("3. Data processed successfully")
    // Defer runs here, after function completes
}

processData()

// Multiple defers (LIFO order)
print("\n--- Multiple Defers (LIFO Order) ---")

func multipleDefers() {
    print("Start of function")
    defer print("  Third defer (runs last)")
    defer print("  Second defer")
    defer print("  First defer (runs first)")
    print("End of function body")
    print("Defers execute in reverse order:")
}

multipleDefers()

// WITH STATEMENT
print("\n--- with Statement ---")
print("With provides scoped resource management\n")

// Simulated file handling
func openFile(name) {
    print("  Opening file: " + name)
    return name
}

func closeFile(handle) {
    print("  Closing file: " + handle)
}

print("Processing with 'with' statement:")
with file = openFile("data.txt") {
    print("  Reading from: " + file)
    print("  Processing file contents...")
} endwith
// Resource automatically cleaned up after endwith

// TYPE CHECKING
print("\n--- typeOf() Function ---")

intVar = 42
floatVar = 3.14
strVar = "hello"
listVar = [1, 2, 3]
dictVar = {"key": "value"}
boolVar = true

print("Type of 42: " + typeOf(intVar))
print("Type of 3.14: " + typeOf(floatVar))
print("Type of 'hello': " + typeOf(strVar))
print("Type of [1,2,3]: " + typeOf(listVar))
print("Type of {}: " + typeOf(dictVar))
print("Type of true: " + typeOf(boolVar))

// isNull FUNCTION
print("\n--- isNull() Function ---")

value1 = ""
value2 = "data"
value3 = 0

print("isNull(''): " + isNull(value1))
print("isNull('data'): " + isNull(value2))
print("isNull(0): " + isNull(value3))

// PRACTICAL EXAMPLES
print("\n=== Practical Examples ===")

// Database-like transaction pattern
print("\n--- Simulated Transaction ---")

func beginTransaction() {
    print("  BEGIN TRANSACTION")
    return "txn_001"
}

func commitTransaction(txn) {
    print("  COMMIT " + txn)
}

func rollbackTransaction(txn) {
    print("  ROLLBACK " + txn)
}

func executeQuery(query) {
    print("  Executing: " + query)
}

// Using with for transaction
with txn = beginTransaction() {
    executeQuery("INSERT INTO users VALUES (1, 'Alice')")
    executeQuery("INSERT INTO users VALUES (2, 'Bob')")
    commitTransaction(txn)
} endwith

// Type-safe function
print("\n--- Type-Safe Processing ---")

func processValue(val) {
    type = typeOf(val)

    if type == "int" {
        print("Processing integer: " + val + " * 2 = " + (val * 2))
    }
    if type == "float" {
        print("Processing float: " + val + " rounded = " + int(val))
    }
    if type == "string" {
        print("Processing string: '" + val + "' length = " + len(val))
    }
    if type == "list" {
        print("Processing list: length = " + len(val))
    }
}

processValue(42)
processValue(3.14159)
processValue("Hello, World!")
processValue([1, 2, 3, 4, 5])

// Null-safe operations
print("\n--- Null-Safe Operations ---")

func getConfig(key) {
    config = {
        "host": "localhost",
        "port": "8080",
        "debug": ""
    }

    value = config[key] ?? ""
    return value
}

host = getConfig("host")
debug = getConfig("debug")
timeout = getConfig("timeout")

print("Host: " + (host ?? "not set"))
print("Debug: " + (debug ?? "disabled"))
print("Timeout: " + (timeout ?? "30s default"))

// Resource cleanup pattern
print("\n--- Resource Cleanup Pattern ---")

func processWithCleanup(resourceName) {
    print("Acquiring: " + resourceName)
    defer print("Released: " + resourceName)

    // Simulate work
    print("Using: " + resourceName)

    // Even if there's an error, defer ensures cleanup
}

processWithCleanup("Database Connection")
processWithCleanup("File Handle")
processWithCleanup("Network Socket")

print("\n=== Resource Management Complete ===")
