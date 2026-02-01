# Attempt Type

Handle errors as values with `Attempt<T, E>`, `success()`, and `failure()`.

## Concepts

- **`Attempt<T, E>`**: Type for operations that may fail
- **`success(x)`**: Wraps a successful result
- **`failure(e)`**: Wraps an error value
- **Pattern matching**: Handle all cases explicitly

## Benefits

- Errors are explicit in function signatures
- Compiler ensures all error cases are handled
- No hidden exceptions
- Easy error propagation with `?` operator

## Run

```bash
oxide run main.ox
```
