package amdsidep

import "fmt"

// BasicBlock contains information of a basic block
type BasicBlock struct {
	Label              string
	InstructionGroupID int
	Instructions       []*Instruction
	SubBasicBlocks     []*SubBasicBlock
}

type SubBasicBlock struct {
	Instructions      []*Instruction
	InstructionGroups []*InstructionGroup
	WaitCount         int
	hasWait           bool
}

// NewBasicBlock returns a basic block
func NewBasicBlock(label string) *BasicBlock {
	bb := new(BasicBlock)
	bb.InstructionGroupID = 0
	bb.Label = label
	return bb
}

// NewSubBasicBlock returns a sub basic block
func NewSubBasicBlock() *SubBasicBlock {
	sbb := new(SubBasicBlock)
	return sbb
}

func (bb *BasicBlock) GetNewInstructionGroupID() int {
	val := bb.InstructionGroupID
	bb.InstructionGroupID++
	return val
}

// Add checks all the instruction groups for dependency, creates new group if
// no dependency is found
func (bb *BasicBlock) Add(inst *Instruction) {
	// Add to instruction array
	bb.Instructions = append(bb.Instructions, inst)

	// Always use the last sub basic block
	if len(bb.SubBasicBlocks) == 0 {
		sbb := new(SubBasicBlock)
		bb.SubBasicBlocks = append(bb.SubBasicBlocks, sbb)
	}
	sbb := bb.SubBasicBlocks[len(bb.SubBasicBlocks)-1]

	// Always add computational instructions
	if !inst.isMemoryInstruction() {
		sbb.Instructions = append(sbb.Instructions, inst)
	} else {
		// Only add when no s_waitcnt instructions
		if sbb.WaitCount != 2 {
			sbb.Instructions = append(sbb.Instructions, inst)
			if inst.InstText == "s_waitcnt" {
				sbb.WaitCount++
			}
		} else {
			newSbb := NewSubBasicBlock()
			newSbb.Instructions = append(newSbb.Instructions, inst)
			bb.SubBasicBlocks = append(bb.SubBasicBlocks, newSbb)
		}
	}
}

// Analysis dependency and group
func (bb *BasicBlock) Analysis() {
	for _, sbb := range bb.SubBasicBlocks {
		for _, inst := range sbb.Instructions {
			// If there is no group, create one and add instruction
			if len(sbb.InstructionGroups) == 0 {
				instGroup := NewInstructionGroup(bb)
				instGroup.add(inst)
				sbb.InstructionGroups = append(sbb.InstructionGroups, instGroup)
				// fmt.Print("New instructionGroup = ", instGroup.ID)
				// instGroup.PrintDefVRegs()
				// instGroup.PrintUseVRegs()
				// instGroup.PrintDefSRegs()
				// instGroup.PrintUseSRegs()
				// fmt.Println()
				// fmt.Print("  Add instruction: ")
				// inst.Print()
				continue
			}

			// Check if instruction is dependent on existing instruction group
			isDependent := false
			for _, instGroup := range sbb.InstructionGroups {
				if instGroup.CheckThenAdd(inst) {
					// fmt.Print("Dep instructionGroup = ", instGroup.ID)
					// instGroup.PrintDefVRegs()
					// instGroup.PrintUseVRegs()
					// instGroup.PrintDefSRegs()
					// instGroup.PrintUseSRegs()
					// fmt.Println()
					// fmt.Print("  Add computational instruction: ")
					// inst.Print()
					isDependent = true
					continue
				}
			}

			if isDependent {
				continue
			}

			// Memory instructions
			if inst.isMemoryInstruction() {
				instGroup := sbb.InstructionGroups[len(sbb.InstructionGroups)-1]
				instGroup.add(inst)
				// fmt.Print("Dep instructionGroup = ", instGroup.ID)
				// instGroup.PrintDefVRegs()
				// instGroup.PrintUseVRegs()
				// instGroup.PrintDefSRegs()
				// instGroup.PrintUseSRegs()
				// fmt.Println()
				// fmt.Print("  Add memory instruction: ")
				// inst.Print()
				continue
			}

			// Independent instruction , create new group and add it
			instGroup := NewInstructionGroup(bb)
			instGroup.add(inst)
			sbb.InstructionGroups = append(sbb.InstructionGroups, instGroup)
			// fmt.Print("NoDep instructionGroup = ", instGroup.ID)
			// instGroup.PrintDefVRegs()
			// instGroup.PrintUseVRegs()
			// instGroup.PrintDefSRegs()
			// instGroup.PrintUseSRegs()
			// fmt.Println()
			// fmt.Print("  Add computational instruction: ")
			// inst.Print()
		}
	}
}

func (bb *BasicBlock) Print() {
	fmt.Println(bb.Label)
	// for _, instGroup := range bb.InstructionGroups {
	// 	instGroup.Print()
	// }

}
