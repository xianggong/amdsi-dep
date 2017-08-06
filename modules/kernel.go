package amdsidep

import (
	"fmt"
	"regexp"
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
	labelRe := regexp.MustCompile(`label_\d+:`)
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

func (k *Kernel) Analysis() {
	for _, bb := range k.BasicBlocks {
		bb.Analysis()
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
		fmt.Println(bb.Label)
		for _, inst := range bb.Instructions {
			inst.Print()
		}
	}
}
