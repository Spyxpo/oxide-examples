# Functional Programming Example

Oxide supports functional programming paradigms with built-in higher-order functions.

## Available Functions

### Transformation
- `map(list, lambda)` - Transform each element
- `filter(list, lambda)` - Select elements matching condition
- `reduce(list, lambda, initial)` - Combine elements into single value

### Aggregation
- `sum(list)` - Sum all numeric elements
- `min(list)` - Find minimum value
- `max(list)` - Find maximum value

### Utility
- `sort(list)` - Sort elements in ascending order
- `reverse(list)` - Reverse element order
- `len(list)` - Get list length

## Lambda Syntax

```oxide
// Single expression lambda
lambda(x) => x * 2

// Multi-parameter lambda
lambda(acc, x) => acc + x
```

## Chaining Operations

```oxide
// Filter evens, double them, sum result
data = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
evens = filter(data, lambda(x) => x % 2 == 0)
doubled = map(evens, lambda(x) => x * 2)
total = sum(doubled)
```

## Running the Example

```bash
oxide main.ox
```

## Output

```
=== Functional Programming in Oxide ===

Original numbers: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10

--- map() - Transform Elements ---
Doubled: 2, 4, 6, 8, 10, 12, 14, 16, 18, 20
Squared: 1, 4, 9, 16, 25, 36, 49, 64, 81, 100

--- filter() - Select Elements ---
Even numbers: 2, 4, 6, 8, 10
Odd numbers: 1, 3, 5, 7, 9
```
