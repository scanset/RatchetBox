name: Main
role: behavior
intent: Entry point that initializes server and starts HTTP server with graceful shutdown
api:
  - func main()
behavior:
  - Creates a new Store and Server
  - Sets up http.Server with timeouts and graceful shutdown
  - Starts server on ":8080"
  - Handles SIGTERM/SIGINT for graceful shutdown
constraints: package main, use context, signal, net/http, http.Server with graceful shutdown
