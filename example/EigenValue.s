**
** Disassembly for '__kernel calNumEigenValueInterval'
**

  s_buffer_load_dword  s0, s[4:7], 0x04                     // 00000000: C2000504
  s_buffer_load_dword  s1, s[4:7], 0x18                     // 00000004: C2008518
  s_waitcnt     lgkmcnt(0)                                  // 00000008: BF8C007F
  s_min_u32     s0, s0, 0x0000ffff                          // 0000000C: 8380FF00 0000FFFF
  v_mov_b32     v1, s0                                      // 00000014: 7E020200
  s_buffer_load_dword  s0, s[8:11], 0x04                    // 00000018: C2000904
  v_mul_i32_i24  v1, s12, v1                                // 0000001C: 1202020C
  v_add_i32     v0, vcc, v0, v1                             // 00000020: 4A000300
  v_add_i32     v0, vcc, s1, v0                             // 00000024: 4A000001
  s_buffer_load_dword  s1, s[8:11], 0x08                    // 00000028: C2008908
  v_lshlrev_b32  v1, 3, v0                                  // 0000002C: 34020083
  s_waitcnt     lgkmcnt(0)                                  // 00000030: BF8C007F
  v_add_i32     v2, vcc, s0, v1                             // 00000034: 4A040200
  s_load_dwordx4  s[4:7], s[2:3], 0x58                      // 00000038: C0820358
  s_load_dwordx4  s[12:15], s[2:3], 0x50                    // 0000003C: C0860350
  v_mov_b32     v3, s1                                      // 00000040: 7E060201
  s_waitcnt     lgkmcnt(0)                                  // 00000044: BF8C007F
  tbuffer_load_format_x  v2, v2, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000048: EBA01000 80010202
  tbuffer_load_format_x  v3, v3, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000050: EBA01000 80030303
  v_or_b32      v1, 4, v1                                   // 00000058: 38020284
  s_buffer_load_dword  s16, s[8:11], 0x00                   // 0000005C: C2080900
  s_buffer_load_dword  s17, s[8:11], 0x0c                   // 00000060: C208890C
  s_buffer_load_dword  s8, s[8:11], 0x10                    // 00000064: C2040910
  s_waitcnt     vmcnt(0)                                    // 00000068: BF8C1F70
  v_subrev_f32  v5, v2, v3                                  // 0000006C: 0A0A0702
  v_add_i32     v1, vcc, s0, v1                             // 00000070: 4A020200
  tbuffer_load_format_x  v1, v1, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000074: EBA01000 80010101
  s_waitcnt     lgkmcnt(0)                                  // 0000007C: BF8C007F
  s_cmp_gt_u32  s8, 1                                       // 00000080: BF088108
  s_cbranch_scc0  label_0076                                // 00000084: BF840054
  v_cmp_gt_f32  vcc, 0, v5                                  // 00000088: 7C080A80
  s_addk_i32    s1, 0x0004                                  // 0000008C: B7810004
  s_add_i32     s19, -1, s8                                 // 00000090: 811308C1
  v_cndmask_b32  v9, 0, 1, vcc                              // 00000094: D2000009 01A90280
  s_load_dwordx4  s[4:7], s[2:3], 0x68                      // 0000009C: C0820368
  s_mov_b32     s9, s1                                      // 000000A0: BE890301
  s_mov_b32     s10, s19                                    // 000000A4: BE8A0313
  s_mov_b32     s11, s17                                    // 000000A8: BE8B0311
label_002B:
  v_mov_b32     v6, s11                                     // 000000AC: 7E0C020B
  s_waitcnt     lgkmcnt(0)                                  // 000000B0: BF8C007F
  tbuffer_load_format_x  v6, v6, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000000B4: EBA01000 80010606
  v_mov_b32     v7, s9                                      // 000000BC: 7E0E0209
  tbuffer_load_format_x  v7, v7, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000000C0: EBA01000 80030707
  s_mov_b32     s18, 0x6f800000                             // 000000C8: BE9203FF 6F800000
  v_cmp_gt_f32  vcc, abs(v5), s18                           // 000000D0: D008016A 00002505
  v_mov_b32     v8, 0x2f800000                              // 000000D8: 7E1002FF 2F800000
  v_cndmask_b32  v8, 1.0, v8, vcc                           // 000000E0: 001010F2
  v_mul_f32     v5, v5, v8                                  // 000000E4: 100A1105
  s_waitcnt     vmcnt(1)                                    // 000000E8: BF8C1F71
  v_mul_f32     v6, v6, v6                                  // 000000EC: 100C0D06
  v_rcp_f32     v5, v5                                      // 000000F0: 7E0A5505
  v_mul_f32     v5, v6, v5                                  // 000000F4: 100A0B06
  s_waitcnt     vmcnt(0)                                    // 000000F8: BF8C1F70
  v_subrev_f32  v6, v2, v7                                  // 000000FC: 0A0C0F02
  v_mad_f32     v5, -v8, v5, v6                             // 00000100: D2820005 241A0B08
  v_cmp_gt_f32  vcc, 0, v5                                  // 00000108: 7C080A80
  v_addc_u32    v9, vcc, v9, 0, vcc                         // 0000010C: D2506A09 01A90109
  s_addk_i32    s9, 0x0004                                  // 00000114: B7890004
  s_addk_i32    s11, 0x0004                                 // 00000118: B78B0004
  s_add_i32     s18, -1, s10                                // 0000011C: 81120AC1
  s_cmp_eq_i32  s10, 1                                      // 00000120: BF00810A
  s_cbranch_scc1  label_004C                                // 00000124: BF850002
  s_mov_b32     s10, s18                                    // 00000128: BE8A0312
  s_branch      label_002B                                  // 0000012C: BF82FFDF
label_004C:
  v_subrev_f32  v4, v1, v3                                  // 00000130: 0A080701
  v_cmp_gt_f32  vcc, 0, v4                                  // 00000134: 7C080880
  v_cvt_f32_u32  v3, v9                                     // 00000138: 7E060D09
  v_cndmask_b32  v2, 0, 1, vcc                              // 0000013C: D2000002 01A90280
  v_cvt_u32_f32  v3, v3                                     // 00000144: 7E060F03
  s_cmp_ge_u32  s8, 2                                       // 00000148: BF098208
  s_cbranch_scc0  label_0080                                // 0000014C: BF84002C
label_0054:
  v_mov_b32     v5, s17                                     // 00000150: 7E0A0211
  tbuffer_load_format_x  v5, v5, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000154: EBA01000 80010505
  v_mov_b32     v6, s1                                      // 0000015C: 7E0C0201
  tbuffer_load_format_x  v6, v6, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000160: EBA01000 80030606
  s_mov_b32     s9, 0x6f800000                              // 00000168: BE8903FF 6F800000
  v_cmp_gt_f32  vcc, abs(v4), s9                            // 00000170: D008016A 00001304
  v_mov_b32     v7, 0x2f800000                              // 00000178: 7E0E02FF 2F800000
  v_cndmask_b32  v7, 1.0, v7, vcc                           // 00000180: 000E0EF2
  v_mul_f32     v4, v4, v7                                  // 00000184: 10080F04
  s_waitcnt     vmcnt(1)                                    // 00000188: BF8C1F71
  v_mul_f32     v5, v5, v5                                  // 0000018C: 100A0B05
  v_rcp_f32     v4, v4                                      // 00000190: 7E085504
  v_mul_f32     v4, v5, v4                                  // 00000194: 10080905
  s_waitcnt     vmcnt(0)                                    // 00000198: BF8C1F70
  v_subrev_f32  v5, v1, v6                                  // 0000019C: 0A0A0D01
  v_mad_f32     v4, -v7, v4, v5                             // 000001A0: D2820004 24160907
  v_cmp_gt_f32  vcc, 0, v4                                  // 000001A8: 7C080880
  v_addc_u32    v2, vcc, v2, 0, vcc                         // 000001AC: D2506A02 01A90102
  s_addk_i32    s1, 0x0004                                  // 000001B4: B7810004
  s_addk_i32    s17, 0x0004                                 // 000001B8: B7910004
  s_add_i32     s9, s19, -1                                 // 000001BC: 8109C113
  s_cmp_eq_i32  s19, 1                                      // 000001C0: BF008113
  s_cbranch_scc1  label_0074                                // 000001C4: BF850002
  s_mov_b32     s19, s9                                     // 000001C8: BE930309
  s_branch      label_0054                                  // 000001CC: BF82FFE0
label_0074:
  s_branch      label_0080                                  // 000001D0: BF82000B
  s_branch      label_0080                                  // 000001D4: BF82000A
label_0076:
  s_waitcnt     vmcnt(0)                                    // 000001D8: BF8C1F70
  v_sub_f32     v1, v3, v1                                  // 000001DC: 08020303
  v_cmp_lt_f32  s[0:1], v5, 0                               // 000001E0: D0020000 00010105
  v_cmp_gt_f32  vcc, 0, v1                                  // 000001E8: 7C080280
  v_cndmask_b32  v1, 0, 1.0, s[0:1]                         // 000001EC: D2000001 0001E480
  v_cndmask_b32  v2, 0, 1, vcc                              // 000001F4: D2000002 01A90280
  v_cvt_u32_f32  v3, v1                                     // 000001FC: 7E060F01
label_0080:
  s_load_dwordx4  s[0:3], s[2:3], 0x60                      // 00000200: C0800360
  v_cvt_f32_u32  v2, v2                                     // 00000204: 7E040D02
  v_lshlrev_b32  v0, 2, v0                                  // 00000208: 34000082
  v_cvt_u32_f32  v2, v2                                     // 0000020C: 7E040F02
  v_add_i32     v0, vcc, s16, v0                            // 00000210: 4A000010
  v_sub_i32     v1, vcc, v2, v3                             // 00000214: 4C020702
  s_waitcnt     lgkmcnt(0)                                  // 00000218: BF8C007F
  tbuffer_store_format_x  v1, v0, s[0:3], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000021C: EBA41000 80000100
  s_endpgm                                                  // 00000224: BF810000



**
** Disassembly for '__kernel recalculateEigenIntervals'
**

  s_buffer_load_dword  s0, s[8:11], 0x08                    // 00000000: C2000908
  s_load_dwordx4  s[16:19], s[2:3], 0x68                    // 00000004: C0880368
  s_waitcnt     lgkmcnt(0)                                  // 00000008: BF8C007F
  v_mov_b32     v1, s0                                      // 0000000C: 7E020200
  tbuffer_load_format_x  v6, v1, s[16:19], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000010: EBA01000 80040601
  s_buffer_load_dword  s1, s[4:7], 0x04                     // 00000018: C2008504
  s_buffer_load_dword  s4, s[4:7], 0x18                     // 0000001C: C2020518
  s_waitcnt     lgkmcnt(0)                                  // 00000020: BF8C007F
  s_min_u32     s1, s1, 0x0000ffff                          // 00000024: 8381FF01 0000FFFF
  v_mov_b32     v2, s1                                      // 0000002C: 7E040201
  v_mul_i32_i24  v2, s12, v2                                // 00000030: 1204040C
  v_add_i32     v0, vcc, v0, v2                             // 00000034: 4A000500
  v_add_i32     v0, vcc, s4, v0                             // 00000038: 4A000004
  s_buffer_load_dword  s1, s[8:11], 0x00                    // 0000003C: C2008900
  s_buffer_load_dword  s4, s[8:11], 0x04                    // 00000040: C2020904
  s_buffer_load_dword  s5, s[8:11], 0x0c                    // 00000044: C202890C
  s_buffer_load_dword  s6, s[8:11], 0x10                    // 00000048: C2030910
  s_buffer_load_dword  s7, s[8:11], 0x14                    // 0000004C: C2038914
  s_buffer_load_dword  s8, s[8:11], 0x18                    // 00000050: C2040918
  s_waitcnt     vmcnt(0)                                    // 00000054: BF8C1F70
  v_cmp_gt_u32  s[10:11], v6, v0                            // 00000058: D188000A 00020106
  s_mov_b64     s[12:13], exec                              // 00000060: BE8C047E
  s_andn2_b64   exec, s[12:13], s[10:11]                    // 00000064: 8AFE0A0C
  s_cbranch_execz  label_002E                               // 00000068: BF880013
  s_addk_i32    s0, 0x0004                                  // 0000006C: B7800004
  s_mov_b64     s[10:11], exec                              // 00000070: BE8A047E
  v_mov_b32     v1, s0                                      // 00000074: 7E020200
  v_mov_b32     v2, 0                                       // 00000078: 7E040280
  v_mov_b32     v3, v0                                      // 0000007C: 7E060300
label_0020:
  tbuffer_load_format_x  v5, v1, s[16:19], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000080: EBA01000 80040501
  v_sub_i32     v3, vcc, v3, v6                             // 00000088: 4C060D03
  v_add_i32     v1, vcc, 4, v1                              // 0000008C: 4A020284
  v_add_i32     v2, vcc, 2, v2                              // 00000090: 4A040482
  s_waitcnt     vmcnt(0)                                    // 00000094: BF8C1F70
  v_cmp_gt_u32  s[14:15], v5, v3                            // 00000098: D188000E 00020705
  s_andn2_b64   exec, exec, s[14:15]                        // 000000A0: 8AFE0E7E
  s_cbranch_execz  label_002C                               // 000000A4: BF880002
  v_mov_b32     v6, v5                                      // 000000A8: 7E0C0305
  s_branch      label_0020                                  // 000000AC: BF82FFF4
label_002C:
  s_mov_b64     exec, s[10:11]                              // 000000B0: BEFE040A
  v_mov_b32     v6, v5                                      // 000000B4: 7E0C0305
label_002E:
  s_andn2_b64   exec, s[12:13], exec                        // 000000B8: 8AFE7E0C
  v_mov_b32     v2, 0                                       // 000000BC: 7E040280
  v_mov_b32     v3, v0                                      // 000000C0: 7E060300
  s_mov_b64     exec, s[12:13]                              // 000000C4: BEFE040C
  v_lshlrev_b32  v4, 1, v0                                  // 000000C8: 34080081
  v_or_b32      v4, 1, v4                                   // 000000CC: 38080881
  v_cmp_eq_i32  s[10:11], v6, 1                             // 000000D0: D104000A 00010306
  v_lshlrev_b32  v5, 2, v2                                  // 000000D8: 340A0482
  s_waitcnt     lgkmcnt(0)                                  // 000000DC: BF8C007F
  v_add_i32     v5, vcc, s4, v5                             // 000000E0: 4A0A0A04
  v_or_b32      v2, 1, v2                                   // 000000E4: 38040481
  v_lshlrev_b32  v2, 2, v2                                  // 000000E8: 34040482
  v_add_i32     v2, vcc, s4, v2                             // 000000EC: 4A040404
  s_load_dwordx4  s[12:15], s[2:3], 0x58                    // 000000F0: C0860358
  s_waitcnt     lgkmcnt(0)                                  // 000000F4: BF8C007F
  tbuffer_load_format_x  v5, v5, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000000F8: EBA01000 80030505
  tbuffer_load_format_x  v2, v2, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000100: EBA01000 80030202
  s_load_dwordx4  s[12:15], s[2:3], 0x60                    // 00000108: C0860360
  s_and_saveexec_b64  s[10:11], s[10:11]                    // 0000010C: BE8A240A
  s_cbranch_execz  label_00DD                               // 00000110: BF880098
  s_load_dwordx4  s[16:19], s[2:3], 0x50                    // 00000114: C0880350
  v_mov_b32     v1, s5                                      // 00000118: 7E020205
  s_waitcnt     lgkmcnt(0)                                  // 0000011C: BF8C007F
  tbuffer_load_format_x  v1, v1, s[16:19], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000120: EBA01000 80040101
  s_waitcnt     vmcnt(1)                                    // 00000128: BF8C1F71
  v_add_f32     v3, v5, v2                                  // 0000012C: 06060505
  v_mul_f32     v6, 0.5, v3                                 // 00000130: 100C06F0
  s_waitcnt     vmcnt(0)                                    // 00000134: BF8C1F70
  v_mad_f32     v7, -v3, 0.5, v1                            // 00000138: D2820007 2405E103
  s_cmp_gt_u32  s7, 1                                       // 00000140: BF088107
  s_cbranch_scc0  label_00AD                                // 00000144: BF84005B
  v_cmp_gt_f32  vcc, 0, v7                                  // 00000148: 7C080E80
  s_add_i32     s0, s5, 4                                   // 0000014C: 81008405
  s_add_i32     s4, -1, s7                                  // 00000150: 810407C1
  v_cndmask_b32  v15, 0, 1, vcc                             // 00000154: D200000F 01A90280
  s_load_dwordx4  s[20:23], s[2:3], 0x70                    // 0000015C: C08A0370
  s_mov_b64     s[2:3], exec                                // 00000160: BE82047E
  v_mov_b32     v16, s0                                     // 00000164: 7E200200
  v_mov_b32     v10, s4                                     // 00000168: 7E140204
  v_mov_b32     v9, s6                                      // 0000016C: 7E120206
label_005C:
  s_waitcnt     lgkmcnt(0)                                  // 00000170: BF8C007F
  tbuffer_load_format_x  v12, v9, s[20:23], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000174: EBA01000 80050C09
  tbuffer_load_format_x  v13, v16, s[16:19], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000017C: EBA01000 80040D10
  s_mov_b32     s5, 0x6f800000                              // 00000184: BE8503FF 6F800000
  v_cmp_gt_f32  vcc, abs(v7), s5                            // 0000018C: D008016A 00000B07
  v_mov_b32     v14, 0x2f800000                             // 00000194: 7E1C02FF 2F800000
  v_cndmask_b32  v14, 1.0, v14, vcc                         // 0000019C: 001C1CF2
  v_mul_f32     v8, v7, v14                                 // 000001A0: 10101D07
  s_waitcnt     vmcnt(1)                                    // 000001A4: BF8C1F71
  v_mul_f32     v12, v12, v12                               // 000001A8: 1018190C
  v_rcp_f32     v8, v8                                      // 000001AC: 7E105508
  v_mul_f32     v8, v12, v8                                 // 000001B0: 1010110C
  s_waitcnt     vmcnt(0)                                    // 000001B4: BF8C1F70
  v_mad_f32     v13, -v3, 0.5, v13                          // 000001B8: D282000D 2435E103
  v_mad_f32     v7, -v14, v8, v13                           // 000001C0: D2820007 2436110E
  v_cmp_gt_f32  vcc, 0, v7                                  // 000001C8: 7C080E80
  v_addc_u32    v15, vcc, v15, 0, vcc                       // 000001CC: D2506A0F 01A9010F
  v_add_i32     v16, vcc, 4, v16                            // 000001D4: 4A202084
  v_add_i32     v9, vcc, 4, v9                              // 000001D8: 4A121284
  v_add_i32     v11, vcc, -1, v10                           // 000001DC: 4A1614C1
  v_cmp_ne_i32  s[24:25], v10, 1                            // 000001E0: D10A0018 0001030A
  s_and_b64     exec, exec, s[24:25]                        // 000001E8: 87FE187E
  s_cbranch_execz  label_007E                               // 000001EC: BF880002
  v_mov_b32     v10, v11                                    // 000001F0: 7E14030B
  s_branch      label_005C                                  // 000001F4: BF82FFDE
label_007E:
  s_mov_b64     exec, s[2:3]                                // 000001F8: BEFE0402
  v_subrev_f32  v14, v5, v1                                 // 000001FC: 0A1C0305
  v_cmp_gt_f32  vcc, 0, v14                                 // 00000200: 7C081C80
  v_cndmask_b32  v9, 0, 1, vcc                              // 00000204: D2000009 01A90280
  v_cvt_f32_u32  v15, v15                                   // 0000020C: 7E1E0D0F
  s_cmp_ge_u32  s7, 2                                       // 00000210: BF098207
  s_cbranch_scc0  label_00B5                                // 00000214: BF84002F
  s_mov_b64     s[2:3], exec                                // 00000218: BE82047E
  v_mov_b32     v1, s4                                      // 0000021C: 7E020204
  v_mov_b32     v3, s0                                      // 00000220: 7E060200
  v_mov_b32     v8, s6                                      // 00000224: 7E100206
label_008A:
  tbuffer_load_format_x  v11, v8, s[20:23], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000228: EBA01000 80050B08
  tbuffer_load_format_x  v12, v3, s[16:19], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000230: EBA01000 80040C03
  s_mov_b32     s0, 0x6f800000                              // 00000238: BE8003FF 6F800000
  v_cmp_gt_f32  vcc, abs(v14), s0                           // 00000240: D008016A 0000010E
  v_mov_b32     v13, 0x2f800000                             // 00000248: 7E1A02FF 2F800000
  v_cndmask_b32  v13, 1.0, v13, vcc                         // 00000250: 001A1AF2
  v_mul_f32     v10, v14, v13                               // 00000254: 10141B0E
  s_waitcnt     vmcnt(1)                                    // 00000258: BF8C1F71
  v_mul_f32     v11, v11, v11                               // 0000025C: 1016170B
  v_rcp_f32     v10, v10                                    // 00000260: 7E14550A
  v_mul_f32     v10, v11, v10                               // 00000264: 1014150B
  s_waitcnt     vmcnt(0)                                    // 00000268: BF8C1F70
  v_subrev_f32  v11, v5, v12                                // 0000026C: 0A161905
  v_mad_f32     v14, -v13, v10, v11                         // 00000270: D282000E 242E150D
  v_cmp_gt_f32  vcc, 0, v14                                 // 00000278: 7C081C80
  v_addc_u32    v9, vcc, v9, 0, vcc                         // 0000027C: D2506A09 01A90109
  v_add_i32     v3, vcc, 4, v3                              // 00000284: 4A060684
  v_add_i32     v8, vcc, 4, v8                              // 00000288: 4A101084
  v_add_i32     v10, vcc, -1, v1                            // 0000028C: 4A1402C1
  v_cmp_ne_i32  s[4:5], v1, 1                               // 00000290: D10A0004 00010301
  s_and_b64     exec, exec, s[4:5]                          // 00000298: 87FE047E
  s_cbranch_execz  label_00AA                               // 0000029C: BF880002
  v_mov_b32     v1, v10                                     // 000002A0: 7E02030A
  s_branch      label_008A                                  // 000002A4: BF82FFE0
label_00AA:
  s_mov_b64     exec, s[2:3]                                // 000002A8: BEFE0402
  s_branch      label_00B5                                  // 000002AC: BF820009
  s_branch      label_00B5                                  // 000002B0: BF820008
label_00AD:
  v_subrev_f32  v1, v5, v1                                  // 000002B4: 0A020305
  v_cmp_lt_f32  s[2:3], v1, 0                               // 000002B8: D0020002 00010101
  v_cmp_gt_f32  vcc, 0, v7                                  // 000002C0: 7C080E80
  v_cndmask_b32  v9, 0, 1, s[2:3]                           // 000002C4: D2000009 00090280
  v_cndmask_b32  v15, 0, 1.0, vcc                           // 000002CC: D200000F 01A9E480
label_00B5:
  v_sub_f32     v7, v2, v5                                  // 000002D4: 080E0B02
  v_cmp_gt_f32  s[2:3], s8, v7                              // 000002D8: D0080002 00020E08
  s_and_saveexec_b64  s[2:3], s[2:3]                        // 000002E0: BE822402
  v_lshlrev_b32  v7, 3, v0                                  // 000002E4: 340E0083
  s_cbranch_execz  label_00C2                               // 000002E8: BF880007
  v_add_i32     v0, vcc, s1, v7                             // 000002EC: 4A000E01
  v_lshlrev_b32  v1, 2, v4                                  // 000002F0: 34020882
  tbuffer_store_format_x  v5, v0, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000002F4: EBA41000 80030500
  v_add_i32     v0, vcc, s1, v1                             // 000002FC: 4A000201
  tbuffer_store_format_x  v2, v0, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000300: EBA41000 80030200
label_00C2:
  s_andn2_b64   exec, s[2:3], exec                          // 00000308: 8AFE7E02
  v_cvt_f32_u32  v3, v9                                     // 0000030C: 7E060D09
  s_cbranch_execz  label_00DC                               // 00000310: BF880017
  v_sub_f32     v1, v15, v3                                 // 00000314: 0802070F
  v_cmp_neq_f32  s[4:5], v1, 0                              // 00000318: D01A0004 00010101
  s_and_saveexec_b64  s[4:5], s[4:5]                        // 00000320: BE842404
  v_lshlrev_b32  v1, 3, v0                                  // 00000324: 34020083
  s_cbranch_execz  label_00D2                               // 00000328: BF880007
  v_add_i32     v0, vcc, s1, v1                             // 0000032C: 4A000201
  v_lshlrev_b32  v1, 2, v4                                  // 00000330: 34020882
  tbuffer_store_format_x  v5, v0, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000334: EBA41000 80030500
  v_add_i32     v0, vcc, s1, v1                             // 0000033C: 4A000201
  tbuffer_store_format_x  v6, v0, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000340: EBA41000 80030600
label_00D2:
  s_andn2_b64   exec, s[4:5], exec                          // 00000348: 8AFE7E04
  v_lshlrev_b32  v0, 3, v0                                  // 0000034C: 34000083
  s_cbranch_execz  label_00DC                               // 00000350: BF880007
  v_add_i32     v0, vcc, s1, v0                             // 00000354: 4A000001
  v_lshlrev_b32  v1, 2, v4                                  // 00000358: 34020882
  tbuffer_store_format_x  v6, v0, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000035C: EBA41000 80030600
  v_add_i32     v0, vcc, s1, v1                             // 00000364: 4A000201
  tbuffer_store_format_x  v2, v0, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000368: EBA41000 80030200
label_00DC:
  s_mov_b64     exec, s[2:3]                                // 00000370: BEFE0402
label_00DD:
  s_andn2_b64   exec, s[10:11], exec                        // 00000374: 8AFE7E0A
  v_cvt_f32_u32  v1, v6                                     // 00000378: 7E020D06
  s_cbranch_execz  label_00FA                               // 0000037C: BF88001A
  s_mov_b32     s0, 0x6f800000                              // 00000380: BE8003FF 6F800000
  v_cmp_gt_f32  vcc, abs(v1), s0                            // 00000388: D008016A 00000101
  v_mov_b32     v6, 0x2f800000                              // 00000390: 7E0C02FF 2F800000
  v_cndmask_b32  v6, 1.0, v6, vcc                           // 00000398: 000C0CF2
  v_mul_f32     v1, v1, v6                                  // 0000039C: 10020D01
  s_waitcnt     vmcnt(0)                                    // 000003A0: BF8C1F70
  v_subrev_f32  v2, v5, v2                                  // 000003A4: 0A040505
  v_rcp_f32     v1, v1                                      // 000003A8: 7E025501
  v_mul_f32     v1, v2, v1                                  // 000003AC: 10020302
  v_mul_f32     v2, v6, v1                                  // 000003B0: 10040306
  v_cvt_f32_u32  v3, v3                                     // 000003B4: 7E060D03
  v_lshlrev_b32  v0, 3, v0                                  // 000003B8: 34000083
  v_mac_f32     v5, v2, v3                                  // 000003BC: 3E0A0702
  v_add_i32     v0, vcc, s1, v0                             // 000003C0: 4A000001
  v_lshlrev_b32  v2, 2, v4                                  // 000003C4: 34040882
  s_waitcnt     lgkmcnt(0)                                  // 000003C8: BF8C007F
  tbuffer_store_format_x  v5, v0, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000003CC: EBA41000 80030500
  s_waitcnt     expcnt(0)                                   // 000003D4: BF8C1F0F
  v_mac_f32     v5, v6, v1                                  // 000003D8: 3E0A0306
  v_add_i32     v0, vcc, s1, v2                             // 000003DC: 4A000401
  tbuffer_store_format_x  v5, v0, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000003E0: EBA41000 80030500
label_00FA:
  s_mov_b64     exec, s[10:11]                              // 000003E8: BEFE040A
  s_endpgm                                                  // 000003EC: BF810000



