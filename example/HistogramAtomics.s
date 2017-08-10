**
** Disassembly for '__kernel histogramKernel'
**

  s_mov_b32     m0, 0x00008000                              // 00000000: BEFC03FF 00008000
  s_buffer_load_dword  s0, s[4:7], 0x18                     // 00000008: C2000518
  s_buffer_load_dword  s1, s[4:7], 0x1c                     // 0000000C: C200851C
  s_buffer_load_dword  s13, s[8:11], 0x00                   // 00000010: C2068900
  s_buffer_load_dword  s14, s[8:11], 0x04                   // 00000014: C2070904
  s_buffer_load_dword  s8, s[8:11], 0x08                    // 00000018: C2040908
  s_buffer_load_dwordx4  s[4:7], s[4:7], 0x00               // 0000001C: C2820500
  s_waitcnt     lgkmcnt(0)                                  // 00000020: BF8C007F
  s_lshl_b32    s5, s12, 8                                  // 00000024: 8F05880C
  s_add_i32     s0, s5, s0                                  // 00000028: 81000005
  v_add_i32     v1, vcc, s0, v0                             // 0000002C: 4A020000
  s_add_i32     s0, s12, s1                                 // 00000030: 8100010C
  s_movk_i32    s1, 0x00ff                                  // 00000034: B00100FF
  v_cmp_gt_u32  s[6:7], v0, s1                              // 00000038: D1880006 00000300
  s_mov_b64     s[10:11], exec                              // 00000040: BE8A047E
  s_andn2_b64   exec, s[10:11], s[6:7]                      // 00000044: 8AFE060A
  v_lshlrev_b32  v3, 4, v0                                  // 00000048: 34060084
  s_cbranch_execz  label_002B                               // 0000004C: BF880017
  s_mov_b64     s[6:7], exec                                // 00000050: BE86047E
  v_mov_b32     v2, 4                                       // 00000054: 7E040284
label_0016:
  v_mov_b32     v4, 0                                       // 00000058: 7E080280
  ds_write_b32  v3, v4                                      // 0000005C: D8340000 00000403
  v_add_i32     v5, vcc, 4, v3                              // 00000064: 4A0A0684
  ds_write_b32  v5, v4                                      // 00000068: D8340000 00000405
  v_add_i32     v5, vcc, 8, v3                              // 00000070: 4A0A0688
  ds_write_b32  v5, v4                                      // 00000074: D8340000 00000405
  v_add_i32     v5, vcc, 12, v3                             // 0000007C: 4A0A068C
  ds_write_b32  v5, v4                                      // 00000080: D8340000 00000405
  v_add_i32     v3, vcc, 0x00001000, v3                     // 00000088: 4A0606FF 00001000
  v_add_i32     v4, vcc, -1, v2                             // 00000090: 4A0804C1
  v_cmp_eq_i32  s[6:7], v2, 1                               // 00000094: D1040006 00010302
  s_andn2_b64   exec, exec, s[6:7]                          // 0000009C: 8AFE067E
  s_cbranch_execz  label_002B                               // 000000A0: BF880002
  v_mov_b32     v2, v4                                      // 000000A4: 7E040304
  s_branch      label_0016                                  // 000000A8: BF82FFEB
label_002B:
  s_mov_b64     exec, s[10:11]                              // 000000AC: BEFE040A
  s_waitcnt     lgkmcnt(0)                                  // 000000B0: BF8C007F
  s_barrier                                                 // 000000B4: BF8A0000
  s_cmp_eq_i32  s8, 0                                       // 000000B8: BF008008
  s_cbranch_scc1  label_00AE                                // 000000BC: BF85007E
  v_and_b32     v2, 15, v0                                  // 000000C0: 3604008F
  s_lshl_b32    s1, s4, 4                                   // 000000C4: 8F018404
  v_lshlrev_b32  v1, 4, v1                                  // 000000C8: 34020284
  v_add_i32     v1, vcc, s13, v1                            // 000000CC: 4A02020D
  s_load_dwordx4  s[4:7], s[2:3], 0x58                      // 000000D0: C0820358
label_0035:
  s_waitcnt     lgkmcnt(0)                                  // 000000D4: BF8C007F
  tbuffer_load_format_xyzw  v[3:6], v1, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 000000D8: EBF31000 80010301
  v_mov_b32     v7, 0x000000ff                              // 000000E0: 7E0E02FF 000000FF
  s_waitcnt     vmcnt(0)                                    // 000000E8: BF8C1F70
  v_and_b32     v8, v7, v3                                  // 000000EC: 36100707
  v_and_b32     v9, v4, v7                                  // 000000F0: 36120F04
  v_lshlrev_b32  v8, 4, v8                                  // 000000F4: 34101084
  v_and_b32     v10, v5, v7                                 // 000000F8: 36140F05
  v_lshlrev_b32  v9, 4, v9                                  // 000000FC: 34121284
  v_add_i32     v8, vcc, v2, v8                             // 00000100: 4A101102
  v_and_b32     v7, v6, v7                                  // 00000104: 360E0F06
  v_lshlrev_b32  v10, 4, v10                                // 00000108: 34141484
  v_add_i32     v9, vcc, v2, v9                             // 0000010C: 4A121302
  v_lshlrev_b32  v8, 2, v8                                  // 00000110: 34101082
  v_mov_b32     v11, -1                                     // 00000114: 7E1602C1
  v_lshlrev_b32  v7, 4, v7                                  // 00000118: 340E0E84
  v_add_i32     v10, vcc, v2, v10                           // 0000011C: 4A141502
  ds_inc_u32    v8, v11                                     // 00000120: D80C0000 00000B08
  v_lshlrev_b32  v8, 2, v9                                  // 00000128: 34101282
  v_bfe_u32     v9, v3, 8, 8                                // 0000012C: D2900009 02211103
  v_add_i32     v7, vcc, v2, v7                             // 00000134: 4A0E0F02
  ds_inc_u32    v8, v11                                     // 00000138: D80C0000 00000B08
  v_lshlrev_b32  v8, 2, v10                                 // 00000140: 34101482
  v_bfe_u32     v10, v4, 8, 8                               // 00000144: D290000A 02211104
  v_lshlrev_b32  v9, 4, v9                                  // 0000014C: 34121284
  ds_inc_u32    v8, v11                                     // 00000150: D80C0000 00000B08
  v_lshlrev_b32  v7, 2, v7                                  // 00000158: 340E0E82
  v_bfe_u32     v8, v5, 8, 8                                // 0000015C: D2900008 02211105
  v_lshlrev_b32  v10, 4, v10                                // 00000164: 34141484
  v_add_i32     v9, vcc, v2, v9                             // 00000168: 4A121302
  ds_inc_u32    v7, v11                                     // 0000016C: D80C0000 00000B07
  v_bfe_u32     v7, v6, 8, 8                                // 00000174: D2900007 02211106
  v_lshlrev_b32  v8, 4, v8                                  // 0000017C: 34101084
  v_add_i32     v10, vcc, v2, v10                           // 00000180: 4A141502
  v_lshlrev_b32  v9, 2, v9                                  // 00000184: 34121282
  v_lshlrev_b32  v7, 4, v7                                  // 00000188: 340E0E84
  v_add_i32     v8, vcc, v2, v8                             // 0000018C: 4A101102
  ds_inc_u32    v9, v11                                     // 00000190: D80C0000 00000B09
  v_lshlrev_b32  v9, 2, v10                                 // 00000198: 34121482
  v_bfe_u32     v10, v3, 16, 8                              // 0000019C: D290000A 02212103
  v_add_i32     v7, vcc, v2, v7                             // 000001A4: 4A0E0F02
  ds_inc_u32    v9, v11                                     // 000001A8: D80C0000 00000B09
  v_lshlrev_b32  v8, 2, v8                                  // 000001B0: 34101082
  v_bfe_u32     v9, v4, 16, 8                               // 000001B4: D2900009 02212104
  v_lshlrev_b32  v10, 4, v10                                // 000001BC: 34141484
  ds_inc_u32    v8, v11                                     // 000001C0: D80C0000 00000B08
  v_lshlrev_b32  v7, 2, v7                                  // 000001C8: 340E0E82
  v_bfe_u32     v8, v5, 16, 8                               // 000001CC: D2900008 02212105
  v_lshlrev_b32  v9, 4, v9                                  // 000001D4: 34121284
  v_add_i32     v10, vcc, v2, v10                           // 000001D8: 4A141502
  ds_inc_u32    v7, v11                                     // 000001DC: D80C0000 00000B07
  v_bfe_u32     v7, v6, 16, 8                               // 000001E4: D2900007 02212106
  v_lshlrev_b32  v8, 4, v8                                  // 000001EC: 34101084
  v_add_i32     v9, vcc, v2, v9                             // 000001F0: 4A121302
  v_lshlrev_b32  v10, 2, v10                                // 000001F4: 34141482
  v_lshlrev_b32  v7, 4, v7                                  // 000001F8: 340E0E84
  v_add_i32     v8, vcc, v2, v8                             // 000001FC: 4A101102
  ds_inc_u32    v10, v11                                    // 00000200: D80C0000 00000B0A
  v_lshlrev_b32  v9, 2, v9                                  // 00000208: 34121282
  v_bfe_u32     v3, v3, 24, 8                               // 0000020C: D2900003 02213103
  v_add_i32     v7, vcc, v2, v7                             // 00000214: 4A0E0F02
  ds_inc_u32    v9, v11                                     // 00000218: D80C0000 00000B09
  v_lshlrev_b32  v8, 2, v8                                  // 00000220: 34101082
  v_bfe_u32     v4, v4, 24, 8                               // 00000224: D2900004 02213104
  v_lshlrev_b32  v3, 4, v3                                  // 0000022C: 34060684
  ds_inc_u32    v8, v11                                     // 00000230: D80C0000 00000B08
  v_lshlrev_b32  v7, 2, v7                                  // 00000238: 340E0E82
  v_bfe_u32     v5, v5, 24, 8                               // 0000023C: D2900005 02213105
  v_lshlrev_b32  v4, 4, v4                                  // 00000244: 34080884
  v_add_i32     v3, vcc, v2, v3                             // 00000248: 4A060702
  ds_inc_u32    v7, v11                                     // 0000024C: D80C0000 00000B07
  v_bfe_u32     v6, v6, 24, 8                               // 00000254: D2900006 02213106
  v_lshlrev_b32  v5, 4, v5                                  // 0000025C: 340A0A84
  v_add_i32     v4, vcc, v2, v4                             // 00000260: 4A080902
  v_lshlrev_b32  v3, 2, v3                                  // 00000264: 34060682
  v_lshlrev_b32  v6, 4, v6                                  // 00000268: 340C0C84
  v_add_i32     v5, vcc, v2, v5                             // 0000026C: 4A0A0B02
  ds_inc_u32    v3, v11                                     // 00000270: D80C0000 00000B03
  v_lshlrev_b32  v3, 2, v4                                  // 00000278: 34060882
  v_add_i32     v4, vcc, v2, v6                             // 0000027C: 4A080D02
  ds_inc_u32    v3, v11                                     // 00000280: D80C0000 00000B03
  v_lshlrev_b32  v3, 2, v5                                  // 00000288: 34060A82
  ds_inc_u32    v3, v11                                     // 0000028C: D80C0000 00000B03
  v_lshlrev_b32  v3, 2, v4                                  // 00000294: 34060882
  ds_inc_u32    v3, v11                                     // 00000298: D80C0000 00000B03
  v_add_i32     v1, vcc, s1, v1                             // 000002A0: 4A020201
  s_add_i32     s9, -1, s8                                  // 000002A4: 810908C1
  s_cmp_eq_i32  s8, 1                                       // 000002A8: BF008108
  s_cbranch_scc1  label_00AE                                // 000002AC: BF850002
  s_mov_b32     s8, s9                                      // 000002B0: BE880309
  s_branch      label_0035                                  // 000002B4: BF82FF87
label_00AE:
  s_movk_i32    s1, 0x00ff                                  // 000002B8: B00100FF
  v_cmp_gt_u32  s[4:5], v0, s1                              // 000002BC: D1880004 00000300
  s_waitcnt     lgkmcnt(0)                                  // 000002C4: BF8C007F
  s_barrier                                                 // 000002C8: BF8A0000
  s_mov_b64     s[6:7], exec                                // 000002CC: BE86047E
  s_andn2_b64   exec, s[6:7], s[4:5]                        // 000002D0: 8AFE0406
  v_lshlrev_b32  v1, 6, v0                                  // 000002D4: 34020086
  s_cbranch_execz  label_0109                               // 000002D8: BF880052
  v_or_b32      v1, 16, v1                                  // 000002DC: 38020290
  v_add_i32     v2, vcc, -16, v1                            // 000002E0: 4A0402D0
  v_add_i32     v3, vcc, -12, v1                            // 000002E4: 4A0602CC
  v_add_i32     v4, vcc, -8, v1                             // 000002E8: 4A0802C8
  v_add_i32     v5, vcc, -4, v1                             // 000002EC: 4A0A02C4
  v_add_i32     v6, vcc, 4, v1                              // 000002F0: 4A0C0284
  ds_read_b32   v2, v2                                      // 000002F4: D8D80000 02000002
  ds_read_b32   v3, v3                                      // 000002FC: D8D80000 03000003
  v_add_i32     v7, vcc, 8, v1                              // 00000304: 4A0E0288
  ds_read_b32   v4, v4                                      // 00000308: D8D80000 04000004
  v_add_i32     v8, vcc, 12, v1                             // 00000310: 4A10028C
  ds_read_b32   v5, v5                                      // 00000314: D8D80000 05000005
  v_add_i32     v9, vcc, 16, v1                             // 0000031C: 4A120290
  ds_read_b32   v10, v1                                     // 00000320: D8D80000 0A000001
  v_add_i32     v11, vcc, 20, v1                            // 00000328: 4A160294
  ds_read_b32   v6, v6                                      // 0000032C: D8D80000 06000006
  v_add_i32     v12, vcc, 24, v1                            // 00000334: 4A180298
  s_waitcnt     lgkmcnt(4)                                  // 00000338: BF8C047F
  v_add_i32     v2, vcc, v2, v3                             // 0000033C: 4A040702
  ds_read_b32   v3, v7                                      // 00000340: D8D80000 03000007
  v_add_i32     v7, vcc, 28, v1                             // 00000348: 4A0E029C
  s_waitcnt     lgkmcnt(4)                                  // 0000034C: BF8C047F
  v_add_i32     v2, vcc, v2, v4                             // 00000350: 4A040902
  ds_read_b32   v4, v8                                      // 00000354: D8D80000 04000008
  v_add_i32     v8, vcc, 32, v1                             // 0000035C: 4A1002A0
  s_waitcnt     lgkmcnt(4)                                  // 00000360: BF8C047F
  v_add_i32     v2, vcc, v2, v5                             // 00000364: 4A040B02
  ds_read_b32   v5, v9                                      // 00000368: D8D80000 05000009
  v_add_i32     v9, vcc, 36, v1                             // 00000370: 4A1202A4
  s_waitcnt     lgkmcnt(4)                                  // 00000374: BF8C047F
  v_add_i32     v2, vcc, v2, v10                            // 00000378: 4A041502
  ds_read_b32   v10, v11                                    // 0000037C: D8D80000 0A00000B
  v_add_i32     v11, vcc, 40, v1                            // 00000384: 4A1602A8
  s_waitcnt     lgkmcnt(4)                                  // 00000388: BF8C047F
  v_add_i32     v2, vcc, v2, v6                             // 0000038C: 4A040D02
  ds_read_b32   v6, v12                                     // 00000390: D8D80000 0600000C
  v_add_i32     v1, vcc, 44, v1                             // 00000398: 4A0202AC
  s_waitcnt     lgkmcnt(4)                                  // 0000039C: BF8C047F
  v_add_i32     v2, vcc, v2, v3                             // 000003A0: 4A040702
  ds_read_b32   v3, v7                                      // 000003A4: D8D80000 03000007
  s_waitcnt     lgkmcnt(4)                                  // 000003AC: BF8C047F
  v_add_i32     v2, vcc, v2, v4                             // 000003B0: 4A040902
  ds_read_b32   v4, v8                                      // 000003B4: D8D80000 04000008
  s_waitcnt     lgkmcnt(4)                                  // 000003BC: BF8C047F
  v_add_i32     v2, vcc, v2, v5                             // 000003C0: 4A040B02
  ds_read_b32   v5, v9                                      // 000003C4: D8D80000 05000009
  s_waitcnt     lgkmcnt(4)                                  // 000003CC: BF8C047F
  v_add_i32     v2, vcc, v2, v10                            // 000003D0: 4A041502
  ds_read_b32   v7, v11                                     // 000003D4: D8D80000 0700000B
  s_waitcnt     lgkmcnt(4)                                  // 000003DC: BF8C047F
  v_add_i32     v2, vcc, v2, v6                             // 000003E0: 4A040D02
  ds_read_b32   v1, v1                                      // 000003E4: D8D80000 01000001
  s_waitcnt     lgkmcnt(4)                                  // 000003EC: BF8C047F
  v_add_i32     v2, vcc, v2, v3                             // 000003F0: 4A040702
  s_load_dwordx4  s[8:11], s[2:3], 0x50                     // 000003F4: C0840350
  s_waitcnt     lgkmcnt(0)                                  // 000003F8: BF8C007F
  v_add_i32     v2, vcc, v2, v4                             // 000003FC: 4A040902
  s_lshl_b32    s0, s0, 8                                   // 00000400: 8F008800
  v_add_i32     v2, vcc, v2, v5                             // 00000404: 4A040B02
  v_add_i32     v0, vcc, s0, v0                             // 00000408: 4A000000
  v_add_i32     v2, vcc, v2, v7                             // 0000040C: 4A040F02
  v_lshlrev_b32  v0, 2, v0                                  // 00000410: 34000082
  v_add_i32     v1, vcc, v2, v1                             // 00000414: 4A020302
  v_add_i32     v0, vcc, s14, v0                            // 00000418: 4A00000E
  tbuffer_store_format_x  v1, v0, s[8:11], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000041C: EBA41000 80020100
label_0109:
  s_mov_b64     exec, s[6:7]                                // 00000424: BEFE0406
  s_endpgm                                                  // 00000428: BF810000



**
** Disassembly for '__kernel reduceKernel'
**

  s_buffer_load_dword  s0, s[8:11], 0x04                    // 00000000: C2000904
  s_buffer_load_dword  s1, s[8:11], 0x18                    // 00000004: C2008918
  s_buffer_load_dword  s2, s[12:15], 0x00                   // 00000008: C2010D00
  s_buffer_load_dword  s3, s[12:15], 0x04                   // 0000000C: C2018D04
  s_waitcnt     lgkmcnt(0)                                  // 00000010: BF8C007F
  s_min_u32     s0, s0, 0x0000ffff                          // 00000014: 8380FF00 0000FFFF
  v_mov_b32     v1, s0                                      // 0000001C: 7E020200
  v_mul_i32_i24  v1, s16, v1                                // 00000020: 12020210
  v_add_i32     v0, vcc, v0, v1                             // 00000024: 4A000300
  v_add_i32     v0, vcc, s1, v0                             // 00000028: 4A000001
  s_cmp_eq_i32  s3, 0                                       // 0000002C: BF008003
  s_cbranch_scc1  label_001A                                // 00000030: BF85000D
  v_lshlrev_b32  v1, 2, v0                                  // 00000034: 34020082
  v_add_i32     v2, vcc, s2, v1                             // 00000038: 4A040202
  v_mov_b32     v1, 0                                       // 0000003C: 7E020280
label_0010:
  tbuffer_load_format_x  v3, v2, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000040: EBA01000 80010302
  v_add_i32     v2, vcc, 0x00000400, v2                     // 00000048: 4A0404FF 00000400
  s_waitcnt     vmcnt(0)                                    // 00000050: BF8C1F70
  v_add_i32     v1, vcc, v1, v3                             // 00000054: 4A020701
  s_add_i32     s3, -1, s3                                  // 00000058: 810303C1
  s_cmp_eq_i32  s3, 0                                       // 0000005C: BF008003
  s_cbranch_scc0  label_0010                                // 00000060: BF84FFF7
  s_branch      label_001B                                  // 00000064: BF820001
label_001A:
  v_mov_b32     v1, 0                                       // 00000068: 7E020280
label_001B:
  v_lshlrev_b32  v0, 2, v0                                  // 0000006C: 34000082
  v_add_i32     v0, vcc, s2, v0                             // 00000070: 4A000002
  tbuffer_store_format_x  v1, v0, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000074: EBA41000 80010100
  s_endpgm                                                  // 0000007C: BF810000



