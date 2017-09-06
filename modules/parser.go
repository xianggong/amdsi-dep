package amdsidep

import (
	"bufio"
	"fmt"
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

	k.GenHint()

	k.PrintInsts()

	if glog.V(1) {
		idpInstcount := 0
		allInstCount := 0
		fmt.Println("Independant instructions:")
		for _, bb := range k.BasicBlocks {
			for _, inst := range bb.IdpInsts {
				fmt.Println(inst.Raw)
			}
			idpInstcount += len(bb.IdpInsts)
			allInstCount += len(bb.Instructions)
		}
		fmt.Printf("Independant instruction count = %d/%d = %2.1f %%\n", idpInstcount, allInstCount, 100*float64(idpInstcount)/float64(allInstCount))
	} else {
		k.PrintHint()
	}

	if err := scanner.Err(); err != nil {
		glog.Fatal(err)
	}

	return nil
}
