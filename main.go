package main

import (
	"flag"

	amdsidep "github.com/xianggong/amdsi-dep/modules"
)

func main() {
	// Commandline flags
	filePtr := flag.String("i", "", "Input file to be parsed")
	mode := flag.Int("m", amdsidep.MODE_HINT, "Execution mode")
	flag.Parse()

	if *filePtr != "" {
		amdsidep.Parse(*filePtr, *mode)
	}
}
