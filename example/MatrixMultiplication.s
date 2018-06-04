label_0000:
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
