# Memory Pool Allocator

Implement a custom memory pool for efficient allocations.

## Difficulty
Advanced

## Concepts
- Memory management
- Classes
- Pool allocation
- Resource tracking

## Description
This example demonstrates systems programming concepts in Oxide:

- Custom memory pool implementation
- Free list allocation strategy
- Dynamic pool growth
- Resource tracking and statistics
- The `sizeof()` operator for type sizes

## How It Works

The memory pool pre-allocates a set of slots and maintains a free list. When you allocate:
1. Get an index from the free list
2. Remove it from free list
3. Increment allocated counter

When you deallocate:
1. Add the index back to the free list
2. Decrement allocated counter

## Usage
```bash
oxide run main.ox
```

## Expected Output
```
Allocated 100 slots from pool
Pool capacity: 1000
Allocated: 100
Free: 900

Returned all slots to pool
Pool capacity: 1000
Allocated: 0
Free: 1000
```
