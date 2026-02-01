# Borrowing

Access data without taking ownership using `borrow` and `borrow mut`.

## Concepts

- **Immutable borrow**: Read-only access with `borrow`
- **Mutable borrow**: Read-write access with `borrow mut`
- **Borrow rules**: Enforced at compile time

## Borrow Rules

1. You can have multiple immutable borrows at the same time
2. You can have only one mutable borrow at a time
3. You cannot have mutable and immutable borrows at the same time
4. Borrows must not outlive the owner

## Run

```bash
oxide run main.ox
```
