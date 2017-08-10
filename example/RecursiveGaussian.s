**
** Disassembly for '__kernel transpose_kernel'
**

  s_mov_b32     m0, 0x00008000                              // 00000000: BEFC03FF 00008000
  s_buffer_load_dwordx2  s[0:1], s[4:7], 0x04               // 00000008: C2400504
  s_buffer_load_dwordx2  s[4:5], s[4:7], 0x18               // 0000000C: C2420518
  s_waitcnt     lgkmcnt(0)                                  // 00000010: BF8C007F
  s_min_u32     s1, s1, 0x0000ffff                          // 00000014: 8381FF01 0000FFFF
  s_buffer_load_dword  s6, s[8:11], 0x0c                    // 0000001C: C203090C
  s_min_u32     s0, s0, 0x0000ffff                          // 00000020: 8380FF00 0000FFFF
  v_mov_b32     v2, s1                                      // 00000028: 7E040201
  v_mov_b32     v3, s0                                      // 0000002C: 7E060200
  v_mul_i32_i24  v2, s13, v2                                // 00000030: 1204040D
  v_mul_i32_i24  v3, s12, v3                                // 00000034: 1206060C
  v_add_i32     v2, vcc, v1, v2                             // 00000038: 4A040501
  s_buffer_load_dword  s0, s[8:11], 0x04                    // 0000003C: C2000904
  v_add_i32     v3, vcc, v0, v3                             // 00000040: 4A060700
  v_add_i32     v2, vcc, s5, v2                             // 00000044: 4A040405
  v_add_i32     v3, vcc, s4, v3                             // 00000048: 4A060604
  s_waitcnt     lgkmcnt(0)                                  // 0000004C: BF8C007F
  v_mul_lo_i32  v4, v2, s6                                  // 00000050: D2D60004 02000D02
  v_add_i32     v4, vcc, v3, v4                             // 00000058: 4A080903
  v_lshlrev_b32  v4, 2, v4                                  // 0000005C: 34080882
  v_add_i32     v4, vcc, s0, v4                             // 00000060: 4A080800
  s_load_dwordx4  s[4:7], s[2:3], 0x50                      // 00000064: C0820350
  s_waitcnt     lgkmcnt(0)                                  // 00000068: BF8C007F
  tbuffer_load_format_x  v4, v4, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000006C: EBA01000 80010404
  s_buffer_load_dword  s0, s[8:11], 0x14                    // 00000074: C2000914
  s_buffer_load_dword  s1, s[8:11], 0x08                    // 00000078: C2008908
  s_waitcnt     lgkmcnt(0)                                  // 0000007C: BF8C007F
  v_mul_lo_i32  v1, v1, s0                                  // 00000080: D2D60001 02000101
  v_add_i32     v0, vcc, v0, v1                             // 00000088: 4A000300
  v_lshlrev_b32  v0, 2, v0                                  // 0000008C: 34000082
  v_add_i32     v0, vcc, s1, v0                             // 00000090: 4A000001
  s_buffer_load_dword  s0, s[8:11], 0x00                    // 00000094: C2000900
  s_buffer_load_dword  s1, s[8:11], 0x10                    // 00000098: C2008910
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 0000009C: BF8C0070
  ds_write_b32  v0, v4                                      // 000000A0: D8340000 00000400
  s_waitcnt     lgkmcnt(0)                                  // 000000A8: BF8C007F
  s_barrier                                                 // 000000AC: BF8A0000
  ds_read_b32   v0, v0                                      // 000000B0: D8D80000 00000000
  s_load_dwordx4  s[4:7], s[2:3], 0x58                      // 000000B8: C0820358
  v_mul_lo_i32  v1, v3, s1                                  // 000000BC: D2D60001 02000303
  v_add_i32     v1, vcc, v2, v1                             // 000000C4: 4A020302
  v_lshlrev_b32  v1, 2, v1                                  // 000000C8: 34020282
  v_add_i32     v1, vcc, s0, v1                             // 000000CC: 4A020200
  s_waitcnt     lgkmcnt(0)                                  // 000000D0: BF8C007F
  tbuffer_store_format_x  v0, v1, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000000D4: EBA41000 80010001
  s_endpgm                                                  // 000000DC: BF810000



**
** Disassembly for '__kernel RecursiveGaussian_kernel'
**

  s_buffer_load_dword  s0, s[4:7], 0x04                     // 00000000: C2000504
  s_buffer_load_dword  s1, s[4:7], 0x18                     // 00000004: C2008518
  s_waitcnt     lgkmcnt(0)                                  // 00000008: BF8C007F
  s_min_u32     s0, s0, 0x0000ffff                          // 0000000C: 8380FF00 0000FFFF
  s_buffer_load_dword  s4, s[8:11], 0x08                    // 00000014: C2020908
  v_mov_b32     v1, s0                                      // 00000018: 7E020200
  v_mul_i32_i24  v1, s12, v1                                // 0000001C: 1202020C
  v_add_i32     v0, vcc, v0, v1                             // 00000020: 4A000300
  v_add_i32     v0, vcc, s1, v0                             // 00000024: 4A000001
  s_buffer_load_dword  s0, s[8:11], 0x00                    // 00000028: C2000900
  s_buffer_load_dword  s1, s[8:11], 0x04                    // 0000002C: C2008904
  s_buffer_load_dword  s5, s[8:11], 0x0c                    // 00000030: C202890C
  s_buffer_load_dword  s6, s[8:11], 0x10                    // 00000034: C2030910
  s_buffer_load_dword  s7, s[8:11], 0x14                    // 00000038: C2038914
  s_buffer_load_dword  s12, s[8:11], 0x18                   // 0000003C: C2060918
  s_buffer_load_dword  s13, s[8:11], 0x1c                   // 00000040: C206891C
  s_buffer_load_dword  s14, s[8:11], 0x20                   // 00000044: C2070920
  s_buffer_load_dword  s8, s[8:11], 0x24                    // 00000048: C2040924
  s_waitcnt     lgkmcnt(0)                                  // 0000004C: BF8C007F
  v_cmp_ge_u32  s[10:11], v0, s4                            // 00000050: D18C000A 00000900
  s_mov_b64     s[16:17], exec                              // 00000058: BE90047E
  s_andn2_b64   exec, s[16:17], s[10:11]                    // 0000005C: 8AFE0A10
  s_cbranch_execz  label_0116                               // 00000060: BF8800FD
  s_load_dwordx4  s[20:23], s[2:3], 0x50                    // 00000064: C08A0350
  s_load_dwordx4  s[24:27], s[2:3], 0x58                    // 00000068: C08C0358
  s_cmp_ge_i32  s5, 1                                       // 0000006C: BF038105
  s_cbranch_scc0  label_0089                                // 00000070: BF84006C
  s_lshl_b32    s2, s4, 2                                   // 00000074: 8F028204
  v_lshlrev_b32  v1, 2, v0                                  // 00000078: 34020082
  v_sub_i32     v2, vcc, 0, v1                              // 0000007C: 4C040280
  s_mov_b64     s[10:11], exec                              // 00000080: BE8A047E
  s_mov_b64     s[18:19], exec                              // 00000084: BE92047E
  v_mov_b32     v1, s5                                      // 00000088: 7E020205
  v_mov_b32     v3, 0                                       // 0000008C: 7E060280
  v_mov_b32     v4, 0                                       // 00000090: 7E080280
  v_mov_b32     v5, 0                                       // 00000094: 7E0A0280
  v_mov_b32     v6, 0                                       // 00000098: 7E0C0280
  v_mov_b32     v7, 0                                       // 0000009C: 7E0E0280
  v_mov_b32     v8, 0                                       // 000000A0: 7E100280
  v_mov_b32     v9, 0                                       // 000000A4: 7E120280
  v_mov_b32     v10, 0                                      // 000000A8: 7E140280
  v_mov_b32     v18, 0                                      // 000000AC: 7E240280
  v_mov_b32     v20, 0                                      // 000000B0: 7E280280
  v_mov_b32     v19, 0                                      // 000000B4: 7E260280
  v_mov_b32     v21, 0                                      // 000000B8: 7E2A0280
label_002F:
  v_sub_i32     v15, vcc, s0, v2                            // 000000BC: 4C1E0400
  v_mul_f32     v11, s7, v18                                // 000000C0: 10162407
  v_mul_f32     v12, s7, v20                                // 000000C4: 10182807
  v_mul_f32     v13, s7, v19                                // 000000C8: 101A2607
  v_mul_f32     v14, s7, v21                                // 000000CC: 101C2A07
  v_sub_i32     v16, vcc, s1, v2                            // 000000D0: 4C200401
  s_mov_b32     s3, 0x0000ff00                              // 000000D4: BE8303FF 0000FF00
  s_mov_b32     s9, 0xffff0000                              // 000000DC: BE8903FF FFFF0000
  v_subrev_i32  v2, vcc, s2, v2                             // 000000E4: 4E040402
  v_add_i32     v17, vcc, -1, v1                            // 000000E8: 4A2202C1
  v_cmp_eq_i32  s[28:29], v1, 1                             // 000000EC: D104001C 00010301
  s_waitcnt     lgkmcnt(0)                                  // 000000F4: BF8C007F
  tbuffer_load_format_x  v1, v15, s[20:23], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000000F8: EBA01000 8005010F
  s_waitcnt     vmcnt(0)                                    // 00000100: BF8C1F70
  v_lshrrev_b32  v15, 24, v1                                // 00000104: 2C1E0298
  v_cvt_f32_u32  v21, v15                                   // 00000108: 7E2A0D0F
  v_and_b32     v18, 0x000000ff, v1                         // 0000010C: 362402FF 000000FF
  v_cvt_f32_u32  v18, v18                                   // 00000114: 7E240D12
  v_bfe_u32     v19, v1, 16, 8                              // 00000118: D2900013 02212101
  v_cvt_f32_u32  v19, v19                                   // 00000120: 7E260D13
  v_bfe_u32     v1, v1, 8, 8                                // 00000124: D2900001 02211101
  v_cvt_f32_u32  v20, v1                                    // 0000012C: 7E280D01
  v_mac_f32     v11, s6, v18                                // 00000130: 3E162406
  v_mac_f32     v12, s6, v20                                // 00000134: 3E182806
  v_mac_f32     v13, s6, v19                                // 00000138: 3E1A2606
  v_mac_f32     v14, s6, v21                                // 0000013C: 3E1C2A06
  v_mad_f32     v11, -s14, v7, v11                          // 00000140: D282000B 242E0E0E
  v_mad_f32     v12, -s14, v8, v12                          // 00000148: D282000C 2432100E
  v_mad_f32     v13, -s14, v9, v13                          // 00000150: D282000D 2436120E
  v_mad_f32     v14, -s14, v10, v14                         // 00000158: D282000E 243A140E
  v_mad_f32     v11, -s8, v3, v11                           // 00000160: D282000B 242E0608
  v_mad_f32     v12, -s8, v4, v12                           // 00000168: D282000C 24320808
  v_mad_f32     v13, -s8, v5, v13                           // 00000170: D282000D 24360A08
  v_mad_f32     v14, -s8, v6, v14                           // 00000178: D282000E 243A0C08
  v_cvt_u32_f32  v3, v14                                    // 00000180: 7E060F0E
  v_and_b32     v3, 0x000000ff, v3                          // 00000184: 360606FF 000000FF
  v_cvt_u32_f32  v4, v11                                    // 0000018C: 7E080F0B
  v_and_b32     v4, 0x000000ff, v4                          // 00000190: 360808FF 000000FF
  v_cvt_u32_f32  v5, v13                                    // 00000198: 7E0A0F0D
  v_and_b32     v5, 0x000000ff, v5                          // 0000019C: 360A0AFF 000000FF
  v_cvt_u32_f32  v6, v12                                    // 000001A4: 7E0C0F0C
  v_and_b32     v6, 0x000000ff, v6                          // 000001A8: 360C0CFF 000000FF
  v_lshlrev_b32  v6, 8, v6                                  // 000001B0: 340C0C88
  v_lshlrev_b32  v3, 8, v3                                  // 000001B4: 34060688
  v_bfi_b32     v4, s3, v6, v4                              // 000001B8: D2940004 04120C03
  v_bfi_b32     v3, s3, v3, v5                              // 000001C0: D2940003 04160603
  v_lshlrev_b32  v3, 16, v3                                 // 000001C8: 34060690
  v_bfi_b32     v3, s9, v3, v4                              // 000001CC: D2940003 04120609
  tbuffer_store_format_x  v3, v16, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000001D4: EBA41000 80060310
  s_and_saveexec_b64  s[28:29], s[28:29]                    // 000001DC: BE9C241C
  s_andn2_b64   s[18:19], s[18:19], exec                    // 000001E0: 8A927E12
  s_cbranch_scc0  label_0088                                // 000001E4: BF84000E
  s_andn2_b64   exec, s[28:29], exec                        // 000001E8: 8AFE7E1C
  s_mov_b64     exec, s[28:29]                              // 000001EC: BEFE041C
  s_and_b64     exec, exec, s[18:19]                        // 000001F0: 87FE127E
  v_mov_b32     v1, v17                                     // 000001F4: 7E020311
  s_waitcnt     expcnt(0)                                   // 000001F8: BF8C1F0F
  v_mov_b32     v3, v7                                      // 000001FC: 7E060307
  v_mov_b32     v4, v8                                      // 00000200: 7E080308
  v_mov_b32     v5, v9                                      // 00000204: 7E0A0309
  v_mov_b32     v6, v10                                     // 00000208: 7E0C030A
  v_mov_b32     v7, v11                                     // 0000020C: 7E0E030B
  v_mov_b32     v8, v12                                     // 00000210: 7E10030C
  v_mov_b32     v9, v13                                     // 00000214: 7E12030D
  v_mov_b32     v10, v14                                    // 00000218: 7E14030E
  s_branch      label_002F                                  // 0000021C: BF82FFA7
label_0088:
  s_mov_b64     exec, s[10:11]                              // 00000220: BEFE040A
label_0089:
  s_waitcnt     vmcnt(0) & expcnt(0)                        // 00000224: BF8C1F00
  s_barrier                                                 // 00000228: BF8A0000
  s_cmp_ge_i32  s5, 1                                       // 0000022C: BF038105
  s_cbranch_scc0  label_0116                                // 00000230: BF840089
  s_add_i32     s2, -1, s5                                  // 00000234: 810205C1
  s_mul_i32     s2, s4, s2                                  // 00000238: 93020204
  v_lshlrev_b32  v0, 2, v0                                  // 0000023C: 34000082
  s_lshl_b32    s2, s2, 2                                   // 00000240: 8F028202
  v_add_i32     v0, vcc, s2, v0                             // 00000244: 4A000002
  v_sub_i32     v0, vcc, 0, v0                              // 00000248: 4C000080
  s_lshl_b32    s2, s4, 2                                   // 0000024C: 8F028204
  s_mov_b64     s[6:7], exec                                // 00000250: BE86047E
  v_mov_b32     v1, s5                                      // 00000254: 7E020205
  v_mov_b32     v2, 0                                       // 00000258: 7E040280
  v_mov_b32     v3, 0                                       // 0000025C: 7E060280
  v_mov_b32     v4, 0                                       // 00000260: 7E080280
  v_mov_b32     v5, 0                                       // 00000264: 7E0A0280
  v_mov_b32     v6, 0                                       // 00000268: 7E0C0280
  v_mov_b32     v7, 0                                       // 0000026C: 7E0E0280
  v_mov_b32     v8, 0                                       // 00000270: 7E100280
  v_mov_b32     v9, 0                                       // 00000274: 7E120280
  v_mov_b32     v10, 0                                      // 00000278: 7E140280
  v_mov_b32     v11, 0                                      // 0000027C: 7E160280
  v_mov_b32     v12, 0                                      // 00000280: 7E180280
  v_mov_b32     v13, 0                                      // 00000284: 7E1A0280
  v_mov_b32     v14, 0                                      // 00000288: 7E1C0280
  v_mov_b32     v15, 0                                      // 0000028C: 7E1E0280
  v_mov_b32     v16, 0                                      // 00000290: 7E200280
  v_mov_b32     v17, 0                                      // 00000294: 7E220280
label_00A6:
  v_sub_i32     v18, vcc, s1, v0                            // 00000298: 4C240001
  s_waitcnt     lgkmcnt(0)                                  // 0000029C: BF8C007F
  tbuffer_load_format_x  v19, v18, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000002A0: EBA01000 80061312
  v_sub_i32     v20, vcc, s0, v0                            // 000002A8: 4C280000
  tbuffer_load_format_x  v20, v20, s[20:23], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000002AC: EBA01000 80051414
  v_mul_f32     v21, s12, v17                               // 000002B4: 102A220C
  v_mul_f32     v22, s12, v15                               // 000002B8: 102C1E0C
  v_mul_f32     v23, s12, v16                               // 000002BC: 102E200C
  v_mac_f32     v21, s13, v13                               // 000002C0: 3E2A1A0D
  s_waitcnt     vmcnt(1)                                    // 000002C4: BF8C1F71
  v_lshrrev_b32  v13, 24, v19                               // 000002C8: 2C1A2698
  v_mul_f32     v24, s12, v14                               // 000002CC: 10301C0C
  v_mac_f32     v22, s13, v11                               // 000002D0: 3E2C160D
  v_mac_f32     v23, s13, v12                               // 000002D4: 3E2E180D
  v_mad_f32     v21, -s14, v9, v21                          // 000002D8: D2820015 2456120E
  v_cvt_f32_u32  v11, v13                                   // 000002E0: 7E160D0D
  v_bfe_u32     v12, v19, 16, 8                             // 000002E4: D290000C 02212113
  v_bfe_u32     v13, v19, 8, 8                              // 000002EC: D290000D 02211113
  v_mac_f32     v24, s13, v10                               // 000002F4: 3E30140D
  v_mad_f32     v22, -s14, v7, v22                          // 000002F8: D2820016 245A0E0E
  v_mad_f32     v23, -s14, v8, v23                          // 00000300: D2820017 245E100E
  v_mad_f32     v21, -s8, v5, v21                           // 00000308: D2820015 24560A08
  v_and_b32     v5, 0x000000ff, v19                         // 00000310: 360A26FF 000000FF
  v_cvt_f32_u32  v10, v12                                   // 00000318: 7E140D0C
  v_cvt_f32_u32  v12, v13                                   // 0000031C: 7E180D0D
  v_mad_f32     v24, -s14, v6, v24                          // 00000320: D2820018 24620C0E
  v_mad_f32     v22, -s8, v3, v22                           // 00000328: D2820016 245A0608
  v_mad_f32     v23, -s8, v4, v23                           // 00000330: D2820017 245E0808
  v_add_f32     v3, v11, v21                                // 00000338: 06062B0B
  v_cvt_f32_u32  v4, v5                                     // 0000033C: 7E080D05
  v_mad_f32     v24, -s8, v2, v24                           // 00000340: D2820018 24620408
  v_add_f32     v2, v12, v22                                // 00000348: 06042D0C
  v_add_f32     v5, v10, v23                                // 0000034C: 060A2F0A
  v_cvt_u32_f32  v3, v3                                     // 00000350: 7E060F03
  v_add_f32     v4, v4, v24                                 // 00000354: 06083104
  v_and_b32     v3, 0x000000ff, v3                          // 00000358: 360606FF 000000FF
  v_cvt_u32_f32  v5, v5                                     // 00000360: 7E0A0F05
  v_cvt_u32_f32  v2, v2                                     // 00000364: 7E040F02
  v_cvt_u32_f32  v4, v4                                     // 00000368: 7E080F04
  v_and_b32     v5, 0x000000ff, v5                          // 0000036C: 360A0AFF 000000FF
  v_and_b32     v2, 0x000000ff, v2                          // 00000374: 360404FF 000000FF
  v_lshlrev_b32  v3, 8, v3                                  // 0000037C: 34060688
  s_mov_b32     s3, 0x0000ff00                              // 00000380: BE8303FF 0000FF00
  v_and_b32     v4, 0x000000ff, v4                          // 00000388: 360808FF 000000FF
  v_lshlrev_b32  v2, 8, v2                                  // 00000390: 34040488
  v_bfi_b32     v3, s3, v3, v5                              // 00000394: D2940003 04160603
  v_bfi_b32     v2, s3, v2, v4                              // 0000039C: D2940002 04120403
  v_lshlrev_b32  v3, 16, v3                                 // 000003A4: 34060690
  s_mov_b32     s3, 0xffff0000                              // 000003A8: BE8303FF FFFF0000
  v_bfi_b32     v2, s3, v3, v2                              // 000003B0: D2940002 040A0603
  s_waitcnt     vmcnt(0)                                    // 000003B8: BF8C1F70
  v_lshrrev_b32  v3, 24, v20                                // 000003BC: 2C062898
  v_and_b32     v4, 0x000000ff, v20                         // 000003C0: 360828FF 000000FF
  v_bfe_u32     v5, v20, 16, 8                              // 000003C8: D2900005 02212114
  v_bfe_u32     v10, v20, 8, 8                              // 000003D0: D290000A 02211114
  tbuffer_store_format_x  v2, v18, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000003D8: EBA41000 80060212
  s_waitcnt     expcnt(0)                                   // 000003E0: BF8C1F0F
  v_cvt_f32_u32  v2, v3                                     // 000003E4: 7E040D03
  v_cvt_f32_u32  v3, v4                                     // 000003E8: 7E060D04
  v_cvt_f32_u32  v4, v5                                     // 000003EC: 7E080D05
  v_cvt_f32_u32  v5, v10                                    // 000003F0: 7E0A0D0A
  v_add_i32     v0, vcc, s2, v0                             // 000003F4: 4A000002
  v_add_i32     v10, vcc, -1, v1                            // 000003F8: 4A1402C1
  v_cmp_eq_i32  s[4:5], v1, 1                               // 000003FC: D1040004 00010301
  s_andn2_b64   exec, exec, s[4:5]                          // 00000404: 8AFE047E
  s_cbranch_execz  label_0115                               // 00000408: BF880012
  v_mov_b32     v1, v10                                     // 0000040C: 7E02030A
  v_mov_b32     v10, v14                                    // 00000410: 7E14030E
  v_mov_b32     v11, v15                                    // 00000414: 7E16030F
  v_mov_b32     v12, v16                                    // 00000418: 7E180310
  v_mov_b32     v13, v17                                    // 0000041C: 7E1A0311
  v_mov_b32     v14, v3                                     // 00000420: 7E1C0303
  v_mov_b32     v15, v5                                     // 00000424: 7E1E0305
  v_mov_b32     v16, v4                                     // 00000428: 7E200304
  v_mov_b32     v17, v2                                     // 0000042C: 7E220302
  v_mov_b32     v2, v6                                      // 00000430: 7E040306
  v_mov_b32     v3, v7                                      // 00000434: 7E060307
  v_mov_b32     v4, v8                                      // 00000438: 7E080308
  v_mov_b32     v5, v9                                      // 0000043C: 7E0A0309
  v_mov_b32     v6, v24                                     // 00000440: 7E0C0318
  v_mov_b32     v7, v22                                     // 00000444: 7E0E0316
  v_mov_b32     v8, v23                                     // 00000448: 7E100317
  v_mov_b32     v9, v21                                     // 0000044C: 7E120315
  s_branch      label_00A6                                  // 00000450: BF82FF91
label_0115:
  s_mov_b64     exec, s[6:7]                                // 00000454: BEFE0406
label_0116:
  s_mov_b64     exec, s[16:17]                              // 00000458: BEFE0410
  s_endpgm                                                  // 0000045C: BF810000



