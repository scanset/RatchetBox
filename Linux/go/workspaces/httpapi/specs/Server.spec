name: Server
role: component
intent: HTTP server handling item creation and retrieval with timeouts and graceful shutdown
api:
  - func NewServer(store *Store) *Server
  - func (s *Server) Routes() http.Handler
  - func (s *Server) createItem(w http.ResponseWriter, r *http.Request)
  - func (s *Server) getItem(w http.ResponseWriter, r *http.Request)
behavior:
  - createItem handles POST /items with JSON body, returns 201 with ID
  - getItem handles GET /items/{id} and returns item name or 404
  - Server uses http.MaxBytesReader with 1MB limit
  - Server has ReadTimeout and WriteTimeout of 10 seconds
constraints: package main, use net/http, encoding/json, context, signal.NotifyContext, http.Server with timeouts
