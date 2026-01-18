use http

# Handle incoming requests
func handleRequest(req)
    match req.path
        case "/" => return http.html("<h1>Welcome to Oxide!</h1>")
        case "/api/hello" => return http.json({"message": "Hello from Oxide!"})
        case "/api/time" => return http.json({"timestamp": time_now()})
        default => return http.notFound("Page not found")
    endmatch
endfunc

# Start the server
server = http.createServer("127.0.0.1", 8080)
print "Server running at http://127.0.0.1:8080"

server.onRequest(handleRequest)
server.listen()
