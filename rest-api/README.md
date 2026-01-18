# REST API

Build a RESTful API with CRUD operations for a todo list.

## Difficulty
Advanced

## Concepts
- REST API
- CRUD operations
- JSON parsing
- Route handling

## Description
This example demonstrates building a complete REST API in Oxide:

- HTTP method handling (GET, POST, PUT, DELETE)
- JSON request/response handling
- In-memory data storage with classes
- Status code responses
- List operations with `add ... to` and `remove ... from`

## Endpoints

| Method | Path | Description |
|--------|------|-------------|
| GET | /todos | List all todos |
| POST | /todos | Create a new todo |
| PUT | /todos/:id | Update a todo |
| DELETE | /todos/:id | Delete a todo |

## Usage
```bash
oxide run main.ox
```

## Expected Output
```
Todo API running at http://localhost:3000
[API ready to accept requests]
```

## Test with curl
```bash
# Create a todo
curl -X POST http://localhost:3000/todos -d '{"title": "Learn Oxide"}'

# List todos
curl http://localhost:3000/todos
```
