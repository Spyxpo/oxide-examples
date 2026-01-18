# CLI Tool

Build a command-line tool with argument parsing and file operations.

## Difficulty
Intermediate

## Concepts
- CLI apps
- File operations
- String manipulation
- Arguments

## Description
This example demonstrates building a command-line utility in Oxide:

- Reading command-line arguments with `get_args()`
- File reading with the `read` keyword
- String splitting and manipulation
- Conditional command dispatch

## Commands

| Command | Description |
|---------|-------------|
| `count <file>` | Count lines in a file |
| `search <pattern> <file>` | Search for text in a file |

## Usage
```bash
# Count lines
oxide run main.ox count myfile.txt

# Search for pattern
oxide run main.ox search "TODO" myfile.txt
```

## Expected Output
```
File Tool - Oxide CLI Example
Usage:
  count <file>           - Count lines
  search <pattern> <file> - Search text

Lines: 42
```
