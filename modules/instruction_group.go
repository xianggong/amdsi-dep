package amdsidep

import "fmt"

// InstructionGroup contains instructions with dependency
type InstructionGroup struct {
	ID         int
	BasicBlock *BasicBlock
	Insts      []*Instruction

	// Register use/def lookup table
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

func (instGroup *InstructionGroup) updateVGPR(inst *Instruction) {
	// Update register status
	for idx, role := range inst.roleVGPR {
		switch role {
		case dst:
			instGroup.DefVGPR[idx] = true
		case src:
			instGroup.UseVGPR[idx] = true
		case duo:
			instGroup.DefVGPR[idx] = true
			instGroup.UseVGPR[idx] = true
		case non:
			continue
		default:
			panic("Invalid role of register")
		}
	}
}

func (instGroup *InstructionGroup) updateSGPR(inst *Instruction) {
	// Update register status
	for idx, role := range inst.roleSGPR {
		switch role {
		case dst:
			instGroup.DefSGPR[idx] = true
		case src:
			instGroup.UseSGPR[idx] = true
		case duo:
			instGroup.DefSGPR[idx] = true
			instGroup.UseSGPR[idx] = true
		case non:
			continue
		default:
			panic("Invalid role of register")
		}
	}
}

func (instGroup *InstructionGroup) updateSPPR(inst *Instruction) {
	// Update register status
	for idx, role := range inst.roleSPPR {
		switch role {
		case dst:
			instGroup.DefSPPR[idx] = true
		case src:
			instGroup.UseSPPR[idx] = true
		case duo:
			instGroup.DefSPPR[idx] = true
			instGroup.UseSPPR[idx] = true
		case non:
			continue
		default:
			panic("Invalid role of register")
		}
	}
}

// add an instruction to the InstructionGroup without dependency checking
func (instGroup *InstructionGroup) add(inst *Instruction) {
	// Add instruction to the group unconditionally
	instGroup.Insts = append(instGroup.Insts, inst)

	for _, reg := range inst.DstRegs {
		fmt.Printf("D %s\n", reg.Dump())
	}

	for _, reg := range inst.SrcRegs {
		fmt.Printf("S %s\n", reg.Dump())
	}

	// Add group id
	inst.Hint.GroupID = append(inst.Hint.GroupID, instGroup.ID)

	// Check hazard
	instGroup.hazardAnalysis(inst)

	// Update register use/def lookup table
	instGroup.updateVGPR(inst)
	instGroup.updateSGPR(inst)
	instGroup.updateSPPR(inst)
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
func (instGroup *InstructionGroup) isDependent(inst *Instruction) bool {
	isDependent := false

	// Check if this instruction uses any VGPR in the DefVGPR lookup table
	for i := 0; i < maxNumVGPR; i++ {
		if inst.roleVGPR[i] != non && instGroup.DefVGPR[i] == true {
			fmt.Printf("dep v%d\n", i)
			isDependent = true
			break
		}
	}

	// Check if this instruction uses any SGPR in the DefSGPR lookup table
	for i := 0; i < maxNumSGPR; i++ {
		if inst.roleSGPR[i] != non && instGroup.DefSGPR[i] == true {
			fmt.Printf("dep s%d\n", i)
			isDependent = true
			break
		}
	}

	// Check if this instruction explicitly uses any SPPR
	idx := GetInstMisc(inst.Text).SrcSpReg
	for i := 0; i < maxNumSPPR; i++ {
		if instGroup.DefSPPR[idx] {
			fmt.Printf("dep %s\n", sprTypeStringMap[idx])
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

// // PrintUseSGPR print use of SRegs
// func (instGroup *InstructionGroup) PrintUseSGPR() {
// 	fmt.Print("\tUseSGPR:  ")
// 	for idx := 0; idx <= instGroup.MaxIdxSRegs; idx++ {
// 		fmt.Print(activeStringMap[instGroup.UseSGPR[idx]])
// 	}
// }

// // PrintUseVGPR print use of VRegs
// func (instGroup *InstructionGroup) PrintUseVGPR() {
// 	fmt.Print("\tUseVGPR:  ")
// 	for idx := 0; idx <= instGroup.MaxIdxVRegs; idx++ {
// 		fmt.Print(activeStringMap[instGroup.UseVGPR[idx]])
// 	}
// }

// // PrintDefSGPR print def of SRegs
// func (instGroup *InstructionGroup) PrintDefSGPR() {
// 	fmt.Print("\tDefSGPR:  ")
// 	for idx := 0; idx <= instGroup.MaxIdxSRegs; idx++ {
// 		fmt.Print(activeStringMap[instGroup.DefSGPR[idx]])
// 	}
// }

// // PrintDefVGPR print use of VRegs
// func (instGroup *InstructionGroup) PrintDefVGPR() {
// 	fmt.Print("\tDefVGPR:  ")
// 	for idx := 0; idx <= instGroup.MaxIdxVRegs; idx++ {
// 		fmt.Print(activeStringMap[instGroup.DefVGPR[idx]])
// 	}
// }

// Print output the usage of registers
func (instGroup *InstructionGroup) Print() {
	for _, inst := range instGroup.Insts {
		inst.Print()
	}
	// instGroup.PrintDefSGPR()
	// fmt.Println()
	// instGroup.PrintUseSGPR()
	// fmt.Println()
	// instGroup.PrintDefVGPR()
	// fmt.Println()
	// instGroup.PrintUseVGPR()
	// fmt.Println()
}
