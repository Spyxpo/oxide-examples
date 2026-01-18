# Concurrent Downloads

Download multiple files concurrently using async/await.

## Difficulty
Advanced

## Concepts
- Async/await
- Concurrency
- HTTP client
- Error handling

## Description
This example demonstrates how to download multiple files concurrently using Oxide's async/await syntax. It showcases:

- Asynchronous function definitions with `async func`
- Awaiting HTTP requests with `await get(url)`
- Concurrent task execution with `await all(tasks)`
- Error handling with `try/catch/endtry`
- File writing with the `write ... in` syntax

## Usage
```bash
oxide run main.ox
```

## Expected Output
```
Downloading: https://example.com/file1.zip
Downloading: https://example.com/file2.zip
Downloading: https://example.com/file3.zip
Downloading: https://example.com/file4.zip
Saved: file1.zip
Saved: file3.zip
Saved: file2.zip
Saved: file4.zip

Download complete:
  Success: 4
  Failed: 0
```
