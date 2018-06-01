label_0000:
  s_mov_b32     m0, 0x00008000                              // 00000000: BEFC03FF 00008000
  s_buffer_load_dword  s0, s[4:7], 0x04                     // 00000008: C2000504
  s_buffer_load_dword  s1, s[4:7], 0x18                     // 0000000C: C2008518
  s_waitcnt     lgkmcnt(0)                                  // 00000010: BF8C007F
  s_min_u32     s0, s0, 0x0000ffff                          // 00000014: 8380FF00 0000FFFF
  v_mov_b32     v1, s0                                      // 0000001C: 7E020200
  v_mul_i32_i24  v1, s12, v1                                // 00000020: 1202020C
  s_buffer_load_dword  s0, s[8:11], 0x04                    // 00000024: C2000904
  v_add_i32     v1, vcc, v0, v1                             // 00000028: 4A020300
  v_add_i32     v1, vcc, s1, v1                             // 0000002C: 4A020201
  v_lshlrev_b32  v2, 1, v1                                  // 00000030: 34040281
  v_lshlrev_b32  v3, 3, v1                                  // 00000034: 34060283
  v_or_b32      v2, 1, v2                                   // 00000038: 38040481
  s_waitcnt     lgkmcnt(0)                                  // 0000003C: BF8C007F
  v_add_i32     v3, vcc, s0, v3                             // 00000040: 4A060600
  s_load_dwordx4  s[16:19], s[2:3], 0x50                    // 00000044: C0880350
  v_lshlrev_b32  v2, 2, v2                                  // 00000048: 34040482
  v_add_i32     v4, vcc, s0, v2                             // 0000004C: 4A080400
  s_waitcnt     lgkmcnt(0)                                  // 00000050: BF8C007F
  tbuffer_load_format_x  v3, v3, s[16:19], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000054: EBA01000 80040303
  tbuffer_load_format_x  v4, v4, s[16:19], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000005C: EBA01000 80040404
  s_buffer_load_dword  s0, s[8:11], 0x08                    // 00000064: C2000908
  s_buffer_load_dword  s1, s[4:7], 0x1c                     // 00000068: C200851C
  s_buffer_load_dword  s4, s[8:11], 0x0c                    // 0000006C: C202090C
  v_lshlrev_b32  v5, 1, v0                                  // 00000070: 340A0081
  v_lshlrev_b32  v6, 3, v0                                  // 00000074: 340C0083
  v_or_b32      v7, 1, v5                                   // 00000078: 380E0A81
  s_waitcnt     lgkmcnt(0)                                  // 0000007C: BF8C007F
  v_add_i32     v6, vcc, s0, v6                             // 00000080: 4A0C0C00
  v_lshlrev_b32  v8, 2, v7                                  // 00000084: 34100E82
  s_waitcnt     vmcnt(1)                                    // 00000088: BF8C1F71
  ds_write_b32  v6, v3                                      // 0000008C: D8340000 00000306
  v_add_i32     v3, vcc, s0, v8                             // 00000094: 4A061000
  s_add_i32     s1, s12, s1                                 // 00000098: 8101010C
  s_buffer_load_dword  s5, s[8:11], 0x00                    // 0000009C: C2028900
  s_buffer_load_dword  s6, s[8:11], 0x14                    // 000000A0: C2030914
  s_waitcnt     vmcnt(0)                                    // 000000A4: BF8C1F70
  ds_write_b32  v3, v4                                      // 000000A8: D8340000 00000403
  s_lshr_b32    s7, s4, 1                                   // 000000B0: 90078104
  s_cmp_eq_i32  s7, 0                                       // 000000B4: BF008007
  s_cbranch_scc1  label_004F                                // 000000B8: BF850020
  v_add_i32     v4, vcc, 2, v5                              // 000000BC: 4A080A82
  s_movk_i32    s16, 0x0001                                 // 000000C0: B0100001
label_0031:
  s_waitcnt     lgkmcnt(0)                                  // 000000C4: BF8C007F
  s_barrier                                                 // 000000C8: BF8A0000
  v_cmp_gt_i32  s[10:11], s7, v0                            // 000000CC: D108000A 00020007
  s_and_saveexec_b64  s[10:11], s[10:11]                    // 000000D4: BE8A240A
  v_mul_lo_i32  v6, s16, v7                                 // 000000D8: D2D60006 02020E10
  s_cbranch_execz  label_0049                               // 000000E0: BF880010
  v_mul_lo_i32  v8, s16, v4                                 // 000000E4: D2D60008 02020810
  v_lshlrev_b32  v6, 2, v6                                  // 000000EC: 340C0C82
  v_lshlrev_b32  v8, 2, v8                                  // 000000F0: 34101082
  v_add_i32     v6, vcc, s0, v6                             // 000000F4: 4A0C0C00
  v_add_i32     v8, vcc, s0, v8                             // 000000F8: 4A101000
  v_add_i32     v6, vcc, -4, v6                             // 000000FC: 4A0C0CC4
  v_add_i32     v8, vcc, -4, v8                             // 00000100: 4A1010C4
  ds_read_b32   v6, v6                                      // 00000104: D8D80000 06000006
  ds_read_b32   v9, v8                                      // 0000010C: D8D80000 09000008
  s_waitcnt     lgkmcnt(0)                                  // 00000114: BF8C007F
  v_add_f32     v6, v6, v9                                  // 00000118: 060C1306
  ds_write_b32  v8, v6                                      // 0000011C: D8340000 00000608
label_0049:
  s_mov_b64     exec, s[10:11]                              // 00000124: BEFE040A
  s_lshl_b32    s16, s16, 1                                 // 00000128: 8F108110
  s_ashr_i32    s7, s7, 1                                   // 0000012C: 91078107
  s_cmp_le_i32  s7, 0                                       // 00000130: BF058007
  s_cbranch_scc0  label_0031                                // 00000134: BF84FFE3
  s_branch      label_0050                                  // 00000138: BF820001
label_004F:
  s_movk_i32    s16, 0x0001                                 // 0000013C: B0100001
label_0050:
  s_waitcnt     lgkmcnt(0)                                  // 00000140: BF8C007F
  s_barrier                                                 // 00000144: BF8A0000
  s_lshl_b32    s8, s4, 2                                   // 00000148: 8F088204
  s_add_i32     s8, s0, s8                                  // 0000014C: 81080800
  s_add_i32     s8, -4, s8                                  // 00000150: 810808C4
  v_mov_b32     v4, s8                                      // 00000154: 7E080208
  ds_read_b32   v4, v4                                      // 00000158: D8D80000 04000004
  s_load_dwordx4  s[12:15], s[2:3], 0x60                    // 00000160: C0860360
  s_lshl_b32    s1, s1, 2                                   // 00000164: 8F018201
  s_add_i32     s1, s6, s1                                  // 00000168: 81010106
  v_mov_b32     v6, s1                                      // 0000016C: 7E0C0201
  s_waitcnt     lgkmcnt(0)                                  // 00000170: BF8C007F
  tbuffer_store_format_x  v4, v6, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000174: EBA41000 80030406
  s_waitcnt     vmcnt(0) & expcnt(0)                        // 0000017C: BF8C1F00
  s_barrier                                                 // 00000180: BF8A0000
  v_mov_b32     v4, s8                                      // 00000184: 7E080208
  v_mov_b32     v6, 0                                       // 00000188: 7E0C0280
  ds_write_b32  v4, v6                                      // 0000018C: D8340000 00000604
  s_cmp_ge_u32  s4, 2                                       // 00000194: BF098204
  s_cbranch_scc0  label_008B                                // 00000198: BF840024
  v_add_i32     v4, vcc, 2, v5                              // 0000019C: 4A080A82
  s_movk_i32    s1, 0x0001                                  // 000001A0: B0010001
label_0069:
  s_waitcnt     lgkmcnt(0)                                  // 000001A4: BF8C007F
  s_barrier                                                 // 000001A8: BF8A0000
  s_ashr_i32    s16, s16, 1                                 // 000001AC: 91108110
  v_cmp_gt_i32  s[8:9], s1, v0                              // 000001B0: D1080008 00020001
  s_and_saveexec_b64  s[8:9], s[8:9]                        // 000001B8: BE882408
  v_mul_lo_i32  v5, s16, v7                                 // 000001BC: D2D60005 02020E10
  s_cbranch_execz  label_0087                               // 000001C4: BF880015
  v_mul_lo_i32  v6, s16, v4                                 // 000001C8: D2D60006 02020810
  v_lshlrev_b32  v5, 2, v5                                  // 000001D0: 340A0A82
  v_lshlrev_b32  v6, 2, v6                                  // 000001D4: 340C0C82
  v_add_i32     v5, vcc, s0, v5                             // 000001D8: 4A0A0A00
  v_add_i32     v6, vcc, s0, v6                             // 000001DC: 4A0C0C00
  v_add_i32     v5, vcc, -4, v5                             // 000001E0: 4A0A0AC4
  v_add_i32     v6, vcc, -4, v6                             // 000001E4: 4A0C0CC4
  ds_read_b32   v8, v5                                      // 000001E8: D8D80000 08000005
  ds_read_b32   v9, v6                                      // 000001F0: D8D80000 09000006
  s_waitcnt     lgkmcnt(0)                                  // 000001F8: BF8C007F
  ds_write_b32  v5, v9                                      // 000001FC: D8340000 00000905
  ds_read_b32   v5, v6                                      // 00000204: D8D80000 05000006
  s_waitcnt     lgkmcnt(0)                                  // 0000020C: BF8C007F
  v_add_f32     v5, v8, v5                                  // 00000210: 060A0B08
  ds_write_b32  v6, v5                                      // 00000214: D8340000 00000506
label_0087:
  s_mov_b64     exec, s[8:9]                                // 0000021C: BEFE0408
  s_lshl_b32    s1, s1, 1                                   // 00000220: 8F018101
  s_cmp_le_u32  s4, s1                                      // 00000224: BF0B0104
  s_cbranch_scc0  label_0069                                // 00000228: BF84FFDE
label_008B:
  s_waitcnt     lgkmcnt(0)                                  // 0000022C: BF8C007F
  s_barrier                                                 // 00000230: BF8A0000
  s_load_dwordx4  s[8:11], s[2:3], 0x58                     // 00000234: C0840358
  v_lshlrev_b32  v1, 3, v1                                  // 00000238: 34020283
  v_add_i32     v1, vcc, s5, v1                             // 0000023C: 4A020205
  v_lshlrev_b32  v0, 3, v0                                  // 00000240: 34000083
  v_add_i32     v0, vcc, s0, v0                             // 00000244: 4A000000
  v_add_i32     v2, vcc, s5, v2                             // 00000248: 4A040405
  ds_read_b32   v0, v0                                      // 0000024C: D8D80000 00000000
  ds_read_b32   v3, v3                                      // 00000254: D8D80000 03000003
  s_waitcnt     lgkmcnt(0)                                  // 0000025C: BF8C007F
  tbuffer_store_format_x  v0, v1, s[8:11], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000260: EBA41000 80020001
  tbuffer_store_format_x  v3, v2, s[8:11], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000268: EBA41000 80020302
  s_endpgm                                                  // 00000270: BF810000