label_0000:
  s_mov_b32     m0, 0x00008000                              // 00000000: BEFC03FF 00008000
  s_buffer_load_dword  s0, s[4:7], 0x1c                     // 00000008: C200051C
  s_buffer_load_dword  s1, s[4:7], 0x04                     // 0000000C: C2008504
  s_waitcnt     lgkmcnt(0)                                  // 00000010: BF8C007F
  s_add_i32     s0, s12, s0                                 // 00000014: 8100000C
  s_buffer_load_dword  s4, s[8:11], 0x00                    // 00000018: C2020900
  s_mul_i32     s1, s0, s1                                  // 0000001C: 93010100
  v_lshlrev_b32  v1, 1, v0                                  // 00000020: 34020081
  s_lshl_b32    s1, s1, 1                                   // 00000024: 8F018101
  v_add_i32     v2, vcc, s1, v1                             // 00000028: 4A040201
  v_lshlrev_b32  v3, 2, v2                                  // 0000002C: 34060482
  v_or_b32      v2, 1, v2                                   // 00000030: 38040481
  s_waitcnt     lgkmcnt(0)                                  // 00000034: BF8C007F
  v_add_i32     v3, vcc, s4, v3                             // 00000038: 4A060604
  s_load_dwordx4  s[12:15], s[2:3], 0x60                    // 0000003C: C0860360
  v_lshlrev_b32  v2, 2, v2                                  // 00000040: 34040482
  v_add_i32     v2, vcc, s4, v2                             // 00000044: 4A040404
  s_waitcnt     lgkmcnt(0)                                  // 00000048: BF8C007F
  tbuffer_load_format_x  v3, v3, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000004C: EBA01000 80030303
  tbuffer_load_format_x  v2, v2, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000054: EBA01000 80030202
  s_buffer_load_dword  s1, s[8:11], 0x0c                    // 0000005C: C200890C
  v_lshlrev_b32  v4, 3, v0                                  // 00000060: 34080083
  v_or_b32      v1, 1, v1                                   // 00000064: 38020281
  s_waitcnt     lgkmcnt(0)                                  // 00000068: BF8C007F
  v_add_i32     v4, vcc, s1, v4                             // 0000006C: 4A080801
  v_lshlrev_b32  v1, 2, v1                                  // 00000070: 34020282
  s_waitcnt     vmcnt(1)                                    // 00000074: BF8C1F71
  ds_write_b32  v4, v3                                      // 00000078: D8340000 00000304
  v_add_i32     v1, vcc, s1, v1                             // 00000080: 4A020201
  s_buffer_load_dword  s4, s[8:11], 0x04                    // 00000084: C2020904
  s_buffer_load_dword  s5, s[8:11], 0x08                    // 00000088: C2028908
  s_buffer_load_dword  s6, s[8:11], 0x10                    // 0000008C: C2030910
  s_buffer_load_dword  s7, s[8:11], 0x14                    // 00000090: C2038914
  s_buffer_load_dword  s12, s[8:11], 0x18                   // 00000094: C2060918
  s_buffer_load_dword  s8, s[8:11], 0x1c                    // 00000098: C204091C
  s_waitcnt     vmcnt(0)                                    // 0000009C: BF8C1F70
  ds_write_b32  v1, v2                                      // 000000A0: D8340000 00000201
  s_waitcnt     lgkmcnt(0)                                  // 000000A8: BF8C007F
  s_cmp_eq_i32  s12, 0                                      // 000000AC: BF00800C
  s_cbranch_scc0  label_0042                                // 000000B0: BF840015
  v_cvt_f32_u32  v4, s7                                     // 000000B4: 7E080C07
  v_sqrt_f32    v4, v4                                      // 000000B8: 7E086704
  s_mov_b32     s9, 0x6f800000                              // 000000BC: BE8903FF 6F800000
  v_cmp_gt_f32  vcc, abs(v4), s9                            // 000000C4: D008016A 00001304
  v_mov_b32     v5, 0x2f800000                              // 000000CC: 7E0A02FF 2F800000
  v_cndmask_b32  v5, 1.0, v5, vcc                           // 000000D4: 000A0AF2
  v_mul_f32     v4, v4, v5                                  // 000000D8: 10080B04
  v_rcp_f32     v4, v4                                      // 000000DC: 7E085504
  v_mul_f32     v3, v3, v4                                  // 000000E0: 10060903
  v_lshlrev_b32  v6, 3, v0                                  // 000000E4: 340C0083
  v_mul_f32     v3, v5, v3                                  // 000000E8: 10060705
  v_add_i32     v6, vcc, s1, v6                             // 000000EC: 4A0C0C01
  v_mul_f32     v2, v2, v4                                  // 000000F0: 10040902
  ds_write_b32  v6, v3                                      // 000000F4: D8340000 00000306
  v_mul_f32     v2, v5, v2                                  // 000000FC: 10040505
  ds_write_b32  v1, v2                                      // 00000100: D8340000 00000201
label_0042:
  s_waitcnt     lgkmcnt(0)                                  // 00000108: BF8C007F
  s_barrier                                                 // 0000010C: BF8A0000
  s_min_u32     s9, s6, s8                                  // 00000110: 83890806
  s_cmp_eq_i32  s9, 0                                       // 00000114: BF008009
  s_cbranch_scc1  label_0079                                // 00000118: BF850032
  s_not_b32     s6, s6                                      // 0000011C: BE860706
  s_not_b32     s8, s8                                      // 00000120: BE880708
  s_max_u32     s6, s8, s6                                  // 00000124: 84860608
  s_not_b32     s6, s6                                      // 00000128: BE860706
  s_lshl_b32    s8, 1, s9                                   // 0000012C: 8F080981
  s_lshr_b32    s9, s8, 31                                  // 00000130: 90099F08
  s_add_i32     s8, s8, s9                                  // 00000134: 81080908
  s_ashr_i32    s11, s8, 1                                  // 00000138: 910B8108
  s_lshr_b32    s7, s7, 1                                   // 0000013C: 90078107
  s_load_dwordx4  s[12:15], s[2:3], 0x58                    // 00000140: C0860358
  v_mov_b32     v2, s7                                      // 00000144: 7E040207
label_0052:
  v_cmp_gt_u32  s[8:9], s11, v0                             // 00000148: D1880008 0002000B
  s_and_saveexec_b64  s[8:9], s[8:9]                        // 00000150: BE882408
  s_waitcnt     expcnt(0)                                   // 00000154: BF8C1F0F
  v_lshlrev_b32  v3, 3, v0                                  // 00000158: 34060083
  s_cbranch_execz  label_0070                               // 0000015C: BF880018
  v_add_i32     v3, vcc, s1, v3                             // 00000160: 4A060601
  v_lshlrev_b32  v4, 2, v0                                  // 00000164: 34080082
  v_add_i32     v4, vcc, s1, v4                             // 00000168: 4A080801
  s_mul_i32     s10, s11, s0                                // 0000016C: 930A000B
  v_add_i32     v5, vcc, s10, v0                            // 00000170: 4A0A000A
  v_add_i32     v5, vcc, v2, v5                             // 00000174: 4A0A0B02
  v_lshlrev_b32  v5, 2, v5                                  // 00000178: 340A0A82
  v_add_i32     v5, vcc, s4, v5                             // 0000017C: 4A0A0A04
  v_lshrrev_b32  v2, 1, v2                                  // 00000180: 2C040481
  ds_read_b32   v6, v1                                      // 00000184: D8D80000 06000001
  ds_read_b32   v3, v3                                      // 0000018C: D8D80000 03000003
  s_waitcnt     lgkmcnt(0)                                  // 00000194: BF8C007F
  v_add_f32     v7, v6, v3                                  // 00000198: 060E0706
  v_mul_f32     v7, 0x3f3504f3, v7                          // 0000019C: 100E0EFF 3F3504F3
  ds_write_b32  v4, v7                                      // 000001A4: D8340000 00000704
  v_subrev_f32  v3, v6, v3                                  // 000001AC: 0A060706
  v_mul_f32     v3, 0x3f3504f3, v3                          // 000001B0: 100606FF 3F3504F3
  tbuffer_store_format_x  v3, v5, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000001B8: EBA41000 80030305
label_0070:
  s_mov_b64     exec, s[8:9]                                // 000001C0: BEFE0408
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000001C4: BF8C0070
  s_barrier                                                 // 000001C8: BF8A0000
  s_lshr_b32    s11, s11, 1                                 // 000001CC: 900B810B
  s_add_i32     s8, -1, s6                                  // 000001D0: 810806C1
  s_cmp_eq_i32  s6, 1                                       // 000001D4: BF008106
  s_cbranch_scc1  label_0079                                // 000001D8: BF850002
  s_mov_b32     s6, s8                                      // 000001DC: BE860308
  s_branch      label_0052                                  // 000001E0: BF82FFD9
label_0079:
  v_cmp_eq_i32  s[6:7], v0, 0                               // 000001E4: D1040006 00010100
  s_and_saveexec_b64  s[6:7], s[6:7]                        // 000001EC: BE862406
  v_mov_b32     v0, s1                                      // 000001F0: 7E000201
  s_cbranch_execz  label_0087                               // 000001F4: BF880009
  ds_read_b32   v0, v0                                      // 000001F8: D8D80000 00000000
  s_load_dwordx4  s[8:11], s[2:3], 0x50                     // 00000200: C0840350
  s_lshl_b32    s0, s0, 2                                   // 00000204: 8F008200
  s_add_i32     s0, s5, s0                                  // 00000208: 81000005
  v_mov_b32     v1, s0                                      // 0000020C: 7E020200
  s_waitcnt     lgkmcnt(0)                                  // 00000210: BF8C007F
  tbuffer_store_format_x  v0, v1, s[8:11], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000214: EBA41000 80020001
label_0087:
  s_mov_b64     exec, s[6:7]                                // 0000021C: BEFE0406
  s_endpgm                                                  // 00000220: BF810000