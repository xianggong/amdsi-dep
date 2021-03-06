package amdsidep

import (
	"fmt"
	"regexp"

	"github.com/golang/glog"
)

// Kernel represents an kernel binary
type Kernel struct {
	Name        string
	BasicBlocks []*BasicBlock
}

// NewKernel returns a kernel
func NewKernel(name string) *Kernel {
	k := new(Kernel)
	k.Name = name
	return k
}

// AddInstruction adds an instruction to kernel
func (k *Kernel) AddInstruction(asm string) {
	// If input is a label, create an new basic block
	labelRe := regexp.MustCompile(`label_[0-9A-F]+:`)
	label := labelRe.FindString(asm)
	if label != "" {
		bb := NewBasicBlock(label)
		k.BasicBlocks = append(k.BasicBlocks, bb)
	} else {
		// Always add instructions to the last basic block
		bb := k.BasicBlocks[len(k.BasicBlocks)-1]
		inst := NewInstruction(asm)
		if inst != nil {
			bb.Add(inst)
		} else {
			fmt.Println("Invalid assembly: ", asm)
		}
	}
}

func (k *Kernel) GenHint() {
	for _, bb := range k.BasicBlocks {
		bb.GenHint()
	}
}

// Print output BasicBlocks and the group information
func (k *Kernel) Print() {
	for _, bb := range k.BasicBlocks {
		bb.Print()
	}
}

func (k *Kernel) PrintInsts() {
	for _, bb := range k.BasicBlocks {
		glog.V(2).Infoln(bb.Label)
		for _, inst := range bb.Instructions {
			inst.Print()
		}
	}
}

func (k *Kernel) PrintIdpAnalysis() {
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
	fmt.Printf("Independant instruction count = %d/%d = %2.1f %%\n",
		idpInstcount, allInstCount, 100*float64(idpInstcount)/float64(allInstCount))
}

func (k *Kernel) PrintHint() {
	for _, bb := range k.BasicBlocks {
		for _, inst := range bb.Instructions {
			fmt.Println(inst.Offset, 0, 0, inst.Hint.Offset, 0)
		}
	}
}

func (k *Kernel) PrintHeatmap() {
	// count := 0
	// for _, bb := range k.BasicBlocks {
	// 	count += len(bb.Instructions)
	// }
	// for i := 0; i < count; i++ {
	// 	fmt.Printf("%d", i)
	// 	if i < count-1 {
	// 		fmt.Printf(",")
	// 	}
	// }
	// fmt.Println()
	for _, bb := range k.BasicBlocks {
		bb.PrintHeatmap()
	}
}
