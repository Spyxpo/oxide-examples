# File Watcher

Watch for file changes and execute actions automatically.

## Difficulty
Intermediate

## Concepts
- File watching
- Event handling
- Process execution
- Automation

## Description
This example demonstrates file system monitoring in Oxide:

- Watching directories for changes with `fs.watch()`
- Event-driven programming with callback functions
- Pattern matching on event types
- Running external commands with `run_command()`
- Automatic test execution on file changes

## Events

| Event Type | Description |
|------------|-------------|
| `create` | File was created |
| `modify` | File was modified |
| `delete` | File was deleted |

## Usage
```bash
oxide run main.ox
```

## Expected Output
```
Watching for changes in: ./src
Press Ctrl+C to stop

[~] Modified: ./src/main.ox
    Running tests...
    Tests passed
[+] Created: ./src/utils.ox
```
