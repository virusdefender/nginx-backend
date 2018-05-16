package main

import (
	"net/http"
	"net/http/httputil"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		body, _ := httputil.DumpRequest(r, true)
		println(string(body))
		w.WriteHeader(200)
		w.Write(body)
	})
	http.ListenAndServe("0.0.0.0:8081", nil)
}
