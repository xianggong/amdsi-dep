label_0000:
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



