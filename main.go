package main

import (
	"log"
	"net/http"

	"github.com/NYTimes/gziphandler"
	"golang.org/x/crypto/acme/autocert"
)

func main() {
	log.Fatal(http.Serve(autocert.NewListener("wherearemypants.duckdns.org"), gziphandler.GzipHandler(http.HandlerFunc(helloHandler))))
}

func helloHandler(w http.ResponseWriter, r *http.Request) {
	_, _ = w.Write([]byte("Hello world"))
}
