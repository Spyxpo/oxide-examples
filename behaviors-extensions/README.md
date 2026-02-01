# Behaviors & Extensions

Define interfaces with `behavior` and add methods with `extend`.

## Concepts

- **`behavior`**: Define an interface (like a trait)
- **`extend`**: Add methods to a type
- **`this`**: Reference to current instance
- **`This`**: The type itself

## Method Types

- **Static methods**: No `this` parameter, called with `::`
- **Instance methods**: Take `this: borrow This` or `this: borrow mut This`

## Run

```bash
oxide run main.ox
```
