# OGRE Todo App
# A complete todo list application demonstrating ListView and state management

use ogre

# Todo item class
class Todo
    func init(id, title)
        self.id = id
        self.title = title
        self.completed = False
        self.createdAt = time_now()
    endfunc

    func toggle()
        self.completed = not self.completed
    endfunc
endclass

# Application state
todos = []
nextId = 1
newTodoText = ""
filter = "all"  # all, active, completed

# Get filtered todos
func getFilteredTodos()
    if filter == "active"
        return [todo for todo in todos if not todo.completed]
    elseif filter == "completed"
        return [todo for todo in todos if todo.completed]
    else
        return todos
    endif
endfunc

# Count active todos
func getActiveCount()
    count = 0
    for todo in todos
        if not todo.completed
            count = count + 1
        endif
    endfor
    return count
endfunc

# Add new todo
func addTodo()
    if newTodoText != ""
        todo = new Todo(nextId, newTodoText)
        nextId = nextId + 1
        add todo to todos
        newTodoText = ""
        inputField.clear()
        rebuildList()
        refresh()
    endif
endfunc

# Toggle todo completion
func toggleTodo(id)
    for todo in todos
        if todo.id == id
            todo.toggle()
        endif
    endfor
    rebuildList()
    refresh()
endfunc

# Delete todo
func deleteTodo(id)
    todos = [todo for todo in todos if todo.id != id]
    rebuildList()
    refresh()
endfunc

# Clear completed todos
func clearCompleted()
    todos = [todo for todo in todos if not todo.completed]
    rebuildList()
    refresh()
endfunc

# Set filter
func setFilter(newFilter)
    filter = newFilter
    rebuildList()
    refresh()
endfunc

# Build todo list widget
func rebuildList()
    todoList.clear()
    filteredTodos = getFilteredTodos()

    if len(filteredTodos) == 0
        emptyText = Text("No todos to show")
        emptyText.fontSize(16)
        emptyText.color("#757575")
        emptyText.textAlign("center")
        todoList.add(emptyText)
    else
        for todo in filteredTodos
            item = buildTodoItem(todo)
            todoList.add(item)
        endfor
    endif

    # Update counter
    activeCount = getActiveCount()
    if activeCount == 1
        counterText.setText("1 item left")
    else
        counterText.setText(str(activeCount) + " items left")
    endif
endfunc

# Build individual todo item
func buildTodoItem(todo)
    row = Row()
    row.padding(12)
    row.alignment("center")
    row.spacing(12)

    # Checkbox
    check = Checkbox()
    check.checked(todo.completed)
    check.onChanged(func(val) toggleTodo(todo.id) endfunc)

    # Title text
    title = Text(todo.title)
    title.fontSize(16)
    if todo.completed
        title.strikethrough()
        title.color("#9E9E9E")
    else
        title.color("#212121")
    endif
    title.flex(1)

    # Delete button
    deleteBtn = IconButton("delete")
    deleteBtn.color("#E57373")
    deleteBtn.onTap(func() deleteTodo(todo.id) endfunc)

    row.add(check)
    row.add(title)
    row.add(deleteBtn)

    return row
endfunc

# Create scaffold
scaffold = Scaffold()

# App bar
appBar = AppBar()
appBar.title("Todo App")
appBar.backgroundColor("#6200EE")

# Body
body = Container()
body.padding(16)

# Main column
mainColumn = Column()
mainColumn.spacing(16)

# Input card
inputCard = Card()
inputCard.padding(16)
inputCard.elevation(2)

inputRow = Row()
inputRow.spacing(12)
inputRow.alignment("center")

inputField = TextField()
inputField.hint("What needs to be done?")
inputField.flex(1)
inputField.onChange(func(val) newTodoText = val endfunc)
inputField.onSubmit(addTodo)

addBtn = IconButton("add")
addBtn.backgroundColor("#6200EE")
addBtn.color("#FFFFFF")
addBtn.onTap(addTodo)

inputRow.add(inputField)
inputRow.add(addBtn)
inputCard.add(inputRow)

# Todo list card
listCard = Card()
listCard.padding(0)
listCard.elevation(2)

todoList = Column()
todoList.spacing(0)

listCard.add(todoList)

# Filter bar
filterCard = Card()
filterCard.padding(12)
filterCard.elevation(1)

filterRow = Row()
filterRow.alignment("center")
filterRow.spacing(8)

# Counter
counterText = Text("0 items left")
counterText.fontSize(14)
counterText.color("#757575")
counterText.flex(1)

# Filter buttons
allBtn = TextButton("All")
allBtn.color(if filter == "all" then "#6200EE" else "#757575" endif)
allBtn.onTap(func() setFilter("all") endfunc)

activeBtn = TextButton("Active")
activeBtn.color(if filter == "active" then "#6200EE" else "#757575" endif)
activeBtn.onTap(func() setFilter("active") endfunc)

completedBtn = TextButton("Completed")
completedBtn.color(if filter == "completed" then "#6200EE" else "#757575" endif)
completedBtn.onTap(func() setFilter("completed") endfunc)

# Clear completed
clearBtn = TextButton("Clear Completed")
clearBtn.color("#E57373")
clearBtn.onTap(clearCompleted)

filterRow.add(counterText)
filterRow.add(allBtn)
filterRow.add(activeBtn)
filterRow.add(completedBtn)
filterRow.add(clearBtn)

filterCard.add(filterRow)

# Assemble main layout
mainColumn.add(inputCard)
mainColumn.add(listCard)
mainColumn.add(filterCard)

body.add(mainColumn)

scaffold.appBar(appBar)
scaffold.body(body)

# Initialize list
rebuildList()

RunApp(scaffold)
