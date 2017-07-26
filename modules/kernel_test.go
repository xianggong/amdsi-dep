package amdsidep

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestNewKernel(t *testing.T) {
	assert := assert.New(t)

  k := NewKernel("Reduction")
  assert.NotNil(t, k)
}

func TestKernelAddInstruction(t *testing.T) {
	assert := assert.New(t)

  k := NewKernel("Reduction")
  assert.NotNil(t, k)

  testAsm := "label_0000:"
  k.AddInstruction(testAsm)
  assert.NotEmpty(k.BasicBlocks)
  assert.Equal("label_0000:", k.BasicBlocks[0].Label)

  testAsm = " s_mov_b32     m0, 0x00008000                              // 00000000: BEFC03FF 00008000"
  k.AddInstruction(testAsm)

  testAsm = " s_buffer_load_dword  s0, s[4:7], 0x04                     // 00000008: C2000504"
  k.AddInstruction(testAsm)

  testAsm = " s_buffer_load_dword  s1, s[4:7], 0x18                     // 0000000C: C2008518"
  k.AddInstruction(testAsm)

  testAsm = " s_buffer_load_dword  s4, s[4:7], 0x1c                     // 00000010: C202051C"
  k.AddInstruction(testAsm)

  testAsm = " s_buffer_load_dword  s5, s[8:11], 0x00                    // 00000014: C2028900"
  k.AddInstruction(testAsm)

  testAsm = " s_buffer_load_dword  s6, s[8:11], 0x04                    // 00000018: C2030904"
  k.AddInstruction(testAsm)

  testAsm = " s_buffer_load_dword  s7, s[8:11], 0x08                    // 0000001C: C2038908"
  k.AddInstruction(testAsm)

  testAsm = " s_load_dwordx4  s[8:11], s[2:3], 0x50                     // 00000020: C0840350"
  k.AddInstruction(testAsm)

  testAsm = " s_waitcnt     lgkmcnt(0)                                  // 00000024: BF8C007F"
  k.AddInstruction(testAsm)

  testAsm = " s_min_u32     s13, s0, 0x0000ffff                         // 00000028: 838DFF00 0000FFFF"
  k.AddInstruction(testAsm)

  testAsm = " v_mov_b32     v1, s13                                     // 00000030: 7E02020D"
  k.AddInstruction(testAsm)

  testAsm = " v_mul_i32_i24  v1, s12, v1                                // 00000034: 1202020C"
  k.AddInstruction(testAsm)

  testAsm = " v_add_i32     v1, vcc, v0, v1                             // 00000038: 4A020300"
  k.AddInstruction(testAsm)

  testAsm = " v_add_i32     v1, vcc, s1, v1                             // 0000003C: 4A020201"
  k.AddInstruction(testAsm)

  testAsm = " s_add_i32     s1, s12, s4                                 // 00000040: 8101040C"
  k.AddInstruction(testAsm)

  testAsm = " v_lshlrev_b32  v2, 4, v0                                  // 00000044: 34040084"
  k.AddInstruction(testAsm)

  testAsm = " v_add_i32     v2, vcc, s7, v2                             // 00000048: 4A040407"
  k.AddInstruction(testAsm)

  testAsm = " v_lshlrev_b32  v1, 4, v1                                  // 0000004C: 34020284"
  k.AddInstruction(testAsm)

  testAsm = " v_add_i32     v1, vcc, s5, v1                             // 00000050: 4A020205"
  k.AddInstruction(testAsm)

  testAsm = " v_add_i32     v3, vcc, 4, v2                              // 00000054: 4A060484"
  k.AddInstruction(testAsm)

  testAsm = " v_add_i32     v4, vcc, 8, v2                              // 00000058: 4A080488"
  k.AddInstruction(testAsm)

  testAsm = " v_add_i32     v5, vcc, 12, v2                             // 0000005C: 4A0A048C"
  k.AddInstruction(testAsm)

  testAsm = " tbuffer_load_format_xyzw  v[6:9], v1, s[8:11], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 00000060: EBF31000 80020601"
  k.AddInstruction(testAsm)

  testAsm = " s_waitcnt     vmcnt(0)                                    // 00000068: BF8C1F70"
  k.AddInstruction(testAsm)

  testAsm = " ds_write_b32  v2, v6                                      // 0000006C: D8340000 00000602"
  k.AddInstruction(testAsm)

  testAsm = " ds_write_b32  v3, v7                                      // 00000074: D8340000 00000703"
  k.AddInstruction(testAsm)

  testAsm = " ds_write_b32  v4, v8                                      // 0000007C: D8340000 00000804"
  k.AddInstruction(testAsm)

  testAsm = " ds_write_b32  v5, v9                                      // 00000084: D8340000 00000905"
  k.AddInstruction(testAsm)

  testAsm = " s_waitcnt     lgkmcnt(0)                                  // 0000008C: BF8C007F"
  k.AddInstruction(testAsm)

  testAsm = " s_barrier                                                 // 00000090: BF8A0000"
  k.AddInstruction(testAsm)

  testAsm = " s_lshr_b32    s0, s0, 1                                   // 00000094: 90008100"
  k.AddInstruction(testAsm)

  testAsm = " s_cmp_eq_i32  s0, 0                                       // 00000098: BF008000"
  k.AddInstruction(testAsm)

  testAsm = " s_cbranch_scc1  label_0058                                // 0000009C: BF850030"
  k.AddInstruction(testAsm)
}
