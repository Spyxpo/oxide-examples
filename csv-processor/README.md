# CSV Data Processor

Parse, transform, and analyze CSV data efficiently.

## Difficulty
Intermediate

## Concepts
- CSV parsing
- Data analysis
- Dictionaries
- File I/O

## Description
This example demonstrates data processing in Oxide:

- Reading files with the `read` keyword
- String splitting for CSV parsing
- Classes for structured data
- Dictionary operations with `dict_has`, `dict_keys`
- Aggregation and grouping

## Sample Data Format (sales.csv)
```csv
date,product,quantity,price
2024-01-15,Widget Pro,5,45.99
2024-01-15,Gadget Plus,3,29.99
2024-01-16,Super Tool,2,89.50
```

## Usage
```bash
oxide run main.ox
```

## Expected Output
```
Loaded 1500 records

=== Sales Analysis ===
Total Revenue: $ 152340.50
Average Order: $ 101.56

Revenue by Product:
  Widget Pro: $ 45230.00
  Gadget Plus: $ 32150.25
  Super Tool: $ 28900.00
```
