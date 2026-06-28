name: ServerTest
role: test
intent: Test core server behavior including item creation and retrieval
api:
  - func TestServer(t *testing.T)
behavior:
  - Test POST /items creates item and returns 201 with ID
  - Test GET /items/{id} returns item name or 404
  - Test request timeout behavior
  - Test JSON parsing errors return 400
constraints: package main, use testing, net/http/httptest, context with timeout
