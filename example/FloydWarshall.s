label_0000:
  s_buffer_load_dword  s0, s[4:7], 0x1c                     // 00000000: C200051C
  s_buffer_load_dword  s1, s[8:11], 0x08                    // 00000004: C2008908
  s_buffer_load_dword  s4, s[8:11], 0x0c                    // 00000008: C202090C
  s_buffer_load_dword  s5, s[8:11], 0x00                    // 0000000C: C2028900
  s_waitcnt     lgkmcnt(0)                                  // 00000010: BF8C007F
  s_add_i32     s0, s12, s0                                 // 00000014: 8100000C
  s_mul_i32     s6, s4, s1                                  // 00000018: 93060104
  v_add_i32     v1, vcc, s6, v0                             // 0000001C: 4A020006
  s_mul_i32     s0, s0, s1                                  // 00000020: 93000100
  v_lshlrev_b32  v1, 2, v1                                  // 00000024: 34020282
  v_add_i32     v0, vcc, s0, v0                             // 00000028: 4A000000
  v_add_i32     v1, vcc, s5, v1                             // 0000002C: 4A020205
  s_load_dwordx4  s[12:15], s[2:3], 0x58                    // 00000030: C0860358
  v_lshlrev_b32  v0, 2, v0                                  // 00000034: 34000082
  s_add_i32     s0, s4, s0                                  // 00000038: 81000004
  v_add_i32     v2, vcc, s5, v0                             // 0000003C: 4A040005
  s_lshl_b32    s0, s0, 2                                   // 00000040: 8F008200
  s_add_i32     s0, s5, s0                                  // 00000044: 81000005
  v_mov_b32     v3, s0                                      // 00000048: 7E060200
  s_waitcnt     lgkmcnt(0)                                  // 0000004C: BF8C007F
  tbuffer_load_format_x  v4, v1, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000050: EBA01000 80030401
  tbuffer_load_format_x  v3, v3, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000058: EBA01000 80030303
  tbuffer_load_format_x  v5, v2, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000060: EBA01000 80030502
  s_waitcnt     vmcnt(1)                                    // 00000068: BF8C1F71
  v_add_i32     v6, vcc, v4, v3                             // 0000006C: 4A0C0704
  s_buffer_load_dword  s1, s[8:11], 0x04                    // 00000070: C2008904
  s_waitcnt     vmcnt(0)                                    // 00000074: BF8C1F70
  v_cmp_gt_u32  s[6:7], v5, v6                              // 00000078: D1880006 00020D05
  s_and_saveexec_b64  s[6:7], s[6:7]                        // 00000080: BE862406
  tbuffer_store_format_x  v6, v2, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000084: EBA41000 80030602
  s_cbranch_execz  label_0032                               // 0000008C: BF88000E
  s_load_dwordx4  s[8:11], s[2:3], 0x50                     // 00000090: C0840350
  s_waitcnt     lgkmcnt(0)                                  // 00000094: BF8C007F
  v_add_i32     v0, vcc, s1, v0                             // 00000098: 4A000001
  v_mov_b32     v3, s4                                      // 0000009C: 7E060204
  tbuffer_store_format_x  v3, v0, s[8:11], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000000A0: EBA41000 80020300
  v_mov_b32     v0, s0                                      // 000000A8: 7E000200
  tbuffer_load_format_x  v4, v1, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000000AC: EBA01000 80030401
  s_waitcnt     expcnt(0)                                   // 000000B4: BF8C1F0F
  tbuffer_load_format_x  v3, v0, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000000B8: EBA01000 80030300
  tbuffer_load_format_x  v5, v2, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000000C0: EBA01000 80030502
label_0032:
  s_mov_b64     exec, s[6:7]                                // 000000C8: BEFE0406
  s_waitcnt     vmcnt(1)                                    // 000000CC: BF8C1F71
  v_add_i32     v1, vcc, v4, v3                             // 000000D0: 4A020704
  s_waitcnt     vmcnt(0)                                    // 000000D4: BF8C1F70
  v_min_u32     v0, v5, v1                                  // 000000D8: 26000305
  tbuffer_store_format_x  v0, v2, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000000DC: EBA41000 80030002
  s_endpgm                                                  // 000000E4: BF810000