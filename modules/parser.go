package amdsidep

import (
	"bufio"
	"log"
	"os"

	"github.com/golang/glog"
)

// Parse input file line by line
func Parse(path string) (err error) {
	// Open file
	file, err := os.Open(path)
	if err != nil {
		glog.Fatal(err)
		return err
	}
	defer file.Close()

	// Read line by line
	scanner := bufio.NewScanner(file)
	k := NewKernel(path)
	for scanner.Scan() {
		line := scanner.Text()
		k.AddInstruction(line)
	}

	k.Analysis()
	k.PrintInsts()

	if err := scanner.Err(); err != nil {
		log.Fatal(err)
	}

	return nil
}
