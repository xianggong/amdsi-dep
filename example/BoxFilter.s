**
** Disassembly for '__kernel box_filter'
**

  s_buffer_load_dwordx2  s[0:1], s[4:7], 0x04               // 00000000: C2400504
  s_buffer_load_dword  s14, s[8:11], 0x08                   // 00000004: C2070908
  s_buffer_load_dwordx2  s[16:17], s[4:7], 0x18             // 00000008: C2480518
  s_waitcnt     lgkmcnt(0)                                  // 0000000C: BF8C007F
  s_min_u32     s0, s0, 0x0000ffff                          // 00000010: 8380FF00 0000FFFF
  s_min_u32     s1, s1, 0x0000ffff                          // 00000018: 8381FF01 0000FFFF
  v_mov_b32     v2, s0                                      // 00000020: 7E040200
  v_mov_b32     v3, s1                                      // 00000024: 7E060201
  v_mul_i32_i24  v2, s12, v2                                // 00000028: 1204040C
  v_mul_i32_i24  v3, s13, v3                                // 0000002C: 1206060D
  v_add_i32     v0, vcc, v0, v2                             // 00000030: 4A000500
  v_add_i32     v1, vcc, v1, v3                             // 00000034: 4A020701
  s_add_i32     s0, -1, s14                                 // 00000038: 81000EC1
  v_add_i32     v0, vcc, s16, v0                            // 0000003C: 4A000010
  v_add_i32     v1, vcc, s17, v1                            // 00000040: 4A020211
  s_lshr_b32    s0, s0, 1                                   // 00000044: 90008100
  v_cmp_gt_i32  s[12:13], s0, v1                            // 00000048: D108000C 00020200
  v_cmp_gt_i32  vcc, s0, v0                                 // 00000050: 7D080000
  s_buffer_load_dword  s1, s[8:11], 0x00                    // 00000054: C2008900
  s_buffer_load_dword  s8, s[8:11], 0x04                    // 00000058: C2040904
  s_or_b64      s[10:11], s[12:13], vcc                     // 0000005C: 888A6A0C
  s_buffer_load_dwordx2  s[4:5], s[4:7], 0x00               // 00000060: C2420500
  s_load_dwordx4  s[16:19], s[2:3], 0x58                    // 00000064: C0880358
  s_and_saveexec_b64  s[6:7], s[10:11]                      // 00000068: BE86240A
  s_waitcnt     lgkmcnt(0)                                  // 0000006C: BF8C007F
  v_mul_lo_i32  v2, s4, v1                                  // 00000070: D2D60002 02020204
  s_cbranch_execz  label_0025                               // 00000078: BF880006
  v_add_i32     v0, vcc, v0, v2                             // 0000007C: 4A000500
  v_lshlrev_b32  v0, 2, v0                                  // 00000080: 34000082
  v_add_i32     v0, vcc, s8, v0                             // 00000084: 4A000008
  v_mov_b32     v1, 0                                       // 00000088: 7E020280
  tbuffer_store_format_x  v1, v0, s[16:19], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000008C: EBA41000 80040100
label_0025:
  s_andn2_b64   exec, s[6:7], exec                          // 00000094: 8AFE7E06
  s_cbranch_execz  label_0133                               // 00000098: BF88010C
  s_not_b32     s9, s0                                      // 0000009C: BE890700
  s_add_i32     s10, s4, s9                                 // 000000A0: 810A0904
  v_cmp_gt_i32  s[10:11], v0, s10                           // 000000A4: D108000A 00001500
  s_and_saveexec_b64  s[10:11], s[10:11]                    // 000000AC: BE8A240A
  v_mul_lo_i32  v2, s4, v1                                  // 000000B0: D2D60002 02020204
  s_cbranch_execz  label_0035                               // 000000B8: BF880006
  v_add_i32     v0, vcc, v0, v2                             // 000000BC: 4A000500
  v_lshlrev_b32  v0, 2, v0                                  // 000000C0: 34000082
  v_add_i32     v0, vcc, s8, v0                             // 000000C4: 4A000008
  v_mov_b32     v1, 0                                       // 000000C8: 7E020280
  tbuffer_store_format_x  v1, v0, s[16:19], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000000CC: EBA41000 80040100
label_0035:
  s_andn2_b64   exec, s[10:11], exec                        // 000000D4: 8AFE7E0A
  s_cbranch_execz  label_0133                               // 000000D8: BF8800FC
  s_add_i32     s5, s5, s9                                  // 000000DC: 81050905
  v_cmp_gt_i32  s[10:11], v1, s5                            // 000000E0: D108000A 00000B01
  s_and_saveexec_b64  s[10:11], s[10:11]                    // 000000E8: BE8A240A
  v_mul_lo_i32  v2, s4, v1                                  // 000000EC: D2D60002 02020204
  s_cbranch_execz  label_0044                               // 000000F4: BF880006
  v_add_i32     v0, vcc, v0, v2                             // 000000F8: 4A000500
  v_lshlrev_b32  v0, 2, v0                                  // 000000FC: 34000082
  v_add_i32     v0, vcc, s8, v0                             // 00000100: 4A000008
  v_mov_b32     v1, 0                                       // 00000104: 7E020280
  tbuffer_store_format_x  v1, v0, s[16:19], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000108: EBA41000 80040100
label_0044:
  s_andn2_b64   exec, s[10:11], exec                        // 00000110: 8AFE7E0A
  v_subrev_i32  v2, vcc, s0, v0                             // 00000114: 4E040000
  s_cbranch_execz  label_0133                               // 00000118: BF8800EC
  v_subrev_i32  v3, vcc, s0, v1                             // 0000011C: 4E060200
  v_cmp_gt_i32  s[10:11], v2, 0                             // 00000120: D108000A 00010102
  v_cmp_gt_i32  s[12:13], v3, 0                             // 00000128: D108000C 00010103
  s_and_b64     s[12:13], s[10:11], s[12:13]                // 00000130: 878C0C0A
  v_add_i32     v4, vcc, s0, v0                             // 00000134: 4A080000
  v_add_i32     v5, vcc, -1, v3                             // 00000138: 4A0A06C1
  s_load_dwordx4  s[20:23], s[2:3], 0x50                    // 0000013C: C08A0350
  s_and_saveexec_b64  s[2:3], s[12:13]                      // 00000140: BE82240C
  v_mul_lo_i32  v6, v5, s4                                  // 00000144: D2D60006 02000905
  s_cbranch_execz  label_005B                               // 0000014C: BF880007
  v_add_i32     v6, vcc, v2, v6                             // 00000150: 4A0C0D02
  v_lshlrev_b32  v6, 4, v6                                  // 00000154: 340C0C84
  v_add_i32     v6, vcc, s1, v6                             // 00000158: 4A0C0C01
  v_add_i32     v6, vcc, -16, v6                            // 0000015C: 4A0C0CD0
  s_waitcnt     lgkmcnt(0)                                  // 00000160: BF8C007F
  tbuffer_load_format_xyzw  v[6:9], v6, s[20:23], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 00000164: EBF31000 80050606
label_005B:
  s_andn2_b64   exec, s[2:3], exec                          // 0000016C: 8AFE7E02
  s_cbranch_execz  label_0061                               // 00000170: BF880004
  v_mov_b32     v6, 0                                       // 00000174: 7E0C0280
  v_mov_b32     v7, 0                                       // 00000178: 7E0E0280
  v_mov_b32     v8, 0                                       // 0000017C: 7E100280
  v_mov_b32     v9, 0                                       // 00000180: 7E120280
label_0061:
  s_mov_b64     exec, s[2:3]                                // 00000184: BEFE0402
  v_cmp_gt_i32  s[2:3], v4, -1                              // 00000188: D1080002 00018304
  v_cmp_gt_i32  s[12:13], v3, 0                             // 00000190: D108000C 00010103
  s_mul_i32     s5, s14, s14                                // 00000198: 93050E0E
  v_add_i32     v3, vcc, s0, v1                             // 0000019C: 4A060200
  s_and_b64     s[2:3], s[12:13], s[2:3]                    // 000001A0: 8782020C
  s_and_saveexec_b64  s[2:3], s[2:3]                        // 000001A4: BE822402
  v_mul_lo_i32  v5, v5, s4                                  // 000001A8: D2D60005 02000905
  v_add_i32     v5, vcc, v4, v5                             // 000001B0: 4A0A0B04
  v_lshlrev_b32  v5, 4, v5                                  // 000001B4: 340A0A84
  v_add_i32     v5, vcc, s1, v5                             // 000001B8: 4A0A0A01
  s_waitcnt     lgkmcnt(0)                                  // 000001BC: BF8C007F
  tbuffer_load_format_xyzw  v[21:24], v5, s[20:23], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 000001C0: EBF31000 80051505
  s_andn2_b64   exec, s[2:3], exec                          // 000001C8: 8AFE7E02
  s_cbranch_execz  label_0078                               // 000001CC: BF880004
  v_mov_b32     v21, 0                                      // 000001D0: 7E2A0280
  v_mov_b32     v22, 0                                      // 000001D4: 7E2C0280
  v_mov_b32     v23, 0                                      // 000001D8: 7E2E0280
  v_mov_b32     v24, 0                                      // 000001DC: 7E300280
label_0078:
  s_mov_b64     exec, s[2:3]                                // 000001E0: BEFE0402
  v_cmp_lt_i32  vcc, -1, v3                                 // 000001E4: 7D0206C1
  s_and_b64     s[2:3], s[10:11], vcc                       // 000001E8: 87826A0A
  v_mul_lo_i32  v3, v3, s4                                  // 000001EC: D2D60003 02000903
  s_and_saveexec_b64  s[2:3], s[2:3]                        // 000001F4: BE822402
  v_add_i32     v2, vcc, v2, v3                             // 000001F8: 4A040702
  v_lshlrev_b32  v2, 4, v2                                  // 000001FC: 34040484
  v_add_i32     v2, vcc, s1, v2                             // 00000200: 4A040401
  v_add_i32     v2, vcc, -16, v2                            // 00000204: 4A0404D0
  s_waitcnt     lgkmcnt(0)                                  // 00000208: BF8C007F
  tbuffer_load_format_xyzw  v[12:15], v2, s[20:23], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 0000020C: EBF31000 80050C02
  s_andn2_b64   exec, s[2:3], exec                          // 00000214: 8AFE7E02
  s_cbranch_execz  label_008B                               // 00000218: BF880004
  v_mov_b32     v12, 0                                      // 0000021C: 7E180280
  v_mov_b32     v13, 0                                      // 00000220: 7E1A0280
  v_mov_b32     v14, 0                                      // 00000224: 7E1C0280
  v_mov_b32     v15, 0                                      // 00000228: 7E1E0280
label_008B:
  s_mov_b64     exec, s[2:3]                                // 0000022C: BEFE0402
  v_add_i32     v3, vcc, v4, v3                             // 00000230: 4A060704
  v_lshlrev_b32  v3, 4, v3                                  // 00000234: 34060684
  v_add_i32     v3, vcc, s1, v3                             // 00000238: 4A060601
  s_waitcnt     lgkmcnt(0)                                  // 0000023C: BF8C007F
  tbuffer_load_format_xyzw  v[16:19], v3, s[20:23], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 00000240: EBF31000 80051003
  s_sub_i32     s0, 0, s5                                   // 00000248: 81800580
  s_max_i32     s0, s5, s0                                  // 0000024C: 84000005
  v_cvt_f32_u32  v3, s0                                     // 00000250: 7E060C00
  v_rcp_f32     v3, v3                                      // 00000254: 7E065503
  v_mul_f32     v3, 0x4f800000, v3                          // 00000258: 100606FF 4F800000
  v_cvt_u32_f32  v3, v3                                     // 00000260: 7E060F03
  v_mul_lo_u32  v4, s0, v3                                  // 00000264: D2D20004 02020600
  v_mul_hi_u32  v20, s0, v3                                 // 0000026C: D2D40014 02020600
  s_waitcnt     vmcnt(0)                                    // 00000274: BF8C1F70
  v_add_i32     v9, vcc, v9, v19                            // 00000278: 4A122709
  v_sub_i32     v19, vcc, 0, v4                             // 0000027C: 4C260880
  v_cmp_ne_i32  s[2:3], v20, 0                              // 00000280: D10A0002 00010114
  v_add_i32     v7, vcc, v7, v17                            // 00000288: 4A0E2307
  v_add_i32     v8, vcc, v8, v18                            // 0000028C: 4A102508
  v_sub_i32     v9, vcc, v9, v24                            // 00000290: 4C123109
  v_cndmask_b32  v4, v19, v4, s[2:3]                        // 00000294: D2000004 000A0913
  v_add_i32     v6, vcc, v6, v16                            // 0000029C: 4A0C2106
  v_sub_i32     v7, vcc, v7, v22                            // 000002A0: 4C0E2D07
  v_sub_i32     v8, vcc, v8, v23                            // 000002A4: 4C102F08
  v_sub_i32     v9, vcc, v9, v15                            // 000002A8: 4C121F09
  v_mul_hi_u32  v4, v4, v3                                  // 000002AC: D2D40004 02020704
  v_sub_i32     v5, vcc, v6, v21                            // 000002B4: 4C0A2B06
  v_sub_i32     v6, vcc, v7, v13                            // 000002B8: 4C0C1B07
  v_sub_i32     v7, vcc, v8, v14                            // 000002BC: 4C0E1D08
  v_sub_i32     v8, vcc, 0, v9                              // 000002C0: 4C101280
  v_sub_i32     v10, vcc, v3, v4                            // 000002C4: 4C140903
  v_add_i32     v3, vcc, v3, v4                             // 000002C8: 4A060903
  v_sub_i32     v2, vcc, v5, v12                            // 000002CC: 4C041905
  v_sub_i32     v4, vcc, 0, v6                              // 000002D0: 4C080C80
  v_sub_i32     v5, vcc, 0, v7                              // 000002D4: 4C0A0E80
  v_max_i32     v8, v9, v8                                  // 000002D8: 24101109
  v_cndmask_b32  v3, v3, v10, s[2:3]                        // 000002DC: D2000003 000A1503
  v_sub_i32     v10, vcc, 0, v2                             // 000002E4: 4C140480
  v_max_i32     v4, v6, v4                                  // 000002E8: 24080906
  v_max_i32     v5, v7, v5                                  // 000002EC: 240A0B07
  v_mul_hi_u32  v11, v3, v8                                 // 000002F0: D2D4000B 02021103
  v_max_i32     v10, v2, v10                                // 000002F8: 24141502
  v_mul_hi_u32  v12, v3, v4                                 // 000002FC: D2D4000C 02020903
  v_mul_hi_u32  v13, v3, v5                                 // 00000304: D2D4000D 02020B03
  v_mul_lo_u32  v14, v11, s0                                // 0000030C: D2D2000E 0200010B
  v_mul_hi_u32  v3, v3, v10                                 // 00000314: D2D40003 02021503
  v_mul_lo_u32  v15, v12, s0                                // 0000031C: D2D2000F 0200010C
  v_mul_lo_u32  v16, v13, s0                                // 00000324: D2D20010 0200010D
  v_sub_i32     v17, vcc, v8, v14                           // 0000032C: 4C221D08
  v_mul_lo_u32  v18, v3, s0                                 // 00000330: D2D20012 02000103
  v_sub_i32     v19, vcc, v4, v15                           // 00000338: 4C261F04
  v_sub_i32     v20, vcc, v5, v16                           // 0000033C: 4C282105
  v_cmp_ge_u32  s[2:3], v8, v14                             // 00000340: D18C0002 00021D08
  v_cmp_ge_u32  s[10:11], v17, s0                           // 00000348: D18C000A 00000111
  v_sub_i32     v8, vcc, v10, v18                           // 00000350: 4C10250A
  v_cmp_ge_u32  s[12:13], v4, v15                           // 00000354: D18C000C 00021F04
  v_cmp_ge_u32  s[14:15], v5, v16                           // 0000035C: D18C000E 00022105
  v_cmp_ge_u32  s[20:21], v19, s0                           // 00000364: D18C0014 00000113
  v_cmp_ge_u32  s[22:23], v20, s0                           // 0000036C: D18C0016 00000114
  s_and_b64     s[10:11], s[2:3], s[10:11]                  // 00000374: 878A0A02
  v_cmp_ge_u32  s[24:25], v10, v18                          // 00000378: D18C0018 0002250A
  v_cmp_ge_u32  s[26:27], v8, s0                            // 00000380: D18C001A 00000108
  s_and_b64     s[20:21], s[12:13], s[20:21]                // 00000388: 8794140C
  s_and_b64     s[22:23], s[14:15], s[22:23]                // 0000038C: 8796160E
  v_addc_u32    v4, vcc, v11, 0, s[10:11]                   // 00000390: D2506A04 0029010B
  s_and_b64     s[10:11], s[24:25], s[26:27]                // 00000398: 878A1A18
  v_addc_u32    v5, vcc, v12, 0, s[20:21]                   // 0000039C: D2506A05 0051010C
  v_addc_u32    v8, vcc, v13, 0, s[22:23]                   // 000003A4: D2506A08 0059010D
  v_addc_u32    v4, vcc, v4, -1, s[2:3]                     // 000003AC: D2506A04 00098304
  v_cmp_ne_i32  s[0:1], s0, 0                               // 000003B4: D10A0000 00010000
  v_cmp_lt_i32  s[2:3], s5, 0                               // 000003BC: D1020002 00010005
  v_cmp_lt_i32  s[20:21], v9, 0                             // 000003C4: D1020014 00010109
  v_addc_u32    v3, vcc, v3, 0, s[10:11]                    // 000003CC: D2506A03 00290103
  v_addc_u32    v5, vcc, v5, -1, s[12:13]                   // 000003D4: D2506A05 00318305
  v_addc_u32    v8, vcc, v8, -1, s[14:15]                   // 000003DC: D2506A08 00398308
  v_cndmask_b32  v4, -1, v4, s[0:1]                         // 000003E4: D2000004 000208C1
  v_cmp_lt_i32  s[10:11], v6, 0                             // 000003EC: D102000A 00010106
  v_cmp_lt_i32  s[12:13], v7, 0                             // 000003F4: D102000C 00010107
  v_addc_u32    v3, vcc, v3, -1, s[24:25]                   // 000003FC: D2506A03 00618303
  v_cndmask_b32  v5, -1, v5, s[0:1]                         // 00000404: D2000005 00020AC1
  v_cndmask_b32  v6, -1, v8, s[0:1]                         // 0000040C: D2000006 000210C1
  s_xor_b64     s[14:15], s[2:3], s[20:21]                  // 00000414: 898E1402
  v_sub_i32     v7, vcc, 0, v4                              // 00000418: 4C0E0880
  v_cmp_lt_i32  s[20:21], v2, 0                             // 0000041C: D1020014 00010102
  v_cndmask_b32  v2, -1, v3, s[0:1]                         // 00000424: D2000002 000206C1
  s_xor_b64     s[0:1], s[2:3], s[10:11]                    // 0000042C: 89800A02
  s_xor_b64     s[10:11], s[2:3], s[12:13]                  // 00000430: 898A0C02
  v_sub_i32     v3, vcc, 0, v5                              // 00000434: 4C060A80
  v_sub_i32     v8, vcc, 0, v6                              // 00000438: 4C100C80
  v_cndmask_b32  v4, v4, v7, s[14:15]                       // 0000043C: D2000004 003A0F04
  v_mov_b32     v7, 0x000000ff                              // 00000444: 7E0E02FF 000000FF
  s_xor_b64     s[2:3], s[2:3], s[20:21]                    // 0000044C: 89821402
  v_sub_i32     v9, vcc, 0, v2                              // 00000450: 4C120480
  v_cndmask_b32  v3, v5, v3, s[0:1]                         // 00000454: D2000003 00020705
  v_cndmask_b32  v5, v6, v8, s[10:11]                       // 0000045C: D2000005 002A1106
  v_and_b32     v4, v4, v7                                  // 00000464: 36080F04
  v_cndmask_b32  v2, v2, v9, s[2:3]                         // 00000468: D2000002 000A1302
  v_mul_lo_i32  v1, s4, v1                                  // 00000470: D2D60001 02020204
  v_and_b32     v3, v3, v7                                  // 00000478: 36060F03
  v_and_b32     v5, v5, v7                                  // 0000047C: 360A0F05
  v_lshlrev_b32  v4, 8, v4                                  // 00000480: 34080888
  s_mov_b32     s0, 0x0000ff00                              // 00000484: BE8003FF 0000FF00
  v_add_i32     v0, vcc, v0, v1                             // 0000048C: 4A000300
  v_and_b32     v1, v7, v2                                  // 00000490: 36020507
  v_lshlrev_b32  v2, 8, v3                                  // 00000494: 34040688
  v_bfi_b32     v3, s0, v4, v5                              // 00000498: D2940003 04160800
  v_lshlrev_b32  v0, 2, v0                                  // 000004A0: 34000082
  v_bfi_b32     v1, s0, v2, v1                              // 000004A4: D2940001 04060400
  v_lshlrev_b32  v2, 16, v3                                 // 000004AC: 34040690
  s_mov_b32     s0, 0xffff0000                              // 000004B0: BE8003FF FFFF0000
  v_add_i32     v0, vcc, s8, v0                             // 000004B8: 4A000008
  v_bfi_b32     v1, s0, v2, v1                              // 000004BC: D2940001 04060400
  tbuffer_store_format_x  v1, v0, s[16:19], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000004C4: EBA41000 80040100
label_0133:
  s_mov_b64     exec, s[6:7]                                // 000004CC: BEFE0406
  s_endpgm                                                  // 000004D0: BF810000



**
** Disassembly for '__kernel horizontalSAT0'
**

  s_load_dwordx4  s[16:19], s[2:3], 0x04                    // 00000000: C0880304
  s_waitcnt     lgkmcnt(0)                                  // 00000004: BF8C007F
  s_buffer_load_dword  s0, s[16:19], 0x0c                   // 00000008: C200110C
  s_waitcnt     lgkmcnt(0)                                  // 0000000C: BF8C007F
  v_cvt_f32_i32  v3, s0                                     // 00000010: 7E060A00
  v_and_b32     v4, 0x7fffffff, v3                          // 00000014: 360806FF 7FFFFFFF
  v_lshrrev_b32  v5, 23, v4                                 // 0000001C: 2C0A0897
  v_or_b32      v6, 1.0, v4                                 // 00000020: 380C08F2
  v_cmp_eq_i32  s[14:15], v5, 0                             // 00000024: D104000E 00010105
  v_add_f32     v6, -1.0, v6                                // 0000002C: 060C0CF3
  v_cndmask_b32  v7, v4, v6, s[14:15]                       // 00000030: D2000007 003A0D04
  v_lshlrev_b32  v8, 1, v7                                  // 00000038: 34100E81
  v_and_b32     v9, 0x007f0000, v7                          // 0000003C: 36120EFF 007F0000
  v_and_b32     v8, 0x00010000, v8                          // 00000044: 361010FF 00010000
  v_add_i32     v8, vcc, v9, v8                             // 0000004C: 4A101109
  v_ashrrev_i32  v9, 16, v8                                 // 00000050: 30121090
  s_load_dwordx4  s[20:23], s[2:3], 0x08                    // 00000054: C08A0308
  v_lshlrev_b32  v10, 3, v9                                 // 00000058: 34141283
  v_add_i32     v10, vcc, 0x00000620, v10                   // 0000005C: 4A1414FF 00000620
  v_ashrrev_i32  v11, 4, v10                                // 00000064: 30161484
  v_readfirstlane_b32  s1, v11                              // 00000068: 7E02050B
  s_lshl_b32    s1, s1, 4                                   // 0000006C: 8F018401
  s_waitcnt     lgkmcnt(0)                                  // 00000070: BF8C007F
  s_buffer_load_dwordx4  s[24:27], s[20:23], s1             // 00000074: C28C1401
  v_and_b32     v7, 0x007fffff, v7                          // 00000078: 360E0EFF 007FFFFF
  v_bfe_u32     v10, v10, 3, 1                              // 00000080: D290000A 0205070A
  v_bfe_i32     v9, v9, 1, 28                               // 00000088: D2920009 02710309
  v_or_b32      v11, 0.5, v8                                // 00000090: 381610F0
  v_or_b32      v7, 0.5, v7                                 // 00000094: 380E0EF0
  v_cmp_eq_i32  vcc, 0, v10                                 // 00000098: 7D041480
  s_waitcnt     lgkmcnt(0)                                  // 0000009C: BF8C007F
  v_mov_b32     v10, s24                                    // 000000A0: 7E140218
  v_mov_b32     v12, s26                                    // 000000A4: 7E18021A
  v_readfirstlane_b32  s1, v9                               // 000000A8: 7E020509
  v_sub_f32     v7, v11, v7                                 // 000000AC: 080E0F0B
  v_cndmask_b32  v9, v12, v10, vcc                          // 000000B0: 0012150C
  v_mov_b32     v10, s25                                    // 000000B4: 7E140219
  v_mov_b32     v11, s27                                    // 000000B8: 7E16021B
  s_lshl_b32    s1, s1, 4                                   // 000000BC: 8F018401
  v_cndmask_b32  v10, v11, v10, vcc                         // 000000C0: 0014150B
  v_mul_f32     v11, v7, v9                                 // 000000C4: 10161307
  s_buffer_load_dwordx4  s[24:27], s[20:23], s1             // 000000C8: C28C1401
  v_mac_f32     v11, v7, v10                                // 000000CC: 3E161507
  v_mul_f32     v12, 0x3e800000, v11                        // 000000D0: 101816FF 3E800000
  v_ashrrev_i32  v6, 23, v6                                 // 000000D8: 300C0C97
  v_sub_f32     v13, 1.0, v4                                // 000000DC: 081A08F2
  v_add_f32     v12, 0x3eaaaaab, v12                        // 000000E0: 061818FF 3EAAAAAB
  v_mad_f32     v9, v7, v9, -v11                            // 000000E8: D2820009 842E1307
  v_add_i32     v5, vcc, 0xffffff81, v5                     // 000000F0: 4A0A0AFF FFFFFF81
  v_add_i32     v6, vcc, 0xffffff03, v6                     // 000000F8: 4A0C0CFF FFFFFF03
  v_mul_f32     v14, 0x3e124925, v13                        // 00000100: 101C1AFF 3E124925
  v_mad_f32     v12, v11, v12, 0.5                          // 00000108: D282000C 03C2190B
  v_mul_f32     v15, v11, v11                               // 00000110: 101E170B
  v_mac_f32     v9, v7, v10                                 // 00000114: 3E121507
  v_cndmask_b32  v5, v5, v6, s[14:15]                       // 00000118: D2000005 003A0D05
  v_bfe_u32     v6, v8, 16, 1                               // 00000120: D2900006 02052108
  v_add_f32     v7, 0x3e2aaaab, v14                         // 00000128: 060E1CFF 3E2AAAAB
  s_mov_b32     s1, 0x3e4ccccd                              // 00000130: BE8103FF 3E4CCCCD
  v_mac_f32     v9, v12, v15                                // 00000138: 3E121F0C
  v_cvt_f32_i32  v5, v5                                     // 0000013C: 7E0A0B05
  s_mov_b32     s14, 0x3805fdf4                             // 00000140: BE8E03FF 3805FDF4
  v_cmp_eq_i32  vcc, 0, v6                                  // 00000148: 7D040C80
  s_waitcnt     lgkmcnt(0)                                  // 0000014C: BF8C007F
  v_mov_b32     v6, s25                                     // 00000150: 7E0C0219
  v_mov_b32     v8, s27                                     // 00000154: 7E10021B
  v_mad_f32     v7, v13, v7, s1                             // 00000158: D2820007 00060F0D
  s_mov_b32     s1, 0x3e800000                              // 00000160: BE8103FF 3E800000
  v_mad_f32     v9, v5, s14, -v9                            // 00000168: D2820009 84241D05
  v_mov_b32     v10, s24                                    // 00000170: 7E140218
  v_mov_b32     v12, s26                                    // 00000174: 7E18021A
  v_cndmask_b32  v6, v8, v6, vcc                            // 00000178: 000C0D08
  v_mad_f32     v7, v13, v7, s1                             // 0000017C: D2820007 00060F0D
  s_mov_b32     s1, 0x3eaaaaab                              // 00000184: BE8103FF 3EAAAAAB
  v_mul_f32     v8, v13, v13                                // 0000018C: 10101B0D
  s_buffer_load_dword  s14, s[16:19], 0x08                  // 00000190: C2071108
  v_cndmask_b32  v10, v12, v10, vcc                         // 00000194: 0014150C
  v_add_f32     v6, v9, v6                                  // 00000198: 060C0D09
  v_mad_f32     v7, v13, v7, s1                             // 0000019C: D2820007 00060F0D
  v_mul_f32     v9, v13, v8                                 // 000001A4: 1012110D
  v_mul_f32     v8, -0.5, v8                                // 000001A8: 101010F1
  s_mov_b32     s1, 0x3f317000                              // 000001AC: BE8103FF 3F317000
  s_mov_b32     s15, 0x3d800000                             // 000001B4: BE8F03FF 3D800000
  v_subrev_f32  v12, v11, v6                                // 000001BC: 0A180D0B
  v_mad_f32     v14, -v7, v9, v8                            // 000001C0: D282000E 24221307
  v_mac_f32     v10, s1, v5                                 // 000001C8: 3E140A01
  v_cmp_gt_f32  vcc, s15, abs(v13)                          // 000001CC: D008026A 00021A0F
  v_add_f32     v5, v12, v10                                // 000001D4: 060A150C
  v_subrev_f32  v15, v13, v14                               // 000001D8: 0A1E1D0D
  v_mul_f32     v7, v7, v9                                  // 000001DC: 100E1307
  v_cndmask_b32  v9, v12, v14, vcc                          // 000001E0: 00121D0C
  v_cndmask_b32  v8, -v11, v8, vcc                          // 000001E4: D2000008 21AA110B
  v_cndmask_b32  v5, v5, v15, vcc                           // 000001EC: 000A1F05
  v_cndmask_b32  v10, v10, -v13, vcc                        // 000001F0: D200000A 41AA1B0A
  v_cndmask_b32  v6, v6, -v7, vcc                           // 000001F8: D2000006 41AA0F06
  v_sub_f32     v7, v9, v8                                  // 00000200: 080E1109
  v_subrev_f32  v8, v5, v10                                 // 00000204: 0A101505
  v_sub_f32     v6, v6, v7                                  // 00000208: 080C0F06
  v_add_f32     v7, v9, v8                                  // 0000020C: 060E1109
  v_and_b32     v8, 0xfffff000, v5                          // 00000210: 36100AFF FFFFF000
  s_waitcnt     lgkmcnt(0)                                  // 00000218: BF8C007F
  v_cvt_f32_i32  v9, s14                                    // 0000021C: 7E120A0E
  v_add_f32     v6, v6, v7                                  // 00000220: 060C0F06
  v_sub_f32     v5, v5, v8                                  // 00000224: 080A1105
  v_and_b32     v7, 0xfffff000, v9                          // 00000228: 360E12FF FFFFF000
  v_add_f32     v5, v6, v5                                  // 00000230: 060A0B06
  v_sub_f32     v6, v9, v7                                  // 00000234: 080C0F09
  v_mul_f32     v10, v5, v6                                 // 00000238: 10140D05
  v_mac_f32     v10, v8, v6                                 // 0000023C: 3E140D08
  v_mac_f32     v10, v5, v7                                 // 00000240: 3E140F05
  v_mad_f32     v5, v7, v8, v10                             // 00000244: D2820005 042A1107
  v_mul_f32     v6, 0x42b8aa3b, v5                          // 0000024C: 100C0AFF 42B8AA3B
  v_cvt_i32_f32  v6, v6                                     // 00000254: 7E0C1106
  v_and_b32     v11, 63, v6                                 // 00000258: 36160CBF
  v_lshlrev_b32  v11, 3, v11                                // 0000025C: 34161683
  v_add_i32     v11, vcc, 0x00000410, v11                   // 00000260: 4A1616FF 00000410
  v_ashrrev_i32  v12, 4, v11                                // 00000268: 30181684
  v_readfirstlane_b32  s1, v12                              // 0000026C: 7E02050C
  v_cvt_f32_i32  v12, v6                                    // 00000270: 7E180B06
  s_mov_b32     s14, 0xbc310000                             // 00000274: BE8E03FF BC310000
  s_lshl_b32    s1, s1, 4                                   // 0000027C: 8F018401
  v_mad_f32     v13, v12, s14, v5                           // 00000280: D282000D 04141D0C
  s_mov_b32     s14, 0xb7e42fef                             // 00000288: BE8E03FF B7E42FEF
  v_mad_f32     v7, v7, v8, -v5                             // 00000290: D2820007 84161107
  s_buffer_load_dwordx4  s[20:23], s[20:23], s1             // 00000298: C28A1401
  v_mac_f32     v13, s14, v12                               // 0000029C: 3E1A180E
  v_add_f32     v7, v10, v7                                 // 000002A0: 060E0F0A
  v_add_f32     v8, v13, v7                                 // 000002A4: 06100F0D
  v_and_b32     v10, 0x7fffffff, v9                         // 000002A8: 361412FF 7FFFFFFF
  v_mul_f32     v12, 0x3d2aaaab, v8                         // 000002B0: 101810FF 3D2AAAAB
  v_lshrrev_b32  v13, 23, v10                               // 000002B8: 2C1A1497
  v_add_f32     v12, 0x3e2aaaab, v12                        // 000002BC: 061818FF 3E2AAAAB
  v_bfe_u32     v11, v11, 3, 1                              // 000002C4: D290000B 0205070B
  v_sub_i32     v14, vcc, 0x00000096, v13                   // 000002CC: 4C1C1AFF 00000096
  v_mad_f32     v12, v12, v8, 0.5                           // 000002D4: D282000C 03C2110C
  v_mul_f32     v15, v8, v8                                 // 000002DC: 101E1108
  v_cmp_eq_i32  s[14:15], v11, 0                            // 000002E0: D104000E 0001010B
  s_waitcnt     lgkmcnt(0)                                  // 000002E8: BF8C007F
  v_mov_b32     v11, s21                                    // 000002EC: 7E160215
  v_mov_b32     v16, s23                                    // 000002F0: 7E200217
  v_lshl_b32    v17, 1, v14                                 // 000002F4: 32221C81
  v_mac_f32     v8, v12, v15                                // 000002F8: 3E101F0C
  v_mov_b32     v12, s20                                    // 000002FC: 7E180214
  v_mov_b32     v15, s22                                    // 00000300: 7E1E0216
  v_cndmask_b32  v11, v16, v11, s[14:15]                    // 00000304: D200000B 003A1710
  v_and_b32     v16, v9, v17                                // 0000030C: 36202309
  v_bfe_u32     v14, v9, 0, v14                             // 00000310: D290000E 04390109
  v_add_i32     v13, vcc, 0xffffff82, v13                   // 00000318: 4A1A1AFF FFFFFF82
  v_cndmask_b32  v12, v15, v12, s[14:15]                    // 00000320: D200000C 003A190F
  v_mac_f32     v11, v11, v8                                // 00000328: 3E16110B
  v_ashrrev_i32  v15, 6, v6                                 // 0000032C: 301E0C86
  v_cmp_eq_i32  s[14:15], v16, 0                            // 00000330: D104000E 00010110
  v_cmp_eq_i32  s[20:21], v14, 0                            // 00000338: D1040014 0001010E
  v_cmp_ge_i32  s[22:23], v13, 1                            // 00000340: D10C0016 0001030D
  v_mac_f32     v11, v12, v8                                // 00000348: 3E16110C
  v_add_i32     v8, vcc, 21, v15                            // 0000034C: 4A101E95
  v_lshlrev_b32  v6, 17, v6                                 // 00000350: 340C0C91
  s_mov_b32     s1, 0xb482e308                              // 00000354: BE8103FF B482E308
  s_mov_b32     s24, 0x42b17218                             // 0000035C: BE9803FF 42B17218
  v_cndmask_b32  v14, 1, 2, s[14:15]                        // 00000364: D200000E 00390481
  s_and_b64     s[14:15], s[20:21], s[22:23]                // 0000036C: 878E1614
  v_add_f32     v11, v12, v11                               // 00000370: 0616170C
  v_lshl_b32    v8, 1, v8                                   // 00000374: 32101081
  v_and_b32     v6, 0xff800000, v6                          // 00000378: 360C0CFF FF800000
  s_movk_i32    s20, 0xff83                                 // 00000380: B014FF83
  v_cmp_gt_f32  s[22:23], v7, s1                            // 00000384: D0080016 00000307
  v_cmp_eq_f32  s[26:27], v5, s24                           // 0000038C: D004001A 00003105
  v_cndmask_b32  v7, 0, v14, s[14:15]                       // 00000394: D2000007 003A1C80
  v_cmp_le_i32  s[14:15], v13, 24                           // 0000039C: D106000E 0001310D
  v_mul_f32     v8, v11, v8                                 // 000003A4: 1010110B
  v_add_i32     v6, vcc, v11, v6                            // 000003A8: 4A0C0D0B
  v_cmp_lt_i32  s[20:21], v15, s20                          // 000003AC: D1020014 0000290F
  s_and_b64     s[22:23], s[22:23], s[26:27]                // 000003B4: 87961A16
  v_cmp_lt_f32  vcc, s24, v5                                // 000003B8: 7C020A18
  v_cndmask_b32  v7, 2, v7, s[14:15]                        // 000003BC: D2000007 003A0E82
  v_cndmask_b32  v6, v6, v8, s[20:21]                       // 000003C4: D2000006 00521106
  s_or_b64      s[14:15], s[22:23], vcc                     // 000003CC: 888E6A16
  v_mov_b32     v8, 0x7f800000                              // 000003D0: 7E1002FF 7F800000
  s_mov_b32     s1, 0xc2ce8ed0                              // 000003D8: BE8103FF C2CE8ED0
  v_cmp_eq_i32  vcc, 1, v7                                  // 000003E0: 7D040E81
  v_cmp_ne_i32  s[20:21], v3, v4                            // 000003E4: D10A0014 00020903
  v_cmp_eq_i32  s[22:23], v3, v4                            // 000003EC: D1040016 00020903
  v_cndmask_b32  v6, v6, v8, s[14:15]                       // 000003F4: D2000006 003A1106
  v_cmp_nlt_f32  s[14:15], v5, s1                           // 000003FC: D01C000E 00000305
  s_and_b64     s[20:21], vcc, s[20:21]                     // 00000404: 8794146A
  v_cndmask_b32  v5, 0, 1, s[22:23]                         // 00000408: D2000005 00590280
  v_cndmask_b32  v6, 0, v6, s[14:15]                        // 00000410: D2000006 003A0C80
  v_cndmask_b32  v11, 1.0, -1.0, s[20:21]                   // 00000418: D200000B 0051E6F2
  v_or_b32      v5, v7, v5                                  // 00000420: 380A0B07
  s_mov_b32     s1, 0xff800000                              // 00000424: BE8103FF FF800000
  v_mul_f32     v6, v6, v11                                 // 0000042C: 100C1706
  v_cmp_eq_i32  s[14:15], v5, 0                             // 00000430: D104000E 00010105
  v_mov_b32     v5, 0x7fc00000                              // 00000438: 7E0A02FF 7FC00000
  v_cmp_eq_i32  s[20:21], v9, s1                            // 00000440: D1040014 00000309
  v_cmp_lt_u32  s[24:25], v4, 1.0                           // 00000448: D1820018 0001E504
  v_cndmask_b32  v5, v6, v5, s[14:15]                       // 00000450: D2000005 003A0B06
  s_and_b64     s[14:15], s[20:21], s[24:25]                // 00000458: 878E1814
  v_cmp_gt_u32  s[26:27], v4, 1.0                           // 0000045C: D188001A 0001E504
  s_mov_b32     s28, 0x7f800000                             // 00000464: BE9C03FF 7F800000
  v_cmp_eq_i32  s[30:31], v9, v10                           // 0000046C: D104001E 00021509
  v_cndmask_b32  v5, v5, v8, s[14:15]                       // 00000474: D2000005 003A1105
  s_and_b64     s[14:15], s[20:21], s[26:27]                // 0000047C: 878E1A14
  v_cmp_eq_i32  s[32:33], v9, s28                           // 00000480: D1040020 00003909
  v_cndmask_b32  v6, 0, 1, s[30:31]                         // 00000488: D2000006 00790280
  v_cndmask_b32  v5, v5, 0, s[14:15]                        // 00000490: D2000005 00390105
  s_and_b64     s[14:15], s[24:25], s[32:33]                // 00000498: 878E2018
  v_or_b32      v11, v4, v6                                 // 0000049C: 38160D04
  v_cndmask_b32  v5, v5, 0, s[14:15]                        // 000004A0: D2000005 00390105
  s_and_b64     s[14:15], s[26:27], s[32:33]                // 000004A8: 878E201A
  v_cmp_eq_i32  s[24:25], v11, 0                            // 000004AC: D1040018 0001010B
  v_mov_b32     v11, 0xff800000                             // 000004B4: 7E1602FF FF800000
  v_cndmask_b32  v5, v5, v8, s[14:15]                       // 000004BC: D2000005 003A1105
  s_and_b64     s[14:15], vcc, s[24:25]                     // 000004C4: 878E186A
  v_cndmask_b32  v11, v11, v8, s[22:23]                     // 000004C8: D200000B 005A110B
  v_cmp_ne_i32  s[26:27], v7, 1                             // 000004D0: D10A001A 00010307
  v_cmp_eq_i32  s[32:33], v4, 0                             // 000004D8: D1040020 00010104
  s_load_dwordx4  s[36:39], s[2:3], 0x00                    // 000004E0: C0920300
  v_cndmask_b32  v5, v5, v11, s[14:15]                      // 000004E4: D2000005 003A1705
  s_and_b64     s[2:3], s[24:25], s[26:27]                  // 000004EC: 87821A18
  v_cndmask_b32  v6, 0, v6, s[32:33]                        // 000004F0: D2000006 00820C80
  v_mov_b32     v7, 0x80000000                              // 000004F8: 7E0E02FF 80000000
  s_and_b64     s[14:15], s[30:31], s[32:33]                // 00000500: 878E201E
  v_cndmask_b32  v11, 0, 1, s[26:27]                        // 00000504: D200000B 00690280
  v_cndmask_b32  v5, v5, v8, s[2:3]                         // 0000050C: D2000005 000A1105
  v_cndmask_b32  v12, v7, 0, s[22:23]                       // 00000514: D200000C 00590107
  s_and_b64     s[2:3], s[14:15], vcc                       // 0000051C: 87826A0E
  v_and_b32     v6, v6, v11                                 // 00000520: 360C1706
  v_cndmask_b32  v5, v5, v12, s[2:3]                        // 00000524: D2000005 000A1905
  v_cmp_eq_i32  s[2:3], v6, 0                               // 0000052C: D1040002 00010106
  v_cndmask_b32  v5, 0, v5, s[2:3]                          // 00000534: D2000005 000A0A80
  s_and_b64     s[2:3], s[20:21], s[32:33]                  // 0000053C: 87822014
  v_cmp_eq_i32  s[14:15], v3, -1.0                          // 00000540: D104000E 0001E703
  v_cmp_eq_i32  s[20:21], v10, s28                          // 00000548: D1040014 0000390A
  v_cmp_ne_i32  s[22:23], v9, v10                           // 00000550: D10A0016 00021509
  v_cmp_eq_i32  s[24:25], v3, s1                            // 00000558: D1040018 00000303
  v_cndmask_b32  v5, v5, v8, s[2:3]                         // 00000560: D2000005 000A1105
  s_and_b64     s[2:3], s[14:15], s[20:21]                  // 00000568: 8782140E
  s_and_b64     s[14:15], s[22:23], s[24:25]                // 0000056C: 878E1816
  s_waitcnt     lgkmcnt(0)                                  // 00000570: BF8C007F
  s_buffer_load_dwordx2  s[20:21], s[36:39], 0x04           // 00000574: C24A2504
  v_cndmask_b32  v5, v5, 1.0, s[2:3]                        // 00000578: D2000005 0009E505
  s_and_b64     s[2:3], s[14:15], vcc                       // 00000580: 87826A0E
  v_cndmask_b32  v5, v5, v7, s[2:3]                         // 00000584: D2000005 000A0F05
  s_nand_b64    s[2:3], s[26:27], s[14:15]                  // 0000058C: 8C820E1A
  s_and_b64     s[14:15], s[30:31], s[24:25]                // 00000590: 878E181E
  v_cndmask_b32  v5, 0, v5, s[2:3]                          // 00000594: D2000005 000A0A80
  s_and_b64     vcc, vcc, s[14:15]                          // 0000059C: 87EA0E6A
  v_mov_b32     v6, 0xff800000                              // 000005A0: 7E0C02FF FF800000
  v_cndmask_b32  v5, v5, v6, vcc                            // 000005A8: 000A0D05
  s_and_b64     s[2:3], s[26:27], s[14:15]                  // 000005AC: 87820E1A
  v_mov_b32     v6, 0x7f800000                              // 000005B0: 7E0C02FF 7F800000
  v_cmp_eq_i32  vcc, s28, v3                                // 000005B8: 7D04061C
  s_buffer_load_dwordx2  s[14:15], s[36:39], 0x18           // 000005BC: C2472518
  v_cndmask_b32  v5, v5, v6, s[2:3]                         // 000005C0: D2000005 000A0D05
  s_and_b64     s[2:3], s[22:23], vcc                       // 000005C8: 87826A16
  s_waitcnt     lgkmcnt(0)                                  // 000005CC: BF8C007F
  s_min_u32     s1, s21, 0x0000ffff                         // 000005D0: 8381FF15 0000FFFF
  s_buffer_load_dword  s21, s[16:19], 0x10                  // 000005D8: C20A9110
  v_cndmask_b32  v5, v5, 0, s[2:3]                          // 000005DC: D2000005 00090105
  s_and_b64     vcc, s[30:31], vcc                          // 000005E4: 87EA6A1E
  s_min_u32     s2, s20, 0x0000ffff                         // 000005E8: 8382FF14 0000FFFF
  v_mov_b32     v7, s1                                      // 000005F0: 7E0E0201
  v_cndmask_b32  v5, v5, v6, vcc                            // 000005F4: 000A0D05
  v_cmp_lt_u32  vcc, s28, v4                                // 000005F8: 7D82081C
  v_mov_b32     v4, s2                                      // 000005FC: 7E080202
  v_mul_i32_i24  v6, s13, v7                                // 00000600: 120C0E0D
  v_cndmask_b32  v5, v5, v3, vcc                            // 00000604: 000A0705
  v_cmp_gt_u32  s[2:3], v10, s28                            // 00000608: D1880002 0000390A
  v_mul_i32_i24  v4, s12, v4                                // 00000610: 1208080C
  v_add_i32     v1, vcc, v1, v6                             // 00000614: 4A020D01
  s_buffer_load_dword  s1, s[16:19], 0x00                   // 00000618: C2009100
  v_cndmask_b32  v5, v5, v9, s[2:3]                         // 0000061C: D2000005 000A1305
  v_add_i32     v0, vcc, v0, v4                             // 00000624: 4A000900
  v_add_i32     v1, vcc, s15, v1                            // 00000628: 4A02020F
  v_cvt_i32_f32  v4, v5                                     // 0000062C: 7E081105
  v_add_i32     v0, vcc, s14, v0                            // 00000630: 4A00000E
  v_sub_i32     v4, vcc, 0, v4                              // 00000634: 4C080880
  v_cmp_ne_i32  vcc, 0, v10                                 // 00000638: 7D0A1480
  s_waitcnt     lgkmcnt(0)                                  // 0000063C: BF8C007F
  v_mul_lo_i32  v1, v1, s21                                 // 00000640: D2D60001 02002B01
  v_cndmask_b32  v4, -1, v4, vcc                            // 00000648: 000808C1
  v_cmp_ne_i32  s[2:3], v3, 1.0                             // 0000064C: D10A0002 0001E503
  v_add_i32     v1, vcc, v0, v1                             // 00000654: 4A020300
  v_cndmask_b32  v3, -1, v4, s[2:3]                         // 00000658: D2000003 000A08C1
  v_lshlrev_b32  v4, 2, v1                                  // 00000660: 34080282
  s_buffer_load_dword  s2, s[16:19], 0x04                   // 00000664: C2011104
  v_sub_i32     v0, vcc, v0, v3                             // 00000668: 4C000700
  v_add_i32     v4, vcc, s1, v4                             // 0000066C: 4A080801
  s_mov_b64     s[12:13], exec                              // 00000670: BE8C047E
  s_mov_b64     s[14:15], exec                              // 00000674: BE8E047E
  v_mov_b32     v5, 0                                       // 00000678: 7E0A0280
  v_mov_b32     v6, 0                                       // 0000067C: 7E0C0280
  v_mov_b32     v7, 0                                       // 00000680: 7E0E0280
  v_mov_b32     v8, 0                                       // 00000684: 7E100280
  v_mov_b32     v9, -1                                      // 00000688: 7E1202C1
  v_mov_b32     v10, v2                                     // 0000068C: 7E140302
  v_mov_b32     v2, 0                                       // 00000690: 7E040280
label_01A5:
  v_add_i32     v9, vcc, 1, v9                              // 00000694: 4A121281
  v_cmp_gt_i32  s[16:17], s0, v9                            // 00000698: D1080010 00021200
  s_mov_b64     s[18:19], exec                              // 000006A0: BE92047E
  s_andn2_b64   exec, s[18:19], s[16:17]                    // 000006A4: 8AFE1012
  s_cbranch_execz  label_01AE                               // 000006A8: BF880003
  v_mov_b32     v10, 0                                      // 000006AC: 7E140280
  s_andn2_b64   s[14:15], s[14:15], exec                    // 000006B0: 8A8E7E0E
  s_cbranch_scc0  label_01D1                                // 000006B4: BF840023
label_01AE:
  s_andn2_b64   exec, s[18:19], exec                        // 000006B8: 8AFE7E12
  s_mov_b64     exec, s[18:19]                              // 000006BC: BEFE0412
  s_and_b64     exec, exec, s[14:15]                        // 000006C0: 87FE0E7E
  v_add_i32     v10, vcc, v3, v2                            // 000006C4: 4A140503
  v_add_i32     v11, vcc, v0, v10                           // 000006C8: 4A161500
  v_cmp_lt_i32  s[16:17], v11, 0                            // 000006CC: D1020010 0001010B
  s_and_saveexec_b64  s[16:17], s[16:17]                    // 000006D4: BE902410
  s_cbranch_execz  label_01BA                               // 000006D8: BF880003
  v_mov_b32     v10, 1                                      // 000006DC: 7E140281
  s_andn2_b64   s[14:15], s[14:15], exec                    // 000006E0: 8A8E7E0E
  s_cbranch_scc0  label_01D1                                // 000006E4: BF840017
label_01BA:
  s_andn2_b64   exec, s[16:17], exec                        // 000006E8: 8AFE7E10
  s_mov_b64     exec, s[16:17]                              // 000006EC: BEFE0410
  s_and_b64     exec, exec, s[14:15]                        // 000006F0: 87FE0E7E
  v_lshlrev_b32  v2, 2, v2                                  // 000006F4: 34040482
  v_add_i32     v2, vcc, v4, v2                             // 000006F8: 4A040504
  tbuffer_load_format_x  v2, v2, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000006FC: EBA01000 80010202
  s_waitcnt     vmcnt(0)                                    // 00000704: BF8C1F70
  v_and_b32     v11, 0x000000ff, v2                         // 00000708: 361604FF 000000FF
  v_bfe_u32     v12, v2, 8, 8                               // 00000710: D290000C 02211102
  v_bfe_u32     v13, v2, 16, 8                              // 00000718: D290000D 02212102
  v_bfe_u32     v2, v2, 24, 8                               // 00000720: D2900002 02213102
  v_add_i32     v5, vcc, v5, v11                            // 00000728: 4A0A1705
  v_add_i32     v6, vcc, v6, v12                            // 0000072C: 4A0C1906
  v_add_i32     v7, vcc, v7, v13                            // 00000730: 4A0E1B07
  v_add_i32     v8, vcc, v8, v2                             // 00000734: 4A100508
  v_mov_b32     v2, v10                                     // 00000738: 7E04030A
  v_mov_b32     v10, 1                                      // 0000073C: 7E140281
  s_branch      label_01A5                                  // 00000740: BF82FFD4
label_01D1:
  s_mov_b64     exec, s[12:13]                              // 00000744: BEFE040C
  v_lshlrev_b32  v1, 4, v1                                  // 00000748: 34020284
  s_waitcnt     lgkmcnt(0)                                  // 0000074C: BF8C007F
  v_add_i32     v1, vcc, s2, v1                             // 00000750: 4A020202
  v_cmp_eq_i32  s[0:1], v10, 0                              // 00000754: D1040000 0001010A
  tbuffer_store_format_xyzw  v[5:8], v1, s[8:11], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 0000075C: EBF71000 80020501
  s_endpgm                                                  // 00000764: BF810000



**
** Disassembly for '__kernel horizontalSAT'
**

  s_load_dwordx4  s[16:19], s[2:3], 0x04                    // 00000000: C0880304
  s_waitcnt     lgkmcnt(0)                                  // 00000004: BF8C007F
  s_buffer_load_dword  s0, s[16:19], 0x0c                   // 00000008: C200110C
  s_waitcnt     lgkmcnt(0)                                  // 0000000C: BF8C007F
  v_cvt_f32_i32  v3, s0                                     // 00000010: 7E060A00
  v_and_b32     v4, 0x7fffffff, v3                          // 00000014: 360806FF 7FFFFFFF
  v_lshrrev_b32  v5, 23, v4                                 // 0000001C: 2C0A0897
  v_or_b32      v6, 1.0, v4                                 // 00000020: 380C08F2
  v_cmp_eq_i32  s[14:15], v5, 0                             // 00000024: D104000E 00010105
  v_add_f32     v6, -1.0, v6                                // 0000002C: 060C0CF3
  v_cndmask_b32  v7, v4, v6, s[14:15]                       // 00000030: D2000007 003A0D04
  v_lshlrev_b32  v8, 1, v7                                  // 00000038: 34100E81
  v_and_b32     v9, 0x007f0000, v7                          // 0000003C: 36120EFF 007F0000
  v_and_b32     v8, 0x00010000, v8                          // 00000044: 361010FF 00010000
  v_add_i32     v8, vcc, v9, v8                             // 0000004C: 4A101109
  v_ashrrev_i32  v9, 16, v8                                 // 00000050: 30121090
  s_load_dwordx4  s[20:23], s[2:3], 0x08                    // 00000054: C08A0308
  v_lshlrev_b32  v10, 3, v9                                 // 00000058: 34141283
  v_add_i32     v10, vcc, 0x00000620, v10                   // 0000005C: 4A1414FF 00000620
  v_ashrrev_i32  v11, 4, v10                                // 00000064: 30161484
  v_readfirstlane_b32  s1, v11                              // 00000068: 7E02050B
  s_lshl_b32    s1, s1, 4                                   // 0000006C: 8F018401
  s_waitcnt     lgkmcnt(0)                                  // 00000070: BF8C007F
  s_buffer_load_dwordx4  s[24:27], s[20:23], s1             // 00000074: C28C1401
  v_and_b32     v7, 0x007fffff, v7                          // 00000078: 360E0EFF 007FFFFF
  v_bfe_u32     v10, v10, 3, 1                              // 00000080: D290000A 0205070A
  v_bfe_i32     v9, v9, 1, 28                               // 00000088: D2920009 02710309
  v_or_b32      v11, 0.5, v8                                // 00000090: 381610F0
  v_or_b32      v7, 0.5, v7                                 // 00000094: 380E0EF0
  v_cmp_eq_i32  vcc, 0, v10                                 // 00000098: 7D041480
  s_waitcnt     lgkmcnt(0)                                  // 0000009C: BF8C007F
  v_mov_b32     v10, s24                                    // 000000A0: 7E140218
  v_mov_b32     v12, s26                                    // 000000A4: 7E18021A
  v_readfirstlane_b32  s1, v9                               // 000000A8: 7E020509
  v_sub_f32     v7, v11, v7                                 // 000000AC: 080E0F0B
  v_cndmask_b32  v9, v12, v10, vcc                          // 000000B0: 0012150C
  v_mov_b32     v10, s25                                    // 000000B4: 7E140219
  v_mov_b32     v11, s27                                    // 000000B8: 7E16021B
  s_lshl_b32    s1, s1, 4                                   // 000000BC: 8F018401
  v_cndmask_b32  v10, v11, v10, vcc                         // 000000C0: 0014150B
  v_mul_f32     v11, v7, v9                                 // 000000C4: 10161307
  s_buffer_load_dwordx4  s[24:27], s[20:23], s1             // 000000C8: C28C1401
  v_mac_f32     v11, v7, v10                                // 000000CC: 3E161507
  v_mul_f32     v12, 0x3e800000, v11                        // 000000D0: 101816FF 3E800000
  v_ashrrev_i32  v6, 23, v6                                 // 000000D8: 300C0C97
  v_sub_f32     v13, 1.0, v4                                // 000000DC: 081A08F2
  v_add_f32     v12, 0x3eaaaaab, v12                        // 000000E0: 061818FF 3EAAAAAB
  v_mad_f32     v9, v7, v9, -v11                            // 000000E8: D2820009 842E1307
  v_add_i32     v5, vcc, 0xffffff81, v5                     // 000000F0: 4A0A0AFF FFFFFF81
  v_add_i32     v6, vcc, 0xffffff03, v6                     // 000000F8: 4A0C0CFF FFFFFF03
  v_mul_f32     v14, 0x3e124925, v13                        // 00000100: 101C1AFF 3E124925
  v_mad_f32     v12, v11, v12, 0.5                          // 00000108: D282000C 03C2190B
  v_mul_f32     v15, v11, v11                               // 00000110: 101E170B
  v_mac_f32     v9, v7, v10                                 // 00000114: 3E121507
  v_cndmask_b32  v5, v5, v6, s[14:15]                       // 00000118: D2000005 003A0D05
  v_bfe_u32     v6, v8, 16, 1                               // 00000120: D2900006 02052108
  v_add_f32     v7, 0x3e2aaaab, v14                         // 00000128: 060E1CFF 3E2AAAAB
  s_mov_b32     s1, 0x3e4ccccd                              // 00000130: BE8103FF 3E4CCCCD
  v_mac_f32     v9, v12, v15                                // 00000138: 3E121F0C
  v_cvt_f32_i32  v5, v5                                     // 0000013C: 7E0A0B05
  s_mov_b32     s14, 0x3805fdf4                             // 00000140: BE8E03FF 3805FDF4
  v_cmp_eq_i32  vcc, 0, v6                                  // 00000148: 7D040C80
  s_waitcnt     lgkmcnt(0)                                  // 0000014C: BF8C007F
  v_mov_b32     v6, s25                                     // 00000150: 7E0C0219
  v_mov_b32     v8, s27                                     // 00000154: 7E10021B
  v_mad_f32     v7, v13, v7, s1                             // 00000158: D2820007 00060F0D
  s_mov_b32     s1, 0x3e800000                              // 00000160: BE8103FF 3E800000
  v_mad_f32     v9, v5, s14, -v9                            // 00000168: D2820009 84241D05
  v_mov_b32     v10, s24                                    // 00000170: 7E140218
  v_mov_b32     v12, s26                                    // 00000174: 7E18021A
  v_cndmask_b32  v6, v8, v6, vcc                            // 00000178: 000C0D08
  v_mad_f32     v7, v13, v7, s1                             // 0000017C: D2820007 00060F0D
  s_mov_b32     s1, 0x3eaaaaab                              // 00000184: BE8103FF 3EAAAAAB
  v_mul_f32     v8, v13, v13                                // 0000018C: 10101B0D
  s_buffer_load_dword  s14, s[16:19], 0x08                  // 00000190: C2071108
  v_cndmask_b32  v10, v12, v10, vcc                         // 00000194: 0014150C
  v_add_f32     v6, v9, v6                                  // 00000198: 060C0D09
  v_mad_f32     v7, v13, v7, s1                             // 0000019C: D2820007 00060F0D
  v_mul_f32     v9, v13, v8                                 // 000001A4: 1012110D
  v_mul_f32     v8, -0.5, v8                                // 000001A8: 101010F1
  s_mov_b32     s1, 0x3f317000                              // 000001AC: BE8103FF 3F317000
  s_mov_b32     s15, 0x3d800000                             // 000001B4: BE8F03FF 3D800000
  v_subrev_f32  v12, v11, v6                                // 000001BC: 0A180D0B
  v_mad_f32     v14, -v7, v9, v8                            // 000001C0: D282000E 24221307
  v_mac_f32     v10, s1, v5                                 // 000001C8: 3E140A01
  v_cmp_gt_f32  vcc, s15, abs(v13)                          // 000001CC: D008026A 00021A0F
  v_add_f32     v5, v12, v10                                // 000001D4: 060A150C
  v_subrev_f32  v15, v13, v14                               // 000001D8: 0A1E1D0D
  v_mul_f32     v7, v7, v9                                  // 000001DC: 100E1307
  v_cndmask_b32  v9, v12, v14, vcc                          // 000001E0: 00121D0C
  v_cndmask_b32  v8, -v11, v8, vcc                          // 000001E4: D2000008 21AA110B
  v_cndmask_b32  v5, v5, v15, vcc                           // 000001EC: 000A1F05
  v_cndmask_b32  v10, v10, -v13, vcc                        // 000001F0: D200000A 41AA1B0A
  v_cndmask_b32  v6, v6, -v7, vcc                           // 000001F8: D2000006 41AA0F06
  v_sub_f32     v7, v9, v8                                  // 00000200: 080E1109
  v_subrev_f32  v8, v5, v10                                 // 00000204: 0A101505
  v_sub_f32     v6, v6, v7                                  // 00000208: 080C0F06
  v_add_f32     v7, v9, v8                                  // 0000020C: 060E1109
  v_and_b32     v8, 0xfffff000, v5                          // 00000210: 36100AFF FFFFF000
  s_waitcnt     lgkmcnt(0)                                  // 00000218: BF8C007F
  v_cvt_f32_i32  v9, s14                                    // 0000021C: 7E120A0E
  v_add_f32     v6, v6, v7                                  // 00000220: 060C0F06
  v_sub_f32     v5, v5, v8                                  // 00000224: 080A1105
  v_and_b32     v7, 0xfffff000, v9                          // 00000228: 360E12FF FFFFF000
  v_add_f32     v5, v6, v5                                  // 00000230: 060A0B06
  v_sub_f32     v6, v9, v7                                  // 00000234: 080C0F09
  v_mul_f32     v10, v5, v6                                 // 00000238: 10140D05
  v_mac_f32     v10, v8, v6                                 // 0000023C: 3E140D08
  v_mac_f32     v10, v5, v7                                 // 00000240: 3E140F05
  v_mad_f32     v5, v7, v8, v10                             // 00000244: D2820005 042A1107
  v_mul_f32     v6, 0x42b8aa3b, v5                          // 0000024C: 100C0AFF 42B8AA3B
  v_cvt_i32_f32  v6, v6                                     // 00000254: 7E0C1106
  v_and_b32     v11, 63, v6                                 // 00000258: 36160CBF
  v_lshlrev_b32  v11, 3, v11                                // 0000025C: 34161683
  v_add_i32     v11, vcc, 0x00000410, v11                   // 00000260: 4A1616FF 00000410
  v_ashrrev_i32  v12, 4, v11                                // 00000268: 30181684
  v_readfirstlane_b32  s1, v12                              // 0000026C: 7E02050C
  v_cvt_f32_i32  v12, v6                                    // 00000270: 7E180B06
  s_mov_b32     s14, 0xbc310000                             // 00000274: BE8E03FF BC310000
  s_lshl_b32    s1, s1, 4                                   // 0000027C: 8F018401
  v_mad_f32     v13, v12, s14, v5                           // 00000280: D282000D 04141D0C
  s_mov_b32     s14, 0xb7e42fef                             // 00000288: BE8E03FF B7E42FEF
  v_mad_f32     v7, v7, v8, -v5                             // 00000290: D2820007 84161107
  s_buffer_load_dwordx4  s[20:23], s[20:23], s1             // 00000298: C28A1401
  v_mac_f32     v13, s14, v12                               // 0000029C: 3E1A180E
  v_add_f32     v7, v10, v7                                 // 000002A0: 060E0F0A
  v_add_f32     v8, v13, v7                                 // 000002A4: 06100F0D
  v_and_b32     v10, 0x7fffffff, v9                         // 000002A8: 361412FF 7FFFFFFF
  v_mul_f32     v12, 0x3d2aaaab, v8                         // 000002B0: 101810FF 3D2AAAAB
  v_lshrrev_b32  v13, 23, v10                               // 000002B8: 2C1A1497
  v_add_f32     v12, 0x3e2aaaab, v12                        // 000002BC: 061818FF 3E2AAAAB
  v_bfe_u32     v11, v11, 3, 1                              // 000002C4: D290000B 0205070B
  v_sub_i32     v14, vcc, 0x00000096, v13                   // 000002CC: 4C1C1AFF 00000096
  v_mad_f32     v12, v12, v8, 0.5                           // 000002D4: D282000C 03C2110C
  v_mul_f32     v15, v8, v8                                 // 000002DC: 101E1108
  v_cmp_eq_i32  s[14:15], v11, 0                            // 000002E0: D104000E 0001010B
  s_waitcnt     lgkmcnt(0)                                  // 000002E8: BF8C007F
  v_mov_b32     v11, s21                                    // 000002EC: 7E160215
  v_mov_b32     v16, s23                                    // 000002F0: 7E200217
  v_lshl_b32    v17, 1, v14                                 // 000002F4: 32221C81
  v_mac_f32     v8, v12, v15                                // 000002F8: 3E101F0C
  v_mov_b32     v12, s20                                    // 000002FC: 7E180214
  v_mov_b32     v15, s22                                    // 00000300: 7E1E0216
  v_cndmask_b32  v11, v16, v11, s[14:15]                    // 00000304: D200000B 003A1710
  v_and_b32     v16, v9, v17                                // 0000030C: 36202309
  v_bfe_u32     v14, v9, 0, v14                             // 00000310: D290000E 04390109
  v_add_i32     v13, vcc, 0xffffff82, v13                   // 00000318: 4A1A1AFF FFFFFF82
  v_cndmask_b32  v12, v15, v12, s[14:15]                    // 00000320: D200000C 003A190F
  v_mac_f32     v11, v11, v8                                // 00000328: 3E16110B
  v_ashrrev_i32  v15, 6, v6                                 // 0000032C: 301E0C86
  v_cmp_eq_i32  s[14:15], v16, 0                            // 00000330: D104000E 00010110
  v_cmp_eq_i32  s[20:21], v14, 0                            // 00000338: D1040014 0001010E
  v_cmp_ge_i32  s[22:23], v13, 1                            // 00000340: D10C0016 0001030D
  v_mac_f32     v11, v12, v8                                // 00000348: 3E16110C
  v_add_i32     v8, vcc, 21, v15                            // 0000034C: 4A101E95
  v_lshlrev_b32  v6, 17, v6                                 // 00000350: 340C0C91
  s_mov_b32     s1, 0xb482e308                              // 00000354: BE8103FF B482E308
  s_mov_b32     s24, 0x42b17218                             // 0000035C: BE9803FF 42B17218
  v_cndmask_b32  v14, 1, 2, s[14:15]                        // 00000364: D200000E 00390481
  s_and_b64     s[14:15], s[20:21], s[22:23]                // 0000036C: 878E1614
  v_add_f32     v11, v12, v11                               // 00000370: 0616170C
  v_lshl_b32    v8, 1, v8                                   // 00000374: 32101081
  v_and_b32     v6, 0xff800000, v6                          // 00000378: 360C0CFF FF800000
  s_movk_i32    s20, 0xff83                                 // 00000380: B014FF83
  v_cmp_gt_f32  s[22:23], v7, s1                            // 00000384: D0080016 00000307
  v_cmp_eq_f32  s[26:27], v5, s24                           // 0000038C: D004001A 00003105
  v_cndmask_b32  v7, 0, v14, s[14:15]                       // 00000394: D2000007 003A1C80
  v_cmp_le_i32  s[14:15], v13, 24                           // 0000039C: D106000E 0001310D
  v_mul_f32     v8, v11, v8                                 // 000003A4: 1010110B
  v_add_i32     v6, vcc, v11, v6                            // 000003A8: 4A0C0D0B
  v_cmp_lt_i32  s[20:21], v15, s20                          // 000003AC: D1020014 0000290F
  s_and_b64     s[22:23], s[22:23], s[26:27]                // 000003B4: 87961A16
  v_cmp_lt_f32  vcc, s24, v5                                // 000003B8: 7C020A18
  v_cndmask_b32  v7, 2, v7, s[14:15]                        // 000003BC: D2000007 003A0E82
  v_cndmask_b32  v6, v6, v8, s[20:21]                       // 000003C4: D2000006 00521106
  s_or_b64      s[14:15], s[22:23], vcc                     // 000003CC: 888E6A16
  v_mov_b32     v8, 0x7f800000                              // 000003D0: 7E1002FF 7F800000
  s_mov_b32     s1, 0xc2ce8ed0                              // 000003D8: BE8103FF C2CE8ED0
  v_cmp_eq_i32  vcc, 1, v7                                  // 000003E0: 7D040E81
  v_cmp_ne_i32  s[20:21], v3, v4                            // 000003E4: D10A0014 00020903
  v_cmp_eq_i32  s[22:23], v3, v4                            // 000003EC: D1040016 00020903
  v_cndmask_b32  v6, v6, v8, s[14:15]                       // 000003F4: D2000006 003A1106
  v_cmp_nlt_f32  s[14:15], v5, s1                           // 000003FC: D01C000E 00000305
  s_and_b64     s[20:21], vcc, s[20:21]                     // 00000404: 8794146A
  v_cndmask_b32  v5, 0, 1, s[22:23]                         // 00000408: D2000005 00590280
  v_cndmask_b32  v6, 0, v6, s[14:15]                        // 00000410: D2000006 003A0C80
  v_cndmask_b32  v11, 1.0, -1.0, s[20:21]                   // 00000418: D200000B 0051E6F2
  v_or_b32      v5, v7, v5                                  // 00000420: 380A0B07
  s_mov_b32     s1, 0xff800000                              // 00000424: BE8103FF FF800000
  v_mul_f32     v6, v6, v11                                 // 0000042C: 100C1706
  v_cmp_eq_i32  s[14:15], v5, 0                             // 00000430: D104000E 00010105
  v_mov_b32     v5, 0x7fc00000                              // 00000438: 7E0A02FF 7FC00000
  v_cmp_eq_i32  s[20:21], v9, s1                            // 00000440: D1040014 00000309
  v_cmp_lt_u32  s[24:25], v4, 1.0                           // 00000448: D1820018 0001E504
  v_cndmask_b32  v5, v6, v5, s[14:15]                       // 00000450: D2000005 003A0B06
  s_and_b64     s[14:15], s[20:21], s[24:25]                // 00000458: 878E1814
  v_cmp_gt_u32  s[26:27], v4, 1.0                           // 0000045C: D188001A 0001E504
  s_mov_b32     s28, 0x7f800000                             // 00000464: BE9C03FF 7F800000
  v_cmp_eq_i32  s[30:31], v9, v10                           // 0000046C: D104001E 00021509
  v_cndmask_b32  v5, v5, v8, s[14:15]                       // 00000474: D2000005 003A1105
  s_and_b64     s[14:15], s[20:21], s[26:27]                // 0000047C: 878E1A14
  v_cmp_eq_i32  s[32:33], v9, s28                           // 00000480: D1040020 00003909
  v_cndmask_b32  v6, 0, 1, s[30:31]                         // 00000488: D2000006 00790280
  v_cndmask_b32  v5, v5, 0, s[14:15]                        // 00000490: D2000005 00390105
  s_and_b64     s[14:15], s[24:25], s[32:33]                // 00000498: 878E2018
  v_or_b32      v11, v4, v6                                 // 0000049C: 38160D04
  v_cndmask_b32  v5, v5, 0, s[14:15]                        // 000004A0: D2000005 00390105
  s_and_b64     s[14:15], s[26:27], s[32:33]                // 000004A8: 878E201A
  v_cmp_eq_i32  s[24:25], v11, 0                            // 000004AC: D1040018 0001010B
  v_mov_b32     v11, 0xff800000                             // 000004B4: 7E1602FF FF800000
  v_cndmask_b32  v5, v5, v8, s[14:15]                       // 000004BC: D2000005 003A1105
  s_and_b64     s[14:15], vcc, s[24:25]                     // 000004C4: 878E186A
  v_cndmask_b32  v11, v11, v8, s[22:23]                     // 000004C8: D200000B 005A110B
  v_cmp_ne_i32  s[26:27], v7, 1                             // 000004D0: D10A001A 00010307
  v_cmp_eq_i32  s[32:33], v4, 0                             // 000004D8: D1040020 00010104
  s_load_dwordx4  s[36:39], s[2:3], 0x00                    // 000004E0: C0920300
  v_cndmask_b32  v5, v5, v11, s[14:15]                      // 000004E4: D2000005 003A1705
  s_and_b64     s[2:3], s[24:25], s[26:27]                  // 000004EC: 87821A18
  v_cndmask_b32  v6, 0, v6, s[32:33]                        // 000004F0: D2000006 00820C80
  v_mov_b32     v7, 0x80000000                              // 000004F8: 7E0E02FF 80000000
  s_and_b64     s[14:15], s[30:31], s[32:33]                // 00000500: 878E201E
  v_cndmask_b32  v11, 0, 1, s[26:27]                        // 00000504: D200000B 00690280
  v_cndmask_b32  v5, v5, v8, s[2:3]                         // 0000050C: D2000005 000A1105
  v_cndmask_b32  v12, v7, 0, s[22:23]                       // 00000514: D200000C 00590107
  s_and_b64     s[2:3], s[14:15], vcc                       // 0000051C: 87826A0E
  v_and_b32     v6, v6, v11                                 // 00000520: 360C1706
  v_cndmask_b32  v5, v5, v12, s[2:3]                        // 00000524: D2000005 000A1905
  v_cmp_eq_i32  s[2:3], v6, 0                               // 0000052C: D1040002 00010106
  v_cndmask_b32  v5, 0, v5, s[2:3]                          // 00000534: D2000005 000A0A80
  s_and_b64     s[2:3], s[20:21], s[32:33]                  // 0000053C: 87822014
  v_cmp_eq_i32  s[14:15], v3, -1.0                          // 00000540: D104000E 0001E703
  v_cmp_eq_i32  s[20:21], v10, s28                          // 00000548: D1040014 0000390A
  v_cmp_ne_i32  s[22:23], v9, v10                           // 00000550: D10A0016 00021509
  v_cmp_eq_i32  s[24:25], v3, s1                            // 00000558: D1040018 00000303
  v_cndmask_b32  v5, v5, v8, s[2:3]                         // 00000560: D2000005 000A1105
  s_and_b64     s[2:3], s[14:15], s[20:21]                  // 00000568: 8782140E
  s_and_b64     s[14:15], s[22:23], s[24:25]                // 0000056C: 878E1816
  s_waitcnt     lgkmcnt(0)                                  // 00000570: BF8C007F
  s_buffer_load_dwordx2  s[20:21], s[36:39], 0x04           // 00000574: C24A2504
  v_cndmask_b32  v5, v5, 1.0, s[2:3]                        // 00000578: D2000005 0009E505
  s_and_b64     s[2:3], s[14:15], vcc                       // 00000580: 87826A0E
  v_cndmask_b32  v5, v5, v7, s[2:3]                         // 00000584: D2000005 000A0F05
  s_nand_b64    s[2:3], s[26:27], s[14:15]                  // 0000058C: 8C820E1A
  s_and_b64     s[14:15], s[30:31], s[24:25]                // 00000590: 878E181E
  v_cndmask_b32  v5, 0, v5, s[2:3]                          // 00000594: D2000005 000A0A80
  s_and_b64     vcc, vcc, s[14:15]                          // 0000059C: 87EA0E6A
  v_mov_b32     v6, 0xff800000                              // 000005A0: 7E0C02FF FF800000
  v_cndmask_b32  v5, v5, v6, vcc                            // 000005A8: 000A0D05
  s_and_b64     s[2:3], s[26:27], s[14:15]                  // 000005AC: 87820E1A
  v_mov_b32     v6, 0x7f800000                              // 000005B0: 7E0C02FF 7F800000
  v_cmp_eq_i32  vcc, s28, v3                                // 000005B8: 7D04061C
  s_buffer_load_dwordx2  s[14:15], s[36:39], 0x18           // 000005BC: C2472518
  v_cndmask_b32  v5, v5, v6, s[2:3]                         // 000005C0: D2000005 000A0D05
  s_and_b64     s[2:3], s[22:23], vcc                       // 000005C8: 87826A16
  s_waitcnt     lgkmcnt(0)                                  // 000005CC: BF8C007F
  s_min_u32     s1, s21, 0x0000ffff                         // 000005D0: 8381FF15 0000FFFF
  s_buffer_load_dword  s21, s[16:19], 0x10                  // 000005D8: C20A9110
  v_cndmask_b32  v5, v5, 0, s[2:3]                          // 000005DC: D2000005 00090105
  s_and_b64     vcc, s[30:31], vcc                          // 000005E4: 87EA6A1E
  s_min_u32     s2, s20, 0x0000ffff                         // 000005E8: 8382FF14 0000FFFF
  v_mov_b32     v7, s1                                      // 000005F0: 7E0E0201
  v_cndmask_b32  v5, v5, v6, vcc                            // 000005F4: 000A0D05
  v_cmp_lt_u32  vcc, s28, v4                                // 000005F8: 7D82081C
  v_mov_b32     v4, s2                                      // 000005FC: 7E080202
  v_mul_i32_i24  v6, s13, v7                                // 00000600: 120C0E0D
  v_cndmask_b32  v5, v5, v3, vcc                            // 00000604: 000A0705
  v_cmp_gt_u32  s[2:3], v10, s28                            // 00000608: D1880002 0000390A
  v_mul_i32_i24  v4, s12, v4                                // 00000610: 1208080C
  v_add_i32     v1, vcc, v1, v6                             // 00000614: 4A020D01
  s_buffer_load_dword  s1, s[16:19], 0x00                   // 00000618: C2009100
  v_cndmask_b32  v5, v5, v9, s[2:3]                         // 0000061C: D2000005 000A1305
  v_add_i32     v0, vcc, v0, v4                             // 00000624: 4A000900
  v_add_i32     v1, vcc, s15, v1                            // 00000628: 4A02020F
  v_cvt_i32_f32  v4, v5                                     // 0000062C: 7E081105
  v_add_i32     v0, vcc, s14, v0                            // 00000630: 4A00000E
  v_sub_i32     v4, vcc, 0, v4                              // 00000634: 4C080880
  v_cmp_ne_i32  vcc, 0, v10                                 // 00000638: 7D0A1480
  s_waitcnt     lgkmcnt(0)                                  // 0000063C: BF8C007F
  v_mul_lo_i32  v1, v1, s21                                 // 00000640: D2D60001 02002B01
  v_cndmask_b32  v4, -1, v4, vcc                            // 00000648: 000808C1
  v_cmp_ne_i32  s[2:3], v3, 1.0                             // 0000064C: D10A0002 0001E503
  v_add_i32     v1, vcc, v0, v1                             // 00000654: 4A020300
  v_cndmask_b32  v3, -1, v4, s[2:3]                         // 00000658: D2000003 000A08C1
  v_lshlrev_b32  v1, 4, v1                                  // 00000660: 34020284
  s_buffer_load_dword  s2, s[16:19], 0x04                   // 00000664: C2011104
  v_sub_i32     v0, vcc, v0, v3                             // 00000668: 4C000700
  v_add_i32     v4, vcc, s1, v1                             // 0000066C: 4A080201
  s_mov_b64     s[12:13], exec                              // 00000670: BE8C047E
  s_mov_b64     s[14:15], exec                              // 00000674: BE8E047E
  v_mov_b32     v15, 0                                      // 00000678: 7E1E0280
  v_mov_b32     v16, 0                                      // 0000067C: 7E200280
  v_mov_b32     v17, 0                                      // 00000680: 7E220280
  v_mov_b32     v18, 0                                      // 00000684: 7E240280
  v_mov_b32     v9, -1                                      // 00000688: 7E1202C1
  v_mov_b32     v7, v2                                      // 0000068C: 7E0E0302
  v_mov_b32     v2, 0                                       // 00000690: 7E040280
label_01A5:
  v_add_i32     v9, vcc, 1, v9                              // 00000694: 4A121281
  v_cmp_gt_i32  s[16:17], s0, v9                            // 00000698: D1080010 00021200
  s_mov_b64     s[18:19], exec                              // 000006A0: BE92047E
  s_andn2_b64   exec, s[18:19], s[16:17]                    // 000006A4: 8AFE1012
  s_cbranch_execz  label_01AE                               // 000006A8: BF880003
  v_mov_b32     v7, 0                                       // 000006AC: 7E0E0280
  s_andn2_b64   s[14:15], s[14:15], exec                    // 000006B0: 8A8E7E0E
  s_cbranch_scc0  label_01C9                                // 000006B4: BF84001B
label_01AE:
  s_andn2_b64   exec, s[18:19], exec                        // 000006B8: 8AFE7E12
  s_mov_b64     exec, s[18:19]                              // 000006BC: BEFE0412
  s_and_b64     exec, exec, s[14:15]                        // 000006C0: 87FE0E7E
  v_add_i32     v10, vcc, v3, v2                            // 000006C4: 4A140503
  v_add_i32     v11, vcc, v0, v10                           // 000006C8: 4A161500
  v_cmp_lt_i32  s[16:17], v11, 0                            // 000006CC: D1020010 0001010B
  s_and_saveexec_b64  s[16:17], s[16:17]                    // 000006D4: BE902410
  s_cbranch_execz  label_01BA                               // 000006D8: BF880003
  v_mov_b32     v7, 1                                       // 000006DC: 7E0E0281
  s_andn2_b64   s[14:15], s[14:15], exec                    // 000006E0: 8A8E7E0E
  s_cbranch_scc0  label_01C9                                // 000006E4: BF84000F
label_01BA:
  s_andn2_b64   exec, s[16:17], exec                        // 000006E8: 8AFE7E10
  s_mov_b64     exec, s[16:17]                              // 000006EC: BEFE0410
  s_and_b64     exec, exec, s[14:15]                        // 000006F0: 87FE0E7E
  v_lshlrev_b32  v2, 4, v2                                  // 000006F4: 34040484
  v_add_i32     v2, vcc, v4, v2                             // 000006F8: 4A040504
  tbuffer_load_format_xyzw  v[11:14], v2, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 000006FC: EBF31000 80010B02
  s_waitcnt     vmcnt(0)                                    // 00000704: BF8C1F70
  v_add_i32     v15, vcc, v15, v11                          // 00000708: 4A1E170F
  v_add_i32     v16, vcc, v16, v12                          // 0000070C: 4A201910
  v_add_i32     v17, vcc, v17, v13                          // 00000710: 4A221B11
  v_add_i32     v18, vcc, v18, v14                          // 00000714: 4A241D12
  v_mov_b32     v2, v10                                     // 00000718: 7E04030A
  v_mov_b32     v7, 1                                       // 0000071C: 7E0E0281
  s_branch      label_01A5                                  // 00000720: BF82FFDC
label_01C9:
  s_mov_b64     exec, s[12:13]                              // 00000724: BEFE040C
  s_waitcnt     lgkmcnt(0)                                  // 00000728: BF8C007F
  v_add_i32     v1, vcc, s2, v1                             // 0000072C: 4A020202
  v_cmp_eq_i32  s[0:1], v7, 0                               // 00000730: D1040000 00010107
  tbuffer_store_format_xyzw  v[15:18], v1, s[8:11], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 00000738: EBF71000 80020F01
  s_endpgm                                                  // 00000740: BF810000



**
** Disassembly for '__kernel verticalSAT'
**

  s_load_dwordx4  s[16:19], s[2:3], 0x04                    // 00000000: C0880304
  s_waitcnt     lgkmcnt(0)                                  // 00000004: BF8C007F
  s_buffer_load_dword  s0, s[16:19], 0x0c                   // 00000008: C200110C
  s_waitcnt     lgkmcnt(0)                                  // 0000000C: BF8C007F
  v_cvt_f32_i32  v3, s0                                     // 00000010: 7E060A00
  v_and_b32     v4, 0x7fffffff, v3                          // 00000014: 360806FF 7FFFFFFF
  v_lshrrev_b32  v5, 23, v4                                 // 0000001C: 2C0A0897
  v_or_b32      v6, 1.0, v4                                 // 00000020: 380C08F2
  v_cmp_eq_i32  s[14:15], v5, 0                             // 00000024: D104000E 00010105
  v_add_f32     v6, -1.0, v6                                // 0000002C: 060C0CF3
  v_cndmask_b32  v7, v4, v6, s[14:15]                       // 00000030: D2000007 003A0D04
  v_lshlrev_b32  v8, 1, v7                                  // 00000038: 34100E81
  v_and_b32     v9, 0x007f0000, v7                          // 0000003C: 36120EFF 007F0000
  v_and_b32     v8, 0x00010000, v8                          // 00000044: 361010FF 00010000
  v_add_i32     v8, vcc, v9, v8                             // 0000004C: 4A101109
  v_ashrrev_i32  v9, 16, v8                                 // 00000050: 30121090
  s_load_dwordx4  s[20:23], s[2:3], 0x08                    // 00000054: C08A0308
  v_lshlrev_b32  v10, 3, v9                                 // 00000058: 34141283
  v_add_i32     v10, vcc, 0x00000620, v10                   // 0000005C: 4A1414FF 00000620
  v_ashrrev_i32  v11, 4, v10                                // 00000064: 30161484
  v_readfirstlane_b32  s1, v11                              // 00000068: 7E02050B
  s_lshl_b32    s1, s1, 4                                   // 0000006C: 8F018401
  s_waitcnt     lgkmcnt(0)                                  // 00000070: BF8C007F
  s_buffer_load_dwordx4  s[24:27], s[20:23], s1             // 00000074: C28C1401
  v_and_b32     v7, 0x007fffff, v7                          // 00000078: 360E0EFF 007FFFFF
  v_bfe_u32     v10, v10, 3, 1                              // 00000080: D290000A 0205070A
  v_bfe_i32     v9, v9, 1, 28                               // 00000088: D2920009 02710309
  v_or_b32      v11, 0.5, v8                                // 00000090: 381610F0
  v_or_b32      v7, 0.5, v7                                 // 00000094: 380E0EF0
  v_cmp_eq_i32  vcc, 0, v10                                 // 00000098: 7D041480
  s_waitcnt     lgkmcnt(0)                                  // 0000009C: BF8C007F
  v_mov_b32     v10, s24                                    // 000000A0: 7E140218
  v_mov_b32     v12, s26                                    // 000000A4: 7E18021A
  v_readfirstlane_b32  s1, v9                               // 000000A8: 7E020509
  v_sub_f32     v7, v11, v7                                 // 000000AC: 080E0F0B
  v_cndmask_b32  v9, v12, v10, vcc                          // 000000B0: 0012150C
  v_mov_b32     v10, s25                                    // 000000B4: 7E140219
  v_mov_b32     v11, s27                                    // 000000B8: 7E16021B
  s_lshl_b32    s1, s1, 4                                   // 000000BC: 8F018401
  v_cndmask_b32  v10, v11, v10, vcc                         // 000000C0: 0014150B
  v_mul_f32     v11, v7, v9                                 // 000000C4: 10161307
  s_buffer_load_dwordx4  s[24:27], s[20:23], s1             // 000000C8: C28C1401
  v_mac_f32     v11, v7, v10                                // 000000CC: 3E161507
  v_mul_f32     v12, 0x3e800000, v11                        // 000000D0: 101816FF 3E800000
  v_ashrrev_i32  v6, 23, v6                                 // 000000D8: 300C0C97
  v_sub_f32     v13, 1.0, v4                                // 000000DC: 081A08F2
  v_add_f32     v12, 0x3eaaaaab, v12                        // 000000E0: 061818FF 3EAAAAAB
  v_mad_f32     v9, v7, v9, -v11                            // 000000E8: D2820009 842E1307
  v_add_i32     v5, vcc, 0xffffff81, v5                     // 000000F0: 4A0A0AFF FFFFFF81
  v_add_i32     v6, vcc, 0xffffff03, v6                     // 000000F8: 4A0C0CFF FFFFFF03
  v_mul_f32     v14, 0x3e124925, v13                        // 00000100: 101C1AFF 3E124925
  v_mad_f32     v12, v11, v12, 0.5                          // 00000108: D282000C 03C2190B
  v_mul_f32     v15, v11, v11                               // 00000110: 101E170B
  v_mac_f32     v9, v7, v10                                 // 00000114: 3E121507
  v_cndmask_b32  v5, v5, v6, s[14:15]                       // 00000118: D2000005 003A0D05
  v_bfe_u32     v6, v8, 16, 1                               // 00000120: D2900006 02052108
  v_add_f32     v7, 0x3e2aaaab, v14                         // 00000128: 060E1CFF 3E2AAAAB
  s_mov_b32     s1, 0x3e4ccccd                              // 00000130: BE8103FF 3E4CCCCD
  v_mac_f32     v9, v12, v15                                // 00000138: 3E121F0C
  v_cvt_f32_i32  v5, v5                                     // 0000013C: 7E0A0B05
  s_mov_b32     s14, 0x3805fdf4                             // 00000140: BE8E03FF 3805FDF4
  v_cmp_eq_i32  vcc, 0, v6                                  // 00000148: 7D040C80
  s_waitcnt     lgkmcnt(0)                                  // 0000014C: BF8C007F
  v_mov_b32     v6, s25                                     // 00000150: 7E0C0219
  v_mov_b32     v8, s27                                     // 00000154: 7E10021B
  v_mad_f32     v7, v13, v7, s1                             // 00000158: D2820007 00060F0D
  s_mov_b32     s1, 0x3e800000                              // 00000160: BE8103FF 3E800000
  v_mad_f32     v9, v5, s14, -v9                            // 00000168: D2820009 84241D05
  v_mov_b32     v10, s24                                    // 00000170: 7E140218
  v_mov_b32     v12, s26                                    // 00000174: 7E18021A
  v_cndmask_b32  v6, v8, v6, vcc                            // 00000178: 000C0D08
  v_mad_f32     v7, v13, v7, s1                             // 0000017C: D2820007 00060F0D
  s_mov_b32     s1, 0x3eaaaaab                              // 00000184: BE8103FF 3EAAAAAB
  v_mul_f32     v8, v13, v13                                // 0000018C: 10101B0D
  s_buffer_load_dword  s14, s[16:19], 0x08                  // 00000190: C2071108
  v_cndmask_b32  v10, v12, v10, vcc                         // 00000194: 0014150C
  v_add_f32     v6, v9, v6                                  // 00000198: 060C0D09
  v_mad_f32     v7, v13, v7, s1                             // 0000019C: D2820007 00060F0D
  v_mul_f32     v9, v13, v8                                 // 000001A4: 1012110D
  v_mul_f32     v8, -0.5, v8                                // 000001A8: 101010F1
  s_mov_b32     s1, 0x3f317000                              // 000001AC: BE8103FF 3F317000
  s_mov_b32     s15, 0x3d800000                             // 000001B4: BE8F03FF 3D800000
  v_subrev_f32  v12, v11, v6                                // 000001BC: 0A180D0B
  v_mad_f32     v14, -v7, v9, v8                            // 000001C0: D282000E 24221307
  v_mac_f32     v10, s1, v5                                 // 000001C8: 3E140A01
  v_cmp_gt_f32  vcc, s15, abs(v13)                          // 000001CC: D008026A 00021A0F
  v_add_f32     v5, v12, v10                                // 000001D4: 060A150C
  v_subrev_f32  v15, v13, v14                               // 000001D8: 0A1E1D0D
  v_mul_f32     v7, v7, v9                                  // 000001DC: 100E1307
  v_cndmask_b32  v9, v12, v14, vcc                          // 000001E0: 00121D0C
  v_cndmask_b32  v8, -v11, v8, vcc                          // 000001E4: D2000008 21AA110B
  v_cndmask_b32  v5, v5, v15, vcc                           // 000001EC: 000A1F05
  v_cndmask_b32  v10, v10, -v13, vcc                        // 000001F0: D200000A 41AA1B0A
  v_cndmask_b32  v6, v6, -v7, vcc                           // 000001F8: D2000006 41AA0F06
  v_sub_f32     v7, v9, v8                                  // 00000200: 080E1109
  v_subrev_f32  v8, v5, v10                                 // 00000204: 0A101505
  v_sub_f32     v6, v6, v7                                  // 00000208: 080C0F06
  v_add_f32     v7, v9, v8                                  // 0000020C: 060E1109
  v_and_b32     v8, 0xfffff000, v5                          // 00000210: 36100AFF FFFFF000
  s_waitcnt     lgkmcnt(0)                                  // 00000218: BF8C007F
  v_cvt_f32_i32  v9, s14                                    // 0000021C: 7E120A0E
  v_add_f32     v6, v6, v7                                  // 00000220: 060C0F06
  v_sub_f32     v5, v5, v8                                  // 00000224: 080A1105
  v_and_b32     v7, 0xfffff000, v9                          // 00000228: 360E12FF FFFFF000
  v_add_f32     v5, v6, v5                                  // 00000230: 060A0B06
  v_sub_f32     v6, v9, v7                                  // 00000234: 080C0F09
  v_mul_f32     v10, v5, v6                                 // 00000238: 10140D05
  v_mac_f32     v10, v8, v6                                 // 0000023C: 3E140D08
  v_mac_f32     v10, v5, v7                                 // 00000240: 3E140F05
  v_mad_f32     v5, v7, v8, v10                             // 00000244: D2820005 042A1107
  v_mul_f32     v6, 0x42b8aa3b, v5                          // 0000024C: 100C0AFF 42B8AA3B
  v_cvt_i32_f32  v6, v6                                     // 00000254: 7E0C1106
  v_and_b32     v11, 63, v6                                 // 00000258: 36160CBF
  v_lshlrev_b32  v11, 3, v11                                // 0000025C: 34161683
  v_add_i32     v11, vcc, 0x00000410, v11                   // 00000260: 4A1616FF 00000410
  v_ashrrev_i32  v12, 4, v11                                // 00000268: 30181684
  v_readfirstlane_b32  s1, v12                              // 0000026C: 7E02050C
  v_cvt_f32_i32  v12, v6                                    // 00000270: 7E180B06
  s_mov_b32     s14, 0xbc310000                             // 00000274: BE8E03FF BC310000
  s_lshl_b32    s1, s1, 4                                   // 0000027C: 8F018401
  v_mad_f32     v13, v12, s14, v5                           // 00000280: D282000D 04141D0C
  s_mov_b32     s14, 0xb7e42fef                             // 00000288: BE8E03FF B7E42FEF
  v_mad_f32     v7, v7, v8, -v5                             // 00000290: D2820007 84161107
  s_buffer_load_dwordx4  s[20:23], s[20:23], s1             // 00000298: C28A1401
  v_mac_f32     v13, s14, v12                               // 0000029C: 3E1A180E
  v_add_f32     v7, v10, v7                                 // 000002A0: 060E0F0A
  v_add_f32     v8, v13, v7                                 // 000002A4: 06100F0D
  v_and_b32     v10, 0x7fffffff, v9                         // 000002A8: 361412FF 7FFFFFFF
  v_mul_f32     v12, 0x3d2aaaab, v8                         // 000002B0: 101810FF 3D2AAAAB
  v_lshrrev_b32  v13, 23, v10                               // 000002B8: 2C1A1497
  v_add_f32     v12, 0x3e2aaaab, v12                        // 000002BC: 061818FF 3E2AAAAB
  v_bfe_u32     v11, v11, 3, 1                              // 000002C4: D290000B 0205070B
  v_sub_i32     v14, vcc, 0x00000096, v13                   // 000002CC: 4C1C1AFF 00000096
  v_mad_f32     v12, v12, v8, 0.5                           // 000002D4: D282000C 03C2110C
  v_mul_f32     v15, v8, v8                                 // 000002DC: 101E1108
  v_cmp_eq_i32  s[14:15], v11, 0                            // 000002E0: D104000E 0001010B
  s_waitcnt     lgkmcnt(0)                                  // 000002E8: BF8C007F
  v_mov_b32     v11, s21                                    // 000002EC: 7E160215
  v_mov_b32     v16, s23                                    // 000002F0: 7E200217
  v_lshl_b32    v17, 1, v14                                 // 000002F4: 32221C81
  v_mac_f32     v8, v12, v15                                // 000002F8: 3E101F0C
  v_mov_b32     v12, s20                                    // 000002FC: 7E180214
  v_mov_b32     v15, s22                                    // 00000300: 7E1E0216
  v_cndmask_b32  v11, v16, v11, s[14:15]                    // 00000304: D200000B 003A1710
  v_and_b32     v16, v9, v17                                // 0000030C: 36202309
  v_bfe_u32     v14, v9, 0, v14                             // 00000310: D290000E 04390109
  v_add_i32     v13, vcc, 0xffffff82, v13                   // 00000318: 4A1A1AFF FFFFFF82
  v_cndmask_b32  v12, v15, v12, s[14:15]                    // 00000320: D200000C 003A190F
  v_mac_f32     v11, v11, v8                                // 00000328: 3E16110B
  v_ashrrev_i32  v15, 6, v6                                 // 0000032C: 301E0C86
  v_cmp_eq_i32  s[14:15], v16, 0                            // 00000330: D104000E 00010110
  v_cmp_eq_i32  s[20:21], v14, 0                            // 00000338: D1040014 0001010E
  v_cmp_ge_i32  s[22:23], v13, 1                            // 00000340: D10C0016 0001030D
  v_mac_f32     v11, v12, v8                                // 00000348: 3E16110C
  v_add_i32     v8, vcc, 21, v15                            // 0000034C: 4A101E95
  v_lshlrev_b32  v6, 17, v6                                 // 00000350: 340C0C91
  s_mov_b32     s1, 0xb482e308                              // 00000354: BE8103FF B482E308
  s_mov_b32     s24, 0x42b17218                             // 0000035C: BE9803FF 42B17218
  v_cndmask_b32  v14, 1, 2, s[14:15]                        // 00000364: D200000E 00390481
  s_and_b64     s[14:15], s[20:21], s[22:23]                // 0000036C: 878E1614
  v_add_f32     v11, v12, v11                               // 00000370: 0616170C
  v_lshl_b32    v8, 1, v8                                   // 00000374: 32101081
  v_and_b32     v6, 0xff800000, v6                          // 00000378: 360C0CFF FF800000
  s_movk_i32    s20, 0xff83                                 // 00000380: B014FF83
  v_cmp_gt_f32  s[22:23], v7, s1                            // 00000384: D0080016 00000307
  v_cmp_eq_f32  s[26:27], v5, s24                           // 0000038C: D004001A 00003105
  v_cndmask_b32  v7, 0, v14, s[14:15]                       // 00000394: D2000007 003A1C80
  v_cmp_le_i32  s[14:15], v13, 24                           // 0000039C: D106000E 0001310D
  v_mul_f32     v8, v11, v8                                 // 000003A4: 1010110B
  v_add_i32     v6, vcc, v11, v6                            // 000003A8: 4A0C0D0B
  v_cmp_lt_i32  s[20:21], v15, s20                          // 000003AC: D1020014 0000290F
  s_and_b64     s[22:23], s[22:23], s[26:27]                // 000003B4: 87961A16
  v_cmp_lt_f32  vcc, s24, v5                                // 000003B8: 7C020A18
  v_cndmask_b32  v7, 2, v7, s[14:15]                        // 000003BC: D2000007 003A0E82
  v_cndmask_b32  v6, v6, v8, s[20:21]                       // 000003C4: D2000006 00521106
  s_or_b64      s[14:15], s[22:23], vcc                     // 000003CC: 888E6A16
  v_mov_b32     v8, 0x7f800000                              // 000003D0: 7E1002FF 7F800000
  s_mov_b32     s1, 0xc2ce8ed0                              // 000003D8: BE8103FF C2CE8ED0
  v_cmp_eq_i32  vcc, 1, v7                                  // 000003E0: 7D040E81
  v_cmp_ne_i32  s[20:21], v3, v4                            // 000003E4: D10A0014 00020903
  v_cmp_eq_i32  s[22:23], v3, v4                            // 000003EC: D1040016 00020903
  v_cndmask_b32  v6, v6, v8, s[14:15]                       // 000003F4: D2000006 003A1106
  v_cmp_nlt_f32  s[14:15], v5, s1                           // 000003FC: D01C000E 00000305
  s_and_b64     s[20:21], vcc, s[20:21]                     // 00000404: 8794146A
  v_cndmask_b32  v5, 0, 1, s[22:23]                         // 00000408: D2000005 00590280
  v_cndmask_b32  v6, 0, v6, s[14:15]                        // 00000410: D2000006 003A0C80
  v_cndmask_b32  v11, 1.0, -1.0, s[20:21]                   // 00000418: D200000B 0051E6F2
  v_or_b32      v5, v7, v5                                  // 00000420: 380A0B07
  s_mov_b32     s1, 0xff800000                              // 00000424: BE8103FF FF800000
  v_mul_f32     v6, v6, v11                                 // 0000042C: 100C1706
  v_cmp_eq_i32  s[14:15], v5, 0                             // 00000430: D104000E 00010105
  v_mov_b32     v5, 0x7fc00000                              // 00000438: 7E0A02FF 7FC00000
  v_cmp_eq_i32  s[20:21], v9, s1                            // 00000440: D1040014 00000309
  v_cmp_lt_u32  s[24:25], v4, 1.0                           // 00000448: D1820018 0001E504
  v_cndmask_b32  v5, v6, v5, s[14:15]                       // 00000450: D2000005 003A0B06
  s_and_b64     s[14:15], s[20:21], s[24:25]                // 00000458: 878E1814
  v_cmp_gt_u32  s[26:27], v4, 1.0                           // 0000045C: D188001A 0001E504
  s_mov_b32     s28, 0x7f800000                             // 00000464: BE9C03FF 7F800000
  v_cmp_eq_i32  s[30:31], v9, v10                           // 0000046C: D104001E 00021509
  v_cndmask_b32  v5, v5, v8, s[14:15]                       // 00000474: D2000005 003A1105
  s_and_b64     s[14:15], s[20:21], s[26:27]                // 0000047C: 878E1A14
  v_cmp_eq_i32  s[32:33], v9, s28                           // 00000480: D1040020 00003909
  v_cndmask_b32  v6, 0, 1, s[30:31]                         // 00000488: D2000006 00790280
  v_cndmask_b32  v5, v5, 0, s[14:15]                        // 00000490: D2000005 00390105
  s_and_b64     s[14:15], s[24:25], s[32:33]                // 00000498: 878E2018
  v_or_b32      v11, v4, v6                                 // 0000049C: 38160D04
  v_cndmask_b32  v5, v5, 0, s[14:15]                        // 000004A0: D2000005 00390105
  s_and_b64     s[14:15], s[26:27], s[32:33]                // 000004A8: 878E201A
  v_cmp_eq_i32  s[24:25], v11, 0                            // 000004AC: D1040018 0001010B
  v_mov_b32     v11, 0xff800000                             // 000004B4: 7E1602FF FF800000
  v_cndmask_b32  v5, v5, v8, s[14:15]                       // 000004BC: D2000005 003A1105
  s_and_b64     s[14:15], vcc, s[24:25]                     // 000004C4: 878E186A
  v_cndmask_b32  v11, v11, v8, s[22:23]                     // 000004C8: D200000B 005A110B
  v_cmp_ne_i32  s[26:27], v7, 1                             // 000004D0: D10A001A 00010307
  v_cmp_eq_i32  s[32:33], v4, 0                             // 000004D8: D1040020 00010104
  s_load_dwordx4  s[36:39], s[2:3], 0x00                    // 000004E0: C0920300
  v_cndmask_b32  v5, v5, v11, s[14:15]                      // 000004E4: D2000005 003A1705
  s_and_b64     s[2:3], s[24:25], s[26:27]                  // 000004EC: 87821A18
  v_cndmask_b32  v6, 0, v6, s[32:33]                        // 000004F0: D2000006 00820C80
  v_mov_b32     v7, 0x80000000                              // 000004F8: 7E0E02FF 80000000
  s_and_b64     s[14:15], s[30:31], s[32:33]                // 00000500: 878E201E
  v_cndmask_b32  v11, 0, 1, s[26:27]                        // 00000504: D200000B 00690280
  v_cndmask_b32  v5, v5, v8, s[2:3]                         // 0000050C: D2000005 000A1105
  v_cndmask_b32  v12, v7, 0, s[22:23]                       // 00000514: D200000C 00590107
  s_and_b64     s[2:3], s[14:15], vcc                       // 0000051C: 87826A0E
  v_and_b32     v6, v6, v11                                 // 00000520: 360C1706
  v_cndmask_b32  v5, v5, v12, s[2:3]                        // 00000524: D2000005 000A1905
  v_cmp_eq_i32  s[2:3], v6, 0                               // 0000052C: D1040002 00010106
  v_cndmask_b32  v5, 0, v5, s[2:3]                          // 00000534: D2000005 000A0A80
  s_and_b64     s[2:3], s[20:21], s[32:33]                  // 0000053C: 87822014
  v_cmp_eq_i32  s[14:15], v3, -1.0                          // 00000540: D104000E 0001E703
  v_cmp_eq_i32  s[20:21], v10, s28                          // 00000548: D1040014 0000390A
  v_cmp_ne_i32  s[22:23], v9, v10                           // 00000550: D10A0016 00021509
  v_cmp_eq_i32  s[24:25], v3, s1                            // 00000558: D1040018 00000303
  v_cndmask_b32  v5, v5, v8, s[2:3]                         // 00000560: D2000005 000A1105
  s_and_b64     s[2:3], s[14:15], s[20:21]                  // 00000568: 8782140E
  s_and_b64     s[14:15], s[22:23], s[24:25]                // 0000056C: 878E1816
  s_waitcnt     lgkmcnt(0)                                  // 00000570: BF8C007F
  s_buffer_load_dwordx2  s[20:21], s[36:39], 0x04           // 00000574: C24A2504
  v_cndmask_b32  v5, v5, 1.0, s[2:3]                        // 00000578: D2000005 0009E505
  s_and_b64     s[2:3], s[14:15], vcc                       // 00000580: 87826A0E
  v_cndmask_b32  v5, v5, v7, s[2:3]                         // 00000584: D2000005 000A0F05
  s_nand_b64    s[2:3], s[26:27], s[14:15]                  // 0000058C: 8C820E1A
  s_and_b64     s[14:15], s[30:31], s[24:25]                // 00000590: 878E181E
  v_cndmask_b32  v5, 0, v5, s[2:3]                          // 00000594: D2000005 000A0A80
  s_and_b64     vcc, vcc, s[14:15]                          // 0000059C: 87EA0E6A
  v_mov_b32     v6, 0xff800000                              // 000005A0: 7E0C02FF FF800000
  v_cndmask_b32  v5, v5, v6, vcc                            // 000005A8: 000A0D05
  s_and_b64     s[2:3], s[26:27], s[14:15]                  // 000005AC: 87820E1A
  v_mov_b32     v6, 0x7f800000                              // 000005B0: 7E0C02FF 7F800000
  v_cmp_eq_i32  vcc, s28, v3                                // 000005B8: 7D04061C
  s_buffer_load_dwordx2  s[14:15], s[36:39], 0x18           // 000005BC: C2472518
  v_cndmask_b32  v5, v5, v6, s[2:3]                         // 000005C0: D2000005 000A0D05
  s_and_b64     s[2:3], s[22:23], vcc                       // 000005C8: 87826A16
  s_waitcnt     lgkmcnt(0)                                  // 000005CC: BF8C007F
  s_min_u32     s1, s21, 0x0000ffff                         // 000005D0: 8381FF15 0000FFFF
  s_buffer_load_dword  s21, s[16:19], 0x10                  // 000005D8: C20A9110
  v_cndmask_b32  v5, v5, 0, s[2:3]                          // 000005DC: D2000005 00090105
  s_and_b64     vcc, s[30:31], vcc                          // 000005E4: 87EA6A1E
  s_min_u32     s2, s20, 0x0000ffff                         // 000005E8: 8382FF14 0000FFFF
  v_mov_b32     v7, s1                                      // 000005F0: 7E0E0201
  v_cndmask_b32  v5, v5, v6, vcc                            // 000005F4: 000A0D05
  v_cmp_lt_u32  vcc, s28, v4                                // 000005F8: 7D82081C
  v_mov_b32     v4, s2                                      // 000005FC: 7E080202
  v_mul_i32_i24  v6, s13, v7                                // 00000600: 120C0E0D
  v_cndmask_b32  v5, v5, v3, vcc                            // 00000604: 000A0705
  v_cmp_gt_u32  s[2:3], v10, s28                            // 00000608: D1880002 0000390A
  v_mul_i32_i24  v4, s12, v4                                // 00000610: 1208080C
  v_add_i32     v1, vcc, v1, v6                             // 00000614: 4A020D01
  s_buffer_load_dword  s1, s[16:19], 0x00                   // 00000618: C2009100
  v_cndmask_b32  v5, v5, v9, s[2:3]                         // 0000061C: D2000005 000A1305
  v_add_i32     v0, vcc, v0, v4                             // 00000624: 4A000900
  v_add_i32     v1, vcc, s15, v1                            // 00000628: 4A02020F
  v_cvt_i32_f32  v4, v5                                     // 0000062C: 7E081105
  v_cmp_ne_i32  s[2:3], v10, 0                              // 00000630: D10A0002 0001010A
  v_add_i32     v0, vcc, s14, v0                            // 00000638: 4A00000E
  v_cndmask_b32  v4, 1, v4, s[2:3]                          // 0000063C: D2000004 000A0881
  v_cmp_ne_i32  vcc, 1.0, v3                                // 00000644: 7D0A06F2
  s_waitcnt     lgkmcnt(0)                                  // 00000648: BF8C007F
  v_mul_lo_i32  v3, v1, s21                                 // 0000064C: D2D60003 02002B01
  v_cndmask_b32  v4, 1, v4, vcc                             // 00000654: 00080881
  v_add_i32     v5, vcc, v0, v3                             // 00000658: 4A0A0700
  v_mul_lo_i32  v6, v4, s21                                 // 0000065C: D2D60006 02002B04
  v_lshlrev_b32  v5, 4, v5                                  // 00000664: 340A0A84
  s_buffer_load_dword  s2, s[16:19], 0x04                   // 00000668: C2011104
  v_add_i32     v1, vcc, v1, v4                             // 0000066C: 4A020901
  v_lshlrev_b32  v6, 4, v6                                  // 00000670: 340C0C84
  v_add_i32     v15, vcc, s1, v5                            // 00000674: 4A1E0A01
  s_mov_b64     s[12:13], exec                              // 00000678: BE8C047E
  s_mov_b64     s[14:15], exec                              // 0000067C: BE8E047E
  v_mov_b32     v16, 0                                      // 00000680: 7E200280
  v_mov_b32     v17, 0                                      // 00000684: 7E220280
  v_mov_b32     v18, 0                                      // 00000688: 7E240280
  v_mov_b32     v19, 0                                      // 0000068C: 7E260280
  v_mov_b32     v10, -1                                     // 00000690: 7E1402C1
label_01A5:
  v_add_i32     v10, vcc, 1, v10                            // 00000694: 4A141481
  v_cmp_gt_i32  s[16:17], s0, v10                           // 00000698: D1080010 00021400
  s_mov_b64     s[18:19], exec                              // 000006A0: BE92047E
  s_andn2_b64   exec, s[18:19], s[16:17]                    // 000006A4: 8AFE1012
  s_cbranch_execz  label_01AE                               // 000006A8: BF880003
  v_mov_b32     v2, 0                                       // 000006AC: 7E040280
  s_andn2_b64   s[14:15], s[14:15], exec                    // 000006B0: 8A8E7E0E
  s_cbranch_scc0  label_01C6                                // 000006B4: BF840018
label_01AE:
  s_andn2_b64   exec, s[18:19], exec                        // 000006B8: 8AFE7E12
  s_mov_b64     exec, s[18:19]                              // 000006BC: BEFE0412
  s_and_b64     exec, exec, s[14:15]                        // 000006C0: 87FE0E7E
  v_sub_i32     v1, vcc, v1, v4                             // 000006C4: 4C020901
  v_cmp_lt_i32  s[16:17], v1, 0                             // 000006C8: D1020010 00010101
  s_and_saveexec_b64  s[16:17], s[16:17]                    // 000006D0: BE902410
  s_cbranch_execz  label_01B9                               // 000006D4: BF880003
  v_mov_b32     v2, 1                                       // 000006D8: 7E040281
  s_andn2_b64   s[14:15], s[14:15], exec                    // 000006DC: 8A8E7E0E
  s_cbranch_scc0  label_01C6                                // 000006E0: BF84000D
label_01B9:
  s_andn2_b64   exec, s[16:17], exec                        // 000006E4: 8AFE7E10
  s_mov_b64     exec, s[16:17]                              // 000006E8: BEFE0410
  s_and_b64     exec, exec, s[14:15]                        // 000006EC: 87FE0E7E
  tbuffer_load_format_xyzw  v[11:14], v15, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 000006F0: EBF31000 80010B0F
  v_sub_i32     v15, vcc, v15, v6                           // 000006F8: 4C1E0D0F
  s_waitcnt     vmcnt(0)                                    // 000006FC: BF8C1F70
  v_add_i32     v16, vcc, v16, v11                          // 00000700: 4A201710
  v_add_i32     v17, vcc, v17, v12                          // 00000704: 4A221911
  v_add_i32     v18, vcc, v18, v13                          // 00000708: 4A241B12
  v_add_i32     v19, vcc, v19, v14                          // 0000070C: 4A261D13
  v_mov_b32     v2, 1                                       // 00000710: 7E040281
  s_branch      label_01A5                                  // 00000714: BF82FFDF
label_01C6:
  s_mov_b64     exec, s[12:13]                              // 00000718: BEFE040C
  v_add_i32     v0, vcc, v3, v0                             // 0000071C: 4A000103
  v_lshlrev_b32  v0, 4, v0                                  // 00000720: 34000084
  s_waitcnt     lgkmcnt(0)                                  // 00000724: BF8C007F
  v_add_i32     v0, vcc, s2, v0                             // 00000728: 4A000002
  v_cmp_eq_i32  s[0:1], v2, 0                               // 0000072C: D1040000 00010102
  tbuffer_store_format_xyzw  v[16:19], v0, s[8:11], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 00000734: EBF71000 80021000
  s_endpgm                                                  // 0000073C: BF810000



**
** Disassembly for '__kernel box_filter_horizontal'
**

  s_buffer_load_dwordx2  s[0:1], s[4:7], 0x04               // 00000000: C2400504
  s_buffer_load_dwordx2  s[14:15], s[4:7], 0x18             // 00000004: C2470518
  s_buffer_load_dword  s16, s[8:11], 0x00                   // 00000008: C2080900
  s_buffer_load_dword  s17, s[8:11], 0x04                   // 0000000C: C2088904
  s_buffer_load_dword  s8, s[8:11], 0x08                    // 00000010: C2040908
  s_buffer_load_dword  s4, s[4:7], 0x00                     // 00000014: C2020500
  s_waitcnt     lgkmcnt(0)                                  // 00000018: BF8C007F
  s_min_u32     s0, s0, 0x0000ffff                          // 0000001C: 8380FF00 0000FFFF
  s_min_u32     s1, s1, 0x0000ffff                          // 00000024: 8381FF01 0000FFFF
  v_mov_b32     v2, s0                                      // 0000002C: 7E040200
  v_mul_i32_i24  v2, s12, v2                                // 00000030: 1204040C
  v_mov_b32     v3, s1                                      // 00000034: 7E060201
  v_mul_i32_i24  v3, s13, v3                                // 00000038: 1206060D
  v_add_i32     v0, vcc, v0, v2                             // 0000003C: 4A000500
  v_add_i32     v1, vcc, v1, v3                             // 00000040: 4A020701
  v_add_i32     v0, vcc, s14, v0                            // 00000044: 4A00000E
  v_add_i32     v1, vcc, s15, v1                            // 00000048: 4A02020F
  s_add_i32     s0, -1, s8                                  // 0000004C: 810008C1
  s_lshr_b32    s1, s0, 31                                  // 00000050: 90019F00
  s_add_i32     s0, s0, s1                                  // 00000054: 81000100
  s_ashr_i32    s0, s0, 1                                   // 00000058: 91008100
  v_cmp_gt_i32  s[6:7], s0, v0                              // 0000005C: D1080006 00020000
  v_mul_lo_i32  v1, s4, v1                                  // 00000064: D2D60001 02020204
  v_add_i32     v1, vcc, v0, v1                             // 0000006C: 4A020300
  s_load_dwordx4  s[12:15], s[2:3], 0x58                    // 00000070: C0860358
  s_and_saveexec_b64  s[6:7], s[6:7]                        // 00000074: BE862406
  v_lshlrev_b32  v2, 2, v1                                  // 00000078: 34040282
  v_add_i32     v0, vcc, s17, v2                            // 0000007C: 4A000411
  v_mov_b32     v1, 0                                       // 00000080: 7E020280
  s_waitcnt     lgkmcnt(0)                                  // 00000084: BF8C007F
  tbuffer_store_format_x  v1, v0, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000088: EBA41000 80030100
  s_andn2_b64   exec, s[6:7], exec                          // 00000090: 8AFE7E06
  s_cbranch_execz  label_010F                               // 00000094: BF8800E9
  s_sub_i32     s1, 0, s0                                   // 00000098: 81810080
  s_sub_i32     s4, s4, s0                                  // 0000009C: 81840004
  v_cmp_ge_i32  s[4:5], v0, s4                              // 000000A0: D10C0004 00000900
  s_and_saveexec_b64  s[4:5], s[4:5]                        // 000000A8: BE842404
  v_lshlrev_b32  v0, 2, v1                                  // 000000AC: 34000282
  v_add_i32     v0, vcc, s17, v0                            // 000000B0: 4A000011
  v_mov_b32     v1, 0                                       // 000000B4: 7E020280
  s_waitcnt     lgkmcnt(0)                                  // 000000B8: BF8C007F
  tbuffer_store_format_x  v1, v0, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000000BC: EBA41000 80030100
  s_andn2_b64   exec, s[4:5], exec                          // 000000C4: 8AFE7E04
  s_cbranch_execz  label_010F                               // 000000C8: BF8800DC
  s_load_dwordx4  s[20:23], s[2:3], 0x50                    // 000000CC: C08A0350
  s_cmp_lt_i32  s1, s0                                      // 000000D0: BF040001
  s_cbranch_scc0  label_0067                                // 000000D4: BF840031
  v_lshlrev_b32  v0, 2, v1                                  // 000000D8: 34000282
  v_add_i32     v0, vcc, s16, v0                            // 000000DC: 4A000010
  s_mov_b64     s[2:3], exec                                // 000000E0: BE82047E
  v_mov_b32     v2, s1                                      // 000000E4: 7E040201
  v_mov_b32     v15, 0                                      // 000000E8: 7E1E0280
  v_mov_b32     v16, 0                                      // 000000EC: 7E200280
  v_mov_b32     v17, 0                                      // 000000F0: 7E220280
  v_mov_b32     v18, 0                                      // 000000F4: 7E240280
label_003E:
  v_lshlrev_b32  v7, 2, v2                                  // 000000F8: 340E0482
  v_add_i32     v7, vcc, v0, v7                             // 000000FC: 4A0E0F00
  s_waitcnt     lgkmcnt(0)                                  // 00000100: BF8C007F
  tbuffer_load_format_x  v8, v7, s[20:23], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000104: EBA01000 80050807
  tbuffer_load_format_x  v7, v7, s[20:23], 0 offen offset:4 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000010C: EBA01004 80050707
  s_waitcnt     vmcnt(1)                                    // 00000114: BF8C1F71
  v_and_b32     v9, 0x000000ff, v8                          // 00000118: 361210FF 000000FF
  v_bfe_u32     v10, v8, 8, 8                               // 00000120: D290000A 02211108
  v_bfe_u32     v11, v8, 16, 8                              // 00000128: D290000B 02212108
  v_bfe_u32     v8, v8, 24, 8                               // 00000130: D2900008 02213108
  s_waitcnt     vmcnt(0)                                    // 00000138: BF8C1F70
  v_and_b32     v12, 0x000000ff, v7                         // 0000013C: 36180EFF 000000FF
  v_bfe_u32     v13, v7, 8, 8                               // 00000144: D290000D 02211107
  v_bfe_u32     v14, v7, 16, 8                              // 0000014C: D290000E 02212107
  v_bfe_u32     v7, v7, 24, 8                               // 00000154: D2900007 02213107
  v_add_i32     v3, vcc, v15, v9                            // 0000015C: 4A06130F
  v_add_i32     v4, vcc, v16, v10                           // 00000160: 4A081510
  v_add_i32     v5, vcc, v17, v11                           // 00000164: 4A0A1711
  v_add_i32     v6, vcc, v18, v8                            // 00000168: 4A0C1112
  v_add_i32     v2, vcc, 2, v2                              // 0000016C: 4A040482
  v_add_i32     v15, vcc, v12, v3                           // 00000170: 4A1E070C
  v_add_i32     v16, vcc, v13, v4                           // 00000174: 4A20090D
  v_add_i32     v17, vcc, v14, v5                           // 00000178: 4A220B0E
  v_add_i32     v18, vcc, v7, v6                            // 0000017C: 4A240D07
  v_cmp_gt_i32  s[4:5], s0, v2                              // 00000180: D1080004 00020400
  s_and_b64     exec, exec, s[4:5]                          // 00000188: 87FE047E
  s_cbranch_execz  label_0065                               // 0000018C: BF880001
  s_branch      label_003E                                  // 00000190: BF82FFD9
label_0065:
  s_mov_b64     exec, s[2:3]                                // 00000194: BEFE0402
  s_branch      label_006B                                  // 00000198: BF820004
label_0067:
  v_mov_b32     v15, 0                                      // 0000019C: 7E1E0280
  v_mov_b32     v16, 0                                      // 000001A0: 7E200280
  v_mov_b32     v17, 0                                      // 000001A4: 7E220280
  v_mov_b32     v18, 0                                      // 000001A8: 7E240280
label_006B:
  v_add_i32     v5, vcc, s0, v1                             // 000001AC: 4A0A0200
  v_lshlrev_b32  v5, 2, v5                                  // 000001B0: 340A0A82
  v_add_i32     v5, vcc, s16, v5                            // 000001B4: 4A0A0A10
  s_waitcnt     lgkmcnt(0)                                  // 000001B8: BF8C007F
  tbuffer_load_format_x  v5, v5, s[20:23], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000001BC: EBA01000 80050505
  s_sub_i32     s0, 0, s8                                   // 000001C4: 81800880
  s_max_i32     s0, s8, s0                                  // 000001C8: 84000008
  v_cvt_f32_u32  v6, s0                                     // 000001CC: 7E0C0C00
  v_rcp_f32     v6, v6                                      // 000001D0: 7E0C5506
  v_mul_f32     v6, 0x4f800000, v6                          // 000001D4: 100C0CFF 4F800000
  v_cvt_u32_f32  v6, v6                                     // 000001DC: 7E0C0F06
  v_mul_lo_u32  v7, s0, v6                                  // 000001E0: D2D20007 02020C00
  v_mul_hi_u32  v8, s0, v6                                  // 000001E8: D2D40008 02020C00
  v_sub_i32     v9, vcc, 0, v7                              // 000001F0: 4C120E80
  v_cmp_ne_i32  s[2:3], v8, 0                               // 000001F4: D10A0002 00010108
  s_waitcnt     vmcnt(0)                                    // 000001FC: BF8C1F70
  v_bfe_u32     v8, v5, 24, 8                               // 00000200: D2900008 02213105
  v_cndmask_b32  v7, v9, v7, s[2:3]                         // 00000208: D2000007 000A0F09
  v_bfe_u32     v9, v5, 8, 8                                // 00000210: D2900009 02211105
  v_bfe_u32     v10, v5, 16, 8                              // 00000218: D290000A 02212105
  v_add_i32     v4, vcc, v18, v8                            // 00000220: 4A081112
  v_mul_hi_u32  v7, v7, v6                                  // 00000224: D2D40007 02020D07
  v_and_b32     v5, 0x000000ff, v5                          // 0000022C: 360A0AFF 000000FF
  v_add_i32     v2, vcc, v16, v9                            // 00000234: 4A041310
  v_add_i32     v3, vcc, v17, v10                           // 00000238: 4A061511
  v_sub_i32     v8, vcc, 0, v4                              // 0000023C: 4C100880
  v_sub_i32     v9, vcc, v6, v7                             // 00000240: 4C120F06
  v_add_i32     v6, vcc, v6, v7                             // 00000244: 4A0C0F06
  v_add_i32     v0, vcc, v15, v5                            // 00000248: 4A000B0F
  v_sub_i32     v5, vcc, 0, v2                              // 0000024C: 4C0A0480
  v_sub_i32     v7, vcc, 0, v3                              // 00000250: 4C0E0680
  v_max_i32     v8, v4, v8                                  // 00000254: 24101104
  v_cndmask_b32  v6, v6, v9, s[2:3]                         // 00000258: D2000006 000A1306
  v_sub_i32     v9, vcc, 0, v0                              // 00000260: 4C120080
  v_max_i32     v5, v2, v5                                  // 00000264: 240A0B02
  v_max_i32     v7, v3, v7                                  // 00000268: 240E0F03
  v_mul_hi_u32  v10, v6, v8                                 // 0000026C: D2D4000A 02021106
  v_max_i32     v9, v0, v9                                  // 00000274: 24121300
  v_mul_hi_u32  v11, v6, v5                                 // 00000278: D2D4000B 02020B06
  v_mul_hi_u32  v12, v6, v7                                 // 00000280: D2D4000C 02020F06
  v_mul_lo_u32  v13, v10, s0                                // 00000288: D2D2000D 0200010A
  v_mul_hi_u32  v6, v6, v9                                  // 00000290: D2D40006 02021306
  v_mul_lo_u32  v14, v11, s0                                // 00000298: D2D2000E 0200010B
  v_mul_lo_u32  v15, v12, s0                                // 000002A0: D2D2000F 0200010C
  v_sub_i32     v16, vcc, v8, v13                           // 000002A8: 4C201B08
  v_mul_lo_u32  v17, v6, s0                                 // 000002AC: D2D20011 02000106
  v_sub_i32     v18, vcc, v5, v14                           // 000002B4: 4C241D05
  v_sub_i32     v19, vcc, v7, v15                           // 000002B8: 4C261F07
  v_cmp_ge_u32  s[2:3], v8, v13                             // 000002BC: D18C0002 00021B08
  v_cmp_ge_u32  s[4:5], v16, s0                             // 000002C4: D18C0004 00000110
  v_sub_i32     v8, vcc, v9, v17                            // 000002CC: 4C102309
  v_cmp_ge_u32  s[10:11], v5, v14                           // 000002D0: D18C000A 00021D05
  v_cmp_ge_u32  s[18:19], v7, v15                           // 000002D8: D18C0012 00021F07
  v_cmp_ge_u32  s[20:21], v18, s0                           // 000002E0: D18C0014 00000112
  v_cmp_ge_u32  s[22:23], v19, s0                           // 000002E8: D18C0016 00000113
  s_and_b64     s[4:5], s[2:3], s[4:5]                      // 000002F0: 87840402
  v_cmp_ge_u32  s[24:25], v9, v17                           // 000002F4: D18C0018 00022309
  v_cmp_ge_u32  s[26:27], v8, s0                            // 000002FC: D18C001A 00000108
  s_and_b64     s[20:21], s[10:11], s[20:21]                // 00000304: 8794140A
  s_and_b64     s[22:23], s[18:19], s[22:23]                // 00000308: 87961612
  v_addc_u32    v5, vcc, v10, 0, s[4:5]                     // 0000030C: D2506A05 0011010A
  s_and_b64     s[4:5], s[24:25], s[26:27]                  // 00000314: 87841A18
  v_addc_u32    v7, vcc, v11, 0, s[20:21]                   // 00000318: D2506A07 0051010B
  v_addc_u32    v8, vcc, v12, 0, s[22:23]                   // 00000320: D2506A08 0059010C
  v_addc_u32    v5, vcc, v5, -1, s[2:3]                     // 00000328: D2506A05 00098305
  v_cmp_ne_i32  s[0:1], s0, 0                               // 00000330: D10A0000 00010000
  v_cmp_lt_i32  s[2:3], v4, 0                               // 00000338: D1020002 00010104
  v_cmp_lt_i32  s[8:9], s8, 0                               // 00000340: D1020008 00010008
  v_addc_u32    v4, vcc, v6, 0, s[4:5]                      // 00000348: D2506A04 00110106
  v_addc_u32    v6, vcc, v7, -1, s[10:11]                   // 00000350: D2506A06 00298307
  v_addc_u32    v7, vcc, v8, -1, s[18:19]                   // 00000358: D2506A07 00498308
  v_cndmask_b32  v5, -1, v5, s[0:1]                         // 00000360: D2000005 00020AC1
  v_cmp_lt_i32  s[4:5], v2, 0                               // 00000368: D1020004 00010102
  v_cmp_lt_i32  s[10:11], v3, 0                             // 00000370: D102000A 00010103
  v_addc_u32    v2, vcc, v4, -1, s[24:25]                   // 00000378: D2506A02 00618304
  v_cndmask_b32  v3, -1, v6, s[0:1]                         // 00000380: D2000003 00020CC1
  v_cndmask_b32  v4, -1, v7, s[0:1]                         // 00000388: D2000004 00020EC1
  s_xor_b64     s[2:3], s[2:3], s[8:9]                      // 00000390: 89820802
  v_sub_i32     v6, vcc, 0, v5                              // 00000394: 4C0C0A80
  v_cmp_lt_i32  s[18:19], v0, 0                             // 00000398: D1020012 00010100
  v_cndmask_b32  v0, -1, v2, s[0:1]                         // 000003A0: D2000000 000204C1
  s_xor_b64     s[0:1], s[4:5], s[8:9]                      // 000003A8: 89800804
  s_xor_b64     s[4:5], s[10:11], s[8:9]                    // 000003AC: 8984080A
  v_sub_i32     v2, vcc, 0, v3                              // 000003B0: 4C040680
  v_sub_i32     v7, vcc, 0, v4                              // 000003B4: 4C0E0880
  v_cndmask_b32  v5, v5, v6, s[2:3]                         // 000003B8: D2000005 000A0D05
  v_mov_b32     v6, 0x000000ff                              // 000003C0: 7E0C02FF 000000FF
  s_xor_b64     s[2:3], s[18:19], s[8:9]                    // 000003C8: 89820812
  v_sub_i32     v8, vcc, 0, v0                              // 000003CC: 4C100080
  v_cndmask_b32  v2, v3, v2, s[0:1]                         // 000003D0: D2000002 00020503
  v_cndmask_b32  v3, v4, v7, s[4:5]                         // 000003D8: D2000003 00120F04
  v_and_b32     v4, v5, v6                                  // 000003E0: 36080D05
  v_cndmask_b32  v0, v0, v8, s[2:3]                         // 000003E4: D2000000 000A1100
  v_and_b32     v2, v2, v6                                  // 000003EC: 36040D02
  v_and_b32     v3, v3, v6                                  // 000003F0: 36060D03
  v_lshlrev_b32  v4, 8, v4                                  // 000003F4: 34080888
  s_mov_b32     s0, 0x0000ff00                              // 000003F8: BE8003FF 0000FF00
  v_and_b32     v0, v6, v0                                  // 00000400: 36000106
  v_lshlrev_b32  v2, 8, v2                                  // 00000404: 34040488
  v_bfi_b32     v3, s0, v4, v3                              // 00000408: D2940003 040E0800
  v_lshlrev_b32  v1, 2, v1                                  // 00000410: 34020282
  v_bfi_b32     v0, s0, v2, v0                              // 00000414: D2940000 04020400
  v_lshlrev_b32  v2, 16, v3                                 // 0000041C: 34040690
  s_mov_b32     s0, 0xffff0000                              // 00000420: BE8003FF FFFF0000
  v_add_i32     v1, vcc, s17, v1                            // 00000428: 4A020211
  v_bfi_b32     v0, s0, v2, v0                              // 0000042C: D2940000 04020400
  tbuffer_store_format_x  v0, v1, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000434: EBA41000 80030001
label_010F:
  s_mov_b64     exec, s[6:7]                                // 0000043C: BEFE0406
  s_endpgm                                                  // 00000440: BF810000



**
** Disassembly for '__kernel box_filter_vertical'
**

  s_buffer_load_dwordx2  s[0:1], s[4:7], 0x04               // 00000000: C2400504
  s_buffer_load_dwordx2  s[14:15], s[4:7], 0x18             // 00000004: C2470518
  s_buffer_load_dword  s16, s[8:11], 0x00                   // 00000008: C2080900
  s_buffer_load_dword  s17, s[8:11], 0x04                   // 0000000C: C2088904
  s_buffer_load_dword  s8, s[8:11], 0x08                    // 00000010: C2040908
  s_buffer_load_dwordx2  s[4:5], s[4:7], 0x00               // 00000014: C2420500
  s_waitcnt     lgkmcnt(0)                                  // 00000018: BF8C007F
  s_min_u32     s0, s0, 0x0000ffff                          // 0000001C: 8380FF00 0000FFFF
  s_min_u32     s1, s1, 0x0000ffff                          // 00000024: 8381FF01 0000FFFF
  v_mov_b32     v2, s0                                      // 0000002C: 7E040200
  v_mul_i32_i24  v2, s12, v2                                // 00000030: 1204040C
  v_mov_b32     v3, s1                                      // 00000034: 7E060201
  v_mul_i32_i24  v3, s13, v3                                // 00000038: 1206060D
  v_add_i32     v0, vcc, v0, v2                             // 0000003C: 4A000500
  v_add_i32     v1, vcc, v1, v3                             // 00000040: 4A020701
  v_add_i32     v0, vcc, s14, v0                            // 00000044: 4A00000E
  v_add_i32     v1, vcc, s15, v1                            // 00000048: 4A02020F
  s_add_i32     s0, -1, s8                                  // 0000004C: 810008C1
  s_lshr_b32    s1, s0, 31                                  // 00000050: 90019F00
  s_add_i32     s0, s0, s1                                  // 00000054: 81000100
  s_ashr_i32    s0, s0, 1                                   // 00000058: 91008100
  v_cmp_gt_i32  s[6:7], s0, v1                              // 0000005C: D1080006 00020200
  v_mul_lo_i32  v2, s4, v1                                  // 00000064: D2D60002 02020204
  v_add_i32     v2, vcc, v0, v2                             // 0000006C: 4A040500
  s_load_dwordx4  s[12:15], s[2:3], 0x58                    // 00000070: C0860358
  s_and_saveexec_b64  s[6:7], s[6:7]                        // 00000074: BE862406
  v_lshlrev_b32  v3, 2, v2                                  // 00000078: 34060482
  v_add_i32     v0, vcc, s17, v3                            // 0000007C: 4A000611
  v_mov_b32     v1, 0                                       // 00000080: 7E020280
  s_waitcnt     lgkmcnt(0)                                  // 00000084: BF8C007F
  tbuffer_store_format_x  v1, v0, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000088: EBA41000 80030100
  s_andn2_b64   exec, s[6:7], exec                          // 00000090: 8AFE7E06
  s_cbranch_execz  label_011E                               // 00000094: BF8800F8
  s_sub_i32     s1, 0, s0                                   // 00000098: 81810080
  s_sub_i32     s5, s5, s0                                  // 0000009C: 81850005
  v_cmp_ge_i32  s[10:11], v1, s5                            // 000000A0: D10C000A 00000B01
  s_and_saveexec_b64  s[10:11], s[10:11]                    // 000000A8: BE8A240A
  v_lshlrev_b32  v3, 2, v2                                  // 000000AC: 34060482
  v_add_i32     v0, vcc, s17, v3                            // 000000B0: 4A000611
  v_mov_b32     v1, 0                                       // 000000B4: 7E020280
  s_waitcnt     lgkmcnt(0)                                  // 000000B8: BF8C007F
  tbuffer_store_format_x  v1, v0, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000000BC: EBA41000 80030100
  s_andn2_b64   exec, s[10:11], exec                        // 000000C4: 8AFE7E0A
  s_cbranch_execz  label_011E                               // 000000C8: BF8800EB
  s_load_dwordx4  s[20:23], s[2:3], 0x50                    // 000000CC: C08A0350
  s_cmp_lt_i32  s1, s0                                      // 000000D0: BF040001
  s_cbranch_scc0  label_0075                                // 000000D4: BF84003F
  v_add_i32     v3, vcc, 1, v1                              // 000000D8: 4A060281
  v_subrev_i32  v1, vcc, s0, v1                             // 000000DC: 4E020200
  v_subrev_i32  v3, vcc, s0, v3                             // 000000E0: 4E060600
  v_mul_lo_i32  v1, s4, v1                                  // 000000E4: D2D60001 02020204
  v_mul_lo_i32  v3, s4, v3                                  // 000000EC: D2D60003 02020604
  v_add_i32     v1, vcc, v0, v1                             // 000000F4: 4A020300
  v_add_i32     v0, vcc, v0, v3                             // 000000F8: 4A000700
  v_lshlrev_b32  v1, 2, v1                                  // 000000FC: 34020282
  v_lshlrev_b32  v0, 2, v0                                  // 00000100: 34000082
  s_lshl_b32    s2, s4, 3                                   // 00000104: 8F028304
  v_add_i32     v1, vcc, s16, v1                            // 00000108: 4A020210
  v_add_i32     v0, vcc, s16, v0                            // 0000010C: 4A000010
  s_mov_b64     s[10:11], exec                              // 00000110: BE8A047E
  v_mov_b32     v3, 0                                       // 00000114: 7E060280
  v_mov_b32     v4, s1                                      // 00000118: 7E080201
  v_mov_b32     v17, 0                                      // 0000011C: 7E220280
  v_mov_b32     v18, 0                                      // 00000120: 7E240280
  v_mov_b32     v19, 0                                      // 00000124: 7E260280
  v_mov_b32     v20, 0                                      // 00000128: 7E280280
label_004B:
  v_add_i32     v9, vcc, v3, v1                             // 0000012C: 4A120303
  v_add_i32     v10, vcc, v0, v3                            // 00000130: 4A140700
  s_waitcnt     lgkmcnt(0)                                  // 00000134: BF8C007F
  tbuffer_load_format_x  v9, v9, s[20:23], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000138: EBA01000 80050909
  tbuffer_load_format_x  v10, v10, s[20:23], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000140: EBA01000 80050A0A
  s_waitcnt     vmcnt(1)                                    // 00000148: BF8C1F71
  v_and_b32     v11, 0x000000ff, v9                         // 0000014C: 361612FF 000000FF
  v_bfe_u32     v12, v9, 8, 8                               // 00000154: D290000C 02211109
  v_bfe_u32     v13, v9, 16, 8                              // 0000015C: D290000D 02212109
  v_bfe_u32     v9, v9, 24, 8                               // 00000164: D2900009 02213109
  s_waitcnt     vmcnt(0)                                    // 0000016C: BF8C1F70
  v_and_b32     v14, 0x000000ff, v10                        // 00000170: 361C14FF 000000FF
  v_bfe_u32     v15, v10, 8, 8                              // 00000178: D290000F 0221110A
  v_bfe_u32     v16, v10, 16, 8                             // 00000180: D2900010 0221210A
  v_bfe_u32     v10, v10, 24, 8                             // 00000188: D290000A 0221310A
  v_add_i32     v5, vcc, v17, v11                           // 00000190: 4A0A1711
  v_add_i32     v6, vcc, v18, v12                           // 00000194: 4A0C1912
  v_add_i32     v7, vcc, v19, v13                           // 00000198: 4A0E1B13
  v_add_i32     v8, vcc, v20, v9                            // 0000019C: 4A101314
  v_add_i32     v4, vcc, 2, v4                              // 000001A0: 4A080882
  v_add_i32     v17, vcc, v14, v5                           // 000001A4: 4A220B0E
  v_add_i32     v18, vcc, v15, v6                           // 000001A8: 4A240D0F
  v_add_i32     v19, vcc, v16, v7                           // 000001AC: 4A260F10
  v_add_i32     v20, vcc, v10, v8                           // 000001B0: 4A28110A
  v_add_i32     v3, vcc, s2, v3                             // 000001B4: 4A060602
  v_cmp_gt_i32  s[18:19], s0, v4                            // 000001B8: D1080012 00020800
  s_and_b64     exec, exec, s[18:19]                        // 000001C0: 87FE127E
  s_cbranch_execz  label_0073                               // 000001C4: BF880001
  s_branch      label_004B                                  // 000001C8: BF82FFD8
label_0073:
  s_mov_b64     exec, s[10:11]                              // 000001CC: BEFE040A
  s_branch      label_0079                                  // 000001D0: BF820004
label_0075:
  v_mov_b32     v17, 0                                      // 000001D4: 7E220280
  v_mov_b32     v18, 0                                      // 000001D8: 7E240280
  v_mov_b32     v19, 0                                      // 000001DC: 7E260280
  v_mov_b32     v20, 0                                      // 000001E0: 7E280280
label_0079:
  s_mul_i32     s0, s0, s4                                  // 000001E4: 93000400
  v_add_i32     v5, vcc, s0, v2                             // 000001E8: 4A0A0400
  v_lshlrev_b32  v5, 2, v5                                  // 000001EC: 340A0A82
  v_add_i32     v5, vcc, s16, v5                            // 000001F0: 4A0A0A10
  s_waitcnt     lgkmcnt(0)                                  // 000001F4: BF8C007F
  tbuffer_load_format_x  v5, v5, s[20:23], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000001F8: EBA01000 80050505
  s_sub_i32     s0, 0, s8                                   // 00000200: 81800880
  s_max_i32     s0, s8, s0                                  // 00000204: 84000008
  v_cvt_f32_u32  v6, s0                                     // 00000208: 7E0C0C00
  v_rcp_f32     v6, v6                                      // 0000020C: 7E0C5506
  v_mul_f32     v6, 0x4f800000, v6                          // 00000210: 100C0CFF 4F800000
  v_cvt_u32_f32  v6, v6                                     // 00000218: 7E0C0F06
  v_mul_lo_u32  v7, s0, v6                                  // 0000021C: D2D20007 02020C00
  v_mul_hi_u32  v8, s0, v6                                  // 00000224: D2D40008 02020C00
  v_sub_i32     v9, vcc, 0, v7                              // 0000022C: 4C120E80
  v_cmp_ne_i32  s[2:3], v8, 0                               // 00000230: D10A0002 00010108
  s_waitcnt     vmcnt(0)                                    // 00000238: BF8C1F70
  v_bfe_u32     v8, v5, 24, 8                               // 0000023C: D2900008 02213105
  v_cndmask_b32  v7, v9, v7, s[2:3]                         // 00000244: D2000007 000A0F09
  v_bfe_u32     v9, v5, 8, 8                                // 0000024C: D2900009 02211105
  v_bfe_u32     v10, v5, 16, 8                              // 00000254: D290000A 02212105
  v_add_i32     v4, vcc, v20, v8                            // 0000025C: 4A081114
  v_mul_hi_u32  v7, v7, v6                                  // 00000260: D2D40007 02020D07
  v_and_b32     v5, 0x000000ff, v5                          // 00000268: 360A0AFF 000000FF
  v_add_i32     v1, vcc, v18, v9                            // 00000270: 4A021312
  v_add_i32     v3, vcc, v19, v10                           // 00000274: 4A061513
  v_sub_i32     v8, vcc, 0, v4                              // 00000278: 4C100880
  v_sub_i32     v9, vcc, v6, v7                             // 0000027C: 4C120F06
  v_add_i32     v6, vcc, v6, v7                             // 00000280: 4A0C0F06
  v_add_i32     v0, vcc, v17, v5                            // 00000284: 4A000B11
  v_sub_i32     v5, vcc, 0, v1                              // 00000288: 4C0A0280
  v_sub_i32     v7, vcc, 0, v3                              // 0000028C: 4C0E0680
  v_max_i32     v8, v4, v8                                  // 00000290: 24101104
  v_cndmask_b32  v6, v6, v9, s[2:3]                         // 00000294: D2000006 000A1306
  v_sub_i32     v9, vcc, 0, v0                              // 0000029C: 4C120080
  v_max_i32     v5, v1, v5                                  // 000002A0: 240A0B01
  v_max_i32     v7, v3, v7                                  // 000002A4: 240E0F03
  v_mul_hi_u32  v10, v6, v8                                 // 000002A8: D2D4000A 02021106
  v_max_i32     v9, v0, v9                                  // 000002B0: 24121300
  v_mul_hi_u32  v11, v6, v5                                 // 000002B4: D2D4000B 02020B06
  v_mul_hi_u32  v12, v6, v7                                 // 000002BC: D2D4000C 02020F06
  v_mul_lo_u32  v13, v10, s0                                // 000002C4: D2D2000D 0200010A
  v_mul_hi_u32  v6, v6, v9                                  // 000002CC: D2D40006 02021306
  v_mul_lo_u32  v14, v11, s0                                // 000002D4: D2D2000E 0200010B
  v_mul_lo_u32  v15, v12, s0                                // 000002DC: D2D2000F 0200010C
  v_sub_i32     v16, vcc, v8, v13                           // 000002E4: 4C201B08
  v_mul_lo_u32  v17, v6, s0                                 // 000002E8: D2D20011 02000106
  v_sub_i32     v18, vcc, v5, v14                           // 000002F0: 4C241D05
  v_sub_i32     v19, vcc, v7, v15                           // 000002F4: 4C261F07
  v_cmp_ge_u32  s[2:3], v8, v13                             // 000002F8: D18C0002 00021B08
  v_cmp_ge_u32  s[4:5], v16, s0                             // 00000300: D18C0004 00000110
  v_sub_i32     v8, vcc, v9, v17                            // 00000308: 4C102309
  v_cmp_ge_u32  s[10:11], v5, v14                           // 0000030C: D18C000A 00021D05
  v_cmp_ge_u32  s[18:19], v7, v15                           // 00000314: D18C0012 00021F07
  v_cmp_ge_u32  s[20:21], v18, s0                           // 0000031C: D18C0014 00000112
  v_cmp_ge_u32  s[22:23], v19, s0                           // 00000324: D18C0016 00000113
  s_and_b64     s[4:5], s[2:3], s[4:5]                      // 0000032C: 87840402
  v_cmp_ge_u32  s[24:25], v9, v17                           // 00000330: D18C0018 00022309
  v_cmp_ge_u32  s[26:27], v8, s0                            // 00000338: D18C001A 00000108
  s_and_b64     s[20:21], s[10:11], s[20:21]                // 00000340: 8794140A
  s_and_b64     s[22:23], s[18:19], s[22:23]                // 00000344: 87961612
  v_addc_u32    v5, vcc, v10, 0, s[4:5]                     // 00000348: D2506A05 0011010A
  s_and_b64     s[4:5], s[24:25], s[26:27]                  // 00000350: 87841A18
  v_addc_u32    v7, vcc, v11, 0, s[20:21]                   // 00000354: D2506A07 0051010B
  v_addc_u32    v8, vcc, v12, 0, s[22:23]                   // 0000035C: D2506A08 0059010C
  v_addc_u32    v5, vcc, v5, -1, s[2:3]                     // 00000364: D2506A05 00098305
  v_cmp_ne_i32  s[0:1], s0, 0                               // 0000036C: D10A0000 00010000
  v_cmp_lt_i32  s[2:3], v4, 0                               // 00000374: D1020002 00010104
  v_cmp_lt_i32  s[8:9], s8, 0                               // 0000037C: D1020008 00010008
  v_addc_u32    v4, vcc, v6, 0, s[4:5]                      // 00000384: D2506A04 00110106
  v_addc_u32    v6, vcc, v7, -1, s[10:11]                   // 0000038C: D2506A06 00298307
  v_addc_u32    v7, vcc, v8, -1, s[18:19]                   // 00000394: D2506A07 00498308
  v_cndmask_b32  v5, -1, v5, s[0:1]                         // 0000039C: D2000005 00020AC1
  v_cmp_lt_i32  s[4:5], v1, 0                               // 000003A4: D1020004 00010101
  v_cmp_lt_i32  s[10:11], v3, 0                             // 000003AC: D102000A 00010103
  v_addc_u32    v1, vcc, v4, -1, s[24:25]                   // 000003B4: D2506A01 00618304
  v_cndmask_b32  v3, -1, v6, s[0:1]                         // 000003BC: D2000003 00020CC1
  v_cndmask_b32  v4, -1, v7, s[0:1]                         // 000003C4: D2000004 00020EC1
  s_xor_b64     s[2:3], s[2:3], s[8:9]                      // 000003CC: 89820802
  v_sub_i32     v6, vcc, 0, v5                              // 000003D0: 4C0C0A80
  v_cmp_lt_i32  s[18:19], v0, 0                             // 000003D4: D1020012 00010100
  v_cndmask_b32  v0, -1, v1, s[0:1]                         // 000003DC: D2000000 000202C1
  s_xor_b64     s[0:1], s[4:5], s[8:9]                      // 000003E4: 89800804
  s_xor_b64     s[4:5], s[10:11], s[8:9]                    // 000003E8: 8984080A
  v_sub_i32     v1, vcc, 0, v3                              // 000003EC: 4C020680
  v_sub_i32     v7, vcc, 0, v4                              // 000003F0: 4C0E0880
  v_cndmask_b32  v5, v5, v6, s[2:3]                         // 000003F4: D2000005 000A0D05
  v_mov_b32     v6, 0x000000ff                              // 000003FC: 7E0C02FF 000000FF
  s_xor_b64     s[2:3], s[18:19], s[8:9]                    // 00000404: 89820812
  v_sub_i32     v8, vcc, 0, v0                              // 00000408: 4C100080
  v_cndmask_b32  v1, v3, v1, s[0:1]                         // 0000040C: D2000001 00020303
  v_cndmask_b32  v3, v4, v7, s[4:5]                         // 00000414: D2000003 00120F04
  v_and_b32     v4, v5, v6                                  // 0000041C: 36080D05
  v_cndmask_b32  v0, v0, v8, s[2:3]                         // 00000420: D2000000 000A1100
  v_and_b32     v1, v1, v6                                  // 00000428: 36020D01
  v_and_b32     v3, v3, v6                                  // 0000042C: 36060D03
  v_lshlrev_b32  v4, 8, v4                                  // 00000430: 34080888
  s_mov_b32     s0, 0x0000ff00                              // 00000434: BE8003FF 0000FF00
  v_and_b32     v0, v6, v0                                  // 0000043C: 36000106
  v_lshlrev_b32  v1, 8, v1                                  // 00000440: 34020288
  v_bfi_b32     v3, s0, v4, v3                              // 00000444: D2940003 040E0800
  v_lshlrev_b32  v2, 2, v2                                  // 0000044C: 34040482
  v_bfi_b32     v0, s0, v1, v0                              // 00000450: D2940000 04020200
  v_lshlrev_b32  v1, 16, v3                                 // 00000458: 34020690
  s_mov_b32     s0, 0xffff0000                              // 0000045C: BE8003FF FFFF0000
  v_add_i32     v2, vcc, s17, v2                            // 00000464: 4A040411
  v_bfi_b32     v0, s0, v1, v0                              // 00000468: D2940000 04020200
  tbuffer_store_format_x  v0, v2, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000470: EBA41000 80030002
label_011E:
  s_mov_b64     exec, s[6:7]                                // 00000478: BEFE0406
  s_endpgm                                                  // 0000047C: BF810000



**
** Disassembly for '__kernel box_filter_horizontal_local'
**

  s_mov_b32     m0, 0x00008000                              // 00000000: BEFC03FF 00008000
  s_buffer_load_dwordx2  s[0:1], s[4:7], 0x04               // 00000008: C2400504
  s_buffer_load_dword  s14, s[8:11], 0x08                   // 0000000C: C2070908
  s_buffer_load_dwordx2  s[16:17], s[4:7], 0x1c             // 00000010: C248051C
  s_buffer_load_dword  s15, s[4:7], 0x00                    // 00000014: C2078500
  s_buffer_load_dwordx2  s[4:5], s[4:7], 0x18               // 00000018: C2420518
  s_waitcnt     lgkmcnt(0)                                  // 0000001C: BF8C007F
  s_min_u32     s6, s0, 0x0000ffff                          // 00000020: 8386FF00 0000FFFF
  s_min_u32     s7, s1, 0x0000ffff                          // 00000028: 8387FF01 0000FFFF
  s_add_i32     s18, -1, s14                                // 00000030: 81120EC1
  v_mov_b32     v2, s6                                      // 00000034: 7E040206
  v_mov_b32     v3, s7                                      // 00000038: 7E060207
  s_add_i32     s6, s13, s17                                // 0000003C: 8106110D
  s_lshr_b32    s7, s18, 31                                 // 00000040: 90079F12
  v_mul_i32_i24  v2, s12, v2                                // 00000044: 1204040C
  v_mul_i32_i24  v3, s13, v3                                // 00000048: 1206060D
  s_add_i32     s12, s12, s16                               // 0000004C: 810C100C
  s_mul_i32     s6, s6, s15                                 // 00000050: 93060F06
  s_add_i32     s7, s18, s7                                 // 00000054: 81070712
  v_add_i32     v2, vcc, v0, v2                             // 00000058: 4A040500
  v_add_i32     v1, vcc, v1, v3                             // 0000005C: 4A020701
  s_mul_i32     s0, s0, s12                                 // 00000060: 93000C00
  s_mul_i32     s1, s6, s1                                  // 00000064: 93010106
  s_ashr_i32    s6, s7, 1                                   // 00000068: 91068107
  v_add_i32     v2, vcc, s4, v2                             // 0000006C: 4A040404
  v_add_i32     v1, vcc, s5, v1                             // 00000070: 4A020205
  s_buffer_load_dword  s4, s[8:11], 0x00                    // 00000074: C2020900
  s_buffer_load_dword  s5, s[8:11], 0x04                    // 00000078: C2028904
  s_buffer_load_dword  s7, s[8:11], 0x0c                    // 0000007C: C203890C
  s_add_i32     s0, s0, s1                                  // 00000080: 81000100
  v_cmp_gt_i32  s[8:9], s6, v0                              // 00000084: D1080008 00020006
  s_sub_i32     s1, 0, s6                                   // 0000008C: 81810680
  s_load_dwordx4  s[16:19], s[2:3], 0x50                    // 00000090: C0880350
  s_and_saveexec_b64  s[8:9], s[8:9]                        // 00000094: BE882408
  v_subrev_i32  v3, vcc, s6, v0                             // 00000098: 4E060006
  s_cbranch_execz  label_0040                               // 0000009C: BF880018
  v_add_i32     v3, vcc, s0, v3                             // 000000A0: 4A060600
  v_lshlrev_b32  v3, 2, v3                                  // 000000A4: 34060682
  v_add_i32     v4, vcc, s0, v0                             // 000000A8: 4A080000
  s_waitcnt     lgkmcnt(0)                                  // 000000AC: BF8C007F
  v_add_i32     v3, vcc, s4, v3                             // 000000B0: 4A060604
  v_lshlrev_b32  v4, 2, v4                                  // 000000B4: 34080882
  v_add_i32     v4, vcc, s4, v4                             // 000000B8: 4A080804
  tbuffer_load_format_x  v3, v3, s[16:19], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000000BC: EBA01000 80040303
  tbuffer_load_format_x  v4, v4, s[16:19], 0 offen offset:1024 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000000C4: EBA01400 80040404
  v_add_i32     v5, vcc, s6, v0                             // 000000CC: 4A0A0006
  v_lshlrev_b32  v6, 2, v0                                  // 000000D0: 340C0082
  v_lshlrev_b32  v5, 2, v5                                  // 000000D4: 340A0A82
  v_add_i32     v6, vcc, s7, v6                             // 000000D8: 4A0C0C07
  v_add_i32     v5, vcc, s7, v5                             // 000000DC: 4A0A0A07
  s_waitcnt     vmcnt(1)                                    // 000000E0: BF8C1F71
  ds_write_b32  v6, v3                                      // 000000E4: D8340000 00000306
  v_add_i32     v3, vcc, 0x00000400, v5                     // 000000EC: 4A060AFF 00000400
  s_waitcnt     vmcnt(0)                                    // 000000F4: BF8C1F70
  ds_write_b32  v3, v4                                      // 000000F8: D8340000 00000403
label_0040:
  s_mov_b64     exec, s[8:9]                                // 00000100: BEFE0408
  v_add_i32     v3, vcc, s0, v0                             // 00000104: 4A060000
  v_lshlrev_b32  v3, 2, v3                                  // 00000108: 34060682
  s_waitcnt     lgkmcnt(0)                                  // 0000010C: BF8C007F
  v_add_i32     v3, vcc, s4, v3                             // 00000110: 4A060604
  tbuffer_load_format_x  v3, v3, s[16:19], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000114: EBA01000 80040303
  v_add_i32     v4, vcc, s6, v0                             // 0000011C: 4A080006
  v_lshlrev_b32  v4, 2, v4                                  // 00000120: 34080882
  v_add_i32     v4, vcc, s7, v4                             // 00000124: 4A080807
  s_waitcnt     vmcnt(0)                                    // 00000128: BF8C1F70
  ds_write_b32  v4, v3                                      // 0000012C: D8340000 00000304
  s_waitcnt     lgkmcnt(0)                                  // 00000134: BF8C007F
  s_barrier                                                 // 00000138: BF8A0000
  v_cmp_gt_i32  s[8:9], s6, v2                              // 0000013C: D1080008 00020406
  s_mov_b64     s[10:11], exec                              // 00000144: BE8A047E
  s_andn2_b64   exec, s[10:11], s[8:9]                      // 00000148: 8AFE080A
  s_cbranch_execz  label_0116                               // 0000014C: BF8800C2
  s_sub_i32     s0, s15, s6                                 // 00000150: 8180060F
  v_cmp_ge_i32  s[8:9], v2, s0                              // 00000154: D10C0008 00000102
  s_mov_b64     vcc, exec                                   // 0000015C: BEEA047E
  s_andn2_b64   exec, vcc, s[8:9]                           // 00000160: 8AFE086A
  s_cbranch_execz  label_0116                               // 00000164: BF8800BC
  s_cmp_le_i32  s1, s6                                      // 00000168: BF050601
  s_cbranch_scc0  label_007C                                // 0000016C: BF840020
  v_lshlrev_b32  v0, 2, v0                                  // 00000170: 34000082
  v_add_i32     v0, vcc, s7, v0                             // 00000174: 4A000007
  s_mov_b64     s[8:9], exec                                // 00000178: BE88047E
  v_mov_b32     v3, s1                                      // 0000017C: 7E060201
  v_mov_b32     v21, 0                                      // 00000180: 7E2A0280
  v_mov_b32     v22, 0                                      // 00000184: 7E2C0280
  v_mov_b32     v4, 0                                       // 00000188: 7E080280
  v_mov_b32     v5, 0                                       // 0000018C: 7E0A0280
label_0064:
  ds_read_b32   v8, v0                                      // 00000190: D8D80000 08000000
  s_waitcnt     lgkmcnt(0)                                  // 00000198: BF8C007F
  v_and_b32     v9, 0x000000ff, v8                          // 0000019C: 361210FF 000000FF
  v_bfe_u32     v10, v8, 8, 8                               // 000001A4: D290000A 02211108
  v_bfe_u32     v11, v8, 16, 8                              // 000001AC: D290000B 02212108
  v_bfe_u32     v8, v8, 24, 8                               // 000001B4: D2900008 02213108
  v_add_i32     v3, vcc, 1, v3                              // 000001BC: 4A060681
  v_add_i32     v21, vcc, v21, v9                           // 000001C0: 4A2A1315
  v_add_i32     v22, vcc, v22, v10                          // 000001C4: 4A2C1516
  v_add_i32     v4, vcc, v4, v11                            // 000001C8: 4A081704
  v_add_i32     v5, vcc, v5, v8                             // 000001CC: 4A0A1105
  v_add_i32     v0, vcc, 4, v0                              // 000001D0: 4A000084
  v_cmp_gt_i32  s[0:1], v3, s6                              // 000001D4: D1080000 00000D03
  s_andn2_b64   exec, exec, s[0:1]                          // 000001DC: 8AFE007E
  s_cbranch_execz  label_007A                               // 000001E0: BF880001
  s_branch      label_0064                                  // 000001E4: BF82FFEA
label_007A:
  s_mov_b64     exec, s[8:9]                                // 000001E8: BEFE0408
  s_branch      label_0080                                  // 000001EC: BF820004
label_007C:
  v_mov_b32     v21, 0                                      // 000001F0: 7E2A0280
  v_mov_b32     v22, 0                                      // 000001F4: 7E2C0280
  v_mov_b32     v4, 0                                       // 000001F8: 7E080280
  v_mov_b32     v5, 0                                       // 000001FC: 7E0A0280
label_0080:
  s_sub_i32     s0, 0, s14                                  // 00000200: 81800E80
  s_max_i32     s0, s14, s0                                 // 00000204: 8400000E
  v_cvt_f32_u32  v6, s0                                     // 00000208: 7E0C0C00
  v_rcp_f32     v6, v6                                      // 0000020C: 7E0C5506
  v_mul_f32     v6, 0x4f800000, v6                          // 00000210: 100C0CFF 4F800000
  v_cvt_u32_f32  v6, v6                                     // 00000218: 7E0C0F06
  v_mul_lo_u32  v7, s0, v6                                  // 0000021C: D2D20007 02020C00
  v_mul_hi_u32  v8, s0, v6                                  // 00000224: D2D40008 02020C00
  v_sub_i32     v9, vcc, 0, v7                              // 0000022C: 4C120E80
  v_cmp_ne_i32  s[6:7], v8, 0                               // 00000230: D10A0006 00010108
  v_cndmask_b32  v7, v9, v7, s[6:7]                         // 00000238: D2000007 001A0F09
  v_mul_hi_u32  v7, v7, v6                                  // 00000240: D2D40007 02020D07
  v_sub_i32     v8, vcc, 0, v5                              // 00000248: 4C100A80
  v_sub_i32     v9, vcc, v6, v7                             // 0000024C: 4C120F06
  v_add_i32     v6, vcc, v6, v7                             // 00000250: 4A0C0F06
  v_sub_i32     v7, vcc, 0, v22                             // 00000254: 4C0E2C80
  v_sub_i32     v10, vcc, 0, v4                             // 00000258: 4C140880
  v_max_i32     v8, v5, v8                                  // 0000025C: 24101105
  v_cndmask_b32  v6, v6, v9, s[6:7]                         // 00000260: D2000006 001A1306
  v_sub_i32     v9, vcc, 0, v21                             // 00000268: 4C122A80
  v_max_i32     v7, v22, v7                                 // 0000026C: 240E0F16
  v_max_i32     v10, v4, v10                                // 00000270: 24141504
  v_mul_hi_u32  v11, v6, v8                                 // 00000274: D2D4000B 02021106
  v_max_i32     v9, v21, v9                                 // 0000027C: 24121315
  v_mul_hi_u32  v12, v6, v7                                 // 00000280: D2D4000C 02020F06
  v_mul_hi_u32  v13, v6, v10                                // 00000288: D2D4000D 02021506
  v_mul_lo_u32  v14, v11, s0                                // 00000290: D2D2000E 0200010B
  v_mul_hi_u32  v6, v6, v9                                  // 00000298: D2D40006 02021306
  v_mul_lo_u32  v15, v12, s0                                // 000002A0: D2D2000F 0200010C
  v_mul_lo_u32  v16, v13, s0                                // 000002A8: D2D20010 0200010D
  v_sub_i32     v17, vcc, v8, v14                           // 000002B0: 4C221D08
  v_mul_lo_u32  v18, v6, s0                                 // 000002B4: D2D20012 02000106
  v_sub_i32     v19, vcc, v7, v15                           // 000002BC: 4C261F07
  v_sub_i32     v20, vcc, v10, v16                          // 000002C0: 4C28210A
  v_cmp_ge_u32  s[6:7], v8, v14                             // 000002C4: D18C0006 00021D08
  v_cmp_ge_u32  s[8:9], v17, s0                             // 000002CC: D18C0008 00000111
  v_sub_i32     v8, vcc, v9, v18                            // 000002D4: 4C102509
  v_cmp_ge_u32  s[12:13], v7, v15                           // 000002D8: D18C000C 00021F07
  v_cmp_ge_u32  s[16:17], v10, v16                          // 000002E0: D18C0010 0002210A
  v_cmp_ge_u32  s[18:19], v19, s0                           // 000002E8: D18C0012 00000113
  v_cmp_ge_u32  s[20:21], v20, s0                           // 000002F0: D18C0014 00000114
  s_and_b64     s[8:9], s[6:7], s[8:9]                      // 000002F8: 87880806
  v_cmp_ge_u32  s[22:23], v9, v18                           // 000002FC: D18C0016 00022509
  v_cmp_ge_u32  s[24:25], v8, s0                            // 00000304: D18C0018 00000108
  s_and_b64     s[18:19], s[12:13], s[18:19]                // 0000030C: 8792120C
  s_and_b64     s[20:21], s[16:17], s[20:21]                // 00000310: 87941410
  v_addc_u32    v7, vcc, v11, 0, s[8:9]                     // 00000314: D2506A07 0021010B
  s_and_b64     s[8:9], s[22:23], s[24:25]                  // 0000031C: 87881816
  v_addc_u32    v8, vcc, v12, 0, s[18:19]                   // 00000320: D2506A08 0049010C
  v_addc_u32    v9, vcc, v13, 0, s[20:21]                   // 00000328: D2506A09 0051010D
  v_addc_u32    v7, vcc, v7, -1, s[6:7]                     // 00000330: D2506A07 00198307
  v_cmp_ne_i32  s[0:1], s0, 0                               // 00000338: D10A0000 00010000
  v_cmp_lt_i32  s[6:7], s14, 0                              // 00000340: D1020006 0001000E
  v_cmp_lt_i32  s[18:19], v5, 0                             // 00000348: D1020012 00010105
  v_addc_u32    v5, vcc, v6, 0, s[8:9]                      // 00000350: D2506A05 00210106
  v_addc_u32    v6, vcc, v8, -1, s[12:13]                   // 00000358: D2506A06 00318308
  v_addc_u32    v8, vcc, v9, -1, s[16:17]                   // 00000360: D2506A08 00418309
  v_cndmask_b32  v7, -1, v7, s[0:1]                         // 00000368: D2000007 00020EC1
  v_cmp_lt_i32  s[8:9], v22, 0                              // 00000370: D1020008 00010116
  v_cmp_lt_i32  s[12:13], v4, 0                             // 00000378: D102000C 00010104
  v_addc_u32    v3, vcc, v5, -1, s[22:23]                   // 00000380: D2506A03 00598305
  v_cndmask_b32  v4, -1, v6, s[0:1]                         // 00000388: D2000004 00020CC1
  v_cndmask_b32  v5, -1, v8, s[0:1]                         // 00000390: D2000005 000210C1
  s_xor_b64     s[16:17], s[6:7], s[18:19]                  // 00000398: 89901206
  v_sub_i32     v6, vcc, 0, v7                              // 0000039C: 4C0C0E80
  v_cmp_lt_i32  s[18:19], v21, 0                            // 000003A0: D1020012 00010115
  v_cndmask_b32  v0, -1, v3, s[0:1]                         // 000003A8: D2000000 000206C1
  s_xor_b64     s[0:1], s[6:7], s[8:9]                      // 000003B0: 89800806
  s_xor_b64     s[8:9], s[6:7], s[12:13]                    // 000003B4: 89880C06
  v_sub_i32     v3, vcc, 0, v4                              // 000003B8: 4C060880
  v_sub_i32     v8, vcc, 0, v5                              // 000003BC: 4C100A80
  v_cndmask_b32  v6, v7, v6, s[16:17]                       // 000003C0: D2000006 00420D07
  v_mov_b32     v7, 0x000000ff                              // 000003C8: 7E0E02FF 000000FF
  s_xor_b64     s[6:7], s[6:7], s[18:19]                    // 000003D0: 89861206
  v_sub_i32     v9, vcc, 0, v0                              // 000003D4: 4C120080
  v_cndmask_b32  v3, v4, v3, s[0:1]                         // 000003D8: D2000003 00020704
  v_cndmask_b32  v4, v5, v8, s[8:9]                         // 000003E0: D2000004 00221105
  v_and_b32     v5, v6, v7                                  // 000003E8: 360A0F06
  s_load_dwordx4  s[0:3], s[2:3], 0x58                      // 000003EC: C0800358
  v_mul_lo_i32  v1, s15, v1                                 // 000003F0: D2D60001 0202020F
  v_cndmask_b32  v0, v0, v9, s[6:7]                         // 000003F8: D2000000 001A1300
  v_and_b32     v3, v3, v7                                  // 00000400: 36060F03
  v_and_b32     v4, v4, v7                                  // 00000404: 36080F04
  v_lshlrev_b32  v5, 8, v5                                  // 00000408: 340A0A88
  s_mov_b32     s4, 0x0000ff00                              // 0000040C: BE8403FF 0000FF00
  v_add_i32     v1, vcc, v2, v1                             // 00000414: 4A020302
  v_and_b32     v0, v7, v0                                  // 00000418: 36000107
  v_lshlrev_b32  v2, 8, v3                                  // 0000041C: 34040688
  v_bfi_b32     v3, s4, v5, v4                              // 00000420: D2940003 04120A04
  v_lshlrev_b32  v1, 2, v1                                  // 00000428: 34020282
  v_bfi_b32     v0, s4, v2, v0                              // 0000042C: D2940000 04020404
  v_lshlrev_b32  v2, 16, v3                                 // 00000434: 34040690
  s_mov_b32     s4, 0xffff0000                              // 00000438: BE8403FF FFFF0000
  v_add_i32     v1, vcc, s5, v1                             // 00000440: 4A020205
  v_bfi_b32     v0, s4, v2, v0                              // 00000444: D2940000 04020404
  s_waitcnt     lgkmcnt(0)                                  // 0000044C: BF8C007F
  tbuffer_store_format_x  v0, v1, s[0:3], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000450: EBA41000 80000001
label_0116:
  s_mov_b64     exec, s[10:11]                              // 00000458: BEFE040A
  s_endpgm                                                  // 0000045C: BF810000



