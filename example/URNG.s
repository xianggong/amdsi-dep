label_0000:
  s_mov_b32     m0, 0x00008000                              // 00000000: BEFC03FF 00008000
  s_buffer_load_dwordx2  s[0:1], s[4:7], 0x04               // 00000008: C2400504
  s_buffer_load_dwordx2  s[14:15], s[4:7], 0x18             // 0000000C: C2470518
  s_waitcnt     lgkmcnt(0)                                  // 00000010: BF8C007F
  s_min_u32     s1, s1, 0x0000ffff                          // 00000014: 8381FF01 0000FFFF
  s_buffer_load_dword  s4, s[4:7], 0x00                     // 0000001C: C2020500
  s_min_u32     s0, s0, 0x0000ffff                          // 00000020: 8380FF00 0000FFFF
  v_mov_b32     v2, s1                                      // 00000028: 7E040201
  v_mov_b32     v3, s0                                      // 0000002C: 7E060200
  v_mul_i32_i24  v2, s13, v2                                // 00000030: 1204040D
  v_mul_i32_i24  v3, s12, v3                                // 00000034: 1206060C
  v_add_i32     v1, vcc, v1, v2                             // 00000038: 4A020501
  s_buffer_load_dword  s0, s[8:11], 0x00                    // 0000003C: C2000900
  v_add_i32     v2, vcc, v0, v3                             // 00000040: 4A040700
  v_add_i32     v1, vcc, s15, v1                            // 00000044: 4A02020F
  v_add_i32     v2, vcc, s14, v2                            // 00000048: 4A04040E
  s_waitcnt     lgkmcnt(0)                                  // 0000004C: BF8C007F
  v_mul_lo_i32  v1, s4, v1                                  // 00000050: D2D60001 02020204
  v_add_i32     v1, vcc, v2, v1                             // 00000058: 4A020302
  v_lshlrev_b32  v1, 2, v1                                  // 0000005C: 34020282
  v_add_i32     v2, vcc, s0, v1                             // 00000060: 4A040200
  s_load_dwordx4  s[4:7], s[2:3], 0x50                      // 00000064: C0820350
  s_waitcnt     lgkmcnt(0)                                  // 00000068: BF8C007F
  tbuffer_load_format_x  v2, v2, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000006C: EBA01000 80010202
  s_waitcnt     vmcnt(0)                                    // 00000074: BF8C1F70
  v_and_b32     v3, 0x000000ff, v2                          // 00000078: 360604FF 000000FF
  v_bfe_u32     v4, v2, 8, 8                                // 00000080: D2900004 02211102
  v_bfe_u32     v5, v2, 16, 8                               // 00000088: D2900005 02212102
  v_cvt_f32_u32  v3, v3                                     // 00000090: 7E060D03
  v_cvt_f32_u32  v4, v4                                     // 00000094: 7E080D04
  v_cvt_f32_u32  v5, v5                                     // 00000098: 7E0A0D05
  v_add_f32     v6, v3, v4                                  // 0000009C: 060C0903
  v_add_f32     v6, v5, v6                                  // 000000A0: 060C0D05
  v_add_f32     v6, v4, v6                                  // 000000A4: 060C0D04
  v_mul_f32     v6, 0xbe800000, v6                          // 000000A8: 100C0CFF BE800000
  v_cvt_i32_f32  v6, v6                                     // 000000B0: 7E0C1106
  v_ashrrev_i32  v7, 31, v6                                 // 000000B4: 300E0C9F
  s_mov_b32     s0, 0x834e0b5f                              // 000000B8: BE8003FF 834E0B5F
  v_mul_lo_u32  v8, v6, -1                                  // 000000C0: D2D20008 02018306
  v_mul_lo_u32  v7, v7, s0                                  // 000000C8: D2D20007 02000107
  v_add_i32     v7, vcc, v8, v7                             // 000000D0: 4A0E0F08
  v_mul_hi_u32  v8, v6, s0                                  // 000000D4: D2D40008 02000106
  v_add_i32     v8, vcc, v7, v8                             // 000000DC: 4A101107
  v_mul_lo_u32  v7, v6, s0                                  // 000000E0: D2D20007 02000106
  v_lshr_b64    v[7:8], v[7:8], 32                          // 000000E8: D2C40007 02014107
  v_add_i32     v7, vcc, v6, v7                             // 000000F0: 4A0E0F06
  v_lshrrev_b32  v8, 31, v7                                 // 000000F4: 2C100E9F
  v_ashrrev_i32  v7, 16, v7                                 // 000000F8: 300E0E90
  v_add_i32     v7, vcc, v8, v7                             // 000000FC: 4A0E0F08
  s_mov_b32     s0, 0xfffe0ce3                              // 00000100: BE8003FF FFFE0CE3
  v_mul_lo_i32  v8, v7, s0                                  // 00000108: D2D60008 02000107
  s_movk_i32    s0, 0xf4ec                                  // 00000110: B000F4EC
  v_add_i32     v6, vcc, v6, v8                             // 00000114: 4A0C1106
  s_movk_i32    s1, 0x41a7                                  // 00000118: B00141A7
  v_mul_lo_i32  v7, v7, s0                                  // 0000011C: D2D60007 02000107
  v_mul_lo_i32  v6, v6, s1                                  // 00000124: D2D60006 02000306
  v_add_i32     v6, vcc, v7, v6                             // 0000012C: 4A0C0D07
  v_lshrrev_b32  v2, 24, v2                                 // 00000130: 2C040498
  v_add_i32     v7, vcc, 0x7fffffff, v6                     // 00000134: 4A0E0CFF 7FFFFFFF
  v_cmp_gt_i32  vcc, 0, v6                                  // 0000013C: 7D080C80
  s_buffer_load_dword  s0, s[8:11], 0x04                    // 00000140: C2000904
  s_buffer_load_dword  s1, s[8:11], 0x08                    // 00000144: C2008908
  v_cvt_f32_u32  v2, v2                                     // 00000148: 7E040D02
  v_lshlrev_b32  v8, 4, v0                                  // 0000014C: 34100084
  v_lshlrev_b32  v9, 6, v0                                  // 00000150: 34120086
  v_cndmask_b32  v6, v6, v7, vcc                            // 00000154: 000C0F06
  v_ashrrev_i32  v7, 31, v6                                 // 00000158: 300E0C9F
  s_mov_b32     s4, 0x834e0b5f                              // 0000015C: BE8403FF 834E0B5F
  v_mul_lo_u32  v10, v6, -1                                 // 00000164: D2D2000A 02018306
  v_mul_lo_u32  v7, v7, s4                                  // 0000016C: D2D20007 02000907
  v_add_i32     v7, vcc, v10, v7                            // 00000174: 4A0E0F0A
  v_mul_hi_u32  v10, v6, s4                                 // 00000178: D2D4000A 02000906
  v_add_i32     v11, vcc, v7, v10                           // 00000180: 4A161507
  v_mul_lo_u32  v10, v6, s4                                 // 00000184: D2D2000A 02000906
  v_lshr_b64    v[10:11], v[10:11], 32                      // 0000018C: D2C4000A 0201410A
  v_add_i32     v7, vcc, v6, v10                            // 00000194: 4A0E1506
  v_lshrrev_b32  v10, 31, v7                                // 00000198: 2C140E9F
  v_ashrrev_i32  v7, 16, v7                                 // 0000019C: 300E0E90
  v_add_i32     v7, vcc, v10, v7                            // 000001A0: 4A0E0F0A
  s_mov_b32     s4, 0xfffe0ce3                              // 000001A4: BE8403FF FFFE0CE3
  v_mul_lo_i32  v10, v7, s4                                 // 000001AC: D2D6000A 02000907
  s_movk_i32    s4, 0xf4ec                                  // 000001B4: B004F4EC
  v_add_i32     v6, vcc, v6, v10                            // 000001B8: 4A0C1506
  s_movk_i32    s5, 0x41a7                                  // 000001BC: B00541A7
  v_mul_lo_i32  v7, v7, s4                                  // 000001C0: D2D60007 02000907
  v_mul_lo_i32  v6, v6, s5                                  // 000001C8: D2D60006 02000B06
  v_add_i32     v6, vcc, v7, v6                             // 000001D0: 4A0C0D07
  v_add_i32     v7, vcc, 0x7fffffff, v6                     // 000001D4: 4A0E0CFF 7FFFFFFF
  v_cmp_gt_i32  vcc, 0, v6                                  // 000001DC: 7D080C80
  v_cndmask_b32  v6, v6, v7, vcc                            // 000001E0: 000C0F06
  v_add_i32     v7, vcc, 60, v9                             // 000001E4: 4A0E12BC
  s_waitcnt     lgkmcnt(0)                                  // 000001E8: BF8C007F
  ds_write_b32  v7, v6                                      // 000001EC: D8340000 00000607
  v_ashrrev_i32  v7, 31, v6                                 // 000001F4: 300E0C9F
  s_mov_b32     s4, 0x834e0b5f                              // 000001F8: BE8403FF 834E0B5F
  v_mul_lo_u32  v10, v6, -1                                 // 00000200: D2D2000A 02018306
  v_mul_lo_u32  v7, v7, s4                                  // 00000208: D2D20007 02000907
  v_add_i32     v7, vcc, v10, v7                            // 00000210: 4A0E0F0A
  v_mul_hi_u32  v10, v6, s4                                 // 00000214: D2D4000A 02000906
  v_add_i32     v11, vcc, v7, v10                           // 0000021C: 4A161507
  v_mul_lo_u32  v10, v6, s4                                 // 00000220: D2D2000A 02000906
  v_lshr_b64    v[10:11], v[10:11], 32                      // 00000228: D2C4000A 0201410A
  v_add_i32     v7, vcc, v6, v10                            // 00000230: 4A0E1506
  v_lshrrev_b32  v10, 31, v7                                // 00000234: 2C140E9F
  v_ashrrev_i32  v7, 16, v7                                 // 00000238: 300E0E90
  v_add_i32     v7, vcc, v10, v7                            // 0000023C: 4A0E0F0A
  s_mov_b32     s4, 0xfffe0ce3                              // 00000240: BE8403FF FFFE0CE3
  v_mul_lo_i32  v10, v7, s4                                 // 00000248: D2D6000A 02000907
  s_movk_i32    s4, 0xf4ec                                  // 00000250: B004F4EC
  v_add_i32     v6, vcc, v6, v10                            // 00000254: 4A0C1506
  v_mul_lo_i32  v7, v7, s4                                  // 00000258: D2D60007 02000907
  v_mul_lo_i32  v6, v6, s5                                  // 00000260: D2D60006 02000B06
  v_add_i32     v6, vcc, v7, v6                             // 00000268: 4A0C0D07
  v_add_i32     v7, vcc, 0x7fffffff, v6                     // 0000026C: 4A0E0CFF 7FFFFFFF
  v_cmp_gt_i32  vcc, 0, v6                                  // 00000274: 7D080C80
  v_cndmask_b32  v6, v6, v7, vcc                            // 00000278: 000C0F06
  v_add_i32     v7, vcc, 56, v9                             // 0000027C: 4A0E12B8
  ds_write_b32  v7, v6                                      // 00000280: D8340000 00000607
  v_ashrrev_i32  v7, 31, v6                                 // 00000288: 300E0C9F
  s_mov_b32     s4, 0x834e0b5f                              // 0000028C: BE8403FF 834E0B5F
  v_mul_lo_u32  v10, v6, -1                                 // 00000294: D2D2000A 02018306
  v_mul_lo_u32  v7, v7, s4                                  // 0000029C: D2D20007 02000907
  v_add_i32     v7, vcc, v10, v7                            // 000002A4: 4A0E0F0A
  v_mul_hi_u32  v10, v6, s4                                 // 000002A8: D2D4000A 02000906
  v_add_i32     v11, vcc, v7, v10                           // 000002B0: 4A161507
  v_mul_lo_u32  v10, v6, s4                                 // 000002B4: D2D2000A 02000906
  v_lshr_b64    v[10:11], v[10:11], 32                      // 000002BC: D2C4000A 0201410A
  v_add_i32     v7, vcc, v6, v10                            // 000002C4: 4A0E1506
  v_lshrrev_b32  v10, 31, v7                                // 000002C8: 2C140E9F
  v_ashrrev_i32  v7, 16, v7                                 // 000002CC: 300E0E90
  v_add_i32     v7, vcc, v10, v7                            // 000002D0: 4A0E0F0A
  s_mov_b32     s4, 0xfffe0ce3                              // 000002D4: BE8403FF FFFE0CE3
  v_mul_lo_i32  v10, v7, s4                                 // 000002DC: D2D6000A 02000907
  s_movk_i32    s4, 0xf4ec                                  // 000002E4: B004F4EC
  v_add_i32     v6, vcc, v6, v10                            // 000002E8: 4A0C1506
  v_mul_lo_i32  v7, v7, s4                                  // 000002EC: D2D60007 02000907
  v_mul_lo_i32  v6, v6, s5                                  // 000002F4: D2D60006 02000B06
  v_add_i32     v6, vcc, v7, v6                             // 000002FC: 4A0C0D07
  v_add_i32     v7, vcc, 0x7fffffff, v6                     // 00000300: 4A0E0CFF 7FFFFFFF
  v_cmp_gt_i32  vcc, 0, v6                                  // 00000308: 7D080C80
  v_cndmask_b32  v6, v6, v7, vcc                            // 0000030C: 000C0F06
  v_add_i32     v7, vcc, 52, v9                             // 00000310: 4A0E12B4
  ds_write_b32  v7, v6                                      // 00000314: D8340000 00000607
  v_ashrrev_i32  v7, 31, v6                                 // 0000031C: 300E0C9F
  s_mov_b32     s4, 0x834e0b5f                              // 00000320: BE8403FF 834E0B5F
  v_mul_lo_u32  v10, v6, -1                                 // 00000328: D2D2000A 02018306
  v_mul_lo_u32  v7, v7, s4                                  // 00000330: D2D20007 02000907
  v_add_i32     v7, vcc, v10, v7                            // 00000338: 4A0E0F0A
  v_mul_hi_u32  v10, v6, s4                                 // 0000033C: D2D4000A 02000906
  v_add_i32     v11, vcc, v7, v10                           // 00000344: 4A161507
  v_mul_lo_u32  v10, v6, s4                                 // 00000348: D2D2000A 02000906
  v_lshr_b64    v[10:11], v[10:11], 32                      // 00000350: D2C4000A 0201410A
  v_add_i32     v7, vcc, v6, v10                            // 00000358: 4A0E1506
  v_lshrrev_b32  v10, 31, v7                                // 0000035C: 2C140E9F
  v_ashrrev_i32  v7, 16, v7                                 // 00000360: 300E0E90
  v_add_i32     v7, vcc, v10, v7                            // 00000364: 4A0E0F0A
  s_mov_b32     s4, 0xfffe0ce3                              // 00000368: BE8403FF FFFE0CE3
  v_mul_lo_i32  v10, v7, s4                                 // 00000370: D2D6000A 02000907
  s_movk_i32    s4, 0xf4ec                                  // 00000378: B004F4EC
  v_add_i32     v6, vcc, v6, v10                            // 0000037C: 4A0C1506
  v_mul_lo_i32  v7, v7, s4                                  // 00000380: D2D60007 02000907
  v_mul_lo_i32  v6, v6, s5                                  // 00000388: D2D60006 02000B06
  v_add_i32     v6, vcc, v7, v6                             // 00000390: 4A0C0D07
  v_add_i32     v7, vcc, 0x7fffffff, v6                     // 00000394: 4A0E0CFF 7FFFFFFF
  v_cmp_gt_i32  vcc, 0, v6                                  // 0000039C: 7D080C80
  v_cndmask_b32  v6, v6, v7, vcc                            // 000003A0: 000C0F06
  v_add_i32     v7, vcc, 48, v9                             // 000003A4: 4A0E12B0
  ds_write_b32  v7, v6                                      // 000003A8: D8340000 00000607
  v_ashrrev_i32  v7, 31, v6                                 // 000003B0: 300E0C9F
  s_mov_b32     s4, 0x834e0b5f                              // 000003B4: BE8403FF 834E0B5F
  v_mul_lo_u32  v10, v6, -1                                 // 000003BC: D2D2000A 02018306
  v_mul_lo_u32  v7, v7, s4                                  // 000003C4: D2D20007 02000907
  v_add_i32     v7, vcc, v10, v7                            // 000003CC: 4A0E0F0A
  v_mul_hi_u32  v10, v6, s4                                 // 000003D0: D2D4000A 02000906
  v_add_i32     v11, vcc, v7, v10                           // 000003D8: 4A161507
  v_mul_lo_u32  v10, v6, s4                                 // 000003DC: D2D2000A 02000906
  v_lshr_b64    v[10:11], v[10:11], 32                      // 000003E4: D2C4000A 0201410A
  v_add_i32     v7, vcc, v6, v10                            // 000003EC: 4A0E1506
  v_lshrrev_b32  v10, 31, v7                                // 000003F0: 2C140E9F
  v_ashrrev_i32  v7, 16, v7                                 // 000003F4: 300E0E90
  v_add_i32     v7, vcc, v10, v7                            // 000003F8: 4A0E0F0A
  s_mov_b32     s4, 0xfffe0ce3                              // 000003FC: BE8403FF FFFE0CE3
  v_mul_lo_i32  v10, v7, s4                                 // 00000404: D2D6000A 02000907
  s_movk_i32    s4, 0xf4ec                                  // 0000040C: B004F4EC
  v_add_i32     v6, vcc, v6, v10                            // 00000410: 4A0C1506
  v_mul_lo_i32  v7, v7, s4                                  // 00000414: D2D60007 02000907
  v_mul_lo_i32  v6, v6, s5                                  // 0000041C: D2D60006 02000B06
  v_add_i32     v6, vcc, v7, v6                             // 00000424: 4A0C0D07
  v_add_i32     v7, vcc, 0x7fffffff, v6                     // 00000428: 4A0E0CFF 7FFFFFFF
  v_cmp_gt_i32  vcc, 0, v6                                  // 00000430: 7D080C80
  v_cndmask_b32  v6, v6, v7, vcc                            // 00000434: 000C0F06
  v_add_i32     v7, vcc, 44, v9                             // 00000438: 4A0E12AC
  ds_write_b32  v7, v6                                      // 0000043C: D8340000 00000607
  v_ashrrev_i32  v7, 31, v6                                 // 00000444: 300E0C9F
  s_mov_b32     s4, 0x834e0b5f                              // 00000448: BE8403FF 834E0B5F
  v_mul_lo_u32  v10, v6, -1                                 // 00000450: D2D2000A 02018306
  v_mul_lo_u32  v7, v7, s4                                  // 00000458: D2D20007 02000907
  v_add_i32     v7, vcc, v10, v7                            // 00000460: 4A0E0F0A
  v_mul_hi_u32  v10, v6, s4                                 // 00000464: D2D4000A 02000906
  v_add_i32     v11, vcc, v7, v10                           // 0000046C: 4A161507
  v_mul_lo_u32  v10, v6, s4                                 // 00000470: D2D2000A 02000906
  v_lshr_b64    v[10:11], v[10:11], 32                      // 00000478: D2C4000A 0201410A
  v_add_i32     v7, vcc, v6, v10                            // 00000480: 4A0E1506
  v_lshrrev_b32  v10, 31, v7                                // 00000484: 2C140E9F
  v_ashrrev_i32  v7, 16, v7                                 // 00000488: 300E0E90
  v_add_i32     v7, vcc, v10, v7                            // 0000048C: 4A0E0F0A
  s_mov_b32     s4, 0xfffe0ce3                              // 00000490: BE8403FF FFFE0CE3
  v_mul_lo_i32  v10, v7, s4                                 // 00000498: D2D6000A 02000907
  s_movk_i32    s4, 0xf4ec                                  // 000004A0: B004F4EC
  v_add_i32     v6, vcc, v6, v10                            // 000004A4: 4A0C1506
  v_mul_lo_i32  v7, v7, s4                                  // 000004A8: D2D60007 02000907
  v_mul_lo_i32  v6, v6, s5                                  // 000004B0: D2D60006 02000B06
  v_add_i32     v6, vcc, v7, v6                             // 000004B8: 4A0C0D07
  v_add_i32     v7, vcc, 0x7fffffff, v6                     // 000004BC: 4A0E0CFF 7FFFFFFF
  v_cmp_gt_i32  vcc, 0, v6                                  // 000004C4: 7D080C80
  v_cndmask_b32  v6, v6, v7, vcc                            // 000004C8: 000C0F06
  v_add_i32     v7, vcc, 40, v9                             // 000004CC: 4A0E12A8
  ds_write_b32  v7, v6                                      // 000004D0: D8340000 00000607
  v_ashrrev_i32  v7, 31, v6                                 // 000004D8: 300E0C9F
  s_mov_b32     s4, 0x834e0b5f                              // 000004DC: BE8403FF 834E0B5F
  v_mul_lo_u32  v10, v6, -1                                 // 000004E4: D2D2000A 02018306
  v_mul_lo_u32  v7, v7, s4                                  // 000004EC: D2D20007 02000907
  v_add_i32     v7, vcc, v10, v7                            // 000004F4: 4A0E0F0A
  v_mul_hi_u32  v10, v6, s4                                 // 000004F8: D2D4000A 02000906
  v_add_i32     v11, vcc, v7, v10                           // 00000500: 4A161507
  v_mul_lo_u32  v10, v6, s4                                 // 00000504: D2D2000A 02000906
  v_lshr_b64    v[10:11], v[10:11], 32                      // 0000050C: D2C4000A 0201410A
  v_add_i32     v7, vcc, v6, v10                            // 00000514: 4A0E1506
  v_lshrrev_b32  v10, 31, v7                                // 00000518: 2C140E9F
  v_ashrrev_i32  v7, 16, v7                                 // 0000051C: 300E0E90
  v_add_i32     v7, vcc, v10, v7                            // 00000520: 4A0E0F0A
  s_mov_b32     s4, 0xfffe0ce3                              // 00000524: BE8403FF FFFE0CE3
  v_mul_lo_i32  v10, v7, s4                                 // 0000052C: D2D6000A 02000907
  s_movk_i32    s4, 0xf4ec                                  // 00000534: B004F4EC
  v_add_i32     v6, vcc, v6, v10                            // 00000538: 4A0C1506
  v_mul_lo_i32  v7, v7, s4                                  // 0000053C: D2D60007 02000907
  v_mul_lo_i32  v6, v6, s5                                  // 00000544: D2D60006 02000B06
  v_add_i32     v6, vcc, v7, v6                             // 0000054C: 4A0C0D07
  v_add_i32     v7, vcc, 0x7fffffff, v6                     // 00000550: 4A0E0CFF 7FFFFFFF
  v_cmp_gt_i32  vcc, 0, v6                                  // 00000558: 7D080C80
  v_cndmask_b32  v6, v6, v7, vcc                            // 0000055C: 000C0F06
  v_add_i32     v7, vcc, 36, v9                             // 00000560: 4A0E12A4
  ds_write_b32  v7, v6                                      // 00000564: D8340000 00000607
  v_ashrrev_i32  v7, 31, v6                                 // 0000056C: 300E0C9F
  s_mov_b32     s4, 0x834e0b5f                              // 00000570: BE8403FF 834E0B5F
  v_mul_lo_u32  v10, v6, -1                                 // 00000578: D2D2000A 02018306
  v_mul_lo_u32  v7, v7, s4                                  // 00000580: D2D20007 02000907
  v_add_i32     v7, vcc, v10, v7                            // 00000588: 4A0E0F0A
  v_mul_hi_u32  v10, v6, s4                                 // 0000058C: D2D4000A 02000906
  v_add_i32     v11, vcc, v7, v10                           // 00000594: 4A161507
  v_mul_lo_u32  v10, v6, s4                                 // 00000598: D2D2000A 02000906
  v_lshr_b64    v[10:11], v[10:11], 32                      // 000005A0: D2C4000A 0201410A
  v_add_i32     v7, vcc, v6, v10                            // 000005A8: 4A0E1506
  v_lshrrev_b32  v10, 31, v7                                // 000005AC: 2C140E9F
  v_ashrrev_i32  v7, 16, v7                                 // 000005B0: 300E0E90
  v_add_i32     v7, vcc, v10, v7                            // 000005B4: 4A0E0F0A
  s_mov_b32     s4, 0xfffe0ce3                              // 000005B8: BE8403FF FFFE0CE3
  v_mul_lo_i32  v10, v7, s4                                 // 000005C0: D2D6000A 02000907
  s_movk_i32    s4, 0xf4ec                                  // 000005C8: B004F4EC
  v_add_i32     v6, vcc, v6, v10                            // 000005CC: 4A0C1506
  v_mul_lo_i32  v7, v7, s4                                  // 000005D0: D2D60007 02000907
  v_mul_lo_i32  v6, v6, s5                                  // 000005D8: D2D60006 02000B06
  v_add_i32     v6, vcc, v7, v6                             // 000005E0: 4A0C0D07
  v_add_i32     v7, vcc, 0x7fffffff, v6                     // 000005E4: 4A0E0CFF 7FFFFFFF
  v_cmp_gt_i32  vcc, 0, v6                                  // 000005EC: 7D080C80
  v_cndmask_b32  v6, v6, v7, vcc                            // 000005F0: 000C0F06
  v_add_i32     v7, vcc, 32, v9                             // 000005F4: 4A0E12A0
  ds_write_b32  v7, v6                                      // 000005F8: D8340000 00000607
  v_ashrrev_i32  v7, 31, v6                                 // 00000600: 300E0C9F
  s_mov_b32     s4, 0x834e0b5f                              // 00000604: BE8403FF 834E0B5F
  v_mul_lo_u32  v10, v6, -1                                 // 0000060C: D2D2000A 02018306
  v_mul_lo_u32  v7, v7, s4                                  // 00000614: D2D20007 02000907
  v_add_i32     v7, vcc, v10, v7                            // 0000061C: 4A0E0F0A
  v_mul_hi_u32  v10, v6, s4                                 // 00000620: D2D4000A 02000906
  v_add_i32     v11, vcc, v7, v10                           // 00000628: 4A161507
  v_mul_lo_u32  v10, v6, s4                                 // 0000062C: D2D2000A 02000906
  v_lshr_b64    v[10:11], v[10:11], 32                      // 00000634: D2C4000A 0201410A
  v_add_i32     v7, vcc, v6, v10                            // 0000063C: 4A0E1506
  v_lshrrev_b32  v10, 31, v7                                // 00000640: 2C140E9F
  v_ashrrev_i32  v7, 16, v7                                 // 00000644: 300E0E90
  v_add_i32     v7, vcc, v10, v7                            // 00000648: 4A0E0F0A
  s_mov_b32     s4, 0xfffe0ce3                              // 0000064C: BE8403FF FFFE0CE3
  v_mul_lo_i32  v10, v7, s4                                 // 00000654: D2D6000A 02000907
  s_movk_i32    s4, 0xf4ec                                  // 0000065C: B004F4EC
  v_add_i32     v6, vcc, v6, v10                            // 00000660: 4A0C1506
  v_mul_lo_i32  v7, v7, s4                                  // 00000664: D2D60007 02000907
  v_mul_lo_i32  v6, v6, s5                                  // 0000066C: D2D60006 02000B06
  v_add_i32     v6, vcc, v7, v6                             // 00000674: 4A0C0D07
  v_add_i32     v7, vcc, 0x7fffffff, v6                     // 00000678: 4A0E0CFF 7FFFFFFF
  v_cmp_gt_i32  vcc, 0, v6                                  // 00000680: 7D080C80
  v_cndmask_b32  v6, v6, v7, vcc                            // 00000684: 000C0F06
  v_add_i32     v7, vcc, 28, v9                             // 00000688: 4A0E129C
  ds_write_b32  v7, v6                                      // 0000068C: D8340000 00000607
  v_ashrrev_i32  v7, 31, v6                                 // 00000694: 300E0C9F
  s_mov_b32     s4, 0x834e0b5f                              // 00000698: BE8403FF 834E0B5F
  v_mul_lo_u32  v10, v6, -1                                 // 000006A0: D2D2000A 02018306
  v_mul_lo_u32  v7, v7, s4                                  // 000006A8: D2D20007 02000907
  v_add_i32     v7, vcc, v10, v7                            // 000006B0: 4A0E0F0A
  v_mul_hi_u32  v10, v6, s4                                 // 000006B4: D2D4000A 02000906
  v_add_i32     v11, vcc, v7, v10                           // 000006BC: 4A161507
  v_mul_lo_u32  v10, v6, s4                                 // 000006C0: D2D2000A 02000906
  v_lshr_b64    v[10:11], v[10:11], 32                      // 000006C8: D2C4000A 0201410A
  v_add_i32     v7, vcc, v6, v10                            // 000006D0: 4A0E1506
  v_lshrrev_b32  v10, 31, v7                                // 000006D4: 2C140E9F
  v_ashrrev_i32  v7, 16, v7                                 // 000006D8: 300E0E90
  v_add_i32     v7, vcc, v10, v7                            // 000006DC: 4A0E0F0A
  s_mov_b32     s4, 0xfffe0ce3                              // 000006E0: BE8403FF FFFE0CE3
  v_mul_lo_i32  v10, v7, s4                                 // 000006E8: D2D6000A 02000907
  s_movk_i32    s4, 0xf4ec                                  // 000006F0: B004F4EC
  v_add_i32     v6, vcc, v6, v10                            // 000006F4: 4A0C1506
  v_mul_lo_i32  v7, v7, s4                                  // 000006F8: D2D60007 02000907
  v_mul_lo_i32  v6, v6, s5                                  // 00000700: D2D60006 02000B06
  v_add_i32     v6, vcc, v7, v6                             // 00000708: 4A0C0D07
  v_add_i32     v7, vcc, 0x7fffffff, v6                     // 0000070C: 4A0E0CFF 7FFFFFFF
  v_cmp_gt_i32  vcc, 0, v6                                  // 00000714: 7D080C80
  v_cndmask_b32  v6, v6, v7, vcc                            // 00000718: 000C0F06
  v_add_i32     v7, vcc, 24, v9                             // 0000071C: 4A0E1298
  ds_write_b32  v7, v6                                      // 00000720: D8340000 00000607
  v_ashrrev_i32  v7, 31, v6                                 // 00000728: 300E0C9F
  s_mov_b32     s4, 0x834e0b5f                              // 0000072C: BE8403FF 834E0B5F
  v_mul_lo_u32  v10, v6, -1                                 // 00000734: D2D2000A 02018306
  v_mul_lo_u32  v7, v7, s4                                  // 0000073C: D2D20007 02000907
  v_add_i32     v7, vcc, v10, v7                            // 00000744: 4A0E0F0A
  v_mul_hi_u32  v10, v6, s4                                 // 00000748: D2D4000A 02000906
  v_add_i32     v11, vcc, v7, v10                           // 00000750: 4A161507
  v_mul_lo_u32  v10, v6, s4                                 // 00000754: D2D2000A 02000906
  v_lshr_b64    v[10:11], v[10:11], 32                      // 0000075C: D2C4000A 0201410A
  v_add_i32     v7, vcc, v6, v10                            // 00000764: 4A0E1506
  v_lshrrev_b32  v10, 31, v7                                // 00000768: 2C140E9F
  v_ashrrev_i32  v7, 16, v7                                 // 0000076C: 300E0E90
  v_add_i32     v7, vcc, v10, v7                            // 00000770: 4A0E0F0A
  s_mov_b32     s4, 0xfffe0ce3                              // 00000774: BE8403FF FFFE0CE3
  v_mul_lo_i32  v10, v7, s4                                 // 0000077C: D2D6000A 02000907
  s_movk_i32    s4, 0xf4ec                                  // 00000784: B004F4EC
  v_add_i32     v6, vcc, v6, v10                            // 00000788: 4A0C1506
  v_mul_lo_i32  v7, v7, s4                                  // 0000078C: D2D60007 02000907
  v_mul_lo_i32  v6, v6, s5                                  // 00000794: D2D60006 02000B06
  v_add_i32     v6, vcc, v7, v6                             // 0000079C: 4A0C0D07
  v_add_i32     v7, vcc, 0x7fffffff, v6                     // 000007A0: 4A0E0CFF 7FFFFFFF
  v_cmp_gt_i32  vcc, 0, v6                                  // 000007A8: 7D080C80
  v_cndmask_b32  v6, v6, v7, vcc                            // 000007AC: 000C0F06
  v_add_i32     v7, vcc, 20, v9                             // 000007B0: 4A0E1294
  ds_write_b32  v7, v6                                      // 000007B4: D8340000 00000607
  v_ashrrev_i32  v7, 31, v6                                 // 000007BC: 300E0C9F
  s_mov_b32     s4, 0x834e0b5f                              // 000007C0: BE8403FF 834E0B5F
  v_mul_lo_u32  v10, v6, -1                                 // 000007C8: D2D2000A 02018306
  v_mul_lo_u32  v7, v7, s4                                  // 000007D0: D2D20007 02000907
  v_add_i32     v7, vcc, v10, v7                            // 000007D8: 4A0E0F0A
  v_mul_hi_u32  v10, v6, s4                                 // 000007DC: D2D4000A 02000906
  v_add_i32     v11, vcc, v7, v10                           // 000007E4: 4A161507
  v_mul_lo_u32  v10, v6, s4                                 // 000007E8: D2D2000A 02000906
  v_lshr_b64    v[10:11], v[10:11], 32                      // 000007F0: D2C4000A 0201410A
  v_add_i32     v7, vcc, v6, v10                            // 000007F8: 4A0E1506
  v_lshrrev_b32  v10, 31, v7                                // 000007FC: 2C140E9F
  v_ashrrev_i32  v7, 16, v7                                 // 00000800: 300E0E90
  v_add_i32     v7, vcc, v10, v7                            // 00000804: 4A0E0F0A
  s_mov_b32     s4, 0xfffe0ce3                              // 00000808: BE8403FF FFFE0CE3
  v_mul_lo_i32  v10, v7, s4                                 // 00000810: D2D6000A 02000907
  s_movk_i32    s4, 0xf4ec                                  // 00000818: B004F4EC
  v_add_i32     v6, vcc, v6, v10                            // 0000081C: 4A0C1506
  v_mul_lo_i32  v7, v7, s4                                  // 00000820: D2D60007 02000907
  v_mul_lo_i32  v6, v6, s5                                  // 00000828: D2D60006 02000B06
  v_add_i32     v6, vcc, v7, v6                             // 00000830: 4A0C0D07
  v_add_i32     v7, vcc, 0x7fffffff, v6                     // 00000834: 4A0E0CFF 7FFFFFFF
  v_cmp_gt_i32  vcc, 0, v6                                  // 0000083C: 7D080C80
  v_cndmask_b32  v6, v6, v7, vcc                            // 00000840: 000C0F06
  v_add_i32     v7, vcc, 16, v9                             // 00000844: 4A0E1290
  ds_write_b32  v7, v6                                      // 00000848: D8340000 00000607
  v_ashrrev_i32  v7, 31, v6                                 // 00000850: 300E0C9F
  s_mov_b32     s4, 0x834e0b5f                              // 00000854: BE8403FF 834E0B5F
  v_mul_lo_u32  v10, v6, -1                                 // 0000085C: D2D2000A 02018306
  v_mul_lo_u32  v7, v7, s4                                  // 00000864: D2D20007 02000907
  v_add_i32     v7, vcc, v10, v7                            // 0000086C: 4A0E0F0A
  v_mul_hi_u32  v10, v6, s4                                 // 00000870: D2D4000A 02000906
  v_add_i32     v11, vcc, v7, v10                           // 00000878: 4A161507
  v_mul_lo_u32  v10, v6, s4                                 // 0000087C: D2D2000A 02000906
  v_lshr_b64    v[10:11], v[10:11], 32                      // 00000884: D2C4000A 0201410A
  v_add_i32     v7, vcc, v6, v10                            // 0000088C: 4A0E1506
  v_lshrrev_b32  v10, 31, v7                                // 00000890: 2C140E9F
  v_ashrrev_i32  v7, 16, v7                                 // 00000894: 300E0E90
  v_add_i32     v7, vcc, v10, v7                            // 00000898: 4A0E0F0A
  s_mov_b32     s4, 0xfffe0ce3                              // 0000089C: BE8403FF FFFE0CE3
  v_mul_lo_i32  v10, v7, s4                                 // 000008A4: D2D6000A 02000907
  s_movk_i32    s4, 0xf4ec                                  // 000008AC: B004F4EC
  v_add_i32     v6, vcc, v6, v10                            // 000008B0: 4A0C1506
  v_mul_lo_i32  v7, v7, s4                                  // 000008B4: D2D60007 02000907
  v_mul_lo_i32  v6, v6, s5                                  // 000008BC: D2D60006 02000B06
  v_add_i32     v6, vcc, v7, v6                             // 000008C4: 4A0C0D07
  v_add_i32     v7, vcc, 0x7fffffff, v6                     // 000008C8: 4A0E0CFF 7FFFFFFF
  v_cmp_gt_i32  vcc, 0, v6                                  // 000008D0: 7D080C80
  v_cndmask_b32  v6, v6, v7, vcc                            // 000008D4: 000C0F06
  v_add_i32     v7, vcc, 12, v9                             // 000008D8: 4A0E128C
  ds_write_b32  v7, v6                                      // 000008DC: D8340000 00000607
  v_ashrrev_i32  v7, 31, v6                                 // 000008E4: 300E0C9F
  s_mov_b32     s4, 0x834e0b5f                              // 000008E8: BE8403FF 834E0B5F
  v_mul_lo_u32  v10, v6, -1                                 // 000008F0: D2D2000A 02018306
  v_mul_lo_u32  v7, v7, s4                                  // 000008F8: D2D20007 02000907
  v_add_i32     v7, vcc, v10, v7                            // 00000900: 4A0E0F0A
  v_mul_hi_u32  v10, v6, s4                                 // 00000904: D2D4000A 02000906
  v_add_i32     v11, vcc, v7, v10                           // 0000090C: 4A161507
  v_mul_lo_u32  v10, v6, s4                                 // 00000910: D2D2000A 02000906
  v_lshr_b64    v[10:11], v[10:11], 32                      // 00000918: D2C4000A 0201410A
  v_add_i32     v7, vcc, v6, v10                            // 00000920: 4A0E1506
  v_lshrrev_b32  v10, 31, v7                                // 00000924: 2C140E9F
  v_ashrrev_i32  v7, 16, v7                                 // 00000928: 300E0E90
  v_add_i32     v7, vcc, v10, v7                            // 0000092C: 4A0E0F0A
  s_mov_b32     s4, 0xfffe0ce3                              // 00000930: BE8403FF FFFE0CE3
  v_mul_lo_i32  v10, v7, s4                                 // 00000938: D2D6000A 02000907
  s_movk_i32    s4, 0xf4ec                                  // 00000940: B004F4EC
  v_add_i32     v6, vcc, v6, v10                            // 00000944: 4A0C1506
  v_mul_lo_i32  v7, v7, s4                                  // 00000948: D2D60007 02000907
  v_mul_lo_i32  v6, v6, s5                                  // 00000950: D2D60006 02000B06
  v_add_i32     v6, vcc, v7, v6                             // 00000958: 4A0C0D07
  v_add_i32     v7, vcc, 0x7fffffff, v6                     // 0000095C: 4A0E0CFF 7FFFFFFF
  v_cmp_gt_i32  vcc, 0, v6                                  // 00000964: 7D080C80
  v_cndmask_b32  v6, v6, v7, vcc                            // 00000968: 000C0F06
  v_add_i32     v7, vcc, 8, v9                              // 0000096C: 4A0E1288
  ds_write_b32  v7, v6                                      // 00000970: D8340000 00000607
  v_ashrrev_i32  v7, 31, v6                                 // 00000978: 300E0C9F
  s_mov_b32     s4, 0x834e0b5f                              // 0000097C: BE8403FF 834E0B5F
  v_mul_lo_u32  v10, v6, -1                                 // 00000984: D2D2000A 02018306
  v_mul_lo_u32  v7, v7, s4                                  // 0000098C: D2D20007 02000907
  v_add_i32     v7, vcc, v10, v7                            // 00000994: 4A0E0F0A
  v_mul_hi_u32  v10, v6, s4                                 // 00000998: D2D4000A 02000906
  v_add_i32     v11, vcc, v7, v10                           // 000009A0: 4A161507
  v_mul_lo_u32  v10, v6, s4                                 // 000009A4: D2D2000A 02000906
  v_lshr_b64    v[10:11], v[10:11], 32                      // 000009AC: D2C4000A 0201410A
  v_add_i32     v7, vcc, v6, v10                            // 000009B4: 4A0E1506
  v_lshrrev_b32  v10, 31, v7                                // 000009B8: 2C140E9F
  v_ashrrev_i32  v7, 16, v7                                 // 000009BC: 300E0E90
  v_add_i32     v7, vcc, v10, v7                            // 000009C0: 4A0E0F0A
  s_mov_b32     s4, 0xfffe0ce3                              // 000009C4: BE8403FF FFFE0CE3
  v_mul_lo_i32  v10, v7, s4                                 // 000009CC: D2D6000A 02000907
  s_movk_i32    s4, 0xf4ec                                  // 000009D4: B004F4EC
  v_add_i32     v6, vcc, v6, v10                            // 000009D8: 4A0C1506
  v_mul_lo_i32  v7, v7, s4                                  // 000009DC: D2D60007 02000907
  v_mul_lo_i32  v6, v6, s5                                  // 000009E4: D2D60006 02000B06
  v_add_i32     v6, vcc, v7, v6                             // 000009EC: 4A0C0D07
  v_add_i32     v7, vcc, 0x7fffffff, v6                     // 000009F0: 4A0E0CFF 7FFFFFFF
  v_cmp_gt_i32  vcc, 0, v6                                  // 000009F8: 7D080C80
  v_cndmask_b32  v6, v6, v7, vcc                            // 000009FC: 000C0F06
  v_add_i32     v7, vcc, 4, v9                              // 00000A00: 4A0E1284
  ds_write_b32  v7, v6                                      // 00000A04: D8340000 00000607
  v_ashrrev_i32  v7, 31, v6                                 // 00000A0C: 300E0C9F
  s_mov_b32     s4, 0x834e0b5f                              // 00000A10: BE8403FF 834E0B5F
  v_mul_lo_u32  v10, v6, -1                                 // 00000A18: D2D2000A 02018306
  v_mul_lo_u32  v7, v7, s4                                  // 00000A20: D2D20007 02000907
  v_add_i32     v7, vcc, v10, v7                            // 00000A28: 4A0E0F0A
  v_mul_hi_u32  v10, v6, s4                                 // 00000A2C: D2D4000A 02000906
  v_add_i32     v11, vcc, v7, v10                           // 00000A34: 4A161507
  v_mul_lo_u32  v10, v6, s4                                 // 00000A38: D2D2000A 02000906
  v_lshr_b64    v[10:11], v[10:11], 32                      // 00000A40: D2C4000A 0201410A
  v_add_i32     v7, vcc, v6, v10                            // 00000A48: 4A0E1506
  v_lshrrev_b32  v10, 31, v7                                // 00000A4C: 2C140E9F
  v_ashrrev_i32  v7, 16, v7                                 // 00000A50: 300E0E90
  v_add_i32     v7, vcc, v10, v7                            // 00000A54: 4A0E0F0A
  s_mov_b32     s4, 0xfffe0ce3                              // 00000A58: BE8403FF FFFE0CE3
  v_mul_lo_i32  v10, v7, s4                                 // 00000A60: D2D6000A 02000907
  s_movk_i32    s4, 0xf4ec                                  // 00000A68: B004F4EC
  v_add_i32     v6, vcc, v6, v10                            // 00000A6C: 4A0C1506
  v_mul_lo_i32  v7, v7, s4                                  // 00000A70: D2D60007 02000907
  v_mul_lo_i32  v6, v6, s5                                  // 00000A78: D2D60006 02000B06
  v_add_i32     v6, vcc, v7, v6                             // 00000A80: 4A0C0D07
  v_add_i32     v7, vcc, 0x7fffffff, v6                     // 00000A84: 4A0E0CFF 7FFFFFFF
  v_cmp_gt_i32  vcc, 0, v6                                  // 00000A8C: 7D080C80
  v_cndmask_b32  v6, v6, v7, vcc                            // 00000A90: 000C0F06
  ds_write_b32  v9, v6                                      // 00000A94: D8340000 00000609
  s_load_dwordx4  s[4:7], s[2:3], 0x58                      // 00000A9C: C0820358
  v_lshlrev_b32  v0, 6, v0                                  // 00000AA0: 34000086
  v_mov_b32     v6, 0x00200000                              // 00000AA4: 7E0C02FF 00200000
  v_mov_b32     v7, 0x3e000000                              // 00000AAC: 7E0E02FF 3E000000
  v_mov_b32     v9, 0x9999999a                              // 00000AB4: 7E1202FF 9999999A
  v_mov_b32     v10, 0xbfe19999                             // 00000ABC: 7E1402FF BFE19999
  v_cvt_f64_i32  v[11:12], s1                               // 00000AC4: 7E160801
  v_mov_b32     v13, 0x437f0000                             // 00000AC8: 7E1A02FF 437F0000
  v_mov_b32     v14, 0x000000ff                             // 00000AD0: 7E1C02FF 000000FF
  v_add_i32     v1, vcc, s0, v1                             // 00000AD8: 4A020200
  s_mov_b32     s0, 0x0000ff00                              // 00000ADC: BE8003FF 0000FF00
  s_mov_b32     s1, 0xffff0000                              // 00000AE4: BE8103FF FFFF0000
  ds_read_b32   v0, v0                                      // 00000AEC: D8D80000 00000000
  s_waitcnt     lgkmcnt(0)                                  // 00000AF4: BF8C007F
  v_ashrrev_i32  v15, 31, v0                                // 00000AF8: 301E009F
  v_lshrrev_b32  v15, 5, v15                                // 00000AFC: 2C1E1E85
  v_add_i32     v0, vcc, v0, v15                            // 00000B00: 4A001F00
  v_ashrrev_i32  v0, 27, v0                                 // 00000B04: 3000009B
  v_add_i32     v0, vcc, v8, v0                             // 00000B08: 4A000108
  v_lshlrev_b32  v0, 2, v0                                  // 00000B0C: 34000082
  ds_read_b32   v0, v0                                      // 00000B10: D8D80000 00000000
  s_waitcnt     lgkmcnt(0)                                  // 00000B18: BF8C007F
  v_cvt_f64_i32  v[15:16], v0                               // 00000B1C: 7E1E0900
  v_mul_f64     v[6:7], v[15:16], v[6:7]                    // 00000B20: D2CA0006 02020D0F
  v_cvt_f32_f64  v0, v[6:7]                                 // 00000B28: 7E001F06
  v_cvt_f64_f32  v[6:7], v0                                 // 00000B2C: 7E0C2100
  v_add_f64     v[6:7], v[6:7], v[9:10]                     // 00000B30: D2C80006 02021306
  v_mul_f64     v[6:7], v[6:7], v[11:12]                    // 00000B38: D2CA0006 02021706
  v_cvt_f32_f64  v0, v[6:7]                                 // 00000B40: 7E001F06
  v_add_f32     v3, v3, v0                                  // 00000B44: 06060103
  v_add_f32     v4, v4, v0                                  // 00000B48: 06080104
  v_add_f32     v5, v5, v0                                  // 00000B4C: 060A0105
  v_add_f32     v0, v2, v0                                  // 00000B50: 06000102
  v_max_f32     v2, 0, v3                                   // 00000B54: 20040680
  v_max_f32     v3, 0, v4                                   // 00000B58: 20060880
  v_max_f32     v4, 0, v5                                   // 00000B5C: 20080A80
  v_max_f32     v0, 0, v0                                   // 00000B60: 20000080
  v_min_f32     v2, v13, v2                                 // 00000B64: 1E04050D
  v_min_f32     v3, v3, v13                                 // 00000B68: 1E061B03
  v_min_f32     v4, v4, v13                                 // 00000B6C: 1E081B04
  v_min_f32     v0, v0, v13                                 // 00000B70: 1E001B00
  v_cvt_u32_f32  v2, v2                                     // 00000B74: 7E040F02
  v_cvt_u32_f32  v3, v3                                     // 00000B78: 7E060F03
  v_cvt_u32_f32  v4, v4                                     // 00000B7C: 7E080F04
  v_cvt_u32_f32  v0, v0                                     // 00000B80: 7E000F00
  v_and_b32     v2, v14, v2                                 // 00000B84: 3604050E
  v_and_b32     v3, v3, v14                                 // 00000B88: 36061D03
  v_and_b32     v4, v4, v14                                 // 00000B8C: 36081D04
  v_and_b32     v0, v0, v14                                 // 00000B90: 36001D00
  v_lshlrev_b32  v3, 8, v3                                  // 00000B94: 34060688
  v_lshlrev_b32  v0, 8, v0                                  // 00000B98: 34000088
  v_bfi_b32     v2, s0, v3, v2                              // 00000B9C: D2940002 040A0600
  v_bfi_b32     v0, s0, v0, v4                              // 00000BA4: D2940000 04120000
  v_lshlrev_b32  v0, 16, v0                                 // 00000BAC: 34000090
  v_bfi_b32     v0, s1, v0, v2                              // 00000BB0: D2940000 040A0001
  tbuffer_store_format_x  v0, v1, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000BB8: EBA41000 80010001
  s_endpgm                                                  // 00000BC0: BF810000