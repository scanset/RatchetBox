# context (Go concurrency pattern)

How to user context in HTTP client and server

## client.go

```go
package main

import (
	"context"
	"io"
	"log"
	"net/http"
	"os"
)

func main() {

	ctx := context.Background()
	req, err := http.NewRequest("GET", "https://google.com", nil)
	if err != nil {
		log.Fatal(err)
	}
	req = req.WithContext(ctx)

	res, err := http.DefaultClient.Do(req)
	if err != nil {
		log.Fatal(err)
	}
	defer res.Body.Close()
	io.Copy(os.Stdout, res.Body)
}

```

## main.go

```go
// This implemented a sample from the video
// https://www.youtube.com/watch?v=LSzR0VEraWw
package main

import (
	"context"
	"log"
	"time"
)

func sleepAndTalk(ctx context.Context, d time.Duration, msg string) {
	select {
	case <-time.After(d):
		log.Println(msg)
	case <-ctx.Done():
		log.Println(ctx.Err())
	}
}

func main() {
	log.Println("started")
	ctx := context.Background()
	ctx, cancel := context.WithCancel(ctx)

	time.AfterFunc(time.Second, cancel)
	sleepAndTalk(ctx, 5*time.Second, "hello")
}

```

## server.go

```go
package main

import (
	"fmt"
	"log"
	"net/http"
	"time"
)

func main() {
	http.HandleFunc("/", handler)
	log.Fatal(http.ListenAndServe("127.0.0.1:8080", nil))
}

func handler(w http.ResponseWriter, r *http.Request) {
	ctx := r.Context()
	log.Printf("Handler started")
	defer log.Printf("Handler stopped")

	select {
	case <-time.After(5 * time.Second):
		fmt.Fprintf(w, "hello")
	case <-ctx.Done():
		err := ctx.Err()
		log.Println(err)
		http.Error(w, err.Error(), http.StatusInternalServerError)
	}
}

```

