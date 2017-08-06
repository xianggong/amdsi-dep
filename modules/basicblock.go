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

// GetNewInstructionGroupID returns a new instruction group id
func (bb *BasicBlock) GetNewInstructionGroupID() int {
	val := bb.InstructionGroupID
	bb.InstructionGroupID++
	return val
}

// Add an new instruction to the basic block
func (bb *BasicBlock) Add(inst *Instruction) {
	// Add to instruction array
	bb.Instructions = append(bb.Instructions, inst)

	// Sanity check
	if len(bb.SubBasicBlocks) == 0 {
		sbb := new(SubBasicBlock)
		bb.SubBasicBlocks = append(bb.SubBasicBlocks, sbb)
	}

	// Always use the last sub basic block
	sbb := bb.SubBasicBlocks[len(bb.SubBasicBlocks)-1]

	// Always add computational instructions
	if !inst.isMemoryInstruction() {
		sbb.Instructions = append(sbb.Instructions, inst)
	} else {
		// Only add when s_waitcnt < 2
		if sbb.WaitCount < 2 {
			sbb.Instructions = append(sbb.Instructions, inst)
			if inst.Text == "s_waitcnt" || inst.Text == "s_barrier" {
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
	for idxSbb, sbb := range bb.SubBasicBlocks {
		for _, inst := range sbb.Instructions {
			// Update Hint info
			inst.Hint.SBBID = idxSbb

			// If there is no group, create one and add instruction
			if len(sbb.InstructionGroups) == 0 {
				instGroup := NewInstructionGroup(bb)
				instGroup.add(inst)
				sbb.InstructionGroups = append(sbb.InstructionGroups, instGroup)
				fmt.Printf("new: group %d += %s\n\n", instGroup.ID, inst.Raw)
				continue
			}

			// Check if instruction is dependent on existing instruction group
			isDependent := false
			for _, instGroup := range sbb.InstructionGroups {
				if instGroup.CheckThenAdd(inst) {
					isDependent = true
					fmt.Printf("dep: group %d += %s\n\n", instGroup.ID, inst.Raw)
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
				fmt.Printf("mem: group %d += %s\n\n", instGroup.ID, inst.Raw)
				continue
			}

			// Independent instruction, create new group and add it
			instGroup := NewInstructionGroup(bb)
			instGroup.add(inst)
			sbb.InstructionGroups = append(sbb.InstructionGroups, instGroup)
			fmt.Printf("idp: group %d += %s\n\n", instGroup.ID, inst.Raw)
		}
	}
}

func (bb *BasicBlock) GenHint() {

}

func (bb *BasicBlock) Print() {
	fmt.Println(bb.Label)
}
