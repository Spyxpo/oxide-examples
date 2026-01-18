# JSON Transformer

Parse, transform, and generate JSON data.

## Difficulty
Intermediate

## Concepts
- JSON parsing
- Data transformation
- String manipulation
- File I/O

## Description
This example demonstrates JSON processing in Oxide:

- Importing the json module with `use json`
- Parsing JSON with `parse()`
- Accessing values with `get(dict, key)`
- Creating objects with `create()` and `set()`
- Converting back to JSON with `stringify()`

## Sample Input (users.json)
```json
[
  {
    "id": 1,
    "first_name": "John",
    "last_name": "Doe",
    "email": "John.Doe@Example.com",
    "birth_date": "1992-05-15",
    "status": "active"
  }
]
```

## Usage
```bash
oxide run main.ox
```

## Expected Output
```
Transforming 250 users...

Sample output:
{"id":1,"fullName":"John Doe","email":"john.doe@example.com","age":32,"isActive":true}

Transformed data written to users_transformed.json
```
