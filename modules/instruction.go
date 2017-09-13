package amdsidep

import (
	"strconv"
	"strings"

	"github.com/golang/glog"
)

const (
	dep_non = iota
	dep_idp = iota
	dep_try = iota
	dep_dep = iota
	dep_ivd = iota
)

var depStatusMap = map[int]string{
	dep_non: "non",
	dep_idp: "idp",
	dep_try: "try",
	dep_dep: "dep",
	dep_ivd: "ivd",
}

const (
	role_invalid_inst = iota
	role_regular_inst = iota
	role_long_latency = iota
	role_preexec_cand = iota
)

var roleMap = map[int]string{
	role_regular_inst: "_",
	role_long_latency: "M",
	role_preexec_cand: "P",
}

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
	Offset    int64
	DepStatus int
	Role      int
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
						glog.V(2).Infoln("Invalid register role")
					default:
						glog.V(2).Infoln("Invalid register role")
					}
				}
			}

			// Get implicit use of special registers
			inst.getImplicitRegs()

			// Get the offset and hex
			regexComment := `\/{2}\s+(?P<offset>[A-F0-9]{8}):\s+(?P<hex>([A-F0-9]{8})\s*([A-F0-9]{8})?)`
			comment := parseNamedGroup(regexComment, inst.Raw)
			offset, _ := strconv.ParseInt(comment["offset"], 16, 32)
			inst.Offset = offset
			inst.Hex = comment["hex"]

			// Set hint initial state
			inst.Hint.DepStatus = dep_non
			inst.Hint.Offset = 0
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
	glog.V(2).Infof("%s %d %s\n",
		depStatusMap[inst.Hint.DepStatus], inst.Hint.Offset, inst.Raw)
	for _, reg := range inst.DstRegs {
		glog.V(2).Infoln("\t\tDst ", reg.Dump())
	}
	for _, reg := range inst.SrcRegs {
		glog.V(2).Infoln("\t\tSrc ", reg.Dump())
	}
}
