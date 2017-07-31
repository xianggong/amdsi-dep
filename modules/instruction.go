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
	InstType  string
	InstText  string
	Offset    int64
	BinaryHex string
	Raw       string
	DstRegs   []*Register
	SrcRegs   []*Register
	VRegs     [maxNumVregs]int
	SRegs     [maxNumSregs]int
	Hint      InstructionHint
}

// InstructionHint contains hint for the instruction
type InstructionHint struct {
	GroupID []int
	Offset  int
}

func delimiter(r rune) bool {
	return r == ' ' || r == ',' || r == '/' || r == '\t'
}

func (inst *Instruction) parseInst() bool {
	// Split assembly, the 1st field is the instText
	inputField := strings.FieldsFunc(inst.Raw, delimiter)
	if len(inputField) > 0 {
		if IsValidInst(inputField[0]) {

			// Get instruction string and type from the first field
			inst.InstText = inputField[0]
			inst.InstType = GetInstType(inst.InstText)

			// Get registers
			for i := 1; i < len(inputField); i++ {
				currField := inputField[i]
				if IsRegister(currField) {
					regs := ParseRegisters(currField)
					if i == 1 {
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

			// Get the offset and hex
			result := parseNamedGroup(regexComment, inst.Raw)
			offset, _ := strconv.ParseInt(result["offset"], 16, 32)
			inst.Offset = offset
			inst.BinaryHex = result["hex"]
		}
		return true
	}
	return false
}

func (inst *Instruction) parseRegs() {
	for _, reg := range inst.DstRegs {
		switch reg.Type {
		case typeScalarRegister:
			switch inst.SRegs[reg.Index] {
			case non, dst:
				inst.SRegs[reg.Index] = dst
			case src, duo:
				inst.SRegs[reg.Index] = duo
			}
		case typeVectorRegister:
			switch inst.VRegs[reg.Index] {
			case non, dst:
				inst.VRegs[reg.Index] = dst
			case src, duo:
				inst.VRegs[reg.Index] = duo
			}
		default:
			panic("Invalid")
		}
	}

	for _, reg := range inst.SrcRegs {
		switch reg.Type {
		case typeScalarRegister:
			switch inst.SRegs[reg.Index] {
			case non, src:
				inst.SRegs[reg.Index] = src
			case dst, duo:
				inst.SRegs[reg.Index] = duo
			}
		case typeVectorRegister:
			switch inst.VRegs[reg.Index] {
			case non, src:
				inst.VRegs[reg.Index] = src
			case dst, duo:
				inst.VRegs[reg.Index] = duo
			}
		default:
			panic("Invalid")
		}
	}
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

func (inst *Instruction) isFlowDependent() bool {
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
	key := inst.InstText
	if _, ok := MemInsts[key]; ok {
		return true
	}

	return false
}

// Print instructions
func (inst *Instruction) Print() {
	// fmt.Println(inst.Raw)
	for _, id := range inst.Hint.GroupID {
		fmt.Printf("%d ", id)
	}

	fmt.Print("\t")
	if inst.isFlowDependent() {
		fmt.Print("T")
	} else {
		fmt.Print("F")
	}
	fmt.Printf(" %d %s\n", inst.Hint.Offset, inst.Raw)

	for _, reg := range inst.DstRegs {
		fmt.Println("\t\t", regTypeStringMap[reg.Type], reg.Index, "-", regHarzardMap[reg.Hazard])
	}
	for _, reg := range inst.SrcRegs {
		fmt.Println("\t\t", regTypeStringMap[reg.Type], reg.Index, "-", regHarzardMap[reg.Hazard])
	}
	// fmt.Print("\t", inst.InstText, " ")
	// fmt.Print("| ")
	// for _, reg := range inst.DstRegs {
	// 	fmt.Print(regTypeStringMap[reg.Type], reg.Index, " ")
	// }
	// fmt.Print("| ")
	// for _, reg := range inst.SrcRegs {
	// 	fmt.Print(regTypeStringMap[reg.Type], reg.Index, " ")
	// }
	// fmt.Print("| ")
	// fmt.Printf("PC = %d | hex = %s\n", inst.Offset, inst.BinaryHex)
}

// PrintSRegs print scalar register usage as a vector
func (inst *Instruction) PrintSRegs(max int) {
	for idx := 0; idx < max; idx++ {
		fmt.Print(symbolMap[inst.SRegs[idx]])
	}
}

// PrintVRegs print vector register usage as a vector
func (inst *Instruction) PrintVRegs(max int) {
	for idx := 0; idx < max; idx++ {
		fmt.Print(symbolMap[inst.VRegs[idx]])
	}
}

// IsValidInst checks if instruction is a valid instruction
func IsValidInst(asm string) bool {
	inputField := strings.FieldsFunc(asm, delimiter)
	if len(inputField) > 0 {
		inst := inputField[0]
		if _, ok := InstType[inst]; ok {
			return true
		}
	}

	return false
}

// GetInstType returns the type of an instruction
func GetInstType(inst string) string {
	if val, ok := InstType[inst]; ok {
		return val
	}
	return "Invalid"
}
