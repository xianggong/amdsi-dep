**
** Disassembly for '__kernel copy1DFastPath'
**

  s_buffer_load_dword  s0, s[4:7], 0x04                     // 00000000: C2000504
  s_buffer_load_dword  s1, s[4:7], 0x18                     // 00000004: C2008518
  s_waitcnt     lgkmcnt(0)                                  // 00000008: BF8C007F
  s_min_u32     s0, s0, 0x0000ffff                          // 0000000C: 8380FF00 0000FFFF
  v_mov_b32     v1, s0                                      // 00000014: 7E020200
  s_buffer_load_dword  s0, s[8:11], 0x00                    // 00000018: C2000900
  v_mul_i32_i24  v1, s12, v1                                // 0000001C: 1202020C
  v_add_i32     v0, vcc, v0, v1                             // 00000020: 4A000300
  v_add_i32     v0, vcc, s1, v0                             // 00000024: 4A000001
  v_lshlrev_b32  v0, 2, v0                                  // 00000028: 34000082
  s_waitcnt     lgkmcnt(0)                                  // 0000002C: BF8C007F
  v_add_i32     v1, vcc, s0, v0                             // 00000030: 4A020000
  s_load_dwordx4  s[4:7], s[2:3], 0x50                      // 00000034: C0820350
  s_waitcnt     lgkmcnt(0)                                  // 00000038: BF8C007F
  tbuffer_load_format_x  v1, v1, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000003C: EBA01000 80010101
  s_buffer_load_dword  s0, s[8:11], 0x04                    // 00000044: C2000904
  s_load_dwordx4  s[4:7], s[2:3], 0x58                      // 00000048: C0820358
  s_waitcnt     lgkmcnt(0)                                  // 0000004C: BF8C007F
  v_add_i32     v0, vcc, s0, v0                             // 00000050: 4A000000
  s_waitcnt     vmcnt(0)                                    // 00000054: BF8C1F70
  tbuffer_store_format_x  v1, v0, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000058: EBA41000 80010100
  s_endpgm                                                  // 00000060: BF810000



**
** Disassembly for '__kernel copy1DCompletePath'
**

  s_buffer_load_dword  s0, s[4:7], 0x04                     // 00000000: C2000504
  s_buffer_load_dword  s1, s[4:7], 0x18                     // 00000004: C2008518
  s_waitcnt     lgkmcnt(0)                                  // 00000008: BF8C007F
  s_min_u32     s0, s0, 0x0000ffff                          // 0000000C: 8380FF00 0000FFFF
  v_mov_b32     v1, s0                                      // 00000014: 7E020200
  v_mul_i32_i24  v1, s12, v1                                // 00000018: 1202020C
  v_add_i32     v0, vcc, v0, v1                             // 0000001C: 4A000300
  v_add_i32     v0, vcc, s1, v0                             // 00000020: 4A000001
  s_buffer_load_dword  s0, s[8:11], 0x00                    // 00000024: C2000900
  s_buffer_load_dword  s1, s[8:11], 0x04                    // 00000028: C2008904
  v_cmp_lt_i32  s[4:5], v0, 0                               // 0000002C: D1020004 00010100
  s_load_dwordx4  s[8:11], s[2:3], 0x48                     // 00000034: C0840348
  s_and_saveexec_b64  s[4:5], s[4:5]                        // 00000038: BE842404
  s_waitcnt     lgkmcnt(0)                                  // 0000003C: BF8C007F
  v_mov_b32     v1, s1                                      // 00000040: 7E020201
  v_mov_b32     v2, 1                                       // 00000044: 7E040281
  buffer_atomic_add  v2, v1, s[8:11], 0 offen               // 00000048: E0C81000 80020201
  s_mov_b64     exec, s[4:5]                                // 00000050: BEFE0404
  v_lshlrev_b32  v0, 2, v0                                  // 00000054: 34000082
  v_add_i32     v1, vcc, s0, v0                             // 00000058: 4A020000
  s_load_dwordx4  s[4:7], s[2:3], 0x50                      // 0000005C: C0820350
  s_waitcnt     lgkmcnt(0)                                  // 00000060: BF8C007F
  tbuffer_load_format_x  v1, v1, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000064: EBA01000 80010101
  v_add_i32     v0, vcc, s1, v0                             // 0000006C: 4A000001
  s_waitcnt     vmcnt(0)                                    // 00000070: BF8C1F70
  tbuffer_store_format_x  v1, v0, s[8:11], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000074: EBA41000 80020100
  s_endpgm                                                  // 0000007C: BF810000



**
** Disassembly for '__kernel copy2Dfloat'
**

  s_buffer_load_dwordx2  s[0:1], s[4:7], 0x04               // 00000000: C2400504
  s_buffer_load_dwordx2  s[4:5], s[4:7], 0x18               // 00000004: C2420518
  s_waitcnt     lgkmcnt(0)                                  // 00000008: BF8C007F
  s_min_u32     s1, s1, 0x0000ffff                          // 0000000C: 8381FF01 0000FFFF
  s_min_u32     s0, s0, 0x0000ffff                          // 00000014: 8380FF00 0000FFFF
  v_mov_b32     v2, s1                                      // 0000001C: 7E040201
  v_mov_b32     v3, s0                                      // 00000020: 7E060200
  v_mul_i32_i24  v2, s13, v2                                // 00000024: 1204040D
  v_mul_i32_i24  v3, s12, v3                                // 00000028: 1206060C
  v_add_i32     v1, vcc, v1, v2                             // 0000002C: 4A020501
  s_buffer_load_dword  s0, s[8:11], 0x00                    // 00000030: C2000900
  v_add_i32     v0, vcc, v0, v3                             // 00000034: 4A000700
  v_add_i32     v1, vcc, s5, v1                             // 00000038: 4A020205
  v_add_i32     v0, vcc, s4, v0                             // 0000003C: 4A000004
  v_lshlrev_b32  v1, 10, v1                                 // 00000040: 3402028A
  v_add_i32     v0, vcc, v0, v1                             // 00000044: 4A000300
  v_lshlrev_b32  v0, 2, v0                                  // 00000048: 34000082
  s_waitcnt     lgkmcnt(0)                                  // 0000004C: BF8C007F
  v_add_i32     v1, vcc, s0, v0                             // 00000050: 4A020000
  s_load_dwordx4  s[4:7], s[2:3], 0x50                      // 00000054: C0820350
  s_waitcnt     lgkmcnt(0)                                  // 00000058: BF8C007F
  tbuffer_load_format_x  v1, v1, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000005C: EBA01000 80010101
  s_buffer_load_dword  s0, s[8:11], 0x04                    // 00000064: C2000904
  s_load_dwordx4  s[4:7], s[2:3], 0x58                      // 00000068: C0820358
  s_waitcnt     lgkmcnt(0)                                  // 0000006C: BF8C007F
  v_add_i32     v0, vcc, s0, v0                             // 00000070: 4A000000
  s_waitcnt     vmcnt(0)                                    // 00000074: BF8C1F70
  tbuffer_store_format_x  v1, v0, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000078: EBA41000 80010100
  s_endpgm                                                  // 00000080: BF810000



**
** Disassembly for '__kernel copy2Dfloat4'
**

  s_buffer_load_dwordx2  s[0:1], s[4:7], 0x04               // 00000000: C2400504
  s_buffer_load_dwordx2  s[4:5], s[4:7], 0x18               // 00000004: C2420518
  s_waitcnt     lgkmcnt(0)                                  // 00000008: BF8C007F
  s_min_u32     s1, s1, 0x0000ffff                          // 0000000C: 8381FF01 0000FFFF
  s_min_u32     s0, s0, 0x0000ffff                          // 00000014: 8380FF00 0000FFFF
  v_mov_b32     v2, s1                                      // 0000001C: 7E040201
  v_mov_b32     v3, s0                                      // 00000020: 7E060200
  v_mul_i32_i24  v2, s13, v2                                // 00000024: 1204040D
  v_mul_i32_i24  v3, s12, v3                                // 00000028: 1206060C
  v_add_i32     v1, vcc, v1, v2                             // 0000002C: 4A020501
  s_buffer_load_dword  s0, s[8:11], 0x00                    // 00000030: C2000900
  v_add_i32     v0, vcc, v0, v3                             // 00000034: 4A000700
  v_add_i32     v1, vcc, s5, v1                             // 00000038: 4A020205
  v_add_i32     v0, vcc, s4, v0                             // 0000003C: 4A000004
  v_lshlrev_b32  v1, 10, v1                                 // 00000040: 3402028A
  v_add_i32     v0, vcc, v0, v1                             // 00000044: 4A000300
  v_lshlrev_b32  v0, 4, v0                                  // 00000048: 34000084
  s_waitcnt     lgkmcnt(0)                                  // 0000004C: BF8C007F
  v_add_i32     v1, vcc, s0, v0                             // 00000050: 4A020000
  s_load_dwordx4  s[4:7], s[2:3], 0x50                      // 00000054: C0820350
  s_waitcnt     lgkmcnt(0)                                  // 00000058: BF8C007F
  tbuffer_load_format_xyzw  v[1:4], v1, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 0000005C: EBF31000 80010101
  s_buffer_load_dword  s0, s[8:11], 0x04                    // 00000064: C2000904
  s_load_dwordx4  s[4:7], s[2:3], 0x58                      // 00000068: C0820358
  s_waitcnt     lgkmcnt(0)                                  // 0000006C: BF8C007F
  v_add_i32     v0, vcc, s0, v0                             // 00000070: 4A000000
  s_waitcnt     vmcnt(0)                                    // 00000074: BF8C1F70
  tbuffer_store_format_xyzw  v[1:4], v0, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 00000078: EBF71000 80010100
  s_endpgm                                                  // 00000080: BF810000



**
** Disassembly for '__kernel copy1Dfloat4'
**

  s_buffer_load_dword  s0, s[4:7], 0x04                     // 00000000: C2000504
  s_buffer_load_dword  s1, s[4:7], 0x18                     // 00000004: C2008518
  s_waitcnt     lgkmcnt(0)                                  // 00000008: BF8C007F
  s_min_u32     s0, s0, 0x0000ffff                          // 0000000C: 8380FF00 0000FFFF
  v_mov_b32     v1, s0                                      // 00000014: 7E020200
  s_buffer_load_dword  s0, s[8:11], 0x00                    // 00000018: C2000900
  v_mul_i32_i24  v1, s12, v1                                // 0000001C: 1202020C
  v_add_i32     v0, vcc, v0, v1                             // 00000020: 4A000300
  v_add_i32     v0, vcc, s1, v0                             // 00000024: 4A000001
  v_lshlrev_b32  v0, 4, v0                                  // 00000028: 34000084
  s_waitcnt     lgkmcnt(0)                                  // 0000002C: BF8C007F
  v_add_i32     v1, vcc, s0, v0                             // 00000030: 4A020000
  s_load_dwordx4  s[4:7], s[2:3], 0x50                      // 00000034: C0820350
  s_waitcnt     lgkmcnt(0)                                  // 00000038: BF8C007F
  tbuffer_load_format_xyzw  v[1:4], v1, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 0000003C: EBF31000 80010101
  s_buffer_load_dword  s0, s[8:11], 0x04                    // 00000044: C2000904
  s_load_dwordx4  s[4:7], s[2:3], 0x58                      // 00000048: C0820358
  s_waitcnt     lgkmcnt(0)                                  // 0000004C: BF8C007F
  v_add_i32     v0, vcc, s0, v0                             // 00000050: 4A000000
  s_waitcnt     vmcnt(0)                                    // 00000054: BF8C1F70
  tbuffer_store_format_xyzw  v[1:4], v0, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 00000058: EBF71000 80010100
  s_endpgm                                                  // 00000060: BF810000



**
** Disassembly for '__kernel NoCoal'
**

  s_buffer_load_dword  s0, s[4:7], 0x04                     // 00000000: C2000504
  s_buffer_load_dword  s1, s[4:7], 0x18                     // 00000004: C2008518
  s_waitcnt     lgkmcnt(0)                                  // 00000008: BF8C007F
  s_min_u32     s0, s0, 0x0000ffff                          // 0000000C: 8380FF00 0000FFFF
  v_mov_b32     v1, s0                                      // 00000014: 7E020200
  v_mul_i32_i24  v1, s12, v1                                // 00000018: 1202020C
  s_buffer_load_dword  s0, s[8:11], 0x00                    // 0000001C: C2000900
  v_and_b32     v2, 15, v0                                  // 00000020: 3604008F
  v_add_i32     v0, vcc, v0, v1                             // 00000024: 4A000300
  v_cmp_eq_i32  s[4:5], v2, 0                               // 00000028: D1040004 00010102
  v_add_i32     v0, vcc, s1, v0                             // 00000030: 4A000001
  v_cndmask_b32  v1, -1, 15, s[4:5]                         // 00000034: D2000001 00111EC1
  v_add_i32     v0, vcc, v0, v1                             // 0000003C: 4A000300
  v_lshlrev_b32  v0, 2, v0                                  // 00000040: 34000082
  s_waitcnt     lgkmcnt(0)                                  // 00000044: BF8C007F
  v_add_i32     v1, vcc, s0, v0                             // 00000048: 4A020000
  s_load_dwordx4  s[4:7], s[2:3], 0x50                      // 0000004C: C0820350
  s_waitcnt     lgkmcnt(0)                                  // 00000050: BF8C007F
  tbuffer_load_format_x  v1, v1, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000054: EBA01000 80010101
  s_buffer_load_dword  s0, s[8:11], 0x04                    // 0000005C: C2000904
  s_load_dwordx4  s[4:7], s[2:3], 0x58                      // 00000060: C0820358
  s_waitcnt     lgkmcnt(0)                                  // 00000064: BF8C007F
  v_add_i32     v0, vcc, s0, v0                             // 00000068: 4A000000
  s_waitcnt     vmcnt(0)                                    // 0000006C: BF8C1F70
  tbuffer_store_format_x  v1, v0, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000070: EBA41000 80010100
  s_endpgm                                                  // 00000078: BF810000



**
** Disassembly for '__kernel Split'
**

  s_buffer_load_dword  s0, s[4:7], 0x04                     // 00000000: C2000504
  s_buffer_load_dword  s1, s[4:7], 0x18                     // 00000004: C2008518
  s_buffer_load_dword  s4, s[8:11], 0x00                    // 00000008: C2020900
  s_buffer_load_dword  s5, s[8:11], 0x04                    // 0000000C: C2028904
  s_waitcnt     lgkmcnt(0)                                  // 00000010: BF8C007F
  s_min_u32     s0, s0, 0x0000ffff                          // 00000014: 8380FF00 0000FFFF
  v_mov_b32     v1, s0                                      // 0000001C: 7E020200
  v_mul_i32_i24  v1, s12, v1                                // 00000020: 1202020C
  v_add_i32     v1, vcc, v0, v1                             // 00000024: 4A020300
  v_add_i32     v1, vcc, s1, v1                             // 00000028: 4A020201
  v_and_b32     v2, 1, v1                                   // 0000002C: 36040281
  v_cmp_eq_i32  s[0:1], v2, 0                               // 00000030: D1040000 00010102
  s_and_saveexec_b64  s[0:1], s[0:1]                        // 00000038: BE802400
  v_sub_i32     v0, vcc, 62, v0                             // 0000003C: 4C0000BE
  s_andn2_b64   exec, s[0:1], exec                          // 00000040: 8AFE7E00
  v_mov_b32     v0, v1                                      // 00000044: 7E000301
  s_mov_b64     exec, s[0:1]                                // 00000048: BEFE0400
  v_lshlrev_b32  v0, 2, v0                                  // 0000004C: 34000082
  v_add_i32     v1, vcc, s4, v0                             // 00000050: 4A020004
  s_load_dwordx4  s[8:11], s[2:3], 0x50                     // 00000054: C0840350
  s_waitcnt     lgkmcnt(0)                                  // 00000058: BF8C007F
  tbuffer_load_format_x  v1, v1, s[8:11], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000005C: EBA01000 80020101
  s_load_dwordx4  s[0:3], s[2:3], 0x58                      // 00000064: C0800358
  v_add_i32     v0, vcc, s5, v0                             // 00000068: 4A000005
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 0000006C: BF8C0070
  tbuffer_store_format_x  v1, v0, s[0:3], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000070: EBA41000 80000100
  s_endpgm                                                  // 00000078: BF810000



