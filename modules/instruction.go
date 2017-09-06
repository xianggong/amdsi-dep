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

var regexComment = `\/{2}\s+(?P<offset>[A-F0-9]{8}):\s+(?P<hex>([A-F0-9]{8})\s*([A-F0-9]{8})?)`

// Instruction contains all field of an instruction
type Instruction struct {
	Type   string
	Text   string
	Offset int64
	Hex    string
	Raw    string

	DstRegs []*Register
	SrcRegs []*Register

	Hint InstructionHint
}

// InstructionHint contains hint for the instruction
type InstructionHint struct {
	Offset int64
}

func delimiter(r rune) bool {
	return r == ' ' || r == ',' || r == '/' || r == '\t'
}

func (inst *Instruction) getImplicitRegs() {
	// Get implicit usage of special registers
	idxSpReg := GetInstMisc(inst.Text).DstSpReg
	spReg := NewSpecialRegister(idxSpReg)
	if spReg != nil {
		inst.DstRegs = append(inst.DstRegs, spReg)
	}

	idxSpReg = GetInstMisc(inst.Text).SrcSpReg
	spReg = NewSpecialRegister(idxSpReg)
	if spReg != nil {
		inst.DstRegs = append(inst.DstRegs, spReg)
	}
}

func (inst *Instruction) parseInst() bool {
	// Split assembly, the 1st field is the Text
	inputField := strings.FieldsFunc(inst.Raw, delimiter)
	if len(inputField) > 0 {
		if IsValidInst(inputField[0]) {
			// Get instruction string and type from the first field
			inst.Text = inputField[0]
			inst.Type = GetInstType(inst.Text)

			// Get vector and scalar register usage
			for i := 1; i < len(inputField); i++ {
				currField := inputField[i]
				if IsRegister(currField) {
					regs := ParseRegisters(currField)
					switch GetInstRegRoleByIndex(inst.Text, i-1) {
					case ROLE_DST:
						for _, reg := range regs {
							inst.DstRegs = append(inst.DstRegs, reg)
						}
					case ROLE_SRC:
						for _, reg := range regs {
							inst.SrcRegs = append(inst.SrcRegs, reg)
						}
					case ROLE_IVD:
						fmt.Println("Invalid register role")
					}
				}
			}

			// Get implicit use of special registers
			inst.getImplicitRegs()

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

// Print instructions
func (inst *Instruction) Print() {
	// fmt.Println(inst.Raw)
	// fmt.Printf("%d ", inst.Hint.SBBID)
	// for _, id := range inst.Hint.GroupID {
	// 	fmt.Printf("%d ", id)
	// }

	// fmt.Print("\t")
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
