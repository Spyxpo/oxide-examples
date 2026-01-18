# Ranges and List Comprehensions Example

Generate sequences and transform lists with powerful range and comprehension features.

## Range Function

The `range()` function generates a list of numbers.

### Syntax

```oxide
range(end)              // 0 to end-1
range(start, end)       // start to end-1
range(start, end, step) // start to end-1 with step
```

### Examples

```oxide
range(5)         // [0, 1, 2, 3, 4]
range(1, 6)      // [1, 2, 3, 4, 5]
range(0, 10, 2)  // [0, 2, 4, 6, 8]
range(5, 0, -1)  // [5, 4, 3, 2, 1]
```

## List Comprehensions

Create new lists by transforming existing ones.

### Syntax

```oxide
[expression for variable in list]
[expression for variable in list if condition]
```

### Examples

```oxide
// Squares of 0-5
[x*x for x in range(6)]
// Result: [0, 1, 4, 9, 16, 25]

// Only even squares
[x*x for x in range(10) if x % 2 == 0]
// Result: [0, 4, 16, 36, 64]
```

## Practical Uses

- Generating sequences
- Creating multiplication tables
- Iterating with indices
- Filtering and transforming data
- Grid generation

## Running the Example

```bash
oxide main.ox
```

## Output

```
=== Ranges and List Comprehensions ===

--- range() Function ---
range(5):
  0, 1, 2, 3, 4

range(1, 6):
  1, 2, 3, 4, 5

[x*x for x in range(6)] - Squares:
  0, 1, 4, 9, 16, 25
```
