package amdsidep

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestNewInstructionGroup(t *testing.T) {
	assert := assert.New(t)

	instGroup := NewInstructionGroup()

	testAsm := "s_mov_b32     m0, 0x00008000           // 00000000: BEFC03FF 00008000"
	inst := NewInstruction(testAsm)
	assert.Equal("s_mov_b32", inst.Text)
	instGroup.CheckThenAdd(inst)

	testAsm = "s_buffer_load_dword  s0, s[4:7], 0x04  // 00000008: C2000504         "
	inst = NewInstruction(testAsm)
	instGroup.CheckThenAdd(inst)

	testAsm = "s_buffer_load_dword  s1, s[4:7], 0x18  // 0000000C: C2008518         "
	inst = NewInstruction(testAsm)
	instGroup.CheckThenAdd(inst)

	testAsm = "s_buffer_load_dword  s4, s[4:7], 0x1c  // 00000010: C202051C         "
	inst = NewInstruction(testAsm)
	instGroup.CheckThenAdd(inst)

	testAsm = "s_buffer_load_dword  s5, s[8:11], 0x00 // 00000014: C2028900         "
	inst = NewInstruction(testAsm)
	instGroup.CheckThenAdd(inst)

	testAsm = "s_buffer_load_dword  s6, s[8:11], 0x04 // 00000018: C2030904         "
	inst = NewInstruction(testAsm)
	instGroup.CheckThenAdd(inst)

	testAsm = "s_buffer_load_dword  s7, s[8:11], 0x08 // 0000001C: C2038908         "
	inst = NewInstruction(testAsm)
	instGroup.CheckThenAdd(inst)

	testAsm = "s_load_dwordx4  s[8:11], s[2:3], 0x50  // 00000020: C0840350         "
	inst = NewInstruction(testAsm)
	instGroup.CheckThenAdd(inst)

	testAsm = "s_waitcnt     lgkmcnt(0)               // 00000024: BF8C007F         "
	inst = NewInstruction(testAsm)
	instGroup.CheckThenAdd(inst)

	testAsm = "s_min_u32     s13, s0, 0x0000ffff      // 00000028: 838DFF00 0000FFFF"
	inst = NewInstruction(testAsm)
	instGroup.CheckThenAdd(inst)

	testAsm = "v_mov_b32     v1, s13                  // 00000030: 7E02020D         "
	inst = NewInstruction(testAsm)
	instGroup.CheckThenAdd(inst)

	testAsm = "v_mul_i32_i24  v1, s12, v1             // 00000034: 1202020C         "
	inst = NewInstruction(testAsm)
	instGroup.CheckThenAdd(inst)

	testAsm = "v_add_i32     v1, vcc, v0, v1          // 00000038: 4A020300         "
	inst = NewInstruction(testAsm)
	instGroup.CheckThenAdd(inst)

	testAsm = "v_add_i32     v1, vcc, s1, v1          // 0000003C: 4A020201         "
	inst = NewInstruction(testAsm)
	instGroup.CheckThenAdd(inst)

	testAsm = "s_add_i32     s1, s12, s4              // 00000040: 8101040C         "
	inst = NewInstruction(testAsm)
	instGroup.CheckThenAdd(inst)

	testAsm = "v_lshlrev_b32  v2, 4, v0               // 00000044: 34040084         "
	inst = NewInstruction(testAsm)
	instGroup.CheckThenAdd(inst)

	testAsm = "v_add_i32     v2, vcc, s7, v2          // 00000048: 4A040407         "
	inst = NewInstruction(testAsm)
	instGroup.CheckThenAdd(inst)

	testAsm = "v_lshlrev_b32  v1, 4, v1               // 0000004C: 34020284         "
	inst = NewInstruction(testAsm)
	instGroup.CheckThenAdd(inst)

	testAsm = "v_add_i32     v1, vcc, s5, v1          // 00000050: 4A020205         "
	inst = NewInstruction(testAsm)
	instGroup.CheckThenAdd(inst)

	testAsm = "v_add_i32     v3, vcc, 4, v2           // 00000054: 4A060484         "
	inst = NewInstruction(testAsm)
	instGroup.CheckThenAdd(inst)

	testAsm = "v_add_i32     v4, vcc, 8, v2           // 00000058: 4A080488         "
	inst = NewInstruction(testAsm)
	instGroup.CheckThenAdd(inst)

	testAsm = "v_add_i32     v5, vcc, 12, v2          // 0000005C: 4A0A048C         "
	inst = NewInstruction(testAsm)
	instGroup.CheckThenAdd(inst)
}
