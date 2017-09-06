package amdsidep

import (
	"fmt"
	"strconv"

	"github.com/golang/glog"
)

// BasicBlock contains information of a basic block
type BasicBlock struct {
	Label              string
	InstructionGroupID int
	Instructions       []*Instruction

	BoundaryIdx  []int
	WaitInstsIdx map[int][]int
	LGKMemIdx    []int
	VectorMemIdx []int
}

// NewBasicBlock returns a basic block
func NewBasicBlock(label string) *BasicBlock {
	bb := new(BasicBlock)
	bb.InstructionGroupID = 0
	bb.Label = label
	bb.BoundaryIdx = append(bb.BoundaryIdx, 0)
	bb.WaitInstsIdx = map[int][]int{}
	return bb
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

	if IsScalarMemoryInstruction(inst.Text) {
		bb.LGKMemIdx = append(bb.LGKMemIdx, len(bb.Instructions)-1)
	} else if IsLDSMemoryInstruction(inst.Text) {
		bb.LGKMemIdx = append(bb.LGKMemIdx, len(bb.Instructions)-1)
	} else if IsVectorMemoryInstruction(inst.Text) {
		bb.VectorMemIdx = append(bb.VectorMemIdx, len(bb.Instructions)-1)
	}

	glog.V(3).Infoln(len(bb.Instructions)-1, inst.Raw)
	glog.V(3).Infoln("LGKM inst", bb.LGKMemIdx)
	glog.V(3).Infoln("VMem inst", bb.VectorMemIdx)

	// Record index of boundary instructions
	if inst.Text == "s_waitcnt" {
		waitInstIdx := len(bb.Instructions) - 1

		lgkmcnt := parseNamedGroup(`lgkmcnt\((?P<count>[0-9]+)\)`, inst.Raw)
		vmcnt := parseNamedGroup(`vmcnt\((?P<count>[0-9]+)\)`, inst.Raw)

		if len(lgkmcnt) != 0 {
			count, _ := strconv.Atoi(lgkmcnt["count"])
			bb.WaitInstsIdx[waitInstIdx] = append(bb.WaitInstsIdx[waitInstIdx], bb.LGKMemIdx[0:len(bb.LGKMemIdx)-count]...)
			bb.LGKMemIdx = bb.LGKMemIdx[len(bb.LGKMemIdx)-count : len(bb.LGKMemIdx)]
		}

		if len(vmcnt) != 0 {
			count, _ := strconv.Atoi(vmcnt["count"])
			bb.WaitInstsIdx[waitInstIdx] = append(bb.WaitInstsIdx[waitInstIdx], bb.VectorMemIdx[0:len(bb.VectorMemIdx)-count]...)
			bb.VectorMemIdx = bb.VectorMemIdx[len(bb.VectorMemIdx)-count : len(bb.VectorMemIdx)]
		}

		bb.BoundaryIdx = append(bb.BoundaryIdx, len(bb.Instructions)-1)
	}

	glog.V(3).Infoln("LGKM inst", bb.LGKMemIdx)
	glog.V(3).Infoln("VMem inst", bb.VectorMemIdx)
}

// Slide generate hint in the window
func (bb *BasicBlock) GenHintInWindow(startIdx, boundaryIdx, endIdx int) {
	glog.V(3).Infoln(startIdx, boundaryIdx, endIdx)

	memInstGroupIdx := []int{}
	lstInstGroupIdx := []int{}
	idpInstGroupIdx := []int{}
	tryInstGroupIdx := []int{}
	depInstGroupIdx := []int{}

	memInstGroup := NewInstructionGroup(bb)
	lstInstGroup := NewInstructionGroup(bb)
	idpInstGroup := NewInstructionGroup(bb)
	tryInstGroup := NewInstructionGroup(bb)
	depInstGroup := NewInstructionGroup(bb)

	glog.V(3).Infoln(boundaryIdx, " is waiting for ", bb.WaitInstsIdx[boundaryIdx])

	// FIXME: corner case when waiting for memory instruction from previous basic block
	if len(bb.WaitInstsIdx[boundaryIdx]) == 0 {
		return
	}

	memInstGroupIdx = bb.WaitInstsIdx[boundaryIdx]
	for _, idx := range bb.WaitInstsIdx[boundaryIdx] {
		inst := bb.Instructions[idx]
		memInstGroup.add(inst)
	}

	if len(memInstGroupIdx) > 1 {
		lstInstGroupIdx = append(lstInstGroupIdx, bb.WaitInstsIdx[boundaryIdx][len(bb.WaitInstsIdx[boundaryIdx])-1])
		lstInstGroup.add(bb.Instructions[lstInstGroupIdx[len(lstInstGroupIdx)-1]])
	}

	for _, idx := range memInstGroupIdx {
		glog.V(3).Infoln("Mem insts", idx, bb.Instructions[idx].Raw)
	}
	for _, idx := range lstInstGroupIdx {
		glog.V(3).Infoln("Lst insts", idx, bb.Instructions[idx].Raw)
	}

	// Add instructions that is independent of memory instruction group
	for i := boundaryIdx; i < endIdx; i++ {
		inst := bb.Instructions[i]

		if inst.Text == "s_endpgm" {
			depInstGroupIdx = append(depInstGroupIdx, i)
			glog.V(3).Infoln("Dep Added", i, inst.Raw)
			depInstGroup.add(inst)
			continue
		}

		if depInstGroup.IsRAW(inst) {
			depInstGroupIdx = append(depInstGroupIdx, i)
			glog.V(3).Infoln("Dep Added", i, inst.Raw)
			depInstGroup.add(inst)
			continue
		}

		if !memInstGroup.IsRAW(inst) {
			if !tryInstGroup.IsRAW(inst) {
				idpInstGroupIdx = append(idpInstGroupIdx, i)
				glog.V(3).Infoln("Idp Added", i, inst.Raw)
				idpInstGroup.add(inst)
				continue
			} else {
				tryInstGroupIdx = append(tryInstGroupIdx, i)
				glog.V(3).Infoln("Try Added", i, inst.Raw)
				tryInstGroup.add(inst)
				continue
			}
		} else {
			if len(lstInstGroup.Insts) != 0 && !lstInstGroup.IsRAW(inst) {
				tryInstGroupIdx = append(tryInstGroupIdx, i)
				glog.V(3).Infoln("Try Added", i, inst.Raw)
				tryInstGroup.add(inst)
				continue
			} else {
				depInstGroupIdx = append(depInstGroupIdx, i)
				glog.V(3).Infoln("Dep Added", i, inst.Raw)
				depInstGroup.add(inst)
				continue
			}
		}

		fmt.Println("Invalid dependency analysis on ", inst.Raw)
	}

	glog.V(3).Infoln("Mem", memInstGroupIdx)
	glog.V(3).Infoln("Rlx", lstInstGroupIdx)
	glog.V(3).Infoln("Idp", idpInstGroupIdx)
	glog.V(3).Infoln("Try", tryInstGroupIdx)
	glog.V(3).Infoln("Dep", depInstGroupIdx)

	// Hint links idp instructions
	if len(idpInstGroupIdx) != 0 {
		for i := 0; i < len(idpInstGroupIdx)-1; i++ {
			idxCurr := idpInstGroupIdx[i]
			idxNext := idpInstGroupIdx[i+1]
			instCurr := bb.Instructions[idxCurr]
			instNext := bb.Instructions[idxNext]
			instCurr.Hint.Offset = instNext.Offset - instCurr.Offset
		}
		tailIdpInst := bb.Instructions[idpInstGroupIdx[len(idpInstGroupIdx)-1]]
		tailIdpInst.Hint.Offset = -tailIdpInst.Offset
	}

	// Hint links try instructions
	if len(idpInstGroupIdx) > 1 && len(tryInstGroupIdx) != 0 {
		for i := 0; i < len(tryInstGroupIdx)-1; i++ {
			idxCurr := tryInstGroupIdx[i]
			idxNext := tryInstGroupIdx[i+1]
			instCurr := bb.Instructions[idxCurr]
			instNext := bb.Instructions[idxNext]
			instCurr.Hint.Offset = instNext.Offset - instCurr.Offset
		}
		tailTryInst := bb.Instructions[tryInstGroupIdx[len(tryInstGroupIdx)-1]]
		tailTryInst.Hint.Offset = -tailTryInst.Offset
	}

	if len(idpInstGroupIdx) > 1 && len(tryInstGroupIdx) != 0 {
		// Last independant instruction link to the 1st try independant instruction
		tailIdpInst := bb.Instructions[idpInstGroupIdx[len(idpInstGroupIdx)-1]]
		headTryInst := bb.Instructions[tryInstGroupIdx[0]]
		tailIdpInst.Hint.Offset = headTryInst.Offset - tailIdpInst.Offset
		glog.V(3).Infoln(idpInstGroupIdx)
		glog.V(3).Infoln("From", tailIdpInst.Raw)
		glog.V(3).Infoln("  to", headTryInst.Raw)
	} else if len(idpInstGroupIdx) > 1 && len(tryInstGroupIdx) == 0 {
		// No try independant instructions, terminate
		tailIdpInst := bb.Instructions[idpInstGroupIdx[len(idpInstGroupIdx)-1]]
		tailIdpInst.Hint.Offset = -tailIdpInst.Offset
		glog.V(3).Infoln(idpInstGroupIdx)
		glog.V(3).Infoln("Set ", tailIdpInst.Raw)
	}

	if glog.V(3) {
		for i := boundaryIdx; i < endIdx; i++ {
			inst := bb.Instructions[i]
			inst.Print()
		}
	}
}

func (bb *BasicBlock) GenHint() {
	bb.BoundaryIdx = append(bb.BoundaryIdx, len(bb.Instructions))

	if len(bb.BoundaryIdx) != 0 {
		for i := 1; i < len(bb.BoundaryIdx)-1; i++ {
			glog.V(3).Infoln("--------------------------------------------------------")
			bb.GenHintInWindow(bb.BoundaryIdx[i-1], bb.BoundaryIdx[i], bb.BoundaryIdx[i+1])
			glog.V(3).Infoln("--------------------------------------------------------")
		}
	}
}

func (bb *BasicBlock) Print() {
	glog.V(3).Infoln(bb.Label)
}
