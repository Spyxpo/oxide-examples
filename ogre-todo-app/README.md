# OGRE Todo App

A complete todo list application demonstrating ListView, state management, and dynamic UI updates.

## Overview

This example demonstrates:
- Class-based data models
- Dynamic list rendering
- Filtering and counting
- List comprehensions
- Event handling with closures
- Card-based layout
- Checkbox and IconButton widgets
- Text styling (strikethrough)

## Running the Example

```bash
# Run directly
oxide main.ox

# Or as a full project
ogre create todos --app
cp main.ox todos/src/main.ox
cd todos
ogre run
```

## Key Concepts

### Data Modeling with Classes
```oxide
class Todo
    func init(id, title)
        self.id = id
        self.title = title
        self.completed = False
    endfunc

    func toggle()
        self.completed = not self.completed
    endfunc
endclass
```

### List Management
```oxide
# Add to list
add todo to todos

# Filter with comprehension
activeTodos = [todo for todo in todos if not todo.completed]

# Remove by condition
todos = [todo for todo in todos if todo.id != targetId]
```

### Dynamic UI Rebuilding
The `rebuildList()` function clears and rebuilds the todo list:
```oxide
func rebuildList()
    todoList.clear()
    filteredTodos = getFilteredTodos()

    for todo in filteredTodos
        item = buildTodoItem(todo)
        todoList.add(item)
    endfor

    refresh()
endfunc
```

### Closure Event Handlers
Each todo item has unique event handlers using closures:
```oxide
func buildTodoItem(todo)
    deleteBtn = IconButton("delete")
    deleteBtn.onTap(func() deleteTodo(todo.id) endfunc)
    # ...
endfunc
```

### Filtering
Implement filter functionality:
```oxide
func getFilteredTodos()
    if filter == "active"
        return [todo for todo in todos if not todo.completed]
    elseif filter == "completed"
        return [todo for todo in todos if todo.completed]
    else
        return todos
    endif
endfunc
```

## Features

- Add new todos
- Mark todos as complete/incomplete
- Delete individual todos
- Filter by: All, Active, Completed
- Clear all completed todos
- Item counter
- Strikethrough styling for completed items

## App Structure

```
+----------------------------------+
|  App Bar: "Todo App"             |
+----------------------------------+
|  [Input Field]            [Add]  |  <- Input Card
+----------------------------------+
|  [ ] Buy groceries         [X]   |
|  [x] Walk the dog          [X]   |  <- Todo List Card
|  [ ] Write code            [X]   |
+----------------------------------+
|  2 items left  All Active Done   |  <- Filter Bar
+----------------------------------+
```

## Platform Support

This app runs on all OGRE-supported platforms:
- Desktop (Windows, macOS, Linux)
- Mobile (iOS, Android)
- Web (WASM)
