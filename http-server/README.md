# Simple HTTP Server

Create a basic HTTP server that handles requests and serves responses.

## Difficulty
Intermediate

## Concepts
- HTTP server
- Request handling
- JSON responses
- Pattern matching

## Description
This example demonstrates how to create a web server in Oxide:

- Importing the http module with `use http`
- Creating a server with `http.createServer()`
- Request routing with pattern matching
- Serving HTML and JSON responses
- Handling 404 errors

## Usage
```bash
oxide run main.ox
```

## Expected Output
```
Server running at http://127.0.0.1:8080
[Listening for incoming connections...]
```

Then visit `http://127.0.0.1:8080` in your browser.
