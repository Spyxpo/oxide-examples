# Heap Allocation

Allocate data on the heap with `Heap<T>` and automatic cleanup.

## Concepts

- **`heap(value)`**: Allocate value on the heap
- **`Heap<T>`**: Smart pointer type with ownership
- **`*boxed`**: Dereference to access value
- **RAII**: Automatic cleanup when out of scope

## When to Use

- Large data structures
- Data that needs to outlive its creating scope
- Dynamic-sized data
- Recursive data structures

## Run

```bash
oxide run main.ox
```
