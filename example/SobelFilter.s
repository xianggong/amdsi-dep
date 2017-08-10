label_0000:
  s_buffer_load_dwordx2  s[0:1], s[4:7], 0x04               // 00000000: C2400504
  s_buffer_load_dwordx2  s[14:15], s[4:7], 0x18             // 00000004: C2470518
  s_buffer_load_dword  s16, s[8:11], 0x00                   // 00000008: C2080900
  s_buffer_load_dword  s8, s[8:11], 0x04                    // 0000000C: C2040904
  s_buffer_load_dwordx2  s[4:5], s[4:7], 0x00               // 00000010: C2420500
  s_waitcnt     lgkmcnt(0)                                  // 00000014: BF8C007F
  s_min_u32     s0, s0, 0x0000ffff                          // 00000018: 8380FF00 0000FFFF
  s_min_u32     s1, s1, 0x0000ffff                          // 00000020: 8381FF01 0000FFFF
  v_mov_b32     v2, s0                                      // 00000028: 7E040200
  v_mul_i32_i24  v2, s12, v2                                // 0000002C: 1204040C
  v_mov_b32     v3, s1                                      // 00000030: 7E060201
  v_mul_i32_i24  v3, s13, v3                                // 00000034: 1206060D
  v_add_i32     v0, vcc, v0, v2                             // 00000038: 4A000500
  v_add_i32     v1, vcc, v1, v3                             // 0000003C: 4A020701
  v_add_i32     v0, vcc, s14, v0                            // 00000040: 4A00000E
  v_add_i32     v1, vcc, s15, v1                            // 00000044: 4A02020F
  v_cmp_eq_i32  s[0:1], v0, 0                               // 00000048: D1040000 00010100
  s_mov_b64     s[6:7], exec                                // 00000050: BE86047E
  s_andn2_b64   exec, s[6:7], s[0:1]                        // 00000054: 8AFE0006
  s_cbranch_execz  label_0194                               // 00000058: BF88017D
  s_add_i32     s0, -1, s4                                  // 0000005C: 810004C1
  v_cmp_eq_i32  s[10:11], v1, 0                             // 00000060: D104000A 00010101
  v_cmp_le_u32  vcc, s0, v0                                 // 00000068: 7D860000
  s_or_b64      s[0:1], s[10:11], vcc                       // 0000006C: 88806A0A
  s_mov_b64     vcc, exec                                   // 00000070: BEEA047E
  s_andn2_b64   exec, vcc, s[0:1]                           // 00000074: 8AFE006A
  s_cbranch_execz  label_0194                               // 00000078: BF880175
  s_add_i32     s0, -1, s5                                  // 0000007C: 810005C1
  v_cmp_gt_u32  s[0:1], s0, v1                              // 00000080: D1880000 00020200
  s_and_saveexec_b64  s[0:1], s[0:1]                        // 00000088: BE802400
  v_mul_lo_i32  v1, s4, v1                                  // 0000008C: D2D60001 02020204
  s_cbranch_execz  label_0194                               // 00000094: BF88016E
  v_add_i32     v0, vcc, v0, v1                             // 00000098: 4A000300
  v_add_i32     v1, vcc, 1, v0                              // 0000009C: 4A020081
  v_add_i32     v2, vcc, -1, v0                             // 000000A0: 4A0400C1
  v_subrev_i32  v3, vcc, s4, v1                             // 000000A4: 4E060204
  v_subrev_i32  v4, vcc, s4, v2                             // 000000A8: 4E080404
  v_subrev_i32  v5, vcc, s4, v0                             // 000000AC: 4E0A0004
  v_lshlrev_b32  v3, 2, v3                                  // 000000B0: 34060682
  v_lshlrev_b32  v4, 2, v4                                  // 000000B4: 34080882
  v_lshlrev_b32  v5, 2, v5                                  // 000000B8: 340A0A82
  v_add_i32     v3, vcc, s16, v3                            // 000000BC: 4A060610
  s_load_dwordx4  s[12:15], s[2:3], 0x50                    // 000000C0: C0860350
  v_add_i32     v4, vcc, s16, v4                            // 000000C4: 4A080810
  v_lshlrev_b32  v6, 2, v2                                  // 000000C8: 340C0482
  v_add_i32     v2, vcc, s4, v2                             // 000000CC: 4A040404
  v_add_i32     v5, vcc, s16, v5                            // 000000D0: 4A0A0A10
  v_add_i32     v6, vcc, s16, v6                            // 000000D4: 4A0C0C10
  v_lshlrev_b32  v7, 2, v0                                  // 000000D8: 340E0082
  v_lshlrev_b32  v2, 2, v2                                  // 000000DC: 34040482
  v_add_i32     v0, vcc, s4, v0                             // 000000E0: 4A000004
  v_add_i32     v8, vcc, s16, v7                            // 000000E4: 4A100E10
  v_add_i32     v2, vcc, s16, v2                            // 000000E8: 4A040410
  v_add_i32     v1, vcc, s4, v1                             // 000000EC: 4A020204
  v_lshlrev_b32  v0, 2, v0                                  // 000000F0: 34000082
  v_lshlrev_b32  v1, 2, v1                                  // 000000F4: 34020282
  v_add_i32     v0, vcc, s16, v0                            // 000000F8: 4A000010
  v_add_i32     v1, vcc, s16, v1                            // 000000FC: 4A020210
  s_waitcnt     lgkmcnt(0)                                  // 00000100: BF8C007F
  tbuffer_load_format_x  v3, v3, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000104: EBA01000 80030303
  tbuffer_load_format_x  v4, v4, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000010C: EBA01000 80030404
  tbuffer_load_format_x  v5, v5, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000114: EBA01000 80030505
  tbuffer_load_format_x  v6, v6, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000011C: EBA01000 80030606
  tbuffer_load_format_x  v8, v8, s[12:15], 0 offen offset:4 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000124: EBA01004 80030808
  tbuffer_load_format_x  v2, v2, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000012C: EBA01000 80030202
  tbuffer_load_format_x  v0, v0, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000134: EBA01000 80030000
  tbuffer_load_format_x  v1, v1, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000013C: EBA01000 80030101
  s_waitcnt     vmcnt(7)                                    // 00000144: BF8C1F77
  v_lshrrev_b32  v9, 24, v3                                 // 00000148: 2C120698
  s_waitcnt     vmcnt(6)                                    // 0000014C: BF8C1F76
  v_lshrrev_b32  v10, 24, v4                                // 00000150: 2C140898
  s_waitcnt     vmcnt(5)                                    // 00000154: BF8C1F75
  v_lshrrev_b32  v11, 24, v5                                // 00000158: 2C160A98
  v_bfe_u32     v12, v3, 8, 8                               // 0000015C: D290000C 02211103
  v_bfe_u32     v13, v3, 16, 8                              // 00000164: D290000D 02212103
  v_cvt_f32_u32  v9, v9                                     // 0000016C: 7E120D09
  v_bfe_u32     v14, v4, 8, 8                               // 00000170: D290000E 02211104
  v_bfe_u32     v15, v4, 16, 8                              // 00000178: D290000F 02212104
  v_cvt_f32_u32  v10, v10                                   // 00000180: 7E140D0A
  s_waitcnt     vmcnt(4)                                    // 00000184: BF8C1F74
  v_lshrrev_b32  v16, 24, v6                                // 00000188: 2C200C98
  v_bfe_u32     v17, v5, 8, 8                               // 0000018C: D2900011 02211105
  v_bfe_u32     v18, v5, 16, 8                              // 00000194: D2900012 02212105
  v_cvt_f32_u32  v11, v11                                   // 0000019C: 7E160D0B
  v_and_b32     v3, 0x000000ff, v3                          // 000001A0: 360606FF 000000FF
  v_cvt_f32_u32  v12, v12                                   // 000001A8: 7E180D0C
  v_cvt_f32_u32  v13, v13                                   // 000001AC: 7E1A0D0D
  v_and_b32     v4, 0x000000ff, v4                          // 000001B0: 360808FF 000000FF
  v_cvt_f32_u32  v14, v14                                   // 000001B8: 7E1C0D0E
  v_cvt_f32_u32  v15, v15                                   // 000001BC: 7E1E0D0F
  v_subrev_f32  v19, v9, v10                                // 000001C0: 0A261509
  v_bfe_u32     v20, v6, 8, 8                               // 000001C4: D2900014 02211106
  v_bfe_u32     v21, v6, 16, 8                              // 000001CC: D2900015 02212106
  v_cvt_f32_u32  v16, v16                                   // 000001D4: 7E200D10
  s_waitcnt     vmcnt(3)                                    // 000001D8: BF8C1F73
  v_lshrrev_b32  v22, 24, v8                                // 000001DC: 2C2C1098
  s_waitcnt     vmcnt(2)                                    // 000001E0: BF8C1F72
  v_lshrrev_b32  v23, 24, v2                                // 000001E4: 2C2E0498
  v_and_b32     v5, 0x000000ff, v5                          // 000001E8: 360A0AFF 000000FF
  v_cvt_f32_u32  v17, v17                                   // 000001F0: 7E220D11
  v_cvt_f32_u32  v18, v18                                   // 000001F4: 7E240D12
  v_mac_f32     v10, 2.0, v11                               // 000001F8: 3E1416F4
  v_cvt_f32_u32  v3, v3                                     // 000001FC: 7E060D03
  v_cvt_f32_u32  v4, v4                                     // 00000200: 7E080D04
  v_subrev_f32  v11, v12, v14                               // 00000204: 0A161D0C
  v_subrev_f32  v24, v13, v15                               // 00000208: 0A301F0D
  v_and_b32     v6, 0x000000ff, v6                          // 0000020C: 360C0CFF 000000FF
  v_cvt_f32_u32  v20, v20                                   // 00000214: 7E280D14
  v_cvt_f32_u32  v21, v21                                   // 00000218: 7E2A0D15
  v_mac_f32     v19, 2.0, v16                               // 0000021C: 3E2620F4
  v_bfe_u32     v16, v8, 8, 8                               // 00000220: D2900010 02211108
  v_bfe_u32     v25, v8, 16, 8                              // 00000228: D2900019 02212108
  v_cvt_f32_u32  v22, v22                                   // 00000230: 7E2C0D16
  v_bfe_u32     v26, v2, 8, 8                               // 00000234: D290001A 02211102
  v_bfe_u32     v27, v2, 16, 8                              // 0000023C: D290001B 02212102
  v_cvt_f32_u32  v23, v23                                   // 00000244: 7E2E0D17
  v_cvt_f32_u32  v5, v5                                     // 00000248: 7E0A0D05
  v_mac_f32     v14, 2.0, v17                               // 0000024C: 3E1C22F4
  v_mac_f32     v15, 2.0, v18                               // 00000250: 3E1E24F4
  v_add_f32     v9, v9, v10                                 // 00000254: 06121509
  s_waitcnt     vmcnt(1)                                    // 00000258: BF8C1F71
  v_lshrrev_b32  v10, 24, v0                                // 0000025C: 2C140098
  v_subrev_f32  v17, v3, v4                                 // 00000260: 0A220903
  v_cvt_f32_u32  v6, v6                                     // 00000264: 7E0C0D06
  v_mac_f32     v11, 2.0, v20                               // 00000268: 3E1628F4
  v_mac_f32     v24, 2.0, v21                               // 0000026C: 3E302AF4
  v_and_b32     v8, 0x000000ff, v8                          // 00000270: 361010FF 000000FF
  v_cvt_f32_u32  v16, v16                                   // 00000278: 7E200D10
  v_cvt_f32_u32  v18, v25                                   // 0000027C: 7E240D19
  v_mad_f32     v19, -v22, 2.0, v19                         // 00000280: D2820013 244DE916
  v_and_b32     v2, 0x000000ff, v2                          // 00000288: 360404FF 000000FF
  v_cvt_f32_u32  v20, v26                                   // 00000290: 7E280D1A
  v_cvt_f32_u32  v21, v27                                   // 00000294: 7E2A0D1B
  s_waitcnt     vmcnt(0)                                    // 00000298: BF8C1F70
  v_lshrrev_b32  v22, 24, v1                                // 0000029C: 2C2C0298
  v_mac_f32     v4, 2.0, v5                                 // 000002A0: 3E080AF4
  v_add_f32     v5, v12, v14                                // 000002A4: 060A1D0C
  v_add_f32     v12, v13, v15                               // 000002A8: 06181F0D
  v_subrev_f32  v9, v23, v9                                 // 000002AC: 0A121317
  v_bfe_u32     v13, v0, 8, 8                               // 000002B0: D290000D 02211100
  v_bfe_u32     v14, v0, 16, 8                              // 000002B8: D290000E 02212100
  v_cvt_f32_u32  v10, v10                                   // 000002C0: 7E140D0A
  v_mac_f32     v17, 2.0, v6                                // 000002C4: 3E220CF4
  v_cvt_f32_u32  v6, v8                                     // 000002C8: 7E0C0D08
  v_mad_f32     v11, -v16, 2.0, v11                         // 000002CC: D282000B 242DE910
  v_mad_f32     v24, -v18, 2.0, v24                         // 000002D4: D2820018 2461E912
  v_cvt_f32_u32  v2, v2                                     // 000002DC: 7E040D02
  v_add_f32     v8, v19, v23                                // 000002E0: 06102F13
  v_bfe_u32     v15, v1, 8, 8                               // 000002E4: D290000F 02211101
  v_bfe_u32     v16, v1, 16, 8                              // 000002EC: D2900010 02212101
  v_cvt_f32_u32  v18, v22                                   // 000002F4: 7E240D16
  v_add_f32     v3, v3, v4                                  // 000002F8: 06060903
  v_subrev_f32  v4, v20, v5                                 // 000002FC: 0A080B14
  v_subrev_f32  v5, v21, v12                                // 00000300: 0A0A1915
  v_and_b32     v0, 0x000000ff, v0                          // 00000304: 360000FF 000000FF
  v_cvt_f32_u32  v12, v13                                   // 0000030C: 7E180D0D
  v_cvt_f32_u32  v13, v14                                   // 00000310: 7E1A0D0E
  v_mad_f32     v9, -v10, 2.0, v9                           // 00000314: D2820009 2425E90A
  v_mad_f32     v17, -v6, 2.0, v17                          // 0000031C: D2820011 2445E906
  v_add_f32     v6, v11, v20                                // 00000324: 060C290B
  v_add_f32     v10, v24, v21                               // 00000328: 06142B18
  v_and_b32     v1, 0x000000ff, v1                          // 0000032C: 360202FF 000000FF
  v_cvt_f32_u32  v11, v15                                   // 00000334: 7E160D0F
  v_cvt_f32_u32  v14, v16                                   // 00000338: 7E1C0D10
  v_sub_f32     v8, v8, v18                                 // 0000033C: 08102508
  v_mov_b32     v15, 0x7fffffff                             // 00000340: 7E1E02FF 7FFFFFFF
  v_subrev_f32  v3, v2, v3                                  // 00000348: 0A060702
  v_cvt_f32_u32  v0, v0                                     // 0000034C: 7E000D00
  v_mad_f32     v4, -v12, 2.0, v4                           // 00000350: D2820004 2411E90C
  v_mad_f32     v5, -v13, 2.0, v5                           // 00000358: D2820005 2415E90D
  v_subrev_f32  v9, v18, v9                                 // 00000360: 0A121312
  v_mov_b32     v12, 0x7fffffff                             // 00000364: 7E1802FF 7FFFFFFF
  v_add_f32     v2, v17, v2                                 // 0000036C: 06040511
  v_cvt_f32_u32  v1, v1                                     // 00000370: 7E020D01
  v_sub_f32     v6, v6, v11                                 // 00000374: 080C1706
  v_sub_f32     v10, v10, v14                               // 00000378: 08141D0A
  v_and_b32     v8, v15, v8                                 // 0000037C: 3610110F
  v_mad_f32     v3, -v0, 2.0, v3                            // 00000380: D2820003 240DE900
  v_subrev_f32  v0, v11, v4                                 // 00000388: 0A00090B
  v_subrev_f32  v4, v14, v5                                 // 0000038C: 0A080B0E
  v_and_b32     v5, v12, v9                                 // 00000390: 360A130C
  v_sub_f32     v2, v2, v1                                  // 00000394: 08040302
  v_and_b32     v6, v15, v6                                 // 00000398: 360C0D0F
  v_and_b32     v9, v15, v10                                // 0000039C: 3612150F
  v_subrev_f32  v1, v1, v3                                  // 000003A0: 0A020701
  v_and_b32     v0, v12, v0                                 // 000003A4: 3600010C
  v_and_b32     v3, v12, v4                                 // 000003A8: 3606090C
  v_max_u32     v4, v5, v8                                  // 000003AC: 28081105
  v_and_b32     v2, v15, v2                                 // 000003B0: 3604050F
  v_and_b32     v1, v12, v1                                 // 000003B4: 3602030C
  v_max_u32     v10, v0, v6                                 // 000003B8: 28140D00
  v_max_u32     v11, v3, v9                                 // 000003BC: 28161303
  v_lshrrev_b32  v12, 23, v4                                // 000003C0: 2C180897
  v_mov_b32     v13, 0xffffff81                             // 000003C4: 7E1A02FF FFFFFF81
  v_max_u32     v14, v1, v2                                 // 000003CC: 281C0501
  v_lshrrev_b32  v15, 23, v10                               // 000003D0: 2C1E1497
  v_lshrrev_b32  v16, 23, v11                               // 000003D4: 2C201697
  v_add_i32     v12, vcc, v13, v12                          // 000003D8: 4A18190D
  v_mov_b32     v17, 0xffffff82                             // 000003DC: 7E2202FF FFFFFF82
  v_mov_b32     v18, 0x0000007e                             // 000003E4: 7E2402FF 0000007E
  v_lshrrev_b32  v19, 23, v14                               // 000003EC: 2C261C97
  v_add_i32     v15, vcc, v13, v15                          // 000003F0: 4A1E1F0D
  v_add_i32     v16, vcc, v13, v16                          // 000003F4: 4A20210D
  v_med3_i32    v12, v12, v17, v18                          // 000003F8: D2B0000C 044A230C
  v_mov_b32     v20, 0xffffff81                             // 00000400: 7E2802FF FFFFFF81
  v_add_i32     v13, vcc, v13, v19                          // 00000408: 4A1A270D
  v_med3_i32    v15, v15, v17, v18                          // 0000040C: D2B0000F 044A230F
  v_med3_i32    v16, v16, v17, v18                          // 00000414: D2B00010 044A2310
  v_add_i32     v19, vcc, v20, v12                          // 0000041C: 4A261914
  v_med3_i32    v13, v13, v17, v18                          // 00000420: D2B0000D 044A230D
  v_add_i32     v17, vcc, v20, v15                          // 00000428: 4A221F14
  v_add_i32     v18, vcc, v20, v16                          // 0000042C: 4A242114
  v_sub_i32     v19, vcc, 0, v19                            // 00000430: 4C262680
  v_min_u32     v5, v5, v8                                  // 00000434: 260A1105
  v_add_i32     v8, vcc, v20, v13                           // 00000438: 4A101B14
  v_sub_i32     v17, vcc, 0, v17                            // 0000043C: 4C222280
  v_sub_i32     v18, vcc, 0, v18                            // 00000440: 4C242480
  v_lshlrev_b32  v19, 23, v19                               // 00000444: 34262697
  v_min_u32     v0, v0, v6                                  // 00000448: 26000D00
  v_min_u32     v3, v3, v9                                  // 0000044C: 26061303
  v_sub_i32     v6, vcc, 0, v8                              // 00000450: 4C0C1080
  v_lshlrev_b32  v8, 23, v17                                // 00000454: 34102297
  v_lshlrev_b32  v9, 23, v18                                // 00000458: 34122497
  v_mul_f32     v17, v5, v19                                // 0000045C: 10222705
  v_min_u32     v1, v1, v2                                  // 00000460: 26020501
  v_lshlrev_b32  v2, 23, v6                                 // 00000464: 34040C97
  v_mul_f32     v6, v4, v19                                 // 00000468: 100C2704
  v_mul_f32     v18, v0, v8                                 // 0000046C: 10241100
  v_mul_f32     v19, v3, v9                                 // 00000470: 10261303
  v_mul_f32     v17, v17, v17                               // 00000474: 10222311
  v_mov_b32     v20, 0x7f800000                             // 00000478: 7E2802FF 7F800000
  v_mul_f32     v8, v10, v8                                 // 00000480: 1010110A
  v_mul_f32     v9, v11, v9                                 // 00000484: 1012130B
  v_mul_f32     v21, v1, v2                                 // 00000488: 102A0501
  v_mul_f32     v18, v18, v18                               // 0000048C: 10242512
  v_mul_f32     v19, v19, v19                               // 00000490: 10262713
  v_mac_f32     v17, v6, v6                                 // 00000494: 3E220D06
  v_lshlrev_b32  v6, 23, v12                                // 00000498: 340C1897
  v_cmp_eq_i32  s[0:1], v5, 0                               // 0000049C: D1040000 00010105
  v_cmp_gt_u32  s[4:5], v4, v20                             // 000004A4: D1880004 00022904
  v_mul_f32     v2, v14, v2                                 // 000004AC: 1004050E
  v_mul_f32     v12, v21, v21                               // 000004B0: 10182B15
  v_mac_f32     v18, v8, v8                                 // 000004B4: 3E241108
  v_mac_f32     v19, v9, v9                                 // 000004B8: 3E261309
  v_sqrt_f32    v8, v17                                     // 000004BC: 7E106711
  v_lshlrev_b32  v9, 23, v15                                // 000004C0: 34121E97
  v_lshlrev_b32  v15, 23, v16                               // 000004C4: 341E2097
  v_add_i32     v6, vcc, 1.0, v6                            // 000004C8: 4A0C0CF2
  v_mov_b32     v16, 0x7f800000                             // 000004CC: 7E2002FF 7F800000
  v_cmp_eq_i32  s[10:11], v3, 0                             // 000004D4: D104000A 00010103
  v_cmp_eq_i32  s[12:13], v0, 0                             // 000004DC: D104000C 00010100
  v_cmp_gt_u32  s[14:15], v11, v20                          // 000004E4: D188000E 0002290B
  v_cmp_gt_u32  s[16:17], v10, v20                          // 000004EC: D1880010 0002290A
  s_or_b64      s[0:1], s[0:1], s[4:5]                      // 000004F4: 88800400
  v_mac_f32     v12, v2, v2                                 // 000004F8: 3E180502
  v_sqrt_f32    v2, v18                                     // 000004FC: 7E046712
  v_sqrt_f32    v17, v19                                    // 00000500: 7E226713
  v_lshlrev_b32  v13, 23, v13                               // 00000504: 341A1A97
  v_add_i32     v9, vcc, 1.0, v9                            // 00000508: 4A1212F2
  v_add_i32     v15, vcc, 1.0, v15                          // 0000050C: 4A1E1EF2
  v_mul_f32     v6, v8, v6                                  // 00000510: 100C0D08
  v_cmp_eq_i32  s[4:5], v5, v16                             // 00000514: D1040004 00022105
  v_cmp_eq_i32  s[18:19], v4, v16                           // 0000051C: D1040012 00022104
  v_cmp_eq_i32  s[20:21], v1, 0                             // 00000524: D1040014 00010101
  v_cmp_gt_u32  s[22:23], v14, v20                          // 0000052C: D1880016 0002290E
  s_or_b64      s[12:13], s[12:13], s[16:17]                // 00000534: 888C100C
  s_or_b64      s[10:11], s[10:11], s[14:15]                // 00000538: 888A0E0A
  v_sqrt_f32    v5, v12                                     // 0000053C: 7E0A670C
  v_add_i32     v8, vcc, 1.0, v13                           // 00000540: 4A101AF2
  v_mul_f32     v2, v2, v9                                  // 00000544: 10041302
  v_mul_f32     v9, v17, v15                                // 00000548: 10121F11
  v_cndmask_b32  v4, v6, v4, s[0:1]                         // 0000054C: D2000004 00020906
  v_cmp_eq_i32  s[0:1], v3, v16                             // 00000554: D1040000 00022103
  v_cmp_eq_i32  s[14:15], v0, v16                           // 0000055C: D104000E 00022100
  v_cmp_eq_i32  s[16:17], v11, v16                          // 00000564: D1040010 0002210B
  v_cmp_eq_i32  s[24:25], v10, v16                          // 0000056C: D1040018 0002210A
  s_or_b64      s[4:5], s[4:5], s[18:19]                    // 00000574: 88841204
  s_or_b64      s[18:19], s[20:21], s[22:23]                // 00000578: 88921614
  v_mul_f32     v0, v5, v8                                  // 0000057C: 10001105
  v_cndmask_b32  v2, v2, v10, s[12:13]                      // 00000580: D2000002 00321502
  v_cndmask_b32  v3, v9, v11, s[10:11]                      // 00000588: D2000003 002A1709
  v_cmp_eq_i32  s[10:11], v1, v16                           // 00000590: D104000A 00022101
  v_cmp_eq_i32  s[12:13], v14, v16                          // 00000598: D104000C 0002210E
  s_or_b64      s[14:15], s[14:15], s[24:25]                // 000005A0: 888E180E
  s_or_b64      s[0:1], s[0:1], s[16:17]                    // 000005A4: 88801000
  v_cndmask_b32  v1, v4, v16, s[4:5]                        // 000005A8: D2000001 00122104
  v_cndmask_b32  v0, v0, v14, s[18:19]                      // 000005B0: D2000000 004A1D00
  s_or_b64      vcc, s[10:11], s[12:13]                     // 000005B8: 88EA0C0A
  v_cndmask_b32  v2, v2, v16, s[14:15]                      // 000005BC: D2000002 003A2102
  v_cndmask_b32  v3, v3, v16, s[0:1]                        // 000005C4: D2000003 00022103
  v_mul_f32     v1, 0.5, v1                                 // 000005CC: 100202F0
  v_cndmask_b32  v0, v0, v16, vcc                           // 000005D0: 00002100
  v_mul_f32     v2, 0.5, v2                                 // 000005D4: 100404F0
  v_mul_f32     v3, 0.5, v3                                 // 000005D8: 100606F0
  v_cvt_u32_f32  v1, v1                                     // 000005DC: 7E020F01
  v_mov_b32     v4, 0x000000ff                              // 000005E0: 7E0802FF 000000FF
  v_mul_f32     v0, 0.5, v0                                 // 000005E8: 100000F0
  v_cvt_u32_f32  v2, v2                                     // 000005EC: 7E040F02
  v_cvt_u32_f32  v3, v3                                     // 000005F0: 7E060F03
  v_and_b32     v1, v1, v4                                  // 000005F4: 36020901
  s_load_dwordx4  s[0:3], s[2:3], 0x58                      // 000005F8: C0800358
  v_cvt_u32_f32  v0, v0                                     // 000005FC: 7E000F00
  v_and_b32     v2, v2, v4                                  // 00000600: 36040902
  v_and_b32     v3, v3, v4                                  // 00000604: 36060903
  v_lshlrev_b32  v1, 8, v1                                  // 00000608: 34020288
  s_mov_b32     s4, 0x0000ff00                              // 0000060C: BE8403FF 0000FF00
  v_and_b32     v0, v4, v0                                  // 00000614: 36000104
  v_lshlrev_b32  v2, 8, v2                                  // 00000618: 34040488
  v_bfi_b32     v1, s4, v1, v3                              // 0000061C: D2940001 040E0204
  v_bfi_b32     v0, s4, v2, v0                              // 00000624: D2940000 04020404
  v_lshlrev_b32  v1, 16, v1                                 // 0000062C: 34020290
  s_mov_b32     s4, 0xffff0000                              // 00000630: BE8403FF FFFF0000
  v_add_i32     v2, vcc, s8, v7                             // 00000638: 4A040E08
  v_bfi_b32     v0, s4, v1, v0                              // 0000063C: D2940000 04020204
  s_waitcnt     lgkmcnt(0)                                  // 00000644: BF8C007F
  tbuffer_store_format_x  v0, v2, s[0:3], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000648: EBA41000 80000002
label_0194:
  s_mov_b64     exec, s[6:7]                                // 00000650: BEFE0406
  s_endpgm                                                  // 00000654: BF810000



