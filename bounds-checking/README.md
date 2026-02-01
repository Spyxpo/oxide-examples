# Bounds Checking

Safe array access with compile-time and runtime bounds checks.

## Concepts

- **Compile-time checks**: Constant indices are verified at compile time
- **Runtime checks**: Dynamic indices are checked at runtime
- **No buffer overflows**: Out-of-bounds access is prevented
- **Safe iteration**: For-each loops are always safe

## Safe Patterns

1. Use for-each loops when possible
2. Return `Maybe<T>` for fallible lookups
3. Use range-based loops with known bounds
4. Reserve `unsafe` for performance-critical code

## Run

```bash
oxide run main.ox
```
