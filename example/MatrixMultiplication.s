`**
** Disassembly for '__kernel mmmKernel'
**

  s_buffer_load_dwordx2  s[0:1], s[4:7], 0x04               // 00000000: C2400504
  s_buffer_load_dwordx2  s[4:5], s[4:7], 0x18               // 00000004: C2420518
  s_waitcnt     lgkmcnt(0)                                  // 00000008: BF8C007F
  s_min_u32     s1, s1, 0x0000ffff                          // 0000000C: 8381FF01 0000FFFF
  s_buffer_load_dword  s6, s[8:11], 0x10                    // 00000014: C2030910
  s_min_u32     s0, s0, 0x0000ffff                          // 00000018: 8380FF00 0000FFFF
  v_mov_b32     v2, s1                                      // 00000020: 7E040201
  v_mov_b32     v3, s0                                      // 00000024: 7E060200
  v_mul_i32_i24  v2, s13, v2                                // 00000028: 1204040D
  v_mul_i32_i24  v3, s12, v3                                // 0000002C: 1206060C
  v_add_i32     v1, vcc, v1, v2                             // 00000030: 4A020501
  v_add_i32     v0, vcc, v0, v3                             // 00000034: 4A000700
  v_add_i32     v1, vcc, s5, v1                             // 00000038: 4A020205
  v_add_i32     v0, vcc, s4, v0                             // 0000003C: 4A000004
  s_buffer_load_dword  s0, s[8:11], 0x00                    // 00000040: C2000900
  s_buffer_load_dword  s1, s[8:11], 0x04                    // 00000044: C2008904
  s_buffer_load_dword  s4, s[8:11], 0x08                    // 00000048: C2020908
  s_buffer_load_dword  s5, s[8:11], 0x0c                    // 0000004C: C202890C
  s_waitcnt     lgkmcnt(0)                                  // 00000050: BF8C007F
  s_lshr_b32    s7, s6, 2                                   // 00000054: 90078206
  v_lshlrev_b32  v1, 2, v1                                  // 00000058: 34020282
  s_cmp_eq_i32  s5, 0                                       // 0000005C: BF008005
  s_cbranch_scc1  label_00C1                                // 00000060: BF8500A8
  s_lshr_b32    s8, s5, 2                                   // 00000064: 90088205
  v_or_b32      v2, 3, v1                                   // 00000068: 38040283
  v_mul_lo_i32  v3, v2, s8                                  // 0000006C: D2D60003 02001102
  v_or_b32      v61, 2, v1                                  // 00000074: 387A0282
  v_mul_lo_i32  v5, v61, s8                                 // 00000078: D2D60005 0200113D
  v_or_b32      v4, 1, v1                                   // 00000080: 38080281
  v_mul_lo_i32  v7, v4, s8                                  // 00000084: D2D60007 02001104
  s_and_b32     s9, s6, 0x0ffffffc                          // 0000008C: 8709FF06 0FFFFFFC
  s_lshl_b32    s9, s9, 4                                   // 00000094: 8F098409
  v_lshlrev_b32  v8, 4, v0                                  // 00000098: 34100084
  v_add_i32     v8, vcc, s1, v8                             // 0000009C: 4A101001
  s_lshr_b32    s1, s6, 1                                   // 000000A0: 90018106
  s_and_b32     s1, 0x7ffffffe, s1                          // 000000A4: 870101FF 7FFFFFFE
  v_mul_lo_i32  v9, v1, s8                                  // 000000AC: D2D60009 02001101
  s_load_dwordx4  s[12:15], s[2:3], 0x58                    // 000000B4: C0860358
  s_load_dwordx4  s[16:19], s[2:3], 0x50                    // 000000B8: C0880350
  s_movk_i32    s6, 0x0000                                  // 000000BC: B0060000
  v_mov_b32     v21, 0                                      // 000000C0: 7E2A0280
  v_mov_b32     v22, 0                                      // 000000C4: 7E2C0280
  v_mov_b32     v23, 0                                      // 000000C8: 7E2E0280
  v_mov_b32     v24, 0                                      // 000000CC: 7E300280
  v_mov_b32     v65, 0                                      // 000000D0: 7E820280
  v_mov_b32     v66, 0                                      // 000000D4: 7E840280
  v_mov_b32     v67, 0                                      // 000000D8: 7E860280
  v_mov_b32     v68, 0                                      // 000000DC: 7E880280
  v_mov_b32     v13, 0                                      // 000000E0: 7E1A0280
  v_mov_b32     v14, 0                                      // 000000E4: 7E1C0280
  v_mov_b32     v15, 0                                      // 000000E8: 7E1E0280
  v_mov_b32     v16, 0                                      // 000000EC: 7E200280
  v_mov_b32     v17, 0                                      // 000000F0: 7E220280
  v_mov_b32     v18, 0                                      // 000000F4: 7E240280
  v_mov_b32     v19, 0                                      // 000000F8: 7E260280
  v_mov_b32     v20, 0                                      // 000000FC: 7E280280
label_0040:
  s_lshl_b32    s8, s1, 4                                   // 00000100: 8F088401
  v_add_i32     v26, vcc, s8, v8                            // 00000104: 4A341008
  s_ashr_i32    s8, s6, 31                                  // 00000108: 91089F06
  s_lshr_b32    s8, s8, 30                                  // 0000010C: 90089E08
  s_add_i32     s8, s6, s8                                  // 00000110: 81080806
  s_ashr_i32    s8, s8, 2                                   // 00000114: 91088208
  v_add_i32     v27, vcc, s8, v3                            // 00000118: 4A360608
  v_lshlrev_b32  v27, 4, v27                                // 0000011C: 34363684
  v_add_i32     v27, vcc, s0, v27                           // 00000120: 4A363600
  s_lshl_b32    s10, s7, 4                                  // 00000124: 8F0A8407
  v_add_i32     v28, vcc, s10, v8                           // 00000128: 4A38100A
  s_mul_i32     s10, s7, 48                                 // 0000012C: 930AB007
  v_add_i32     v29, vcc, s10, v8                           // 00000130: 4A3A100A
  v_add_i32     v30, vcc, s8, v5                            // 00000134: 4A3C0A08
  v_lshlrev_b32  v30, 4, v30                                // 00000138: 343C3C84
  v_add_i32     v30, vcc, s0, v30                           // 0000013C: 4A3C3C00
  v_add_i32     v31, vcc, s8, v7                            // 00000140: 4A3E0E08
  v_lshlrev_b32  v31, 4, v31                                // 00000144: 343E3E84
  v_add_i32     v31, vcc, s0, v31                           // 00000148: 4A3E3E00
  v_add_i32     v32, vcc, s8, v9                            // 0000014C: 4A401208
  v_lshlrev_b32  v32, 4, v32                                // 00000150: 34404084
  v_add_i32     v32, vcc, s0, v32                           // 00000154: 4A404000
  s_waitcnt     lgkmcnt(0)                                  // 00000158: BF8C007F
  tbuffer_load_format_xyzw  v[33:36], v26, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 0000015C: EBF31000 8003211A
  tbuffer_load_format_xyzw  v[37:40], v27, s[16:19], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 00000164: EBF31000 8004251B
  tbuffer_load_format_xyzw  v[41:44], v28, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 0000016C: EBF31000 8003291C
  tbuffer_load_format_xyzw  v[45:48], v8, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 00000174: EBF31000 80032D08
  tbuffer_load_format_xyzw  v[26:29], v29, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 0000017C: EBF31000 80031A1D
  tbuffer_load_format_xyzw  v[49:52], v30, s[16:19], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 00000184: EBF31000 8004311E
  tbuffer_load_format_xyzw  v[53:56], v31, s[16:19], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 0000018C: EBF31000 8004351F
  tbuffer_load_format_xyzw  v[57:60], v32, s[16:19], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 00000194: EBF31000 80043920
  s_waitcnt     vmcnt(4)                                    // 0000019C: BF8C1F74
  v_mul_f32     v30, v37, v48                               // 000001A0: 103C6125
  v_mac_f32     v30, v38, v44                               // 000001A4: 3E3C5926
  v_mac_f32     v30, v36, v39                               // 000001A8: 3E3C4F24
  s_waitcnt     vmcnt(3)                                    // 000001AC: BF8C1F73
  v_mac_f32     v30, v40, v29                               // 000001B0: 3E3C3B28
  v_add_f32     v24, v24, v30                               // 000001B4: 06303D18
  v_mul_f32     v30, v37, v45                               // 000001B8: 103C5B25
  v_mac_f32     v30, v38, v41                               // 000001BC: 3E3C5326
  v_mac_f32     v30, v33, v39                               // 000001C0: 3E3C4F21
  v_mac_f32     v30, v40, v26                               // 000001C4: 3E3C3528
  v_add_f32     v21, v21, v30                               // 000001C8: 062A3D15
  v_mul_f32     v30, v37, v47                               // 000001CC: 103C5F25
  v_mac_f32     v30, v38, v43                               // 000001D0: 3E3C5726
  v_mac_f32     v30, v35, v39                               // 000001D4: 3E3C4F23
  v_mac_f32     v30, v40, v28                               // 000001D8: 3E3C3928
  v_add_f32     v23, v23, v30                               // 000001DC: 062E3D17
  v_mul_f32     v30, v37, v46                               // 000001E0: 103C5D25
  v_mac_f32     v30, v38, v42                               // 000001E4: 3E3C5526
  v_mac_f32     v30, v34, v39                               // 000001E8: 3E3C4F22
  v_mac_f32     v30, v40, v27                               // 000001EC: 3E3C3728
  v_add_f32     v22, v22, v30                               // 000001F0: 062C3D16
  s_waitcnt     vmcnt(2)                                    // 000001F4: BF8C1F72
  v_mul_f32     v30, v48, v49                               // 000001F8: 103C6330
  v_mac_f32     v30, v44, v50                               // 000001FC: 3E3C652C
  v_mac_f32     v30, v36, v51                               // 00000200: 3E3C6724
  v_mac_f32     v30, v29, v52                               // 00000204: 3E3C691D
  v_add_f32     v68, v68, v30                               // 00000208: 06883D44
  v_mul_f32     v30, v45, v49                               // 0000020C: 103C632D
  v_mac_f32     v30, v41, v50                               // 00000210: 3E3C6529
  v_mac_f32     v30, v33, v51                               // 00000214: 3E3C6721
  v_mac_f32     v30, v26, v52                               // 00000218: 3E3C691A
  v_add_f32     v65, v65, v30                               // 0000021C: 06823D41
  v_mul_f32     v30, v47, v49                               // 00000220: 103C632F
  v_mac_f32     v30, v43, v50                               // 00000224: 3E3C652B
  v_mac_f32     v30, v35, v51                               // 00000228: 3E3C6723
  v_mac_f32     v30, v28, v52                               // 0000022C: 3E3C691C
  v_add_f32     v67, v67, v30                               // 00000230: 06863D43
  v_mul_f32     v30, v46, v49                               // 00000234: 103C632E
  v_mac_f32     v30, v42, v50                               // 00000238: 3E3C652A
  v_mac_f32     v30, v34, v51                               // 0000023C: 3E3C6722
  v_mac_f32     v30, v27, v52                               // 00000240: 3E3C691B
  v_add_f32     v66, v66, v30                               // 00000244: 06843D42
  s_waitcnt     vmcnt(1)                                    // 00000248: BF8C1F71
  v_mul_f32     v30, v48, v53                               // 0000024C: 103C6B30
  v_mac_f32     v30, v44, v54                               // 00000250: 3E3C6D2C
  v_mac_f32     v30, v36, v55                               // 00000254: 3E3C6F24
  v_mac_f32     v30, v29, v56                               // 00000258: 3E3C711D
  v_add_f32     v16, v16, v30                               // 0000025C: 06203D10
  v_mul_f32     v30, v45, v53                               // 00000260: 103C6B2D
  v_mac_f32     v30, v41, v54                               // 00000264: 3E3C6D29
  v_mac_f32     v30, v33, v55                               // 00000268: 3E3C6F21
  v_mac_f32     v30, v26, v56                               // 0000026C: 3E3C711A
  v_add_f32     v13, v13, v30                               // 00000270: 061A3D0D
  v_mul_f32     v30, v47, v53                               // 00000274: 103C6B2F
  v_mac_f32     v30, v43, v54                               // 00000278: 3E3C6D2B
  v_mac_f32     v30, v35, v55                               // 0000027C: 3E3C6F23
  v_mac_f32     v30, v28, v56                               // 00000280: 3E3C711C
  v_add_f32     v15, v15, v30                               // 00000284: 061E3D0F
  v_mul_f32     v30, v46, v53                               // 00000288: 103C6B2E
  v_mac_f32     v30, v42, v54                               // 0000028C: 3E3C6D2A
  v_mac_f32     v30, v34, v55                               // 00000290: 3E3C6F22
  v_mac_f32     v30, v27, v56                               // 00000294: 3E3C711B
  v_add_f32     v14, v14, v30                               // 00000298: 061C3D0E
  s_waitcnt     vmcnt(0)                                    // 0000029C: BF8C1F70
  v_mul_f32     v30, v48, v57                               // 000002A0: 103C7330
  v_mac_f32     v30, v44, v58                               // 000002A4: 3E3C752C
  v_mac_f32     v30, v36, v59                               // 000002A8: 3E3C7724
  v_mac_f32     v30, v29, v60                               // 000002AC: 3E3C791D
  v_add_f32     v20, v20, v30                               // 000002B0: 06283D14
  v_mul_f32     v29, v45, v57                               // 000002B4: 103A732D
  v_mac_f32     v29, v41, v58                               // 000002B8: 3E3A7529
  v_mac_f32     v29, v33, v59                               // 000002BC: 3E3A7721
  v_mac_f32     v29, v26, v60                               // 000002C0: 3E3A791A
  v_add_f32     v17, v17, v29                               // 000002C4: 06223B11
  v_mul_f32     v26, v47, v57                               // 000002C8: 1034732F
  v_mac_f32     v26, v43, v58                               // 000002CC: 3E34752B
  v_mac_f32     v26, v35, v59                               // 000002D0: 3E347723
  v_mac_f32     v26, v28, v60                               // 000002D4: 3E34791C
  v_add_f32     v19, v19, v26                               // 000002D8: 06263513
  v_mul_f32     v26, v46, v57                               // 000002DC: 1034732E
  v_mac_f32     v26, v42, v58                               // 000002E0: 3E34752A
  v_mac_f32     v26, v34, v59                               // 000002E4: 3E347722
  v_mac_f32     v26, v27, v60                               // 000002E8: 3E34791B
  v_add_f32     v18, v18, v26                               // 000002EC: 06243512
  v_add_i32     v8, vcc, s9, v8                             // 000002F0: 4A101009
  s_addk_i32    s6, 0x0004                                  // 000002F4: B7860004
  s_cmp_le_u32  s5, s6                                      // 000002F8: BF0B0605
  s_cbranch_scc0  label_0040                                // 000002FC: BF84FF80
  s_branch      label_00D4                                  // 00000300: BF820013
label_00C1:
  v_or_b32      v2, 3, v1                                   // 00000304: 38040283
  v_or_b32      v61, 2, v1                                  // 00000308: 387A0282
  v_or_b32      v4, 1, v1                                   // 0000030C: 38080281
  v_mov_b32     v21, 0                                      // 00000310: 7E2A0280
  v_mov_b32     v22, 0                                      // 00000314: 7E2C0280
  v_mov_b32     v23, 0                                      // 00000318: 7E2E0280
  v_mov_b32     v24, 0                                      // 0000031C: 7E300280
  v_mov_b32     v65, 0                                      // 00000320: 7E820280
  v_mov_b32     v66, 0                                      // 00000324: 7E840280
  v_mov_b32     v67, 0                                      // 00000328: 7E860280
  v_mov_b32     v68, 0                                      // 0000032C: 7E880280
  v_mov_b32     v13, 0                                      // 00000330: 7E1A0280
  v_mov_b32     v14, 0                                      // 00000334: 7E1C0280
  v_mov_b32     v15, 0                                      // 00000338: 7E1E0280
  v_mov_b32     v16, 0                                      // 0000033C: 7E200280
  v_mov_b32     v17, 0                                      // 00000340: 7E220280
  v_mov_b32     v18, 0                                      // 00000344: 7E240280
  v_mov_b32     v19, 0                                      // 00000348: 7E260280
  v_mov_b32     v20, 0                                      // 0000034C: 7E280280
label_00D4:
  s_load_dwordx4  s[0:3], s[2:3], 0x60                      // 00000350: C0800360
  v_mul_lo_i32  v1, v1, s7                                  // 00000354: D2D60001 02000F01
  v_add_i32     v1, vcc, v0, v1                             // 0000035C: 4A020300
  v_mul_lo_i32  v4, v4, s7                                  // 00000360: D2D60004 02000F04
  v_lshlrev_b32  v1, 4, v1                                  // 00000368: 34020284
  v_add_i32     v4, vcc, v0, v4                             // 0000036C: 4A080900
  v_mul_lo_i32  v3, v61, s7                                 // 00000370: D2D60003 02000F3D
  v_add_i32     v1, vcc, s4, v1                             // 00000378: 4A020204
  v_lshlrev_b32  v4, 4, v4                                  // 0000037C: 34080884
  v_add_i32     v3, vcc, v0, v3                             // 00000380: 4A060700
  v_mul_lo_i32  v2, v2, s7                                  // 00000384: D2D60002 02000F02
  s_waitcnt     lgkmcnt(0)                                  // 0000038C: BF8C007F
  tbuffer_store_format_xyzw  v[17:20], v1, s[0:3], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 00000390: EBF71000 80001101
  v_add_i32     v1, vcc, s4, v4                             // 00000398: 4A020804
  v_lshlrev_b32  v3, 4, v3                                  // 0000039C: 34060684
  v_add_i32     v0, vcc, v0, v2                             // 000003A0: 4A000500
  tbuffer_store_format_xyzw  v[13:16], v1, s[0:3], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 000003A4: EBF71000 80000D01
  v_add_i32     v1, vcc, s4, v3                             // 000003AC: 4A020604
  v_lshlrev_b32  v0, 4, v0                                  // 000003B0: 34000084
  tbuffer_store_format_xyzw  v[65:68], v1, s[0:3], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 000003B4: EBF71000 80004101
  v_add_i32     v0, vcc, s4, v0                             // 000003BC: 4A000004
  tbuffer_store_format_xyzw  v[21:24], v0, s[0:3], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 000003C0: EBF71000 80001500
  s_endpgm                                                  // 000003C8: BF810000



**
** Disassembly for '__kernel mmmKernel_local'
**

  s_mov_b32     m0, 0x00008000                              // 00000000: BEFC03FF 00008000
  s_buffer_load_dwordx2  s[0:1], s[4:7], 0x04               // 00000008: C2400504
  s_waitcnt     lgkmcnt(0)                                  // 0000000C: BF8C007F
  v_cvt_f32_u32  v2, s0                                     // 00000010: 7E040C00
  s_buffer_load_dword  s14, s[8:11], 0x0c                   // 00000014: C207090C
  v_rcp_f32     v2, v2                                      // 00000018: 7E045502
  v_mul_f32     v2, 0x4f800000, v2                          // 0000001C: 100404FF 4F800000
  v_cvt_u32_f32  v2, v2                                     // 00000024: 7E040F02
  v_mul_lo_u32  v3, s0, v2                                  // 00000028: D2D20003 02020400
  v_mul_hi_u32  v4, s0, v2                                  // 00000030: D2D40004 02020400
  v_sub_i32     v5, vcc, 0, v3                              // 00000038: 4C0A0680
  v_cmp_ne_i32  s[16:17], v4, 0                             // 0000003C: D10A0010 00010104
  s_waitcnt     lgkmcnt(0)                                  // 00000044: BF8C007F
  s_ashr_i32    s15, s14, 31                                // 00000048: 910F9F0E
  v_cndmask_b32  v3, v5, v3, s[16:17]                       // 0000004C: D2000003 00420705
  s_lshr_b32    s15, s15, 30                                // 00000054: 900F9E0F
  v_mul_hi_u32  v3, v3, v2                                  // 00000058: D2D40003 02020503
  s_add_i32     s14, s14, s15                               // 00000060: 810E0F0E
  v_sub_i32     v4, vcc, v2, v3                             // 00000064: 4C080702
  v_add_i32     v2, vcc, v2, v3                             // 00000068: 4A040702
  s_ashr_i32    s15, s14, 2                                 // 0000006C: 910F820E
  v_cndmask_b32  v2, v2, v4, s[16:17]                       // 00000070: D2000002 00420902
  v_mul_hi_u32  v2, v2, s15                                 // 00000078: D2D40002 02001F02
  v_mul_lo_u32  v3, v2, s0                                  // 00000080: D2D20003 02000102
  s_buffer_load_dwordx2  s[16:17], s[4:7], 0x18             // 00000088: C2480518
  v_sub_i32     v4, vcc, s15, v3                            // 0000008C: 4C08060F
  s_min_u32     s18, s0, 0x0000ffff                         // 00000090: 8392FF00 0000FFFF
  s_min_u32     s1, s1, 0x0000ffff                          // 00000098: 8381FF01 0000FFFF
  v_cmp_ge_u32  s[20:21], s15, v3                           // 000000A0: D18C0014 0002060F
  v_cmp_ge_u32  s[22:23], v4, s0                            // 000000A8: D18C0016 00000104
  v_mov_b32     v5, s18                                     // 000000B0: 7E0A0212
  v_mov_b32     v6, s1                                      // 000000B4: 7E0C0201
  s_and_b64     s[18:19], s[20:21], s[22:23]                // 000000B8: 87921614
  v_mul_i32_i24  v5, s12, v5                                // 000000BC: 120A0A0C
  v_mul_i32_i24  v6, s13, v6                                // 000000C0: 120C0C0D
  v_addc_u32    v7, vcc, v2, 0, s[18:19]                    // 000000C4: D2506A07 00490102
  v_add_i32     v5, vcc, v0, v5                             // 000000CC: 4A0A0B00
  v_add_i32     v6, vcc, v1, v6                             // 000000D0: 4A0C0D01
  v_addc_u32    v7, vcc, v7, -1, s[20:21]                   // 000000D4: D2506A07 00518307
  v_cmp_ne_i32  s[12:13], s0, 0                             // 000000DC: D10A000C 00010000
  s_waitcnt     lgkmcnt(0)                                  // 000000E4: BF8C007F
  v_add_i32     v5, vcc, s16, v5                            // 000000E8: 4A0A0A10
  v_add_i32     v6, vcc, s17, v6                            // 000000EC: 4A0C0C11
  s_buffer_load_dword  s1, s[8:11], 0x00                    // 000000F0: C2008900
  s_buffer_load_dword  s16, s[8:11], 0x04                   // 000000F4: C2080904
  s_buffer_load_dword  s17, s[8:11], 0x08                   // 000000F8: C2088908
  s_buffer_load_dword  s8, s[8:11], 0x10                    // 000000FC: C2040910
  s_buffer_load_dword  s4, s[4:7], 0x00                     // 00000100: C2020500
  v_cndmask_b32  v7, -1, v7, s[12:13]                       // 00000104: D2000007 00320EC1
  v_mov_b32     v8, 0                                       // 0000010C: 7E100280
  v_cmp_ne_i32  vcc, v7, v8                                 // 00000110: 7D0A1107
  s_cbranch_vccz  label_019E                                // 00000114: BF860158
  v_mul_lo_i32  v7, s0, v1                                  // 00000118: D2D60007 02020200
  v_lshlrev_b32  v7, 2, v7                                  // 00000120: 340E0E82
  v_add_i32     v7, vcc, v0, v7                             // 00000124: 4A0E0F00
  s_lshl_b32    s5, s0, 1                                   // 00000128: 8F058100
  v_add_i32     v8, vcc, s0, v7                             // 0000012C: 4A100E00
  v_add_i32     v9, vcc, s5, v7                             // 00000130: 4A120E05
  s_mul_i32     s5, s15, 3                                  // 00000134: 9305830F
  s_lshl_b32    s6, s15, 1                                  // 00000138: 8F06810F
  s_and_b32     s7, s14, -4                                 // 0000013C: 8707C40E
  v_lshlrev_b32  v8, 4, v8                                  // 00000140: 34101084
  v_lshlrev_b32  v9, 4, v9                                  // 00000144: 34121284
  s_load_dwordx4  s[20:23], s[2:3], 0x50                    // 00000148: C08A0350
  s_load_dwordx4  s[24:27], s[2:3], 0x58                    // 0000014C: C08C0358
  s_movk_i32    s9, 0x0000                                  // 00000150: B0090000
  s_movk_i32    s10, 0x0000                                 // 00000154: B00A0000
  v_mov_b32     v75, 0                                      // 00000158: 7E960280
  v_mov_b32     v76, 0                                      // 0000015C: 7E980280
  v_mov_b32     v77, 0                                      // 00000160: 7E9A0280
  v_mov_b32     v78, 0                                      // 00000164: 7E9C0280
  v_mov_b32     v20, 0                                      // 00000168: 7E280280
  v_mov_b32     v21, 0                                      // 0000016C: 7E2A0280
  v_mov_b32     v22, 0                                      // 00000170: 7E2C0280
  v_mov_b32     v23, 0                                      // 00000174: 7E2E0280
  v_mov_b32     v10, 0                                      // 00000178: 7E140280
  v_mov_b32     v11, 0                                      // 0000017C: 7E160280
  v_mov_b32     v12, 0                                      // 00000180: 7E180280
  v_mov_b32     v13, 0                                      // 00000184: 7E1A0280
  v_mov_b32     v14, 0                                      // 00000188: 7E1C0280
  v_mov_b32     v15, 0                                      // 0000018C: 7E1E0280
  v_mov_b32     v16, 0                                      // 00000190: 7E200280
  v_mov_b32     v17, 0                                      // 00000194: 7E220280
  s_movk_i32    s11, 0x0000                                 // 00000198: B00B0000
label_0067:
  s_mul_i32     s14, s0, s11                                // 0000019C: 930E0B00
  v_mul_lo_i32  v26, s7, v6                                 // 000001A0: D2D6001A 02020C07
  v_add_i32     v27, vcc, s14, v0                           // 000001A8: 4A36000E
  v_add_i32     v26, vcc, v26, v27                          // 000001AC: 4A34371A
  v_lshlrev_b32  v27, 4, v26                                // 000001B0: 34363484
  s_waitcnt     lgkmcnt(0)                                  // 000001B4: BF8C007F
  v_add_i32     v27, vcc, s1, v27                           // 000001B8: 4A363601
  v_add_i32     v28, vcc, s15, v26                          // 000001BC: 4A38340F
  v_lshlrev_b32  v28, 4, v28                                // 000001C0: 34383884
  v_add_i32     v28, vcc, s1, v28                           // 000001C4: 4A383801
  tbuffer_load_format_xyzw  v[29:32], v27, s[20:23], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 000001C8: EBF31000 80051D1B
  v_add_i32     v27, vcc, s6, v26                           // 000001D0: 4A363406
  v_lshlrev_b32  v27, 4, v27                                // 000001D4: 34363684
  v_add_i32     v27, vcc, s1, v27                           // 000001D8: 4A363601
  tbuffer_load_format_xyzw  v[33:36], v28, s[20:23], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 000001DC: EBF31000 8005211C
  v_add_i32     v26, vcc, s5, v26                           // 000001E4: 4A343405
  v_lshlrev_b32  v26, 4, v26                                // 000001E8: 34343484
  v_add_i32     v26, vcc, s1, v26                           // 000001EC: 4A343401
  tbuffer_load_format_xyzw  v[37:40], v27, s[20:23], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 000001F0: EBF31000 8005251B
  tbuffer_load_format_xyzw  v[41:44], v26, s[20:23], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 000001F8: EBF31000 8005291A
  v_lshlrev_b32  v26, 4, v7                                 // 00000200: 34340E84
  v_add_i32     v26, vcc, s8, v26                           // 00000204: 4A343408
  s_waitcnt     vmcnt(3)                                    // 00000208: BF8C1F73
  ds_write_b32  v26, v29                                    // 0000020C: D8340000 00001D1A
  v_add_i32     v27, vcc, 4, v26                            // 00000214: 4A363484
  ds_write_b32  v27, v30                                    // 00000218: D8340000 00001E1B
  v_add_i32     v27, vcc, 8, v26                            // 00000220: 4A363488
  ds_write_b32  v27, v31                                    // 00000224: D8340000 00001F1B
  v_add_i32     v26, vcc, 12, v26                           // 0000022C: 4A34348C
  ds_write_b32  v26, v32                                    // 00000230: D8340000 0000201A
  v_add_i32     v26, vcc, s8, v8                            // 00000238: 4A341008
  s_waitcnt     vmcnt(2)                                    // 0000023C: BF8C1F72
  ds_write_b32  v26, v33                                    // 00000240: D8340000 0000211A
  v_add_i32     v27, vcc, 4, v26                            // 00000248: 4A363484
  ds_write_b32  v27, v34                                    // 0000024C: D8340000 0000221B
  v_add_i32     v27, vcc, 8, v26                            // 00000254: 4A363488
  ds_write_b32  v27, v35                                    // 00000258: D8340000 0000231B
  v_add_i32     v26, vcc, 12, v26                           // 00000260: 4A34348C
  ds_write_b32  v26, v36                                    // 00000264: D8340000 0000241A
  v_add_i32     v26, vcc, s8, v9                            // 0000026C: 4A341208
  s_waitcnt     vmcnt(1)                                    // 00000270: BF8C1F71
  ds_write_b32  v26, v37                                    // 00000274: D8340000 0000251A
  v_add_i32     v27, vcc, 4, v26                            // 0000027C: 4A363484
  s_mul_i32     s14, s0, 3                                  // 00000280: 930E8300
  ds_write_b32  v27, v38                                    // 00000284: D8340000 0000261B
  v_add_i32     v27, vcc, 8, v26                            // 0000028C: 4A363488
  v_add_i32     v28, vcc, s14, v7                           // 00000290: 4A380E0E
  ds_write_b32  v27, v39                                    // 00000294: D8340000 0000271B
  v_add_i32     v26, vcc, 12, v26                           // 0000029C: 4A34348C
  v_lshlrev_b32  v27, 4, v28                                // 000002A0: 34363884
  ds_write_b32  v26, v40                                    // 000002A4: D8340000 0000281A
  v_add_i32     v26, vcc, s8, v27                           // 000002AC: 4A343608
  s_waitcnt     vmcnt(0)                                    // 000002B0: BF8C1F70
  ds_write_b32  v26, v41                                    // 000002B4: D8340000 0000291A
  v_add_i32     v27, vcc, 4, v26                            // 000002BC: 4A363484
  ds_write_b32  v27, v42                                    // 000002C0: D8340000 00002A1B
  v_add_i32     v27, vcc, 8, v26                            // 000002C8: 4A363488
  ds_write_b32  v27, v43                                    // 000002CC: D8340000 00002B1B
  v_add_i32     v26, vcc, 12, v26                           // 000002D4: 4A34348C
  ds_write_b32  v26, v44                                    // 000002D8: D8340000 00002C1A
  s_waitcnt     lgkmcnt(0)                                  // 000002E0: BF8C007F
  s_barrier                                                 // 000002E4: BF8A0000
  s_and_b32     s14, s0, 0x3fffffff                         // 000002E8: 870EFF00 3FFFFFFF
  s_cmp_eq_i32  s14, 0                                      // 000002F0: BF00800E
  s_cbranch_scc1  label_018C                                // 000002F4: BF8500CE
  s_mul_i32     s14, s0, s10                                // 000002F8: 930E0A00
  s_add_i32     s18, s14, 1                                 // 000002FC: 8112810E
  s_add_i32     s19, s14, 2                                 // 00000300: 8113820E
  s_addk_i32    s14, 0x0003                                 // 00000304: B78E0003
  s_mul_i32     s28, s0, s4                                 // 00000308: 931C0400
  s_mul_i32     s18, s4, s18                                // 0000030C: 93121204
  s_mul_i32     s19, s4, s19                                // 00000310: 93131304
  s_mul_i32     s14, s4, s14                                // 00000314: 930E0E04
  s_mul_i32     s28, s28, s9                                // 00000318: 931C091C
  v_lshlrev_b32  v26, 2, v1                                 // 0000031C: 34340282
  v_add_i32     v27, vcc, s18, v5                           // 00000320: 4A360A12
  v_add_i32     v28, vcc, s19, v5                           // 00000324: 4A380A13
  v_add_i32     v29, vcc, s14, v5                           // 00000328: 4A3A0A0E
  v_lshlrev_b32  v30, 4, v5                                 // 0000032C: 343C0A84
  s_add_i32     s14, s16, s28                               // 00000330: 810E1C10
  s_lshl_b32    s18, s0, 2                                  // 00000334: 8F128200
  s_lshl_b32    s19, s4, 6                                  // 00000338: 8F138604
  v_or_b32      v31, 3, v26                                 // 0000033C: 383E3483
  v_or_b32      v32, 2, v26                                 // 00000340: 38403482
  v_or_b32      v33, 1, v26                                 // 00000344: 38423481
  v_lshlrev_b32  v27, 4, v27                                // 00000348: 34363684
  v_lshlrev_b32  v28, 4, v28                                // 0000034C: 34383884
  v_lshlrev_b32  v29, 4, v29                                // 00000350: 343A3A84
  s_movk_i32    s28, 0x0000                                 // 00000354: B01C0000
  s_movk_i32    s29, 0x0000                                 // 00000358: B01D0000
label_00D7:
  s_add_i32     s30, s14, s28                               // 0000035C: 811E1C0E
  s_add_i32     s31, s16, s28                               // 00000360: 811F1C10
  v_add_i32     v34, vcc, s30, v30                          // 00000364: 4A443C1E
  v_add_i32     v35, vcc, s31, v27                          // 00000368: 4A46361F
  s_add_i32     s30, s16, s28                               // 0000036C: 811E1C10
  v_add_i32     v36, vcc, s30, v28                          // 00000370: 4A48381E
  s_add_i32     s30, s16, s28                               // 00000374: 811E1C10
  v_add_i32     v37, vcc, s30, v29                          // 00000378: 4A4A3A1E
  tbuffer_load_format_xyzw  v[38:41], v34, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 0000037C: EBF31000 80062622
  tbuffer_load_format_xyzw  v[42:45], v35, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 00000384: EBF31000 80062A23
  tbuffer_load_format_xyzw  v[46:49], v36, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 0000038C: EBF31000 80062E24
  tbuffer_load_format_xyzw  v[34:37], v37, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 00000394: EBF31000 80062225
  s_ashr_i32    s30, s29, 2                                 // 0000039C: 911E821D
  v_mul_lo_i32  v50, v31, s0                                // 000003A0: D2D60032 0200011F
  v_mul_lo_i32  v51, v32, s0                                // 000003A8: D2D60033 02000120
  v_mul_lo_i32  v52, v33, s0                                // 000003B0: D2D60034 02000121
  v_mul_lo_i32  v53, v26, s0                                // 000003B8: D2D60035 0200011A
  v_add_i32     v50, vcc, s30, v50                          // 000003C0: 4A64641E
  v_add_i32     v51, vcc, s30, v51                          // 000003C4: 4A66661E
  v_add_i32     v52, vcc, s30, v52                          // 000003C8: 4A68681E
  v_add_i32     v53, vcc, s30, v53                          // 000003CC: 4A6A6A1E
  v_lshlrev_b32  v50, 4, v50                                // 000003D0: 34646484
  v_lshlrev_b32  v51, 4, v51                                // 000003D4: 34666684
  v_lshlrev_b32  v52, 4, v52                                // 000003D8: 34686884
  v_lshlrev_b32  v53, 4, v53                                // 000003DC: 346A6A84
  v_add_i32     v50, vcc, s8, v50                           // 000003E0: 4A646408
  v_add_i32     v51, vcc, s8, v51                           // 000003E4: 4A666608
  v_add_i32     v52, vcc, s8, v52                           // 000003E8: 4A686808
  v_add_i32     v53, vcc, s8, v53                           // 000003EC: 4A6A6A08
  v_add_i32     v54, vcc, 4, v50                            // 000003F0: 4A6C6484
  v_add_i32     v55, vcc, 4, v51                            // 000003F4: 4A6E6684
  v_add_i32     v56, vcc, 4, v52                            // 000003F8: 4A706884
  v_add_i32     v57, vcc, 4, v53                            // 000003FC: 4A726A84
  v_add_i32     v58, vcc, 8, v50                            // 00000400: 4A746488
  v_add_i32     v59, vcc, 8, v51                            // 00000404: 4A766688
  v_add_i32     v60, vcc, 8, v52                            // 00000408: 4A786888
  v_add_i32     v61, vcc, 8, v53                            // 0000040C: 4A7A6A88
  v_add_i32     v62, vcc, 12, v50                           // 00000410: 4A7C648C
  v_add_i32     v63, vcc, 12, v51                           // 00000414: 4A7E668C
  v_add_i32     v64, vcc, 12, v52                           // 00000418: 4A80688C
  v_add_i32     v65, vcc, 12, v53                           // 0000041C: 4A826A8C
  ds_read_b32   v50, v50                                    // 00000420: D8D80000 32000032
  ds_read_b32   v51, v51                                    // 00000428: D8D80000 33000033
  ds_read_b32   v52, v52                                    // 00000430: D8D80000 34000034
  ds_read_b32   v53, v53                                    // 00000438: D8D80000 35000035
  ds_read_b32   v54, v54                                    // 00000440: D8D80000 36000036
  ds_read_b32   v55, v55                                    // 00000448: D8D80000 37000037
  ds_read_b32   v56, v56                                    // 00000450: D8D80000 38000038
  ds_read_b32   v57, v57                                    // 00000458: D8D80000 39000039
  ds_read_b32   v58, v58                                    // 00000460: D8D80000 3A00003A
  ds_read_b32   v59, v59                                    // 00000468: D8D80000 3B00003B
  ds_read_b32   v60, v60                                    // 00000470: D8D80000 3C00003C
  ds_read_b32   v61, v61                                    // 00000478: D8D80000 3D00003D
  ds_read_b32   v62, v62                                    // 00000480: D8D80000 3E00003E
  ds_read_b32   v63, v63                                    // 00000488: D8D80000 3F00003F
  ds_read_b32   v64, v64                                    // 00000490: D8D80000 40000040
  ds_read_b32   v65, v65                                    // 00000498: D8D80000 41000041
  s_waitcnt     vmcnt(3) & lgkmcnt(15)                      // 000004A0: BF8C0F73
  v_mul_f32     v66, v50, v41                               // 000004A4: 10845332
  v_mul_f32     v67, v50, v38                               // 000004A8: 10864D32
  v_mul_f32     v68, v50, v40                               // 000004AC: 10885132
  v_mul_f32     v50, v50, v39                               // 000004B0: 10644F32
  s_waitcnt     lgkmcnt(14)                                 // 000004B4: BF8C0E7F
  v_mul_f32     v69, v41, v51                               // 000004B8: 108A6729
  v_mul_f32     v70, v38, v51                               // 000004BC: 108C6726
  v_mul_f32     v71, v40, v51                               // 000004C0: 108E6728
  v_mul_f32     v51, v39, v51                               // 000004C4: 10666727
  s_waitcnt     lgkmcnt(13)                                 // 000004C8: BF8C0D7F
  v_mul_f32     v72, v41, v52                               // 000004CC: 10906929
  v_mul_f32     v73, v38, v52                               // 000004D0: 10926926
  v_mul_f32     v74, v40, v52                               // 000004D4: 10946928
  v_mul_f32     v52, v39, v52                               // 000004D8: 10686927
  s_waitcnt     lgkmcnt(12)                                 // 000004DC: BF8C0C7F
  v_mul_f32     v41, v41, v53                               // 000004E0: 10526B29
  v_mul_f32     v38, v38, v53                               // 000004E4: 104C6B26
  v_mul_f32     v40, v40, v53                               // 000004E8: 10506B28
  v_mul_f32     v39, v39, v53                               // 000004EC: 104E6B27
  s_waitcnt     vmcnt(2) & lgkmcnt(11)                      // 000004F0: BF8C0B72
  v_mac_f32     v66, v54, v45                               // 000004F4: 3E845B36
  v_mac_f32     v67, v54, v42                               // 000004F8: 3E865536
  v_mac_f32     v68, v54, v44                               // 000004FC: 3E885936
  v_mac_f32     v50, v54, v43                               // 00000500: 3E645736
  s_waitcnt     lgkmcnt(10)                                 // 00000504: BF8C0A7F
  v_mac_f32     v69, v45, v55                               // 00000508: 3E8A6F2D
  v_mac_f32     v70, v42, v55                               // 0000050C: 3E8C6F2A
  v_mac_f32     v71, v44, v55                               // 00000510: 3E8E6F2C
  v_mac_f32     v51, v43, v55                               // 00000514: 3E666F2B
  s_waitcnt     lgkmcnt(9)                                  // 00000518: BF8C097F
  v_mac_f32     v72, v45, v56                               // 0000051C: 3E90712D
  v_mac_f32     v73, v42, v56                               // 00000520: 3E92712A
  v_mac_f32     v74, v44, v56                               // 00000524: 3E94712C
  v_mac_f32     v52, v43, v56                               // 00000528: 3E68712B
  s_waitcnt     lgkmcnt(8)                                  // 0000052C: BF8C087F
  v_mac_f32     v41, v45, v57                               // 00000530: 3E52732D
  v_mac_f32     v38, v42, v57                               // 00000534: 3E4C732A
  v_mac_f32     v40, v44, v57                               // 00000538: 3E50732C
  v_mac_f32     v39, v43, v57                               // 0000053C: 3E4E732B
  s_waitcnt     vmcnt(1) & lgkmcnt(7)                       // 00000540: BF8C0771
  v_mac_f32     v66, v58, v49                               // 00000544: 3E84633A
  v_mac_f32     v67, v58, v46                               // 00000548: 3E865D3A
  v_mac_f32     v68, v58, v48                               // 0000054C: 3E88613A
  v_mac_f32     v50, v58, v47                               // 00000550: 3E645F3A
  s_waitcnt     lgkmcnt(6)                                  // 00000554: BF8C067F
  v_mac_f32     v69, v49, v59                               // 00000558: 3E8A7731
  v_mac_f32     v70, v46, v59                               // 0000055C: 3E8C772E
  v_mac_f32     v71, v48, v59                               // 00000560: 3E8E7730
  v_mac_f32     v51, v47, v59                               // 00000564: 3E66772F
  s_waitcnt     lgkmcnt(5)                                  // 00000568: BF8C057F
  v_mac_f32     v72, v49, v60                               // 0000056C: 3E907931
  v_mac_f32     v73, v46, v60                               // 00000570: 3E92792E
  v_mac_f32     v74, v48, v60                               // 00000574: 3E947930
  v_mac_f32     v52, v47, v60                               // 00000578: 3E68792F
  s_waitcnt     lgkmcnt(4)                                  // 0000057C: BF8C047F
  v_mac_f32     v41, v49, v61                               // 00000580: 3E527B31
  v_mac_f32     v38, v46, v61                               // 00000584: 3E4C7B2E
  v_mac_f32     v40, v48, v61                               // 00000588: 3E507B30
  v_mac_f32     v39, v47, v61                               // 0000058C: 3E4E7B2F
  s_waitcnt     vmcnt(0) & lgkmcnt(3)                       // 00000590: BF8C0370
  v_mac_f32     v66, v62, v37                               // 00000594: 3E844B3E
  v_mac_f32     v67, v62, v34                               // 00000598: 3E86453E
  v_mac_f32     v68, v62, v36                               // 0000059C: 3E88493E
  v_mac_f32     v50, v62, v35                               // 000005A0: 3E64473E
  s_waitcnt     lgkmcnt(2)                                  // 000005A4: BF8C027F
  v_mac_f32     v69, v37, v63                               // 000005A8: 3E8A7F25
  v_mac_f32     v70, v34, v63                               // 000005AC: 3E8C7F22
  v_mac_f32     v71, v36, v63                               // 000005B0: 3E8E7F24
  v_mac_f32     v51, v35, v63                               // 000005B4: 3E667F23
  s_waitcnt     lgkmcnt(1)                                  // 000005B8: BF8C017F
  v_mac_f32     v72, v37, v64                               // 000005BC: 3E908125
  v_mac_f32     v73, v34, v64                               // 000005C0: 3E928122
  v_mac_f32     v74, v36, v64                               // 000005C4: 3E948124
  v_mac_f32     v52, v35, v64                               // 000005C8: 3E688123
  s_waitcnt     lgkmcnt(0)                                  // 000005CC: BF8C007F
  v_mac_f32     v41, v37, v65                               // 000005D0: 3E528325
  v_mac_f32     v38, v34, v65                               // 000005D4: 3E4C8322
  v_mac_f32     v40, v36, v65                               // 000005D8: 3E508324
  v_mac_f32     v39, v35, v65                               // 000005DC: 3E4E8323
  v_add_f32     v78, v78, v66                               // 000005E0: 069C854E
  v_add_f32     v75, v75, v67                               // 000005E4: 0696874B
  v_add_f32     v77, v77, v68                               // 000005E8: 069A894D
  v_add_f32     v76, v76, v50                               // 000005EC: 0698654C
  v_add_f32     v23, v23, v69                               // 000005F0: 062E8B17
  v_add_f32     v20, v20, v70                               // 000005F4: 06288D14
  v_add_f32     v22, v22, v71                               // 000005F8: 062C8F16
  v_add_f32     v21, v21, v51                               // 000005FC: 062A6715
  v_add_f32     v13, v13, v72                               // 00000600: 061A910D
  v_add_f32     v10, v10, v73                               // 00000604: 0614930A
  v_add_f32     v12, v12, v74                               // 00000608: 0618950C
  v_add_f32     v11, v11, v52                               // 0000060C: 0616690B
  v_add_f32     v17, v17, v41                               // 00000610: 06225311
  v_add_f32     v14, v14, v38                               // 00000614: 061C4D0E
  v_add_f32     v16, v16, v40                               // 00000618: 06205110
  v_add_f32     v15, v15, v39                               // 0000061C: 061E4F0F
  s_add_i32     s28, s19, s28                               // 00000620: 811C1C13
  s_addk_i32    s29, 0x0004                                 // 00000624: B79D0004
  s_cmp_le_u32  s18, s29                                    // 00000628: BF0B1D12
  s_cbranch_scc0  label_00D7                                // 0000062C: BF84FF4B
label_018C:
  v_cmp_ge_u32  s[18:19], s15, v3                           // 00000630: D18C0012 0002060F
  v_cmp_ge_u32  s[28:29], v4, s0                            // 00000638: D18C001C 00000104
  s_and_b64     s[28:29], s[18:19], s[28:29]                // 00000640: 879C1C12
  v_addc_u32    v26, vcc, v2, 0, s[28:29]                   // 00000644: D2506A1A 00710102
  v_addc_u32    v26, vcc, v26, -1, s[18:19]                 // 0000064C: D2506A1A 0049831A
  s_addk_i32    s11, 0x0001                                 // 00000654: B78B0001
  s_addk_i32    s9, 0x0040                                  // 00000658: B7890040
  s_addk_i32    s10, 0x0004                                 // 0000065C: B78A0004
  v_cndmask_b32  v26, -1, v26, s[12:13]                     // 00000660: D200001A 003234C1
  v_mov_b32     v27, s11                                    // 00000668: 7E36020B
  v_cmp_le_u32  vcc, v26, v27                               // 0000066C: 7D86371A
  s_cbranch_vccz  label_0067                                // 00000670: BF86FECA
  s_branch      label_01AE                                  // 00000674: BF820010
label_019E:
  v_mov_b32     v75, 0                                      // 00000678: 7E960280
  v_mov_b32     v76, 0                                      // 0000067C: 7E980280
  v_mov_b32     v77, 0                                      // 00000680: 7E9A0280
  v_mov_b32     v78, 0                                      // 00000684: 7E9C0280
  v_mov_b32     v20, 0                                      // 00000688: 7E280280
  v_mov_b32     v21, 0                                      // 0000068C: 7E2A0280
  v_mov_b32     v22, 0                                      // 00000690: 7E2C0280
  v_mov_b32     v23, 0                                      // 00000694: 7E2E0280
  v_mov_b32     v10, 0                                      // 00000698: 7E140280
  v_mov_b32     v11, 0                                      // 0000069C: 7E160280
  v_mov_b32     v12, 0                                      // 000006A0: 7E180280
  v_mov_b32     v13, 0                                      // 000006A4: 7E1A0280
  v_mov_b32     v14, 0                                      // 000006A8: 7E1C0280
  v_mov_b32     v15, 0                                      // 000006AC: 7E1E0280
  v_mov_b32     v16, 0                                      // 000006B0: 7E200280
  v_mov_b32     v17, 0                                      // 000006B4: 7E220280
label_01AE:
  s_waitcnt     lgkmcnt(0)                                  // 000006B8: BF8C007F
  v_mul_lo_i32  v6, v6, s4                                  // 000006BC: D2D60006 02000906
  s_load_dwordx4  s[0:3], s[2:3], 0x60                      // 000006C4: C0800360
  v_lshlrev_b32  v6, 2, v6                                  // 000006C8: 340C0C82
  v_add_i32     v5, vcc, v5, v6                             // 000006CC: 4A0A0D05
  v_lshlrev_b32  v6, 4, v5                                  // 000006D0: 340C0A84
  v_add_i32     v18, vcc, s4, v5                            // 000006D4: 4A240A04
  s_lshl_b32    s5, s4, 1                                   // 000006D8: 8F058104
  v_add_i32     v6, vcc, s17, v6                            // 000006DC: 4A0C0C11
  v_lshlrev_b32  v18, 4, v18                                // 000006E0: 34242484
  v_add_i32     v19, vcc, s5, v5                            // 000006E4: 4A260A05
  s_mulk_i32    s4, 0x0003                                  // 000006E8: B8040003
  s_waitcnt     lgkmcnt(0)                                  // 000006EC: BF8C007F
  tbuffer_store_format_xyzw  v[14:17], v6, s[0:3], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 000006F0: EBF71000 80000E06
  v_add_i32     v6, vcc, s17, v18                           // 000006F8: 4A0C2411
  s_waitcnt     expcnt(0)                                   // 000006FC: BF8C1F0F
  v_lshlrev_b32  v14, 4, v19                                // 00000700: 341C2684
  v_add_i32     v5, vcc, s4, v5                             // 00000704: 4A0A0A04
  tbuffer_store_format_xyzw  v[10:13], v6, s[0:3], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 00000708: EBF71000 80000A06
  v_add_i32     v6, vcc, s17, v14                           // 00000710: 4A0C1C11
  v_lshlrev_b32  v5, 4, v5                                  // 00000714: 340A0A84
  tbuffer_store_format_xyzw  v[20:23], v6, s[0:3], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 00000718: EBF71000 80001406
  v_add_i32     v4, vcc, s17, v5                            // 00000720: 4A080A11
  tbuffer_store_format_xyzw  v[75:78], v4, s[0:3], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 00000724: EBF71000 80004B04
  s_endpgm                                                  // 0000072C: BF810000



**
** Disassembly for '__kernel mmmKernel_local2'
**

  s_mov_b32     m0, 0x00008000                              // 00000000: BEFC03FF 00008000
  s_buffer_load_dwordx2  s[0:1], s[4:7], 0x04               // 00000008: C2400504
  s_waitcnt     lgkmcnt(0)                                  // 0000000C: BF8C007F
  v_cvt_f32_u32  v2, s0                                     // 00000010: 7E040C00
  s_buffer_load_dword  s14, s[8:11], 0x0c                   // 00000014: C207090C
  v_rcp_f32     v2, v2                                      // 00000018: 7E045502
  v_mul_f32     v2, 0x4f800000, v2                          // 0000001C: 100404FF 4F800000
  v_cvt_u32_f32  v2, v2                                     // 00000024: 7E040F02
  v_mul_lo_u32  v3, s0, v2                                  // 00000028: D2D20003 02020400
  v_mul_hi_u32  v4, s0, v2                                  // 00000030: D2D40004 02020400
  v_sub_i32     v5, vcc, 0, v3                              // 00000038: 4C0A0680
  v_cmp_ne_i32  s[16:17], v4, 0                             // 0000003C: D10A0010 00010104
  s_waitcnt     lgkmcnt(0)                                  // 00000044: BF8C007F
  s_ashr_i32    s15, s14, 31                                // 00000048: 910F9F0E
  v_cndmask_b32  v3, v5, v3, s[16:17]                       // 0000004C: D2000003 00420705
  s_lshr_b32    s15, s15, 30                                // 00000054: 900F9E0F
  v_mul_hi_u32  v3, v3, v2                                  // 00000058: D2D40003 02020503
  s_add_i32     s14, s14, s15                               // 00000060: 810E0F0E
  v_sub_i32     v4, vcc, v2, v3                             // 00000064: 4C080702
  v_add_i32     v2, vcc, v2, v3                             // 00000068: 4A040702
  s_ashr_i32    s14, s14, 2                                 // 0000006C: 910E820E
  v_cndmask_b32  v2, v2, v4, s[16:17]                       // 00000070: D2000002 00420902
  v_mul_hi_u32  v2, v2, s14                                 // 00000078: D2D40002 02001D02
  v_mul_lo_u32  v3, v2, s0                                  // 00000080: D2D20003 02000102
  s_buffer_load_dwordx2  s[16:17], s[4:7], 0x18             // 00000088: C2480518
  v_sub_i32     v4, vcc, s14, v3                            // 0000008C: 4C08060E
  s_min_u32     s15, s0, 0x0000ffff                         // 00000090: 838FFF00 0000FFFF
  s_min_u32     s18, s1, 0x0000ffff                         // 00000098: 8392FF01 0000FFFF
  v_cmp_ge_u32  s[20:21], s14, v3                           // 000000A0: D18C0014 0002060E
  v_cmp_ge_u32  s[22:23], v4, s0                            // 000000A8: D18C0016 00000104
  v_mov_b32     v3, s15                                     // 000000B0: 7E06020F
  v_mov_b32     v4, s18                                     // 000000B4: 7E080212
  s_and_b64     s[14:15], s[20:21], s[22:23]                // 000000B8: 878E1614
  v_mul_i32_i24  v3, s12, v3                                // 000000BC: 1206060C
  v_mul_i32_i24  v4, s13, v4                                // 000000C0: 1208080D
  v_addc_u32    v2, vcc, v2, 0, s[14:15]                    // 000000C4: D2506A02 00390102
  v_add_i32     v3, vcc, v0, v3                             // 000000CC: 4A060700
  v_add_i32     v4, vcc, v1, v4                             // 000000D0: 4A080901
  v_addc_u32    v2, vcc, v2, -1, s[20:21]                   // 000000D4: D2506A02 00518302
  v_cmp_ne_i32  s[12:13], s0, 0                             // 000000DC: D10A000C 00010000
  s_waitcnt     lgkmcnt(0)                                  // 000000E4: BF8C007F
  v_add_i32     v3, vcc, s16, v3                            // 000000E8: 4A060610
  v_add_i32     v4, vcc, s17, v4                            // 000000EC: 4A080811
  s_buffer_load_dword  s14, s[8:11], 0x00                   // 000000F0: C2070900
  s_buffer_load_dword  s15, s[8:11], 0x04                   // 000000F4: C2078904
  s_buffer_load_dword  s16, s[8:11], 0x08                   // 000000F8: C2080908
  s_buffer_load_dword  s17, s[8:11], 0x10                   // 000000FC: C2088910
  s_buffer_load_dword  s8, s[8:11], 0x14                    // 00000100: C2040914
  v_cndmask_b32  v2, -1, v2, s[12:13]                       // 00000104: D2000002 003204C1
  v_mov_b32     v5, 0                                       // 0000010C: 7E0A0280
  v_cmp_ne_i32  vcc, v2, v5                                 // 00000110: 7D0A0B02
  s_cbranch_vccz  label_01FF                                // 00000114: BF8601B9
  s_load_dwordx4  s[20:23], s[2:3], 0x50                    // 00000118: C08A0350
  s_load_dwordx4  s[24:27], s[2:3], 0x58                    // 0000011C: C08C0358
  s_movk_i32    s9, 0x0000                                  // 00000120: B0090000
  v_mov_b32     v68, 0                                      // 00000124: 7E880280
  v_mov_b32     v69, 0                                      // 00000128: 7E8A0280
  v_mov_b32     v70, 0                                      // 0000012C: 7E8C0280
  v_mov_b32     v71, 0                                      // 00000130: 7E8E0280
  v_mov_b32     v6, 0                                       // 00000134: 7E0C0280
  v_mov_b32     v7, 0                                       // 00000138: 7E0E0280
  v_mov_b32     v8, 0                                       // 0000013C: 7E100280
  v_mov_b32     v9, 0                                       // 00000140: 7E120280
  v_mov_b32     v10, 0                                      // 00000144: 7E140280
  v_mov_b32     v11, 0                                      // 00000148: 7E160280
  v_mov_b32     v12, 0                                      // 0000014C: 7E180280
  v_mov_b32     v13, 0                                      // 00000150: 7E1A0280
  v_mov_b32     v14, 0                                      // 00000154: 7E1C0280
  v_mov_b32     v15, 0                                      // 00000158: 7E1E0280
  v_mov_b32     v16, 0                                      // 0000015C: 7E200280
  v_mov_b32     v17, 0                                      // 00000160: 7E220280
label_0059:
  s_buffer_load_dword  s10, s[4:7], 0x00                    // 00000164: C2050500
  s_mul_i32     s11, s0, s9                                 // 00000168: 930B0900
  s_waitcnt     lgkmcnt(0)                                  // 0000016C: BF8C007F
  v_mul_lo_i32  v21, v4, s10                                // 00000170: D2D60015 02001504
  v_add_i32     v22, vcc, s11, v0                           // 00000178: 4A2C000B
  v_lshlrev_b32  v21, 2, v21                                // 0000017C: 342A2A82
  v_add_i32     v23, vcc, v22, v21                          // 00000180: 4A2E2B16
  v_lshlrev_b32  v23, 4, v23                                // 00000184: 342E2E84
  v_add_i32     v23, vcc, s14, v23                          // 00000188: 4A2E2E0E
  v_add_i32     v24, vcc, s10, v22                          // 0000018C: 4A302C0A
  v_add_i32     v21, vcc, v21, v24                          // 00000190: 4A2A3115
  v_lshlrev_b32  v21, 4, v21                                // 00000194: 342A2A84
  v_lshlrev_b32  v24, 2, v4                                 // 00000198: 34300882
  v_add_i32     v21, vcc, s14, v21                          // 0000019C: 4A2A2A0E
  v_or_b32      v25, 2, v24                                 // 000001A0: 38323082
  tbuffer_load_format_xyzw  v[26:29], v23, s[20:23], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 000001A4: EBF31000 80051A17
  v_mul_lo_i32  v23, v25, s10                               // 000001AC: D2D60017 02001519
  v_add_i32     v23, vcc, v22, v23                          // 000001B4: 4A2E2F16
  v_lshlrev_b32  v23, 4, v23                                // 000001B8: 342E2E84
  v_add_i32     v23, vcc, s14, v23                          // 000001BC: 4A2E2E0E
  v_or_b32      v24, 3, v24                                 // 000001C0: 38303083
  tbuffer_load_format_xyzw  v[30:33], v21, s[20:23], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 000001C4: EBF31000 80051E15
  v_mul_lo_i32  v21, v24, s10                               // 000001CC: D2D60015 02001518
  v_add_i32     v21, vcc, v22, v21                          // 000001D4: 4A2A2B16
  s_mul_i32     s11, s1, s9                                 // 000001D8: 930B0901
  v_lshlrev_b32  v21, 4, v21                                // 000001DC: 342A2A84
  v_add_i32     v22, vcc, s11, v1                           // 000001E0: 4A2C020B
  v_add_i32     v21, vcc, s14, v21                          // 000001E4: 4A2A2A0E
  v_mul_lo_i32  v24, s10, v22                               // 000001E8: D2D60018 02022C0A
  tbuffer_load_format_xyzw  v[34:37], v23, s[20:23], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 000001F0: EBF31000 80052217
  v_lshlrev_b32  v23, 2, v24                                // 000001F8: 342E3082
  v_add_i32     v24, vcc, v3, v23                           // 000001FC: 4A302F03
  v_lshlrev_b32  v24, 4, v24                                // 00000200: 34303084
  v_add_i32     v24, vcc, s15, v24                          // 00000204: 4A30300F
  tbuffer_load_format_xyzw  v[38:41], v21, s[20:23], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 00000208: EBF31000 80052615
  v_add_i32     v21, vcc, s10, v3                           // 00000210: 4A2A060A
  v_add_i32     v21, vcc, v23, v21                          // 00000214: 4A2A2B17
  v_lshlrev_b32  v21, 4, v21                                // 00000218: 342A2A84
  v_lshlrev_b32  v22, 2, v22                                // 0000021C: 342C2C82
  v_add_i32     v21, vcc, s15, v21                          // 00000220: 4A2A2A0F
  v_or_b32      v23, 2, v22                                 // 00000224: 382E2C82
  tbuffer_load_format_xyzw  v[42:45], v24, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 00000228: EBF31000 80062A18
  v_mul_lo_i32  v23, v23, s10                               // 00000230: D2D60017 02001517
  v_add_i32     v23, vcc, v3, v23                           // 00000238: 4A2E2F03
  v_lshlrev_b32  v23, 4, v23                                // 0000023C: 342E2E84
  v_add_i32     v23, vcc, s15, v23                          // 00000240: 4A2E2E0F
  v_or_b32      v22, 3, v22                                 // 00000244: 382C2C83
  tbuffer_load_format_xyzw  v[46:49], v21, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 00000248: EBF31000 80062E15
  v_mul_lo_i32  v21, v22, s10                               // 00000250: D2D60015 02001516
  v_add_i32     v21, vcc, v3, v21                           // 00000258: 4A2A2B03
  v_lshlrev_b32  v21, 4, v21                                // 0000025C: 342A2A84
  v_add_i32     v21, vcc, s15, v21                          // 00000260: 4A2A2A0F
  tbuffer_load_format_xyzw  v[22:25], v23, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 00000264: EBF31000 80061617
  tbuffer_load_format_xyzw  v[50:53], v21, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 0000026C: EBF31000 80063215
  v_mul_lo_i32  v21, s0, v1                                 // 00000274: D2D60015 02020200
  v_lshlrev_b32  v21, 2, v21                                // 0000027C: 342A2A82
  v_add_i32     v54, vcc, v0, v21                           // 00000280: 4A6C2B00
  v_lshlrev_b32  v54, 4, v54                                // 00000284: 346C6C84
  v_add_i32     v55, vcc, s17, v54                          // 00000288: 4A6E6C11
  s_waitcnt     vmcnt(7)                                    // 0000028C: BF8C1F77
  ds_write_b32  v55, v26                                    // 00000290: D8340000 00001A37
  v_add_i32     v26, vcc, 4, v55                            // 00000298: 4A346E84
  v_add_i32     v56, vcc, s0, v0                            // 0000029C: 4A700000
  ds_write_b32  v26, v27                                    // 000002A0: D8340000 00001B1A
  v_add_i32     v26, vcc, 8, v55                            // 000002A8: 4A346E88
  v_add_i32     v21, vcc, v56, v21                          // 000002AC: 4A2A2B38
  ds_write_b32  v26, v28                                    // 000002B0: D8340000 00001C1A
  v_add_i32     v26, vcc, 12, v55                           // 000002B8: 4A346E8C
  v_lshlrev_b32  v21, 4, v21                                // 000002BC: 342A2A84
  v_lshlrev_b32  v27, 2, v1                                 // 000002C0: 34360282
  ds_write_b32  v26, v29                                    // 000002C4: D8340000 00001D1A
  v_add_i32     v26, vcc, s17, v21                          // 000002CC: 4A342A11
  v_or_b32      v28, 2, v27                                 // 000002D0: 38383682
  s_waitcnt     vmcnt(6)                                    // 000002D4: BF8C1F76
  ds_write_b32  v26, v30                                    // 000002D8: D8340000 00001E1A
  v_add_i32     v29, vcc, 4, v26                            // 000002E0: 4A3A3484
  v_mul_lo_i32  v28, v28, s0                                // 000002E4: D2D6001C 0200011C
  ds_write_b32  v29, v31                                    // 000002EC: D8340000 00001F1D
  v_add_i32     v29, vcc, 8, v26                            // 000002F4: 4A3A3488
  v_add_i32     v28, vcc, v0, v28                           // 000002F8: 4A383900
  ds_write_b32  v29, v32                                    // 000002FC: D8340000 0000201D
  v_add_i32     v26, vcc, 12, v26                           // 00000304: 4A34348C
  v_lshlrev_b32  v28, 4, v28                                // 00000308: 34383884
  ds_write_b32  v26, v33                                    // 0000030C: D8340000 0000211A
  v_add_i32     v26, vcc, s17, v28                          // 00000314: 4A343811
  v_or_b32      v29, 3, v27                                 // 00000318: 383A3683
  s_waitcnt     vmcnt(5)                                    // 0000031C: BF8C1F75
  ds_write_b32  v26, v34                                    // 00000320: D8340000 0000221A
  v_add_i32     v30, vcc, 4, v26                            // 00000328: 4A3C3484
  v_mul_lo_i32  v29, v29, s0                                // 0000032C: D2D6001D 0200011D
  ds_write_b32  v30, v35                                    // 00000334: D8340000 0000231E
  v_add_i32     v30, vcc, 8, v26                            // 0000033C: 4A3C3488
  v_add_i32     v31, vcc, v0, v29                           // 00000340: 4A3E3B00
  ds_write_b32  v30, v36                                    // 00000344: D8340000 0000241E
  v_add_i32     v26, vcc, 12, v26                           // 0000034C: 4A34348C
  v_lshlrev_b32  v30, 4, v31                                // 00000350: 343C3E84
  ds_write_b32  v26, v37                                    // 00000354: D8340000 0000251A
  v_add_i32     v26, vcc, s17, v30                          // 0000035C: 4A343C11
  s_waitcnt     vmcnt(4)                                    // 00000360: BF8C1F74
  ds_write_b32  v26, v38                                    // 00000364: D8340000 0000261A
  v_add_i32     v31, vcc, 4, v26                            // 0000036C: 4A3E3484
  ds_write_b32  v31, v39                                    // 00000370: D8340000 0000271F
  v_add_i32     v31, vcc, 8, v26                            // 00000378: 4A3E3488
  ds_write_b32  v31, v40                                    // 0000037C: D8340000 0000281F
  v_add_i32     v26, vcc, 12, v26                           // 00000384: 4A34348C
  ds_write_b32  v26, v41                                    // 00000388: D8340000 0000291A
  v_add_i32     v26, vcc, s8, v54                           // 00000390: 4A346C08
  s_waitcnt     vmcnt(3)                                    // 00000394: BF8C1F73
  ds_write_b32  v26, v42                                    // 00000398: D8340000 00002A1A
  v_add_i32     v31, vcc, 4, v26                            // 000003A0: 4A3E3484
  ds_write_b32  v31, v43                                    // 000003A4: D8340000 00002B1F
  v_add_i32     v31, vcc, 8, v26                            // 000003AC: 4A3E3488
  ds_write_b32  v31, v44                                    // 000003B0: D8340000 00002C1F
  v_add_i32     v26, vcc, 12, v26                           // 000003B8: 4A34348C
  ds_write_b32  v26, v45                                    // 000003BC: D8340000 00002D1A
  v_add_i32     v21, vcc, s8, v21                           // 000003C4: 4A2A2A08
  s_waitcnt     vmcnt(2)                                    // 000003C8: BF8C1F72
  ds_write_b32  v21, v46                                    // 000003CC: D8340000 00002E15
  v_add_i32     v26, vcc, 4, v21                            // 000003D4: 4A342A84
  ds_write_b32  v26, v47                                    // 000003D8: D8340000 00002F1A
  v_add_i32     v26, vcc, 8, v21                            // 000003E0: 4A342A88
  ds_write_b32  v26, v48                                    // 000003E4: D8340000 0000301A
  v_add_i32     v21, vcc, 12, v21                           // 000003EC: 4A2A2A8C
  ds_write_b32  v21, v49                                    // 000003F0: D8340000 00003115
  v_add_i32     v21, vcc, s8, v28                           // 000003F8: 4A2A3808
  s_waitcnt     vmcnt(1)                                    // 000003FC: BF8C1F71
  ds_write_b32  v21, v22                                    // 00000400: D8340000 00001615
  v_add_i32     v22, vcc, 4, v21                            // 00000408: 4A2C2A84
  ds_write_b32  v22, v23                                    // 0000040C: D8340000 00001716
  v_add_i32     v22, vcc, 8, v21                            // 00000414: 4A2C2A88
  ds_write_b32  v22, v24                                    // 00000418: D8340000 00001816
  v_add_i32     v21, vcc, 12, v21                           // 00000420: 4A2A2A8C
  ds_write_b32  v21, v25                                    // 00000424: D8340000 00001915
  v_add_i32     v21, vcc, s8, v30                           // 0000042C: 4A2A3C08
  s_waitcnt     vmcnt(0)                                    // 00000430: BF8C1F70
  ds_write_b32  v21, v50                                    // 00000434: D8340000 00003215
  v_add_i32     v22, vcc, 4, v21                            // 0000043C: 4A2C2A84
  ds_write_b32  v22, v51                                    // 00000440: D8340000 00003316
  v_add_i32     v22, vcc, 8, v21                            // 00000448: 4A2C2A88
  ds_write_b32  v22, v52                                    // 0000044C: D8340000 00003416
  v_add_i32     v21, vcc, 12, v21                           // 00000454: 4A2A2A8C
  ds_write_b32  v21, v53                                    // 00000458: D8340000 00003515
  s_waitcnt     lgkmcnt(0)                                  // 00000460: BF8C007F
  s_barrier                                                 // 00000464: BF8A0000
  s_and_b32     s10, s0, 0x3fffffff                         // 00000468: 870AFF00 3FFFFFFF
  s_cmp_eq_i32  s10, 0                                      // 00000470: BF00800A
  s_cbranch_scc1  label_01FA                                // 00000474: BF8500DC
  s_lshl_b32    s10, s0, 6                                  // 00000478: 8F0A8600
  s_lshl_b32    s11, s0, 2                                  // 0000047C: 8F0B8200
  v_lshlrev_b32  v21, 4, v0                                 // 00000480: 342A0084
  v_add_i32     v67, vcc, s8, v21                           // 00000484: 4A862A08
  v_or_b32      v22, 2, v27                                 // 00000488: 382C3682
  v_or_b32      v23, 1, v27                                 // 0000048C: 382E3681
  s_movk_i32    s12, 0x0000                                 // 00000490: B00C0000
label_0125:
  s_ashr_i32    s13, s12, 2                                 // 00000494: 910D820C
  v_mul_lo_i32  v24, v22, s0                                // 00000498: D2D60018 02000116
  v_mul_lo_i32  v25, v23, s0                                // 000004A0: D2D60019 02000117
  v_mul_lo_i32  v26, v27, s0                                // 000004A8: D2D6001A 0200011B
  v_add_i32     v28, vcc, s13, v29                          // 000004B0: 4A383A0D
  v_add_i32     v24, vcc, s13, v24                          // 000004B4: 4A30300D
  v_add_i32     v25, vcc, s13, v25                          // 000004B8: 4A32320D
  v_add_i32     v26, vcc, s13, v26                          // 000004BC: 4A34340D
  v_lshlrev_b32  v28, 4, v28                                // 000004C0: 34383884
  s_lshl_b32    s13, s0, 4                                  // 000004C4: 8F0D8400
  v_lshlrev_b32  v24, 4, v24                                // 000004C8: 34303084
  v_lshlrev_b32  v25, 4, v25                                // 000004CC: 34323284
  v_lshlrev_b32  v26, 4, v26                                // 000004D0: 34343484
  v_add_i32     v28, vcc, s17, v28                          // 000004D4: 4A383811
  v_add_i32     v30, vcc, s13, v67                          // 000004D8: 4A3C860D
  v_add_i32     v31, vcc, 4, v67                            // 000004DC: 4A3E8684
  v_add_i32     v32, vcc, 8, v67                            // 000004E0: 4A408688
  v_add_i32     v33, vcc, 12, v67                           // 000004E4: 4A42868C
  s_lshl_b32    s13, s0, 5                                  // 000004E8: 8F0D8500
  v_add_i32     v24, vcc, s17, v24                          // 000004EC: 4A303011
  v_add_i32     v25, vcc, s17, v25                          // 000004F0: 4A323211
  v_add_i32     v26, vcc, s17, v26                          // 000004F4: 4A343411
  v_add_i32     v34, vcc, 4, v28                            // 000004F8: 4A443884
  v_add_i32     v35, vcc, 4, v30                            // 000004FC: 4A463C84
  v_add_i32     v36, vcc, 8, v30                            // 00000500: 4A483C88
  v_add_i32     v37, vcc, 12, v30                           // 00000504: 4A4A3C8C
  v_add_i32     v38, vcc, s13, v67                          // 00000508: 4A4C860D
  s_mul_i32     s13, s0, 48                                 // 0000050C: 930DB000
  v_add_i32     v39, vcc, 4, v24                            // 00000510: 4A4E3084
  v_add_i32     v40, vcc, 4, v25                            // 00000514: 4A503284
  v_add_i32     v41, vcc, 4, v26                            // 00000518: 4A523484
  v_add_i32     v42, vcc, 8, v28                            // 0000051C: 4A543888
  v_add_i32     v43, vcc, 4, v38                            // 00000520: 4A564C84
  v_add_i32     v44, vcc, 8, v38                            // 00000524: 4A584C88
  v_add_i32     v45, vcc, 12, v38                           // 00000528: 4A5A4C8C
  v_add_i32     v46, vcc, s13, v67                          // 0000052C: 4A5C860D
  v_add_i32     v47, vcc, 8, v24                            // 00000530: 4A5E3088
  v_add_i32     v48, vcc, 8, v25                            // 00000534: 4A603288
  v_add_i32     v49, vcc, 8, v26                            // 00000538: 4A623488
  v_add_i32     v50, vcc, 12, v28                           // 0000053C: 4A64388C
  v_add_i32     v51, vcc, 4, v46                            // 00000540: 4A665C84
  v_add_i32     v52, vcc, 8, v46                            // 00000544: 4A685C88
  v_add_i32     v53, vcc, 12, v46                           // 00000548: 4A6A5C8C
  v_add_i32     v54, vcc, 12, v24                           // 0000054C: 4A6C308C
  v_add_i32     v55, vcc, 12, v25                           // 00000550: 4A6E328C
  v_add_i32     v56, vcc, 12, v26                           // 00000554: 4A70348C
  ds_read_b32   v28, v28                                    // 00000558: D8D80000 1C00001C
  ds_read_b32   v57, v67                                    // 00000560: D8D80000 39000043
  ds_read_b32   v31, v31                                    // 00000568: D8D80000 1F00001F
  ds_read_b32   v32, v32                                    // 00000570: D8D80000 20000020
  ds_read_b32   v33, v33                                    // 00000578: D8D80000 21000021
  ds_read_b32   v24, v24                                    // 00000580: D8D80000 18000018
  ds_read_b32   v25, v25                                    // 00000588: D8D80000 19000019
  ds_read_b32   v26, v26                                    // 00000590: D8D80000 1A00001A
  ds_read_b32   v34, v34                                    // 00000598: D8D80000 22000022
  ds_read_b32   v30, v30                                    // 000005A0: D8D80000 1E00001E
  ds_read_b32   v35, v35                                    // 000005A8: D8D80000 23000023
  ds_read_b32   v36, v36                                    // 000005B0: D8D80000 24000024
  ds_read_b32   v37, v37                                    // 000005B8: D8D80000 25000025
  ds_read_b32   v39, v39                                    // 000005C0: D8D80000 27000027
  ds_read_b32   v40, v40                                    // 000005C8: D8D80000 28000028
  ds_read_b32   v41, v41                                    // 000005D0: D8D80000 29000029
  ds_read_b32   v42, v42                                    // 000005D8: D8D80000 2A00002A
  ds_read_b32   v38, v38                                    // 000005E0: D8D80000 26000026
  ds_read_b32   v43, v43                                    // 000005E8: D8D80000 2B00002B
  ds_read_b32   v44, v44                                    // 000005F0: D8D80000 2C00002C
  ds_read_b32   v45, v45                                    // 000005F8: D8D80000 2D00002D
  ds_read_b32   v47, v47                                    // 00000600: D8D80000 2F00002F
  ds_read_b32   v48, v48                                    // 00000608: D8D80000 30000030
  ds_read_b32   v49, v49                                    // 00000610: D8D80000 31000031
  ds_read_b32   v50, v50                                    // 00000618: D8D80000 32000032
  ds_read_b32   v46, v46                                    // 00000620: D8D80000 2E00002E
  ds_read_b32   v51, v51                                    // 00000628: D8D80000 33000033
  ds_read_b32   v52, v52                                    // 00000630: D8D80000 34000034
  ds_read_b32   v53, v53                                    // 00000638: D8D80000 35000035
  ds_read_b32   v54, v54                                    // 00000640: D8D80000 36000036
  ds_read_b32   v55, v55                                    // 00000648: D8D80000 37000037
  ds_read_b32   v56, v56                                    // 00000650: D8D80000 38000038
  s_waitcnt     lgkmcnt(27)                                 // 00000658: BF8C1B7F
  v_mul_f32     v58, v28, v33                               // 0000065C: 1074431C
  v_mul_f32     v59, v28, v57                               // 00000660: 1076731C
  v_mul_f32     v60, v28, v32                               // 00000664: 1078411C
  v_mul_f32     v28, v28, v31                               // 00000668: 10383F1C
  s_waitcnt     lgkmcnt(26)                                 // 0000066C: BF8C1A7F
  v_mul_f32     v61, v33, v24                               // 00000670: 107A3121
  v_mul_f32     v62, v57, v24                               // 00000674: 107C3139
  v_mul_f32     v63, v32, v24                               // 00000678: 107E3120
  v_mul_f32     v24, v31, v24                               // 0000067C: 1030311F
  s_waitcnt     lgkmcnt(25)                                 // 00000680: BF8C197F
  v_mul_f32     v64, v33, v25                               // 00000684: 10803321
  v_mul_f32     v65, v57, v25                               // 00000688: 10823339
  v_mul_f32     v66, v32, v25                               // 0000068C: 10843320
  v_mul_f32     v25, v31, v25                               // 00000690: 1032331F
  s_waitcnt     lgkmcnt(24)                                 // 00000694: BF8C187F
  v_mul_f32     v33, v33, v26                               // 00000698: 10423521
  v_mul_f32     v57, v57, v26                               // 0000069C: 10723539
  v_mul_f32     v32, v32, v26                               // 000006A0: 10403520
  v_mul_f32     v26, v31, v26                               // 000006A4: 1034351F
  s_waitcnt     lgkmcnt(19)                                 // 000006A8: BF8C137F
  v_mac_f32     v58, v34, v37                               // 000006AC: 3E744B22
  v_mac_f32     v59, v34, v30                               // 000006B0: 3E763D22
  v_mac_f32     v60, v34, v36                               // 000006B4: 3E784922
  v_mac_f32     v28, v34, v35                               // 000006B8: 3E384722
  s_waitcnt     lgkmcnt(18)                                 // 000006BC: BF8C127F
  v_mac_f32     v61, v37, v39                               // 000006C0: 3E7A4F25
  v_mac_f32     v62, v30, v39                               // 000006C4: 3E7C4F1E
  v_mac_f32     v63, v36, v39                               // 000006C8: 3E7E4F24
  v_mac_f32     v24, v35, v39                               // 000006CC: 3E304F23
  s_waitcnt     lgkmcnt(17)                                 // 000006D0: BF8C117F
  v_mac_f32     v64, v37, v40                               // 000006D4: 3E805125
  v_mac_f32     v65, v30, v40                               // 000006D8: 3E82511E
  v_mac_f32     v66, v36, v40                               // 000006DC: 3E845124
  v_mac_f32     v25, v35, v40                               // 000006E0: 3E325123
  s_waitcnt     lgkmcnt(16)                                 // 000006E4: BF8C107F
  v_mac_f32     v33, v37, v41                               // 000006E8: 3E425325
  v_mac_f32     v57, v30, v41                               // 000006EC: 3E72531E
  v_mac_f32     v32, v36, v41                               // 000006F0: 3E405324
  v_mac_f32     v26, v35, v41                               // 000006F4: 3E345323
  s_waitcnt     lgkmcnt(11)                                 // 000006F8: BF8C0B7F
  v_mac_f32     v58, v42, v45                               // 000006FC: 3E745B2A
  v_mac_f32     v59, v42, v38                               // 00000700: 3E764D2A
  v_mac_f32     v60, v42, v44                               // 00000704: 3E78592A
  v_mac_f32     v28, v42, v43                               // 00000708: 3E38572A
  s_waitcnt     lgkmcnt(10)                                 // 0000070C: BF8C0A7F
  v_mac_f32     v61, v45, v47                               // 00000710: 3E7A5F2D
  v_mac_f32     v62, v38, v47                               // 00000714: 3E7C5F26
  v_mac_f32     v63, v44, v47                               // 00000718: 3E7E5F2C
  v_mac_f32     v24, v43, v47                               // 0000071C: 3E305F2B
  s_waitcnt     lgkmcnt(9)                                  // 00000720: BF8C097F
  v_mac_f32     v64, v45, v48                               // 00000724: 3E80612D
  v_mac_f32     v65, v38, v48                               // 00000728: 3E826126
  v_mac_f32     v66, v44, v48                               // 0000072C: 3E84612C
  v_mac_f32     v25, v43, v48                               // 00000730: 3E32612B
  s_waitcnt     lgkmcnt(8)                                  // 00000734: BF8C087F
  v_mac_f32     v33, v45, v49                               // 00000738: 3E42632D
  v_mac_f32     v57, v38, v49                               // 0000073C: 3E726326
  v_mac_f32     v32, v44, v49                               // 00000740: 3E40632C
  v_mac_f32     v26, v43, v49                               // 00000744: 3E34632B
  s_waitcnt     lgkmcnt(3)                                  // 00000748: BF8C037F
  v_mac_f32     v58, v50, v53                               // 0000074C: 3E746B32
  v_mac_f32     v59, v50, v46                               // 00000750: 3E765D32
  v_mac_f32     v60, v50, v52                               // 00000754: 3E786932
  v_mac_f32     v28, v50, v51                               // 00000758: 3E386732
  s_waitcnt     lgkmcnt(2)                                  // 0000075C: BF8C027F
  v_mac_f32     v61, v53, v54                               // 00000760: 3E7A6D35
  v_mac_f32     v62, v46, v54                               // 00000764: 3E7C6D2E
  v_mac_f32     v63, v52, v54                               // 00000768: 3E7E6D34
  v_mac_f32     v24, v51, v54                               // 0000076C: 3E306D33
  s_waitcnt     lgkmcnt(1)                                  // 00000770: BF8C017F
  v_mac_f32     v64, v53, v55                               // 00000774: 3E806F35
  v_mac_f32     v65, v46, v55                               // 00000778: 3E826F2E
  v_mac_f32     v66, v52, v55                               // 0000077C: 3E846F34
  v_mac_f32     v25, v51, v55                               // 00000780: 3E326F33
  s_waitcnt     lgkmcnt(0)                                  // 00000784: BF8C007F
  v_mac_f32     v33, v53, v56                               // 00000788: 3E427135
  v_mac_f32     v57, v46, v56                               // 0000078C: 3E72712E
  v_mac_f32     v32, v52, v56                               // 00000790: 3E407134
  v_mac_f32     v26, v51, v56                               // 00000794: 3E347133
  v_add_f32     v71, v71, v58                               // 00000798: 068E7547
  v_add_f32     v68, v68, v59                               // 0000079C: 06887744
  v_add_f32     v70, v70, v60                               // 000007A0: 068C7946
  v_add_f32     v69, v69, v28                               // 000007A4: 068A3945
  v_add_f32     v9, v9, v61                                 // 000007A8: 06127B09
  v_add_f32     v6, v6, v62                                 // 000007AC: 060C7D06
  v_add_f32     v8, v8, v63                                 // 000007B0: 06107F08
  v_add_f32     v7, v7, v24                                 // 000007B4: 060E3107
  v_add_f32     v13, v13, v64                               // 000007B8: 061A810D
  v_add_f32     v10, v10, v65                               // 000007BC: 0614830A
  v_add_f32     v12, v12, v66                               // 000007C0: 0618850C
  v_add_f32     v11, v11, v25                               // 000007C4: 0616330B
  v_add_f32     v17, v17, v33                               // 000007C8: 06224311
  v_add_f32     v14, v14, v57                               // 000007CC: 061C730E
  v_add_f32     v16, v16, v32                               // 000007D0: 06204110
  v_add_f32     v15, v15, v26                               // 000007D4: 061E350F
  v_add_i32     v67, vcc, s10, v67                          // 000007D8: 4A86860A
  s_addk_i32    s12, 0x0004                                 // 000007DC: B78C0004
  s_cmp_le_u32  s11, s12                                    // 000007E0: BF0B0C0B
  s_cbranch_scc0  label_0125                                // 000007E4: BF84FF2B
label_01FA:
  s_addk_i32    s9, 0x0001                                  // 000007E8: B7890001
  v_mov_b32     v21, s9                                     // 000007EC: 7E2A0209
  v_cmp_le_u32  vcc, v2, v21                                // 000007F0: 7D862B02
  s_cbranch_vccz  label_0059                                // 000007F4: BF86FE5B
  s_branch      label_020F                                  // 000007F8: BF820010
label_01FF:
  v_mov_b32     v68, 0                                      // 000007FC: 7E880280
  v_mov_b32     v69, 0                                      // 00000800: 7E8A0280
  v_mov_b32     v70, 0                                      // 00000804: 7E8C0280
  v_mov_b32     v71, 0                                      // 00000808: 7E8E0280
  v_mov_b32     v6, 0                                       // 0000080C: 7E0C0280
  v_mov_b32     v7, 0                                       // 00000810: 7E0E0280
  v_mov_b32     v8, 0                                       // 00000814: 7E100280
  v_mov_b32     v9, 0                                       // 00000818: 7E120280
  v_mov_b32     v10, 0                                      // 0000081C: 7E140280
  v_mov_b32     v11, 0                                      // 00000820: 7E160280
  v_mov_b32     v12, 0                                      // 00000824: 7E180280
  v_mov_b32     v13, 0                                      // 00000828: 7E1A0280
  v_mov_b32     v14, 0                                      // 0000082C: 7E1C0280
  v_mov_b32     v15, 0                                      // 00000830: 7E1E0280
  v_mov_b32     v16, 0                                      // 00000834: 7E200280
  v_mov_b32     v17, 0                                      // 00000838: 7E220280
label_020F:
  s_buffer_load_dword  s0, s[4:7], 0x00                     // 0000083C: C2000500
  s_waitcnt     lgkmcnt(0)                                  // 00000840: BF8C007F
  v_mul_lo_i32  v18, v4, s0                                 // 00000844: D2D60012 02000104
  s_load_dwordx4  s[4:7], s[2:3], 0x60                      // 0000084C: C0820360
  v_lshlrev_b32  v18, 2, v18                                // 00000850: 34242482
  v_lshlrev_b32  v4, 2, v4                                  // 00000854: 34080882
  v_add_i32     v19, vcc, v3, v18                           // 00000858: 4A262503
  v_add_i32     v20, vcc, s0, v3                            // 0000085C: 4A280600
  v_or_b32      v21, 2, v4                                  // 00000860: 382A0882
  v_lshlrev_b32  v19, 4, v19                                // 00000864: 34262684
  v_add_i32     v18, vcc, v18, v20                          // 00000868: 4A242912
  v_mul_lo_i32  v20, v21, s0                                // 0000086C: D2D60014 02000115
  v_or_b32      v4, 3, v4                                   // 00000874: 38080883
  v_add_i32     v19, vcc, s16, v19                          // 00000878: 4A262610
  v_lshlrev_b32  v18, 4, v18                                // 0000087C: 34242484
  v_add_i32     v20, vcc, v3, v20                           // 00000880: 4A282903
  v_mul_lo_i32  v4, v4, s0                                  // 00000884: D2D60004 02000104
  s_waitcnt     lgkmcnt(0)                                  // 0000088C: BF8C007F
  tbuffer_store_format_xyzw  v[14:17], v19, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 00000890: EBF71000 80010E13
  s_waitcnt     expcnt(0)                                   // 00000898: BF8C1F0F
  v_add_i32     v14, vcc, s16, v18                          // 0000089C: 4A1C2410
  v_lshlrev_b32  v15, 4, v20                                // 000008A0: 341E2884
  v_add_i32     v3, vcc, v3, v4                             // 000008A4: 4A060903
  tbuffer_store_format_xyzw  v[10:13], v14, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 000008A8: EBF71000 80010A0E
  v_add_i32     v4, vcc, s16, v15                           // 000008B0: 4A081E10
  v_lshlrev_b32  v3, 4, v3                                  // 000008B4: 34060684
  tbuffer_store_format_xyzw  v[6:9], v4, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 000008B8: EBF71000 80010604
  v_add_i32     v3, vcc, s16, v3                            // 000008C0: 4A060610
  tbuffer_store_format_xyzw  v[68:71], v3, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 000008C4: EBF71000 80014403
  s_endpgm                                                  // 000008CC: BF810000



