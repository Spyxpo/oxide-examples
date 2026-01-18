# Pipe Operator Example

The pipe operator (`|>`) allows you to chain function calls in a readable left-to-right manner.

## Syntax

```oxide
value |> function1 |> function2 |> function3
```

This is equivalent to:
```oxide
function3(function2(function1(value)))
```

## Benefits

- **Readability**: Code flows naturally from left to right
- **Maintainability**: Easy to add/remove transformation steps
- **Clarity**: Each step in the transformation is clearly visible

## Running the Example

```bash
oxide main.ox
```

## Output

```
=== Traditional Function Calls ===
half(addTen(double(5))) = 12.5

=== Using Pipe Operator |> ===
5 |> double |> addTen |> half = 12.5

=== Complex Pipeline ===
3 |> square |> double |> addTen = 28
Step by step: 3 -> 9 -> 18 -> 28
```
