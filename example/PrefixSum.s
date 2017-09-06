label_0000:
  s_mov_b32     m0, 0x00008000                              // 00000000: BEFC03FF 00008000
  s_buffer_load_dword  s0, s[12:15], 0x04                   // 00000008: C2000D04
  v_lshlrev_b32  v1, 1, v0                                  // 0000000C: 34020081
  v_lshlrev_b32  v2, 3, v0                                  // 00000010: 34040083
  v_or_b32      v3, 1, v1                                   // 00000014: 38060281
  s_waitcnt     lgkmcnt(0)                                  // 00000018: BF8C007F
  v_add_i32     v4, vcc, s0, v2                             // 0000001C: 4A080400
  v_lshlrev_b32  v5, 2, v3                                  // 00000020: 340A0682
  v_add_i32     v6, vcc, s0, v5                             // 00000024: 4A0C0A00
  tbuffer_load_format_x  v4, v4, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000028: EBA01000 80010404
  tbuffer_load_format_x  v6, v6, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000030: EBA01000 80010606
  s_buffer_load_dword  s0, s[12:15], 0x08                   // 00000038: C2000D08
  s_buffer_load_dword  s1, s[12:15], 0x0c                   // 0000003C: C2008D0C
  s_waitcnt     lgkmcnt(0)                                  // 00000040: BF8C007F
  v_add_i32     v2, vcc, s0, v2                             // 00000044: 4A040400
  s_waitcnt     vmcnt(0)                                    // 00000048: BF8C1F70
  ds_write_b32  v2, v4                                      // 0000004C: D8340000 00000402
  v_add_i32     v2, vcc, s0, v5                             // 00000054: 4A040A00
  s_buffer_load_dword  s2, s[12:15], 0x00                   // 00000058: C2010D00
  s_waitcnt     lgkmcnt(0)                                  // 0000005C: BF8C007F
  ds_write_b32  v2, v6                                      // 00000060: D8340000 00000602
  s_lshr_b32    s3, s1, 1                                   // 00000068: 90038101
  s_cmp_eq_i32  s3, 0                                       // 0000006C: BF008003
  s_cbranch_scc1  label_003D                                // 00000070: BF850020
  v_add_i32     v4, vcc, 2, v1                              // 00000074: 4A080282
  s_movk_i32    s12, 0x0001                                 // 00000078: B00C0001
label_001F:
  s_waitcnt     lgkmcnt(0)                                  // 0000007C: BF8C007F
  s_barrier                                                 // 00000080: BF8A0000
  v_cmp_gt_i32  s[6:7], s3, v0                              // 00000084: D1080006 00020003
  s_and_saveexec_b64  s[6:7], s[6:7]                        // 0000008C: BE862406
  v_mul_lo_i32  v6, s12, v3                                 // 00000090: D2D60006 0202060C
  s_cbranch_execz  label_0037                               // 00000098: BF880010
  v_mul_lo_i32  v7, s12, v4                                 // 0000009C: D2D60007 0202080C
  v_lshlrev_b32  v6, 2, v6                                  // 000000A4: 340C0C82
  v_lshlrev_b32  v7, 2, v7                                  // 000000A8: 340E0E82
  v_add_i32     v6, vcc, s0, v6                             // 000000AC: 4A0C0C00
  v_add_i32     v7, vcc, s0, v7                             // 000000B0: 4A0E0E00
  v_add_i32     v6, vcc, -4, v6                             // 000000B4: 4A0C0CC4
  v_add_i32     v7, vcc, -4, v7                             // 000000B8: 4A0E0EC4
  ds_read_b32   v6, v6                                      // 000000BC: D8D80000 06000006
  ds_read_b32   v8, v7                                      // 000000C4: D8D80000 08000007
  s_waitcnt     lgkmcnt(0)                                  // 000000CC: BF8C007F
  v_add_f32     v6, v6, v8                                  // 000000D0: 060C1106
  ds_write_b32  v7, v6                                      // 000000D4: D8340000 00000607
label_0037:
  s_mov_b64     exec, s[6:7]                                // 000000DC: BEFE0406
  s_lshl_b32    s12, s12, 1                                 // 000000E0: 8F0C810C
  s_ashr_i32    s3, s3, 1                                   // 000000E4: 91038103
  s_cmp_le_i32  s3, 0                                       // 000000E8: BF058003
  s_cbranch_scc0  label_001F                                // 000000EC: BF84FFE3
  s_branch      label_003E                                  // 000000F0: BF820001
label_003D:
  s_movk_i32    s12, 0x0001                                 // 000000F4: B00C0001
label_003E:
  v_cmp_eq_i32  s[4:5], v0, 0                               // 000000F8: D1040004 00010100
  s_and_saveexec_b64  s[4:5], s[4:5]                        // 00000100: BE842404
  s_cbranch_execz  label_0049                               // 00000104: BF880007
  s_lshl_b32    s6, s1, 2                                   // 00000108: 8F068201
  s_add_i32     s6, s0, s6                                  // 0000010C: 81060600
  s_add_i32     s6, -4, s6                                  // 00000110: 810606C4
  v_mov_b32     v4, s6                                      // 00000114: 7E080206
  v_mov_b32     v6, 0                                       // 00000118: 7E0C0280
  ds_write_b32  v4, v6                                      // 0000011C: D8340000 00000604
label_0049:
  s_mov_b64     exec, s[4:5]                                // 00000124: BEFE0404
  s_cmp_ge_u32  s1, 2                                       // 00000128: BF098201
  s_cbranch_scc0  label_0070                                // 0000012C: BF840024
  v_add_i32     v1, vcc, 2, v1                              // 00000130: 4A020282
  s_movk_i32    s4, 0x0001                                  // 00000134: B0040001
label_004E:
  v_cmp_gt_i32  s[6:7], s4, v0                              // 00000138: D1080006 00020004
  s_waitcnt     lgkmcnt(0)                                  // 00000140: BF8C007F
  s_barrier                                                 // 00000144: BF8A0000
  s_ashr_i32    s12, s12, 1                                 // 00000148: 910C810C
  s_and_saveexec_b64  s[6:7], s[6:7]                        // 0000014C: BE862406
  v_mul_lo_i32  v4, s12, v3                                 // 00000150: D2D60004 0202060C
  s_cbranch_execz  label_006C                               // 00000158: BF880015
  v_mul_lo_i32  v6, s12, v1                                 // 0000015C: D2D60006 0202020C
  v_lshlrev_b32  v4, 2, v4                                  // 00000164: 34080882
  v_lshlrev_b32  v6, 2, v6                                  // 00000168: 340C0C82
  v_add_i32     v4, vcc, s0, v4                             // 0000016C: 4A080800
  v_add_i32     v6, vcc, s0, v6                             // 00000170: 4A0C0C00
  v_add_i32     v4, vcc, -4, v4                             // 00000174: 4A0808C4
  v_add_i32     v6, vcc, -4, v6                             // 00000178: 4A0C0CC4
  ds_read_b32   v7, v4                                      // 0000017C: D8D80000 07000004
  ds_read_b32   v8, v6                                      // 00000184: D8D80000 08000006
  s_waitcnt     lgkmcnt(0)                                  // 0000018C: BF8C007F
  ds_write_b32  v4, v8                                      // 00000190: D8340000 00000804
  ds_read_b32   v4, v6                                      // 00000198: D8D80000 04000006
  s_waitcnt     lgkmcnt(0)                                  // 000001A0: BF8C007F
  v_add_f32     v4, v7, v4                                  // 000001A4: 06080907
  ds_write_b32  v6, v4                                      // 000001A8: D8340000 00000406
label_006C:
  s_mov_b64     exec, s[6:7]                                // 000001B0: BEFE0406
  s_lshl_b32    s4, s4, 1                                   // 000001B4: 8F048104
  s_cmp_le_u32  s1, s4                                      // 000001B8: BF0B0401
  s_cbranch_scc0  label_004E                                // 000001BC: BF84FFDE
label_0070:
  s_waitcnt     lgkmcnt(0)                                  // 000001C0: BF8C007F
  s_barrier                                                 // 000001C4: BF8A0000
  v_lshlrev_b32  v0, 3, v0                                  // 000001C8: 34000083
  v_add_i32     v1, vcc, s2, v0                             // 000001CC: 4A020002
  v_add_i32     v0, vcc, s0, v0                             // 000001D0: 4A000000
  v_add_i32     v3, vcc, s2, v5                             // 000001D4: 4A060A02
  ds_read_b32   v0, v0                                      // 000001D8: D8D80000 00000000
  ds_read_b32   v2, v2                                      // 000001E0: D8D80000 02000002
  s_waitcnt     lgkmcnt(1)                                  // 000001E8: BF8C017F
  tbuffer_store_format_x  v0, v1, s[8:11], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000001EC: EBA41000 80020001
  s_waitcnt     lgkmcnt(0)                                  // 000001F4: BF8C007F
  tbuffer_store_format_x  v2, v3, s[8:11], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000001F8: EBA41000 80020203
  s_endpgm                                                  // 00000200: BF810000