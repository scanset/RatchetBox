package main

import (
	"context"
	"encoding/json"
	"net/http"
	"net/http/httptest"
	"strings"
	"testing"
	"time"
)

func TestServer(t *testing.T) {
	store := &Store{}
	server := NewServer(store)

	tests := []struct {
		name           string
		method         string
		url            string
		body           string
		expectedStatus int
	}{
		{
			name:           "create item",
			method:         "POST",
			url:            "/items",
			body:           `{"name":"test item"}`,
			expectedStatus: http.StatusCreated,
		},
		{
			name:           "get item",
			method:         "GET",
			url:            "/items/123",
			expectedStatus: http.StatusNotFound,
		},
		{
			name:           "invalid json",
			method:         "POST",
			url:            "/items",
			body:           `{"name":}`,
			expectedStatus: http.StatusBadRequest,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			var req *http.Request
			if tt.body != "" {
				req = httptest.NewRequest(tt.method, tt.url, strings.NewReader(tt.body))
				req.Header.Set("Content-Type", "application/json")
			} else {
				req = httptest.NewRequest(tt.method, tt.url, nil)
			}

			w := httptest.NewRecorder()
			server.Routes().ServeHTTP(w, req)

			if w.Code != tt.expectedStatus {
				t.Errorf("expected status %d, got %d", tt.expectedStatus, w.Code)
			}
		})
	}

	// Test successful item creation and retrieval
	t.Run("create and get item", func(t *testing.T) {
		// Create item
		req := httptest.NewRequest("POST", "/items", strings.NewReader(`{"name":"test item"}`))
		req.Header.Set("Content-Type", "application/json")
		w := httptest.NewRecorder()
		server.Routes().ServeHTTP(w, req)

		if w.Code != http.StatusCreated {
			t.Errorf("expected status %d, got %d", http.StatusCreated, w.Code)
		}

		var response ItemResponse
		if err := json.NewDecoder(w.Body).Decode(&response); err != nil {
			t.Fatal(err)
		}

		// Get item
		req = httptest.NewRequest("GET", "/items/"+response.ID, nil)
		w = httptest.NewRecorder()
		server.Routes().ServeHTTP(w, req)

		if w.Code != http.StatusOK {
			t.Errorf("expected status %d, got %d", http.StatusOK, w.Code)
		}
	})

	// Test timeout behavior
	t.Run("request timeout", func(t *testing.T) {
		ctx, cancel := context.WithTimeout(context.Background(), 10*time.Millisecond)
		defer cancel()

		req := httptest.NewRequest("GET", "/items/timeout", nil)
		req = req.WithContext(ctx)
		w := httptest.NewRecorder()
		server.Routes().ServeHTTP(w, req)

		// Should timeout and return 500 or similar
		if w.Code == http.StatusOK {
			t.Errorf("expected timeout error, got success")
		}
	})
}
