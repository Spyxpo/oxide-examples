# Null Coalescing Operator Example

The null coalescing operator (`??`) provides a default value when the left operand is null or empty.

## Syntax

```oxide
value ?? defaultValue
```

Returns `value` if it's not null/empty, otherwise returns `defaultValue`.

## Use Cases

- **Default values**: Provide fallbacks for missing configuration
- **Optional parameters**: Handle optional function arguments
- **User input**: Default values when user doesn't provide input
- **API responses**: Handle missing fields gracefully

## Chaining

You can chain multiple `??` operators:

```oxide
first ?? second ?? third ?? "final fallback"
```

## Running the Example

```bash
oxide main.ox
```

## Output

```
=== Null Coalescing Operator (??) ===

Empty name ?? 'Anonymous' = Anonymous
'John' ?? 'Anonymous' = John

=== Chaining ?? Operators ===
'' ?? '' ?? 'Fallback' = Fallback
```
