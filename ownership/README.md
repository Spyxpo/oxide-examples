# Ownership

Learn how Oxide manages memory with ownership and the `give()` function.

## Concepts

- **Ownership**: Every value has exactly one owner
- **Move semantics**: Values are moved, not copied by default
- **`give()`**: Transfers ownership explicitly
- **Copy types**: Primitives are automatically copied

## Key Points

1. When a value is assigned to another variable, ownership is transferred
2. The original variable becomes invalid after `give()`
3. Primitives (i32, f64, bool) implement Copy and are automatically copied
4. Functions can take or borrow ownership of values

## Run

```bash
oxide run main.ox
```
