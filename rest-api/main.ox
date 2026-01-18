use http

# Todo class
class Todo
    func init(id, title)
        self.id = id
        self.title = title
        self.completed = False
    endfunc
endclass

# In-memory storage
todos = []
nextId = 1

func handleTodos(req)
    match req.method
        case "GET"
            return http.json(todos)
        case "POST"
            body = req.json()
            todo = new Todo(nextId, body["title"])
            nextId = nextId + 1
            add todo to todos
            return http.json(todo).status(201)
        case "PUT"
            id = req.params["id"]
            body = req.json()
            for todo in todos
                if todo.id == id
                    todo.title = body["title"]
                    todo.completed = body["completed"]
                    return http.json(todo)
                endif
            endfor
            return http.notFound("Todo not found")
        case "DELETE"
            id = req.params["id"]
            remove id from todos
            return http.ok("Deleted")
        default
            return http.notFound("Not found")
    endmatch
endfunc

server = http.createServer("0.0.0.0", 3000)
print "Todo API running at http://localhost:3000"
server.onRequest(handleTodos)
server.listen()
