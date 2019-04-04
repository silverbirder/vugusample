package vugusample

import (
	"log"
)

func Start() {
	l := "0.0.0.0:4000"
	log.Printf("Starting HTTP Server at %q", l)
}