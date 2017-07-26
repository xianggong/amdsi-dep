package amdsidep

import "fmt"

var activeStringMap = map[bool]string{
	true:  "*",
	false: "_",
}

var instGroupID = 0

// InstructionGroup contains instructions with dependency
type InstructionGroup struct {
	ID       int
	Insts    []*Instruction
	MaxVRegs int
	UseVRegs [maxNumVregs]bool
	DefVRegs [maxNumVregs]bool
	MaxSRegs int
	UseSRegs [maxNumSregs]bool
	DefSRegs [maxNumSregs]bool
}

// NewInstructionGroup creates a new instruction group
func NewInstructionGroup() *InstructionGroup {
	instGroup := new(InstructionGroup)
	instGroup.ID = instGroupID
	instGroupID++
	return instGroup
}

// add an instruction to the InstructionGroup without dependency checking
func (instGroup *InstructionGroup) add(inst *Instruction) {
	// Add instruction to the group unconditionally
	instGroup.Insts = append(instGroup.Insts, inst)

	inst.Hint.GroupID = instGroup.ID

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

// Accept an instruction when the instruction has dependency
func (instGroup *InstructionGroup) isDependent(inst *Instruction) bool {
	isDependent := false

	// Check if this instruction uses any VRegs belongs to instGroup.DefVRegs
	for i := 0; i < len(inst.VRegs); i++ {
		if inst.VRegs[i] != 0 && instGroup.DefVRegs[i] == true {
			isDependent = true
			break
		}
	}

	// Check if this instruction uses any SRegs belongs to instGroup.DefSRegs
	for i := 0; i < len(inst.SRegs); i++ {
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
