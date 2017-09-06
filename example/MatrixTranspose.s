label_0000:
  s_mov_b32     m0, 0x00008000                              // 00000000: BEFC03FF 00008000
  s_buffer_load_dwordx2  s[0:1], s[4:7], 0x04               // 00000008: C2400504
  s_buffer_load_dwordx2  s[14:15], s[4:7], 0x18             // 0000000C: C2470518
  s_waitcnt     lgkmcnt(0)                                  // 00000010: BF8C007F
  s_min_u32     s1, s1, 0x0000ffff                          // 00000014: 8381FF01 0000FFFF
  s_buffer_load_dword  s16, s[8:11], 0x0c                   // 0000001C: C208090C
  s_min_u32     s0, s0, 0x0000ffff                          // 00000020: 8380FF00 0000FFFF
  v_mov_b32     v2, s1                                      // 00000028: 7E040201
  v_mov_b32     v3, s0                                      // 0000002C: 7E060200
  v_mul_i32_i24  v2, s13, v2                                // 00000030: 1204040D
  v_mul_i32_i24  v3, s12, v3                                // 00000034: 1206060C
  v_add_i32     v2, vcc, v1, v2                             // 00000038: 4A040501
  s_buffer_load_dword  s0, s[8:11], 0x04                    // 0000003C: C2000904
  v_add_i32     v3, vcc, v0, v3                             // 00000040: 4A060700
  v_add_i32     v2, vcc, s15, v2                            // 00000044: 4A04040F
  v_add_i32     v3, vcc, s14, v3                            // 00000048: 4A06060E
  s_waitcnt     lgkmcnt(0)                                  // 0000004C: BF8C007F
  v_mul_lo_i32  v2, v2, s16                                 // 00000050: D2D60002 02002102
  v_add_i32     v2, vcc, v3, v2                             // 00000058: 4A040503
  v_lshlrev_b32  v2, 2, v2                                  // 0000005C: 34040482
  v_add_i32     v2, vcc, s0, v2                             // 00000060: 4A040400
  s_load_dwordx4  s[16:19], s[2:3], 0x50                    // 00000064: C0880350
  s_waitcnt     lgkmcnt(0)                                  // 00000068: BF8C007F
  tbuffer_load_format_x  v2, v2, s[16:19], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000006C: EBA01000 80040202
  s_buffer_load_dword  s0, s[8:11], 0x14                    // 00000074: C2000914
  s_buffer_load_dword  s1, s[8:11], 0x08                    // 00000078: C2008908
  s_buffer_load_dwordx2  s[4:5], s[4:7], 0x1c               // 0000007C: C242051C
  s_waitcnt     lgkmcnt(0)                                  // 00000080: BF8C007F
  v_mul_lo_i32  v3, v1, s0                                  // 00000084: D2D60003 02000101
  v_add_i32     v3, vcc, v0, v3                             // 0000008C: 4A060700
  v_lshlrev_b32  v3, 2, v3                                  // 00000090: 34060682
  v_add_i32     v3, vcc, s1, v3                             // 00000094: 4A060601
  s_add_i32     s1, s12, s4                                 // 00000098: 8101040C
  s_add_i32     s4, s13, s5                                 // 0000009C: 8104050D
  s_buffer_load_dword  s5, s[8:11], 0x00                    // 000000A0: C2028900
  s_buffer_load_dword  s6, s[8:11], 0x10                    // 000000A4: C2030910
  s_waitcnt     vmcnt(0)                                    // 000000A8: BF8C1F70
  ds_write_b32  v3, v2                                      // 000000AC: D8340000 00000203
  s_waitcnt     lgkmcnt(0)                                  // 000000B4: BF8C007F
  s_barrier                                                 // 000000B8: BF8A0000
  s_mul_i32     s1, s1, s0                                  // 000000BC: 93010001
  s_mul_i32     s0, s4, s0                                  // 000000C0: 93000004
  v_add_i32     v0, vcc, s1, v0                             // 000000C4: 4A000001
  ds_read_b32   v2, v3                                      // 000000C8: D8D80000 02000003
  s_load_dwordx4  s[8:11], s[2:3], 0x58                     // 000000D0: C0840358
  v_add_i32     v1, vcc, s0, v1                             // 000000D4: 4A020200
  v_mul_lo_i32  v0, v0, s6                                  // 000000D8: D2D60000 02000D00
  v_add_i32     v0, vcc, v1, v0                             // 000000E0: 4A000101
  v_lshlrev_b32  v0, 2, v0                                  // 000000E4: 34000082
  v_add_i32     v0, vcc, s5, v0                             // 000000E8: 4A000005
  s_waitcnt     lgkmcnt(0)                                  // 000000EC: BF8C007F
  tbuffer_store_format_x  v2, v0, s[8:11], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000000F0: EBA41000 80020200
  s_endpgm                                                  // 000000F8: BF810000