package amdsidep

import (
	"regexp"
	"strconv"
)

const (
	typeVectorRegister  = iota
	typeScalarRegister  = iota
	typeSpecialRegister = iota
)

const (
	M0Register    = iota
	VccRegister   = iota
	VcczRegister  = iota
	ExecRegister  = iota
	ExeczRegister = iota
	SccRegister   = iota
)

const (
	maxNumVregs = 255
	maxNumSregs = 103
)

const (
	noh = iota
	raw = iota
	war = iota
	waw = iota
)

var regHarzardMap = map[int]string{
	noh: "noh",
	raw: "raw",
	war: "war",
	waw: "waw",
}

var regTypeStringMap = map[int]string{
	typeVectorRegister: "v",
	typeScalarRegister: "s",
}

var regIndexLimitMap = map[int]int{
	typeVectorRegister: maxNumVregs,
	typeScalarRegister: maxNumSregs,
}

// Register represent a register
type Register struct {
	Type   int
	Index  int
	Hazard int
}

var regexRegisters = `v(?P<vreg>\d+)|s(?P<sreg>\d+)|v\[(?P<vregs_start>\d+):(?P<vregs_end>\d+)\]|s\[(?P<sregs_start>\d+):(?P<sregs_end>\d+)\]`

// NewRegister creates a register
func NewRegister(index int, regType int) *Register {
	reg := new(Register)

	// Set type and Harzard
	reg.Type = regType
	reg.Hazard = noh

	// Sanity check then set index
	if index <= regIndexLimitMap[regType] {
		reg.Index = index
	} else {
		return nil
	}

	// Return
	return reg
}

// IsRegister return true if the string represents register
func IsRegister(str string) bool {
	re := regexp.MustCompile(regexRegisters)
	result := re.MatchString(str)
	return result
}

// ParseRegisters parse the asm string and returns a list of registes
func ParseRegisters(asm string) []*Register {
	regs := []*Register{}

	registerMap := parseNamedGroup(regexRegisters, asm)
	for key, val := range registerMap {
		if val != "" {
			switch key {
			case "vreg":
				idx, _ := strconv.Atoi(val)
				reg := NewRegister(idx, typeVectorRegister)
				regs = append(regs, reg)
			case "sreg":
				idx, _ := strconv.Atoi(val)
				reg := NewRegister(idx, typeScalarRegister)
				regs = append(regs, reg)
			case "vregs_start":
				startIdx, _ := strconv.Atoi(val)
				endIdx, _ := strconv.Atoi(registerMap["vregs_end"])
				for idx := startIdx; idx <= endIdx; idx++ {
					reg := NewRegister(idx, typeVectorRegister)
					regs = append(regs, reg)
				}
			case "sregs_start":
				startIdx, _ := strconv.Atoi(val)
				endIdx, _ := strconv.Atoi(registerMap["sregs_end"])
				for idx := startIdx; idx <= endIdx; idx++ {
					reg := NewRegister(idx, typeScalarRegister)
					regs = append(regs, reg)
				}
			case "vregs_end", "sregs_end":
			default:
				panic("Invalid key")
			}
		}
	}

	return regs
}
