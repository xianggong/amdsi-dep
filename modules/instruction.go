package amdsidep

import (
	"fmt"
	"strconv"
	"strings"
)

const (
	non = iota // No role
	dst = iota // Destination
	src = iota // Source
	duo = iota // Destination and Source
)

var symbolMap = map[int]string{non: "_", dst: "D", src: "S", duo: "B"}

var regexComment = `\/{2}\s+(?P<offset>[A-F0-9]{8}):\s+(?P<hex>([A-F0-9]{8})\s*([A-F0-9]{8})?)\n`

// Instruction contains all field of an instruction
type Instruction struct {
	Type   string
	Text   string
	Offset int64
	Hex    string
	Raw    string

	DstRegs []*Register
	SrcRegs []*Register

	roleVGPR [maxNumVGPR]int
	roleSGPR [maxNumSGPR]int
	roleSPPR [maxNumSPPR]int

	Hint InstructionHint
}

// InstructionHint contains hint for the instruction
type InstructionHint struct {
	SBBID   int
	GroupID []int
	Offset  int
}

func delimiter(r rune) bool {
	return r == ' ' || r == ',' || r == '/' || r == '\t'
}

func (inst *Instruction) parseInst() bool {
	// Split assembly, the 1st field is the Text
	inputField := strings.FieldsFunc(inst.Raw, delimiter)
	if len(inputField) > 0 {
		if IsValidInst(inputField[0]) {

			// Get instruction string and type from the first field
			inst.Text = inputField[0]
			inst.Type = GetType(inst.Text)

			// Get vector and scalar register usage
			for i := 1; i < len(inputField); i++ {
				currField := inputField[i]
				if IsRegister(currField) {
					regs := ParseRegisters(currField)
					if i <= GetInstAsmDstCount(inst.Text) {
						for _, reg := range regs {
							inst.DstRegs = append(inst.DstRegs, reg)
						}
					} else {
						for _, reg := range regs {
							inst.SrcRegs = append(inst.SrcRegs, reg)
						}
					}
				}
			}

			// Get implicit usage of special registers
			idxSpReg := GetInstMisc(inst.Text).DstSpReg
			switch idxSpReg {
			case M0Register, SccRegister:
				reg := NewRegister(idxSpReg, typeSpecialRegister)
				inst.DstRegs = append(inst.DstRegs, reg)
			case VccRegister, VcczRegister:
				reg := NewRegister(VccRegister, typeSpecialRegister)
				inst.DstRegs = append(inst.DstRegs, reg)
			case ExecRegister, ExeczRegister:
				reg := NewRegister(ExecRegister, typeSpecialRegister)
				inst.DstRegs = append(inst.DstRegs, reg)
			case ExecAndSccRegister:
				reg := NewRegister(ExecRegister, typeSpecialRegister)
				inst.DstRegs = append(inst.DstRegs, reg)
				reg = NewRegister(SccRegister, typeSpecialRegister)
				inst.DstRegs = append(inst.DstRegs, reg)
			case InvalidRegister, SpRegisterCount:
				fmt.Println(inst.Raw)
				panic("Invalid Special Register used in InstsMisc table")
			}

			idxSpReg = GetInstMisc(inst.Text).SrcSpReg
			switch idxSpReg {
			case M0Register, SccRegister:
				reg := NewRegister(idxSpReg, typeSpecialRegister)
				inst.SrcRegs = append(inst.SrcRegs, reg)
			case VccRegister, VcczRegister:
				reg := NewRegister(VccRegister, typeSpecialRegister)
				inst.SrcRegs = append(inst.SrcRegs, reg)
			case ExecRegister, ExeczRegister:
				reg := NewRegister(ExecRegister, typeSpecialRegister)
				inst.SrcRegs = append(inst.SrcRegs, reg)
			case ExecAndSccRegister:
				reg := NewRegister(ExecRegister, typeSpecialRegister)
				inst.SrcRegs = append(inst.SrcRegs, reg)
				reg = NewRegister(SccRegister, typeSpecialRegister)
				inst.SrcRegs = append(inst.SrcRegs, reg)
			case InvalidRegister, SpRegisterCount:
				fmt.Println(inst.Raw)
				panic("Invalid Special Register used in InstsMisc table")
			}

			// Get the offset and hex
			comment := parseNamedGroup(regexComment, inst.Raw)
			offset, _ := strconv.ParseInt(comment["offset"], 16, 32)
			inst.Offset = offset
			inst.Hex = comment["hex"]
		}
		return true
	}
	return false
}

func (inst *Instruction) parseDstRegs() {
	for _, reg := range inst.DstRegs {
		switch reg.Type {
		case typeScalarRegister:
			switch inst.roleSGPR[reg.Index] {
			case non, dst:
				inst.roleSGPR[reg.Index] = dst
			case src, duo:
				inst.roleSGPR[reg.Index] = duo
			}
		case typeVectorRegister:
			switch inst.roleVGPR[reg.Index] {
			case non, dst:
				inst.roleVGPR[reg.Index] = dst
			case src, duo:
				inst.roleVGPR[reg.Index] = duo
			}
		case typeSpecialRegister:
			switch inst.roleSPPR[reg.Index] {
			case non, dst:
				inst.roleSPPR[reg.Index] = dst
			case src, duo:
				inst.roleSPPR[reg.Index] = duo
			}
		default:
			panic("Invalid Register Type")
		}
	}
}

func (inst *Instruction) parseSrcRegs() {

	for _, reg := range inst.SrcRegs {
		switch reg.Type {
		case typeScalarRegister:
			switch inst.roleSGPR[reg.Index] {
			case non, src:
				inst.roleSGPR[reg.Index] = src
			case dst, duo:
				inst.roleSGPR[reg.Index] = duo
			}
		case typeVectorRegister:
			switch inst.roleVGPR[reg.Index] {
			case non, src:
				inst.roleVGPR[reg.Index] = src
			case dst, duo:
				inst.roleVGPR[reg.Index] = duo
			}
		case typeSpecialRegister:
			switch inst.roleSPPR[reg.Index] {
			case non, dst:
				inst.roleSPPR[reg.Index] = src
			case src, duo:
				inst.roleSPPR[reg.Index] = duo
			}
		default:
			panic("Invalid Register Type")
		}
	}
}

func (inst *Instruction) parseRegs() {
	inst.parseDstRegs()
	inst.parseSrcRegs()
}

// NewInstruction returns an instruction
func NewInstruction(asm string) *Instruction {
	inst := new(Instruction)

	// Check if asm is a valid instruction
	if IsValidInst(asm) {
		inst.Raw = asm
	} else {
		return nil
	}

	// Parse assembly to get info
	inst.parseInst()

	// Parse register info
	inst.parseRegs()

	// Return
	return inst
}

func (inst *Instruction) isRAW() bool {
	for _, reg := range inst.DstRegs {
		if reg.Hazard == raw {
			return true
		}
	}
	for _, reg := range inst.SrcRegs {
		if reg.Hazard == raw {
			return true
		}
	}
	return false
}

func (inst *Instruction) isMemoryInstruction() bool {
	// Memory instructions are always added to the group
	key := inst.Text
	if val, ok := InstsMisc[key]; ok {
		return val.IsMemInst
	}

	return false
}

// Print instructions
func (inst *Instruction) Print() {
	// fmt.Println(inst.Raw)
	fmt.Printf("%d ", inst.Hint.SBBID)
	for _, id := range inst.Hint.GroupID {
		fmt.Printf("%d ", id)
	}

	fmt.Print("\t")
	if inst.isRAW() {
		fmt.Print("T")
	} else {
		fmt.Print("F")
	}
	fmt.Printf(" %d %s\n", inst.Hint.Offset, inst.Raw)

	for _, reg := range inst.DstRegs {
		fmt.Println("\t\tDst ", reg.Dump())
	}
	for _, reg := range inst.SrcRegs {
		fmt.Println("\t\tSrc ", reg.Dump())
	}
}

// // PrintroleSGPR print scalar register usage as a vector
// func (inst *Instruction) PrintroleSGPR(max int) {
// 	for idx := 0; idx < max; idx++ {
// 		fmt.Print(symbolMap[inst.roleSGPR[idx]])
// 	}
// }

// // PrintroleVGPR print vector register usage as a vector
// func (inst *Instruction) PrintroleVGPR(max int) {
// 	for idx := 0; idx < max; idx++ {
// 		fmt.Print(symbolMap[inst.roleVGPR[idx]])
// 	}
// }

// IsValidInst checks if instruction is a valid instruction
func IsValidInst(asm string) bool {
	inputField := strings.FieldsFunc(asm, delimiter)
	if len(inputField) > 0 {
		inst := inputField[0]
		if _, ok := InstsMisc[inst]; ok {
			return true
		}
	}

	return false
}

// GetType returns the type of an instruction
func GetType(inst string) string {
	if val, ok := InstsMisc[inst]; ok {
		return val.Type
	}
	return "Invalid"
}
