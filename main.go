package main

import (
	"flag"

	amdsidep "github.com/xianggong/amdsi-dep/modules"
)

func main() {
	// Commandline flags
	filePtr := flag.String("i", "", "Input file to be parsed")
	flag.Parse()

	if *filePtr != "" {
		amdsidep.Parse(*filePtr)
	}
}
