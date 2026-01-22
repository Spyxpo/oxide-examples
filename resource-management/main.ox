# Resource Management in Oxide
# Using defer, with statements, and type checking

print "=== Resource Management in Oxide ==="
print ""

# DEFER STATEMENT
print "--- defer Statement ---"
print "Defer ensures cleanup runs when scope exits"
print ""

func processData()
    print "1. Starting data processing"
    defer print "4. Cleanup: Releasing resources"
    print "2. Processing data..."
    print "3. Data processed successfully"
    # Defer runs here, after function completes
endfunc

processData()

# Multiple defers (LIFO order)
print ""
print "--- Multiple Defers (LIFO Order) ---"

func multipleDefers()
    print "Start of function"
    defer print "  Third defer (runs last)"
    defer print "  Second defer"
    defer print "  First defer (runs first)"
    print "End of function body"
    print "Defers execute in reverse order:"
endfunc

multipleDefers()

# WITH STATEMENT
print ""
print "--- with Statement ---"
print "With provides scoped resource management"
print ""

# Simulated file handling
func openFile(name)
    print "  Opening file: " + name
    return name
endfunc

func closeFile(handle)
    print "  Closing file: " + handle
endfunc

print "Processing with 'with' statement:"
with file = openFile("data.txt")
    print "  Reading from: " + file
    print "  Processing file contents..."
endwith
# Resource automatically cleaned up after endwith

# TYPE CHECKING
print ""
print "--- typeOf() Function ---"

intVar = 42
floatVar = 3.14
strVar = "hello"
listVar = [1, 2, 3]
dictVar = {"key": "value"}
boolVar = true

print "Type of 42: " + typeOf(intVar)
print "Type of 3.14: " + typeOf(floatVar)
print "Type of 'hello': " + typeOf(strVar)
print "Type of [1,2,3]: " + typeOf(listVar)
print "Type of {}: " + typeOf(dictVar)
print "Type of true: " + typeOf(boolVar)

# isNull FUNCTION
print ""
print "--- isNull() Function ---"

value1 = ""
value2 = "data"
value3 = 0

print "isNull(''): " + str(isNull(value1))
print "isNull('data'): " + str(isNull(value2))
print "isNull(0): " + str(isNull(value3))

# PRACTICAL EXAMPLES
print ""
print "=== Practical Examples ==="

# Database-like transaction pattern
print ""
print "--- Simulated Transaction ---"

func beginTransaction()
    print "  BEGIN TRANSACTION"
    return "txn_001"
endfunc

func commitTransaction(txn)
    print "  COMMIT " + txn
endfunc

func rollbackTransaction(txn)
    print "  ROLLBACK " + txn
endfunc

func executeQuery(query)
    print "  Executing: " + query
endfunc

# Using with for transaction
with txn = beginTransaction()
    executeQuery("INSERT INTO users VALUES (1, 'Alice')")
    executeQuery("INSERT INTO users VALUES (2, 'Bob')")
    commitTransaction(txn)
endwith

# Type-safe function
print ""
print "--- Type-Safe Processing ---"

func processValue(val)
    type = typeOf(val)

    if type == "int"
        print "Processing integer: " + str(val) + " * 2 = " + str(val * 2)
    endif
    if type == "float"
        print "Processing float: " + str(val) + " rounded = " + str(int(val))
    endif
    if type == "string"
        print "Processing string: '" + val + "' length = " + str(len(val))
    endif
    if type == "list"
        print "Processing list: length = " + str(len(val))
    endif
endfunc

processValue(42)
processValue(3.14159)
processValue("Hello, World!")
processValue([1, 2, 3, 4, 5])

# Null-safe operations
print ""
print "--- Null-Safe Operations ---"

func getConfig(key)
    config = {"host": "localhost", "port": "8080", "debug": ""}
    value = config[key] ?? ""
    return value
endfunc

host = getConfig("host")
debug = getConfig("debug")
timeout = getConfig("timeout")

print "Host: " + (host ?? "not set")
print "Debug: " + (debug ?? "disabled")
print "Timeout: " + (timeout ?? "30s default")

# Resource cleanup pattern
print ""
print "--- Resource Cleanup Pattern ---"

func processWithCleanup(resourceName)
    print "Acquiring: " + resourceName
    defer print "Released: " + resourceName
    # Simulate work
    print "Using: " + resourceName
    # Even if there's an error, defer ensures cleanup
endfunc

processWithCleanup("Database Connection")
processWithCleanup("File Handle")
processWithCleanup("Network Socket")

print ""
print "=== Resource Management Complete ==="
