# Maybe Type

Handle optional values safely with `Maybe<T>`, `value()`, and `nothing`.

## Concepts

- **`Maybe<T>`**: Type that may or may not contain a value
- **`value(x)`**: Wraps a value indicating presence
- **`nothing`**: Represents absence of a value
- **Pattern matching**: Safe extraction of values

## Methods

- `.must()`: Unwraps the value, panics if nothing
- `.or(default)`: Returns the value or a default

## Run

```bash
oxide run main.ox
```
