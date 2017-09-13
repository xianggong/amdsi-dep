package amdsidep

import (
	"bufio"
	"os"

	"github.com/golang/glog"
)

const (
	MODE_IDP  = iota
	MODE_ALL  = iota
	MODE_HEAT = iota
	MODE_HINT = iota
)

// Parse input file line by line
func Parse(path string, mode int) (err error) {
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
	if err := scanner.Err(); err != nil {
		glog.Fatal(err)
	}

	// Generate hint
	k.GenHint()

	// Output accordingly
	switch mode {
	case MODE_IDP:
		k.PrintIdpAnalysis()
	case MODE_ALL:
		k.PrintInsts()
	case MODE_HEAT:
		k.PrintHeatmap()
	case MODE_HINT:
		k.PrintHint()
	default:
		k.PrintHint()
	}

	return nil
}
