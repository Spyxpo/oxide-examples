# Resource Management Example

Oxide provides powerful resource management features for clean, safe code.

## Defer Statement

The `defer` statement schedules code to run when the current scope exits.

### Syntax

```oxide
func example() {
    defer print("This runs last")
    print("This runs first")
}
```

### Multiple Defers (LIFO)

Multiple defers execute in reverse order (Last In, First Out):

```oxide
func example() {
    defer print("Third")
    defer print("Second")
    defer print("First")
}
// Output: First, Second, Third
```

## With Statement

The `with` statement provides scoped resource management.

### Syntax

```oxide
with resource = acquireResource() {
    // Use resource here
} endwith
// Resource automatically cleaned up
```

## Type Checking

### typeOf(value)

Returns the type of a value as a string:
- `"int"` - integers
- `"float"` - floating point numbers
- `"string"` - text strings
- `"list"` - arrays/lists
- `"dict"` - dictionaries
- `"bool"` - boolean values

### isNull(value)

Checks if a value is null or empty:

```oxide
isNull("")      // 1 (true)
isNull("data")  // 0 (false)
isNull(0)       // 0 (false, 0 is not null)
```

## Best Practices

1. **Use defer for cleanup**: Ensures resources are released even if errors occur
2. **Use with for scoped resources**: Clearly defines resource lifetime
3. **Type check before operations**: Prevent type-related errors
4. **Combine with null coalescing**: `value ?? "default"`

## Running the Example

```bash
oxide main.ox
```
