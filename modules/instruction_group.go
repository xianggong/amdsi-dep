package amdsidep

import (
	"fmt"
)

var gprActiveStrMap = map[bool]string{
	true:  "*",
	false: "_",
}

// InstructionGroup contains instructions with dependency
type InstructionGroup struct {
	ID         int
	BasicBlock *BasicBlock
	Insts      []*Instruction

	// Register use and def lookup table
	UseVGPR [maxNumVGPR]bool
	DefVGPR [maxNumVGPR]bool

	UseSGPR [maxNumSGPR]bool
	DefSGPR [maxNumSGPR]bool

	UseSPPR [maxNumSPPR]bool
	DefSPPR [maxNumSPPR]bool
}

// NewInstructionGroup creates a new instruction group
func NewInstructionGroup(bb *BasicBlock) *InstructionGroup {
	instGroup := new(InstructionGroup)
	instGroup.BasicBlock = bb
	instGroup.ID = bb.GetNewInstructionGroupID()
	return instGroup
}

func (instGroup *InstructionGroup) updateUseDef(inst *Instruction) {
	for _, reg := range inst.SrcRegs {
		idx := reg.Index
		switch reg.Type {
		case typeVectorRegister:
			instGroup.UseVGPR[idx] = true
		case typeScalarRegister:
			instGroup.UseSGPR[idx] = true
		case typeSpecialRegister:
			instGroup.UseSPPR[idx] = true
		}
	}

	for _, reg := range inst.DstRegs {
		idx := reg.Index
		switch reg.Type {
		case typeVectorRegister:
			instGroup.DefVGPR[idx] = true
		case typeScalarRegister:
			instGroup.DefSGPR[idx] = true
		case typeSpecialRegister:
			instGroup.DefSPPR[idx] = true
		}
	}
}

// add an instruction to the InstructionGroup without dependency checking
func (instGroup *InstructionGroup) add(inst *Instruction) {
	// Add instruction to the group unconditionally
	instGroup.Insts = append(instGroup.Insts, inst)

	// Check hazard
	instGroup.hazardAnalysis(inst)

	// Update Use/Def table
	instGroup.updateUseDef(inst)

}

func (instGroup *InstructionGroup) hazardAnalysis(inst *Instruction) {
	// WAR or WAW harzard
	for _, reg := range inst.DstRegs {
		idx := reg.Index
		switch reg.Type {
		case typeScalarRegister:
			if instGroup.DefSGPR[idx] {
				reg.Hazard = waw
			} else if instGroup.UseSGPR[idx] {
				reg.Hazard = war
			}
		case typeVectorRegister:
			if instGroup.DefVGPR[idx] {
				reg.Hazard = waw
			} else if instGroup.UseVGPR[idx] {
				reg.Hazard = war
			}
		case typeSpecialRegister:
			if instGroup.DefSPPR[idx] {
				reg.Hazard = waw
			} else if instGroup.UseSPPR[idx] {
				reg.Hazard = war
			}
		}
	}

	// RAW harzard
	for _, reg := range inst.SrcRegs {
		idx := reg.Index
		switch reg.Type {
		case typeScalarRegister:
			if instGroup.DefSGPR[idx] {
				reg.Hazard = raw
			}
		case typeVectorRegister:
			if instGroup.DefVGPR[idx] {
				reg.Hazard = raw
			}
		case typeSpecialRegister:
			if instGroup.DefSPPR[idx] {
				reg.Hazard = raw
			}
		}
	}
}

// Accept an instruction when the instruction has dependency
func (instGroup *InstructionGroup) IsDependent(inst *Instruction) bool {
	isDependent := false

	isDependent = instGroup.IsWAW(inst) || instGroup.IsRAW(inst)

	// Return
	return isDependent
}

func (instGroup *InstructionGroup) IsWAW(inst *Instruction) bool {
	isWAW := false

	// WAW
	for _, reg := range inst.DstRegs {
		regIdx := reg.Index
		switch reg.Type {
		case typeVectorRegister:
			if instGroup.DefVGPR[regIdx] {
				isWAW = true
			}
		case typeScalarRegister:
			if instGroup.DefSGPR[regIdx] {
				isWAW = true
			}
		case typeSpecialRegister:
			if instGroup.DefSPPR[regIdx] {
				isWAW = true
			}
		}
	}

	// Return
	return isWAW
}

func (instGroup *InstructionGroup) IsRAW(inst *Instruction) bool {
	isRAW := false

	// RAW
	for _, reg := range inst.SrcRegs {
		regIdx := reg.Index
		switch reg.Type {
		case typeVectorRegister:
			if instGroup.DefVGPR[regIdx] {
				isRAW = true
			}
		case typeScalarRegister:
			if instGroup.DefSGPR[regIdx] {
				isRAW = true
			}
		case typeSpecialRegister:
			if instGroup.DefSPPR[regIdx] {
				isRAW = true
			}
		}
	}

	// Return
	return isRAW
}

// PrintUseSGPR print use of SRegs
func (instGroup *InstructionGroup) PrintUseSGPR() {
	fmt.Print("\tUseSGPR:  ")
	maxIdx := 0
	for idx, val := range instGroup.UseSGPR {
		if val {
			maxIdx = idx
		}
	}
	for idx := 0; idx <= maxIdx; idx++ {
		fmt.Print(gprActiveStrMap[instGroup.UseSGPR[idx]])
	}
}

// PrintUseVGPR print use of VRegs
func (instGroup *InstructionGroup) PrintUseVGPR() {
	fmt.Print("\tUseVGPR:  ")
	maxIdx := 0
	for idx, val := range instGroup.UseVGPR {
		if val {
			maxIdx = idx
		}
	}
	for idx := 0; idx <= maxIdx; idx++ {
		fmt.Print(gprActiveStrMap[instGroup.UseVGPR[idx]])
	}
}

// PrintDefSGPR print def of SRegs
func (instGroup *InstructionGroup) PrintDefSGPR() {
	fmt.Print("\tDefSGPR:  ")
	maxIdx := 0
	for idx, val := range instGroup.DefSGPR {
		if val {
			maxIdx = idx
		}
	}
	for idx := 0; idx <= maxIdx; idx++ {
		fmt.Print(gprActiveStrMap[instGroup.DefSGPR[idx]])
	}
}

// PrintDefVGPR print use of VRegs
func (instGroup *InstructionGroup) PrintDefVGPR() {
	fmt.Print("\tDefVGPR:  ")
	maxIdx := 0
	for idx, val := range instGroup.DefVGPR {
		if val {
			maxIdx = idx
		}
	}
	for idx := 0; idx <= maxIdx; idx++ {
		fmt.Print(gprActiveStrMap[instGroup.DefVGPR[idx]])
	}
}

// PrintUseSPPR print use of SPPR
func (instGroup *InstructionGroup) PrintUseSPPR() {
	fmt.Print("\tUseSPPR:  ")
	for idx := 0; idx < maxNumSPPR; idx++ {
		fmt.Print(gprActiveStrMap[instGroup.UseSPPR[idx]])
	}
}

// PrintDefSPPR print def of SPPR
func (instGroup *InstructionGroup) PrintDefSPPR() {
	fmt.Print("\tDefSPPR:  ")
	for idx := 0; idx < maxNumSPPR; idx++ {
		fmt.Print(gprActiveStrMap[instGroup.DefSPPR[idx]])
	}
}

// Print output the usage of registers
func (instGroup *InstructionGroup) Print() {
	for _, inst := range instGroup.Insts {
		inst.Print()
	}
	instGroup.PrintDefSGPR()
	fmt.Println()
	instGroup.PrintUseSGPR()
	fmt.Println()
	instGroup.PrintDefVGPR()
	fmt.Println()
	instGroup.PrintUseVGPR()
	fmt.Println()

	// fmt.Println("-------------------------------------------------")
}
