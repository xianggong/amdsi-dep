package amdsidep

import "fmt"

var activeStringMap = map[bool]string{
	true:  "*",
	false: "_",
}

// InstructionGroup contains instructions with dependency
type InstructionGroup struct {
	BasicBlock *BasicBlock
	ID         int
	Insts      []*Instruction
	MaxVRegs   int
	UseVRegs   [maxNumVregs]bool
	DefVRegs   [maxNumVregs]bool
	MaxSRegs   int
	UseSRegs   [maxNumSregs]bool
	DefSRegs   [maxNumSregs]bool
}

// NewInstructionGroup creates a new instruction group
func NewInstructionGroup(bb *BasicBlock) *InstructionGroup {
	instGroup := new(InstructionGroup)
	instGroup.BasicBlock = bb
	instGroup.ID = bb.GetNewInstructionGroupID()
	return instGroup
}

// add an instruction to the InstructionGroup without dependency checking
func (instGroup *InstructionGroup) add(inst *Instruction) {
	// Add instruction to the group unconditionally
	instGroup.Insts = append(instGroup.Insts, inst)

	// Add group id
	inst.Hint.GroupID = append(inst.Hint.GroupID, instGroup.ID)

	// Check hazard
	instGroup.detectHazard(inst)

	// Update vector register usage
	for idx, role := range inst.VRegs {
		// Update the maximum index of vector registers used in this group
		if role != non && idx > instGroup.MaxVRegs {
			instGroup.MaxVRegs = idx
		}
		switch role {
		case dst:
			instGroup.DefVRegs[idx] = true
		case src:
			instGroup.UseVRegs[idx] = true
		case duo:
			instGroup.DefVRegs[idx] = true
			instGroup.UseVRegs[idx] = true
		case non:
			continue
		default:
			panic("Invalid role of register")
		}
	}

	// Update scalar register usage
	for idx, val := range inst.SRegs {
		if val != 0 && idx > instGroup.MaxSRegs {
			instGroup.MaxSRegs = idx
		}
		switch val {
		case dst:
			instGroup.DefSRegs[idx] = true
		case src:
			instGroup.UseSRegs[idx] = true
		case duo:
			instGroup.DefSRegs[idx] = true
			instGroup.UseSRegs[idx] = true
		case non:
			continue
		default:
			panic("Invalid role of register")
		}
	}
}

func (instGroup *InstructionGroup) detectHazard(inst *Instruction) {
	// WAR or WAW harzard
	for _, reg := range inst.DstRegs {
		idx := reg.Index
		switch reg.Type {
		case typeScalarRegister:
			if instGroup.DefSRegs[idx] {
				reg.Hazard = waw
			} else if instGroup.UseSRegs[idx] {
				reg.Hazard = war
			}
		case typeVectorRegister:
			if instGroup.DefVRegs[idx] {
				reg.Hazard = waw
			} else if instGroup.UseVRegs[idx] {
				reg.Hazard = war
			}
		}
	}

	// RAW harzard
	for _, reg := range inst.SrcRegs {
		idx := reg.Index
		switch reg.Type {
		case typeScalarRegister:
			if instGroup.DefSRegs[idx] {
				reg.Hazard = raw
			}
		case typeVectorRegister:
			if instGroup.DefVRegs[idx] {
				reg.Hazard = raw
			}
		}
	}
}

// Accept an instruction when the instruction has dependency
func (instGroup *InstructionGroup) isDependent(inst *Instruction) bool {
	isDependent := false

	// Check if this instruction uses any VRegs belongs to instGroup.DefVRegs
	for i := 0; i < maxNumVregs; i++ {
		if inst.VRegs[i] != 0 && instGroup.DefVRegs[i] == true {
			isDependent = true
			break
		}
	}

	// Check if this instruction uses any SRegs belongs to instGroup.DefSRegs
	for i := 0; i < maxNumSregs; i++ {
		if inst.SRegs[i] != 0 && instGroup.DefSRegs[i] == true {
			isDependent = true
			break
		}
	}

	// Return
	return isDependent
}

// CheckThenAdd check instruction dependency before add
func (instGroup *InstructionGroup) CheckThenAdd(inst *Instruction) bool {
	// Add compute instruction if find dependency
	if instGroup.isDependent(inst) {
		instGroup.add(inst)
		return true
	}
	return false
}

// PrintUseSRegs print use of SRegs
func (instGroup *InstructionGroup) PrintUseSRegs() {
	fmt.Print("\tUseSregs:  ")
	for idx := 0; idx <= instGroup.MaxSRegs; idx++ {
		fmt.Print(activeStringMap[instGroup.UseSRegs[idx]])
	}
}

// PrintUseVRegs print use of VRegs
func (instGroup *InstructionGroup) PrintUseVRegs() {
	fmt.Print("\tUseVregs:  ")
	for idx := 0; idx <= instGroup.MaxVRegs; idx++ {
		fmt.Print(activeStringMap[instGroup.UseVRegs[idx]])
	}
}

// PrintDefSRegs print def of SRegs
func (instGroup *InstructionGroup) PrintDefSRegs() {
	fmt.Print("\tDefSregs:  ")
	for idx := 0; idx <= instGroup.MaxSRegs; idx++ {
		fmt.Print(activeStringMap[instGroup.DefSRegs[idx]])
	}
}

// PrintDefVRegs print use of VRegs
func (instGroup *InstructionGroup) PrintDefVRegs() {
	fmt.Print("\tDefVregs:  ")
	for idx := 0; idx <= instGroup.MaxVRegs; idx++ {
		fmt.Print(activeStringMap[instGroup.DefVRegs[idx]])
	}
}

// Print output the usage of registers
func (instGroup *InstructionGroup) Print() {
	for _, inst := range instGroup.Insts {
		inst.Print()
	}
	instGroup.PrintDefSRegs()
	fmt.Println()
	instGroup.PrintUseSRegs()
	fmt.Println()
	instGroup.PrintDefVRegs()
	fmt.Println()
	instGroup.PrintUseVRegs()
	fmt.Println()
}
