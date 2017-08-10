label_0000:
  s_buffer_load_dwordx2  s[0:1], s[4:7], 0x04               // 00000000: C2400504
  s_buffer_load_dwordx2  s[4:5], s[4:7], 0x18               // 00000004: C2420518
  s_buffer_load_dwordx4  s[20:23], s[8:11], 0x00            // 00000008: C28A0900
  s_buffer_load_dwordx4  s[24:27], s[8:11], 0x04            // 0000000C: C28C0904
  s_buffer_load_dwordx4  s[28:31], s[8:11], 0x08            // 00000010: C28E0908
  s_buffer_load_dwordx4  s[32:35], s[8:11], 0x0c            // 00000014: C290090C
  s_buffer_load_dwordx4  s[36:39], s[8:11], 0x10            // 00000018: C2920910
  s_waitcnt     lgkmcnt(0)                                  // 0000001C: BF8C007F
  s_min_u32     s0, s0, 0x0000ffff                          // 00000020: 8380FF00 0000FFFF
  s_min_u32     s1, s1, 0x0000ffff                          // 00000028: 8381FF01 0000FFFF
  s_buffer_load_dwordx4  s[40:43], s[8:11], 0x14            // 00000030: C2940914
  v_mov_b32     v2, s0                                      // 00000034: 7E040200
  v_mul_i32_i24  v2, s16, v2                                // 00000038: 12040410
  v_mov_b32     v3, s1                                      // 0000003C: 7E060201
  v_mul_i32_i24  v3, s17, v3                                // 00000040: 12060611
  v_add_i32     v0, vcc, v0, v2                             // 00000044: 4A000500
  v_add_i32     v1, vcc, v1, v3                             // 00000048: 4A020701
  v_add_i32     v0, vcc, s4, v0                             // 0000004C: 4A000004
  v_add_i32     v1, vcc, s5, v1                             // 00000050: 4A020205
  s_buffer_load_dwordx4  s[4:7], s[8:11], 0x18              // 00000054: C2820918
  s_buffer_load_dword  s0, s[8:11], 0x1c                    // 00000058: C200091C
  s_buffer_load_dword  s1, s[8:11], 0x20                    // 0000005C: C2008920
  s_waitcnt     lgkmcnt(0)                                  // 00000060: BF8C007F
  v_mul_lo_i32  v1, v1, s1                                  // 00000064: D2D60001 02000301
  v_add_i32     v0, vcc, v0, v1                             // 0000006C: 4A000300
  s_buffer_load_dword  s1, s[8:11], 0x24                    // 00000070: C2008924
  s_buffer_load_dword  s16, s[8:11], 0x28                   // 00000074: C2080928
  s_buffer_load_dword  s8, s[8:11], 0x2c                    // 00000078: C204092C
  s_cmp_ge_i32  s0, 2                                       // 0000007C: BF038200
  s_cbranch_scc0  label_1422                                // 00000080: BF841401
  v_mov_b32     v1, s32                                     // 00000084: 7E020220
  v_mul_f32     v1, s4, v1                                  // 00000088: 10020204
  v_mov_b32     v2, s33                                     // 0000008C: 7E040221
  v_mul_f32     v2, s5, v2                                  // 00000090: 10040405
  v_mov_b32     v3, s34                                     // 00000094: 7E060222
  v_mul_f32     v3, s6, v3                                  // 00000098: 10060606
  v_mov_b32     v4, s35                                     // 0000009C: 7E080223
  v_mul_f32     v4, s7, v4                                  // 000000A0: 10080807
  v_lshlrev_b32  v5, 4, v0                                  // 000000A4: 340A0084
  s_waitcnt     lgkmcnt(0)                                  // 000000A8: BF8C007F
  v_add_i32     v5, vcc, s1, v5                             // 000000AC: 4A0A0A01
  s_load_dwordx4  s[4:7], s[2:3], 0x60                      // 000000B0: C0820360
  s_waitcnt     lgkmcnt(0)                                  // 000000B4: BF8C007F
  tbuffer_load_format_xyzw  v[37:40], v5, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 000000B8: EBF31000 80012505
  v_mov_b32     v9, 0x6f800000                              // 000000C0: 7E1202FF 6F800000
  v_cmp_gt_f32  s[4:5], abs(s36), v9                        // 000000C8: D0080104 00021224
  v_cmp_gt_f32  s[6:7], abs(s37), v9                        // 000000D0: D0080106 00021225
  v_cmp_gt_f32  s[10:11], abs(s38), v9                      // 000000D8: D008010A 00021226
  v_cmp_gt_f32  vcc, abs(s39), v9                           // 000000E0: D008016A 00021227
  v_mov_b32     v9, 0x2f800000                              // 000000E8: 7E1202FF 2F800000
  v_cndmask_b32  v10, 1.0, v9, s[4:5]                       // 000000F0: D200000A 001212F2
  v_cndmask_b32  v11, 1.0, v9, s[6:7]                       // 000000F8: D200000B 001A12F2
  v_cndmask_b32  v12, 1.0, v9, s[10:11]                     // 00000100: D200000C 002A12F2
  v_cndmask_b32  v9, 1.0, v9, vcc                           // 00000108: 001212F2
  v_mul_f32     v13, s36, v10                               // 0000010C: 101A1424
  v_mul_f32     v14, s37, v11                               // 00000110: 101C1625
  v_mul_f32     v15, s38, v12                               // 00000114: 101E1826
  v_mul_f32     v16, s39, v9                                // 00000118: 10201227
  v_rcp_f32     v13, v13                                    // 0000011C: 7E1A550D
  v_rcp_f32     v14, v14                                    // 00000120: 7E1C550E
  v_rcp_f32     v15, v15                                    // 00000124: 7E1E550F
  v_rcp_f32     v16, v16                                    // 00000128: 7E205510
  v_mov_b32     v17, 0x6f800000                             // 0000012C: 7E2202FF 6F800000
  v_cmp_gt_f32  s[4:5], abs(s40), v17                       // 00000134: D0080104 00022228
  v_cmp_gt_f32  s[6:7], abs(s41), v17                       // 0000013C: D0080106 00022229
  v_cmp_gt_f32  s[10:11], abs(s42), v17                     // 00000144: D008010A 0002222A
  v_cmp_gt_f32  vcc, abs(s43), v17                          // 0000014C: D008016A 0002222B
  v_mov_b32     v17, 0x2f800000                             // 00000154: 7E2202FF 2F800000
  v_cndmask_b32  v18, 1.0, v17, s[4:5]                      // 0000015C: D2000012 001222F2
  v_cndmask_b32  v19, 1.0, v17, s[6:7]                      // 00000164: D2000013 001A22F2
  v_cndmask_b32  v20, 1.0, v17, s[10:11]                    // 0000016C: D2000014 002A22F2
  v_cndmask_b32  v17, 1.0, v17, vcc                         // 00000174: 002222F2
  v_mul_f32     v21, s40, v18                               // 00000178: 102A2428
  v_mul_f32     v22, s41, v19                               // 0000017C: 102C2629
  v_mul_f32     v23, s42, v20                               // 00000180: 102E282A
  v_mul_f32     v24, s43, v17                               // 00000184: 1030222B
  v_rcp_f32     v21, v21                                    // 00000188: 7E2A5515
  v_rcp_f32     v22, v22                                    // 0000018C: 7E2C5516
  v_rcp_f32     v23, v23                                    // 00000190: 7E2E5517
  v_rcp_f32     v24, v24                                    // 00000194: 7E305518
  s_movk_i32    s1, 0x0001                                  // 00000198: B0010001
  v_mov_b32     v115, 0                                     // 0000019C: 7EE60280
  v_mov_b32     v116, 0                                     // 000001A0: 7EE80280
  v_mov_b32     v117, 0                                     // 000001A4: 7EEA0280
  v_mov_b32     v118, 0                                     // 000001A8: 7EEC0280
  v_mov_b32     v5, 0                                       // 000001AC: 7E0A0280
  v_mov_b32     v6, 0                                       // 000001B0: 7E0C0280
  v_mov_b32     v7, 0                                       // 000001B4: 7E0E0280
  v_mov_b32     v8, 0                                       // 000001B8: 7E100280
  v_mov_b32     v25, s36                                    // 000001BC: 7E320224
  v_mov_b32     v26, s37                                    // 000001C0: 7E340225
  v_mov_b32     v27, s38                                    // 000001C4: 7E360226
  v_mov_b32     v28, s39                                    // 000001C8: 7E380227
  v_mov_b32     v29, s36                                    // 000001CC: 7E3A0224
  v_mov_b32     v30, s37                                    // 000001D0: 7E3C0225
  v_mov_b32     v31, s38                                    // 000001D4: 7E3E0226
  v_mov_b32     v32, s39                                    // 000001D8: 7E400227
  v_mov_b32     v41, s36                                    // 000001DC: 7E520224
  v_mov_b32     v42, s37                                    // 000001E0: 7E540225
  v_mov_b32     v43, s38                                    // 000001E4: 7E560226
  v_mov_b32     v44, s39                                    // 000001E8: 7E580227
  v_mov_b32     v45, s36                                    // 000001EC: 7E5A0224
  v_mov_b32     v46, s37                                    // 000001F0: 7E5C0225
  v_mov_b32     v47, s38                                    // 000001F4: 7E5E0226
  v_mov_b32     v48, s39                                    // 000001F8: 7E600227
label_007F:
  s_waitcnt     vmcnt(0)                                    // 000001FC: BF8C1F70
  v_lshrrev_b32  v49, 30, v37                               // 00000200: 2C624A9E
  v_lshrrev_b32  v50, 30, v38                               // 00000204: 2C644C9E
  v_lshrrev_b32  v51, 30, v39                               // 00000208: 2C664E9E
  v_lshrrev_b32  v52, 30, v40                               // 0000020C: 2C68509E
  v_xor_b32     v49, v37, v49                               // 00000210: 3A626325
  v_xor_b32     v50, v38, v50                               // 00000214: 3A646526
  v_xor_b32     v51, v39, v51                               // 00000218: 3A666727
  v_xor_b32     v52, v40, v52                               // 0000021C: 3A686928
  v_mov_b32     v53, 0x6c078965                             // 00000220: 7E6A02FF 6C078965
  v_mul_lo_i32  v49, v49, v53                               // 00000228: D2D60031 02026B31
  v_mul_lo_i32  v50, v50, v53                               // 00000230: D2D60032 02026B32
  v_mul_lo_i32  v51, v51, v53                               // 00000238: D2D60033 02026B33
  v_mul_lo_i32  v52, v52, v53                               // 00000240: D2D60034 02026B34
  v_add_i32     v54, vcc, 1, v49                            // 00000248: 4A6C6281
  v_add_i32     v50, vcc, 1, v50                            // 0000024C: 4A646481
  v_add_i32     v51, vcc, 1, v51                            // 00000250: 4A666681
  v_add_i32     v52, vcc, 1, v52                            // 00000254: 4A686881
  v_lshrrev_b32  v55, 30, v54                               // 00000258: 2C6E6C9E
  v_lshrrev_b32  v56, 30, v50                               // 0000025C: 2C70649E
  v_lshrrev_b32  v57, 30, v51                               // 00000260: 2C72669E
  v_lshrrev_b32  v58, 30, v52                               // 00000264: 2C74689E
  v_xor_b32     v55, v54, v55                               // 00000268: 3A6E6F36
  v_xor_b32     v56, v50, v56                               // 0000026C: 3A707132
  v_xor_b32     v57, v51, v57                               // 00000270: 3A727333
  v_xor_b32     v58, v52, v58                               // 00000274: 3A747534
  v_mul_lo_i32  v55, v55, v53                               // 00000278: D2D60037 02026B37
  v_mul_lo_i32  v56, v56, v53                               // 00000280: D2D60038 02026B38
  v_mul_lo_i32  v57, v57, v53                               // 00000288: D2D60039 02026B39
  v_mul_lo_i32  v58, v58, v53                               // 00000290: D2D6003A 02026B3A
  v_add_i32     v59, vcc, 2, v55                            // 00000298: 4A766E82
  v_add_i32     v56, vcc, 2, v56                            // 0000029C: 4A707082
  v_add_i32     v57, vcc, 2, v57                            // 000002A0: 4A727282
  v_add_i32     v58, vcc, 2, v58                            // 000002A4: 4A747482
  v_lshrrev_b32  v60, 30, v59                               // 000002A8: 2C78769E
  v_lshrrev_b32  v61, 30, v56                               // 000002AC: 2C7A709E
  v_lshrrev_b32  v62, 30, v57                               // 000002B0: 2C7C729E
  v_lshrrev_b32  v63, 30, v58                               // 000002B4: 2C7E749E
  v_xor_b32     v60, v59, v60                               // 000002B8: 3A78793B
  v_xor_b32     v61, v56, v61                               // 000002BC: 3A7A7B38
  v_xor_b32     v62, v57, v62                               // 000002C0: 3A7C7D39
  v_xor_b32     v63, v58, v63                               // 000002C4: 3A7E7F3A
  v_mul_lo_i32  v60, v60, v53                               // 000002C8: D2D6003C 02026B3C
  v_mul_lo_i32  v61, v61, v53                               // 000002D0: D2D6003D 02026B3D
  v_mul_lo_i32  v62, v62, v53                               // 000002D8: D2D6003E 02026B3E
  v_mul_lo_i32  v63, v63, v53                               // 000002E0: D2D6003F 02026B3F
  v_add_i32     v60, vcc, 3, v60                            // 000002E8: 4A787883
  v_add_i32     v61, vcc, 3, v61                            // 000002EC: 4A7A7A83
  v_add_i32     v62, vcc, 3, v62                            // 000002F0: 4A7C7C83
  v_add_i32     v63, vcc, 3, v63                            // 000002F4: 4A7E7E83
  v_lshrrev_b32  v64, 30, v60                               // 000002F8: 2C80789E
  v_lshrrev_b32  v65, 30, v61                               // 000002FC: 2C827A9E
  v_lshrrev_b32  v66, 30, v62                               // 00000300: 2C847C9E
  v_lshrrev_b32  v67, 30, v63                               // 00000304: 2C867E9E
  v_xor_b32     v64, v60, v64                               // 00000308: 3A80813C
  v_xor_b32     v65, v61, v65                               // 0000030C: 3A82833D
  v_xor_b32     v66, v62, v66                               // 00000310: 3A84853E
  v_xor_b32     v67, v63, v67                               // 00000314: 3A86873F
  v_mul_lo_i32  v64, v64, v53                               // 00000318: D2D60040 02026B40
  v_mul_lo_i32  v65, v65, v53                               // 00000320: D2D60041 02026B41
  v_mul_lo_i32  v66, v66, v53                               // 00000328: D2D60042 02026B42
  v_mul_lo_i32  v53, v67, v53                               // 00000330: D2D60035 02026B43
  v_add_i32     v67, vcc, 4, v64                            // 00000338: 4A868084
  v_add_i32     v68, vcc, 4, v65                            // 0000033C: 4A888284
  v_add_i32     v69, vcc, 4, v66                            // 00000340: 4A8A8484
  v_add_i32     v70, vcc, 4, v53                            // 00000344: 4A8C6A84
  v_alignbit_b32  v71, v70, v69, 24                         // 00000348: D29C0047 02628B46
  v_alignbit_b32  v72, v63, v62, 24                         // 00000350: D29C0048 02627D3F
  v_lshlrev_b32  v66, 15, v66                               // 00000358: 3484848F
  v_add_i32     v66, vcc, 0x00020000, v66                   // 0000035C: 4A8484FF 00020000
  v_xor_b32     v66, v72, v66                               // 00000364: 3A848548
  v_xor_b32     v66, v39, v66                               // 00000368: 3A848527
  v_alignbit_b32  v72, v39, v38, 8                          // 0000036C: D29C0048 02224D27
  v_xor_b32     v66, v66, v72                               // 00000374: 3A849142
  v_lshrrev_b32  v72, 13, v57                               // 00000378: 2C90728D
  v_and_b32     v72, 0x00077b7d, v72                        // 0000037C: 369090FF 00077B7D
  v_xor_b32     v66, v66, v72                               // 00000384: 3A849142
  v_lshlrev_b32  v72, 15, v66                               // 00000388: 3490848F
  v_xor_b32     v71, v71, v72                               // 0000038C: 3A8E9147
  v_xor_b32     v71, v51, v71                               // 00000390: 3A8E8F33
  v_alignbit_b32  v72, v51, v50, 8                          // 00000394: D29C0048 02226533
  v_xor_b32     v71, v71, v72                               // 0000039C: 3A8E9147
  v_lshrrev_b32  v72, 13, v62                               // 000003A0: 2C907C8D
  v_and_b32     v72, 0x00077b7d, v72                        // 000003A4: 369090FF 00077B7D
  v_xor_b32     v71, v71, v72                               // 000003AC: 3A8E9147
  v_alignbit_b32  v72, v68, v67, 24                         // 000003B0: D29C0048 02628744
  v_alignbit_b32  v73, v61, v60, 24                         // 000003B8: D29C0049 0262793D
  v_lshlrev_b32  v64, 15, v64                               // 000003C0: 3480808F
  v_add_i32     v64, vcc, 0x00020000, v64                   // 000003C4: 4A8080FF 00020000
  v_xor_b32     v64, v73, v64                               // 000003CC: 3A808149
  v_xor_b32     v64, v37, v64                               // 000003D0: 3A808125
  v_lshlrev_b32  v73, 24, v37                               // 000003D4: 34924A98
  v_xor_b32     v64, v64, v73                               // 000003D8: 3A809340
  v_lshrrev_b32  v73, 13, v59                               // 000003DC: 2C92768D
  v_and_b32     v73, 0x000737ff, v73                        // 000003E0: 369292FF 000737FF
  v_xor_b32     v64, v64, v73                               // 000003E8: 3A809340
  v_lshlrev_b32  v73, 15, v64                               // 000003EC: 3492808F
  v_xor_b32     v72, v72, v73                               // 000003F0: 3A909348
  v_xor_b32     v72, v54, v72                               // 000003F4: 3A909136
  v_lshlrev_b32  v49, 24, v49                               // 000003F8: 34626298
  v_add_i32     v49, vcc, 0x01000000, v49                   // 000003FC: 4A6262FF 01000000
  v_xor_b32     v49, v72, v49                               // 00000404: 3A626348
  v_lshrrev_b32  v60, 13, v60                               // 00000408: 2C78788D
  v_and_b32     v60, 0x000737ff, v60                        // 0000040C: 367878FF 000737FF
  v_xor_b32     v49, v49, v60                               // 00000414: 3A627931
  v_lshrrev_b32  v60, 24, v70                               // 00000418: 2C788C98
  v_lshlrev_b32  v53, 15, v53                               // 0000041C: 346A6A8F
  v_add_i32     v53, vcc, 0x00020000, v53                   // 00000420: 4A6A6AFF 00020000
  v_lshrrev_b32  v72, 24, v63                               // 00000428: 2C907E98
  v_or_b32      v53, v53, v72                               // 0000042C: 386A9135
  v_xor_b32     v53, v40, v53                               // 00000430: 3A6A6B28
  v_alignbit_b32  v39, v40, v39, 8                          // 00000434: D29C0027 02224F28
  v_xor_b32     v39, v53, v39                               // 0000043C: 3A4E4F35
  v_lshrrev_b32  v40, 13, v58                               // 00000440: 2C50748D
  v_and_b32     v40, 0x0007fb2f, v40                        // 00000444: 365050FF 0007FB2F
  v_xor_b32     v39, v39, v40                               // 0000044C: 3A4E5127
  v_lshlrev_b32  v40, 15, v39                               // 00000450: 34504E8F
  v_or_b32      v40, v60, v40                               // 00000454: 3850513C
  v_xor_b32     v40, v52, v40                               // 00000458: 3A505134
  v_alignbit_b32  v51, v52, v51, 8                          // 0000045C: D29C0033 02226734
  v_xor_b32     v40, v40, v51                               // 00000464: 3A506728
  v_lshrrev_b32  v51, 13, v63                               // 00000468: 2C667E8D
  v_and_b32     v51, 0x0007fb2f, v51                        // 0000046C: 366666FF 0007FB2F
  v_xor_b32     v40, v40, v51                               // 00000474: 3A506728
  v_alignbit_b32  v51, v69, v68, 24                         // 00000478: D29C0033 02628945
  v_alignbit_b32  v52, v62, v61, 24                         // 00000480: D29C0034 02627B3E
  v_lshlrev_b32  v53, 15, v65                               // 00000488: 346A828F
  v_add_i32     v53, vcc, 0x00020000, v53                   // 0000048C: 4A6A6AFF 00020000
  v_xor_b32     v52, v52, v53                               // 00000494: 3A686B34
  v_xor_b32     v52, v38, v52                               // 00000498: 3A686926
  v_alignbit_b32  v37, v38, v37, 8                          // 0000049C: D29C0025 02224B26
  v_xor_b32     v37, v52, v37                               // 000004A4: 3A4A4B34
  v_lshrrev_b32  v38, 13, v56                               // 000004A8: 2C4C708D
  v_and_b32     v38, 0x00073f7d, v38                        // 000004AC: 364C4CFF 00073F7D
  v_xor_b32     v37, v37, v38                               // 000004B4: 3A4A4D25
  v_lshlrev_b32  v38, 15, v37                               // 000004B8: 344C4A8F
  v_xor_b32     v38, v51, v38                               // 000004BC: 3A4C4D33
  v_xor_b32     v38, v50, v38                               // 000004C0: 3A4C4D32
  v_alignbit_b32  v50, v50, v54, 8                          // 000004C4: D29C0032 02226D32
  v_xor_b32     v38, v38, v50                               // 000004CC: 3A4C6526
  v_lshrrev_b32  v50, 13, v61                               // 000004D0: 2C647A8D
  v_and_b32     v50, 0x00073f7d, v50                        // 000004D4: 366464FF 00073F7D
  v_xor_b32     v38, v38, v50                               // 000004DC: 3A4C6526
  v_cvt_f32_u32  v50, v49                                   // 000004E0: 7E640D31
  v_cvt_f32_u32  v51, v38                                   // 000004E4: 7E660D26
  v_cvt_f32_u32  v52, v71                                   // 000004E8: 7E680D47
  v_cvt_f32_u32  v53, v40                                   // 000004EC: 7E6A0D28
  v_mov_b32     v54, 0x2f800000                             // 000004F0: 7E6C02FF 2F800000
  v_mul_f32     v50, v54, v50                               // 000004F8: 10646536
  v_mul_f32     v51, v51, v54                               // 000004FC: 10666D33
  v_mul_f32     v52, v52, v54                               // 00000500: 10686D34
  v_mul_f32     v53, v53, v54                               // 00000504: 106A6D35
  v_mov_b32     v54, 0x40c90fdb                             // 00000508: 7E6C02FF 40C90FDB
  v_mul_f32     v50, v54, v50                               // 00000510: 10646536
  v_mul_f32     v51, v51, v54                               // 00000514: 10666D33
  v_mul_f32     v52, v52, v54                               // 00000518: 10686D34
  v_mul_f32     v53, v53, v54                               // 0000051C: 106A6D35
  v_mov_b32     v54, 0x7fffffff                             // 00000520: 7E6C02FF 7FFFFFFF
  v_and_b32     v60, v54, v50                               // 00000528: 36786536
  v_and_b32     v61, v54, v51                               // 0000052C: 367A6736
  v_and_b32     v62, v54, v52                               // 00000530: 367C6936
  v_and_b32     v54, v54, v53                               // 00000534: 366C6B36
  v_mov_b32     v63, 0x4b000000                             // 00000538: 7E7E02FF 4B000000
  v_cmp_lt_f32  s[4:5], v54, v63                            // 00000540: D0020004 00027F36
  v_cmp_lt_f32  s[6:7], v60, v63                            // 00000548: D0020006 00027F3C
  v_cmp_lt_f32  s[10:11], v62, v63                          // 00000550: D002000A 00027F3E
  v_cmp_lt_f32  s[18:19], v61, v63                          // 00000558: D0020012 00027F3D
  s_and_b64     s[6:7], s[6:7], s[10:11]                    // 00000560: 87860A06
  s_and_b64     vcc, s[18:19], s[4:5]                       // 00000564: 87EA0412
  s_and_b64     s[4:5], s[6:7], vcc                         // 00000568: 87846A06
  v_cvt_f32_u32  v63, v64                                   // 0000056C: 7E7E0D40
  v_cvt_f32_u32  v65, v37                                   // 00000570: 7E820D25
  v_cvt_f32_u32  v72, v66                                   // 00000574: 7E900D42
  v_cvt_f32_u32  v73, v39                                   // 00000578: 7E920D27
  v_mov_b32     v74, 0x2f800000                             // 0000057C: 7E9402FF 2F800000
  v_mul_f32     v75, v74, v63                               // 00000584: 10967F4A
  v_mul_f32     v76, v65, v74                               // 00000588: 10989541
  v_mul_f32     v77, v72, v74                               // 0000058C: 109A9548
  v_mul_f32     v74, v73, v74                               // 00000590: 10949549
  v_lshrrev_b32  v78, 23, v75                               // 00000594: 2C9C9697
  v_lshrrev_b32  v79, 23, v76                               // 00000598: 2C9E9897
  v_lshrrev_b32  v80, 23, v77                               // 0000059C: 2CA09A97
  v_lshrrev_b32  v81, 23, v74                               // 000005A0: 2CA29497
  v_cmp_eq_i32  s[6:7], v81, 0                              // 000005A4: D1040006 00010151
  v_cmp_eq_i32  s[10:11], v78, 0                            // 000005AC: D104000A 0001014E
  v_cmp_eq_i32  s[18:19], v80, 0                            // 000005B4: D1040012 00010150
  v_cmp_eq_i32  s[32:33], v79, 0                            // 000005BC: D1040020 0001014F
  v_or_b32      v82, 1.0, v75                               // 000005C4: 38A496F2
  v_or_b32      v83, 1.0, v76                               // 000005C8: 38A698F2
  v_or_b32      v84, 1.0, v77                               // 000005CC: 38A89AF2
  v_or_b32      v85, 1.0, v74                               // 000005D0: 38AA94F2
  v_add_f32     v82, -1.0, v82                              // 000005D4: 06A4A4F3
  v_add_f32     v83, -1.0, v83                              // 000005D8: 06A6A6F3
  v_add_f32     v84, -1.0, v84                              // 000005DC: 06A8A8F3
  v_add_f32     v85, -1.0, v85                              // 000005E0: 06AAAAF3
  v_cndmask_b32  v86, v75, v82, s[10:11]                    // 000005E4: D2000056 002AA54B
  v_cndmask_b32  v87, v76, v83, s[32:33]                    // 000005EC: D2000057 0082A74C
  v_cndmask_b32  v88, v77, v84, s[18:19]                    // 000005F4: D2000058 004AA94D
  v_cndmask_b32  v89, v74, v85, s[6:7]                      // 000005FC: D2000059 001AAB4A
  v_mov_b32     v90, 0x007f0000                             // 00000604: 7EB402FF 007F0000
  v_and_b32     v91, v90, v86                               // 0000060C: 36B6AD5A
  v_and_b32     v92, v87, v90                               // 00000610: 36B8B557
  v_and_b32     v93, v88, v90                               // 00000614: 36BAB558
  v_and_b32     v90, v89, v90                               // 00000618: 36B4B559
  v_mov_b32     v94, 0x00008000                             // 0000061C: 7EBC02FF 00008000
  v_and_b32     v95, v94, v86                               // 00000624: 36BEAD5E
  v_and_b32     v96, v87, v94                               // 00000628: 36C0BD57
  v_and_b32     v97, v88, v94                               // 0000062C: 36C2BD58
  v_and_b32     v94, v89, v94                               // 00000630: 36BCBD59
  v_lshlrev_b32  v95, 1, v95                                // 00000634: 34BEBE81
  v_lshlrev_b32  v96, 1, v96                                // 00000638: 34C0C081
  v_lshlrev_b32  v97, 1, v97                                // 0000063C: 34C2C281
  v_lshlrev_b32  v94, 1, v94                                // 00000640: 34BCBC81
  v_add_i32     v91, vcc, v91, v95                          // 00000644: 4AB6BF5B
  v_add_i32     v92, vcc, v92, v96                          // 00000648: 4AB8C15C
  v_add_i32     v93, vcc, v93, v97                          // 0000064C: 4ABAC35D
  v_add_i32     v90, vcc, v90, v94                          // 00000650: 4AB4BD5A
  v_lshrrev_b32  v94, 16, v91                               // 00000654: 2CBCB690
  v_lshrrev_b32  v95, 16, v92                               // 00000658: 2CBEB890
  v_lshrrev_b32  v96, 16, v93                               // 0000065C: 2CC0BA90
  v_lshrrev_b32  v97, 16, v90                               // 00000660: 2CC2B490
  v_lshlrev_b32  v98, 2, v97                                // 00000664: 34C4C282
  v_add_i32     v98, vcc, 0x00000410, v98                   // 00000668: 4AC4C4FF 00000410
  v_ashrrev_i32  v33, 4, v98                                // 00000670: 3042C484
  v_and_b32     v34, 12, v98                                // 00000674: 3644C48C
  v_lshlrev_b32  v100, 2, v94                               // 00000678: 34C8BC82
  v_add_i32     v100, vcc, 0x00000410, v100                 // 0000067C: 4AC8C8FF 00000410
  v_ashrrev_i32  v35, 4, v100                               // 00000684: 3046C884
  v_and_b32     v36, 12, v100                               // 00000688: 3648C88C
  v_lshlrev_b32  v102, 2, v96                               // 0000068C: 34CCC082
  v_add_i32     v102, vcc, 0x00000410, v102                 // 00000690: 4ACCCCFF 00000410
  v_ashrrev_i32  v98, 4, v102                               // 00000698: 30C4CC84
  v_and_b32     v99, 12, v102                               // 0000069C: 36C6CC8C
  v_lshlrev_b32  v104, 2, v95                               // 000006A0: 34D0BE82
  v_add_i32     v104, vcc, 0x00000410, v104                 // 000006A4: 4AD0D0FF 00000410
  v_ashrrev_i32  v100, 4, v104                              // 000006AC: 30C8D084
  v_and_b32     v101, 12, v104                              // 000006B0: 36CAD08C
  v_or_b32      v106, 0.5, v91                              // 000006B4: 38D4B6F0
  v_or_b32      v107, 0.5, v92                              // 000006B8: 38D6B8F0
  v_or_b32      v108, 0.5, v93                              // 000006BC: 38D8BAF0
  v_or_b32      v109, 0.5, v90                              // 000006C0: 38DAB4F0
  v_mov_b32     v110, 0x007fffff                            // 000006C4: 7EDC02FF 007FFFFF
  v_and_b32     v86, v110, v86                              // 000006CC: 36ACAD6E
  v_and_b32     v87, v87, v110                              // 000006D0: 36AEDD57
  v_and_b32     v88, v88, v110                              // 000006D4: 36B0DD58
  v_and_b32     v89, v89, v110                              // 000006D8: 36B2DD59
  v_or_b32      v86, 0.5, v86                               // 000006DC: 38ACACF0
  v_or_b32      v87, 0.5, v87                               // 000006E0: 38AEAEF0
  v_or_b32      v88, 0.5, v88                               // 000006E4: 38B0B0F0
  v_or_b32      v89, 0.5, v89                               // 000006E8: 38B2B2F0
  v_sub_f32     v86, v106, v86                              // 000006EC: 08ACAD6A
  v_sub_f32     v87, v107, v87                              // 000006F0: 08AEAF6B
  v_sub_f32     v88, v108, v88                              // 000006F4: 08B0B16C
  v_sub_f32     v89, v109, v89                              // 000006F8: 08B2B36D
  v_mov_b32     v106, 0x3eaaaaab                            // 000006FC: 7ED402FF 3EAAAAAB
  v_mov_b32     v107, 0xffffff81                            // 00000704: 7ED602FF FFFFFF81
  v_add_i32     v78, vcc, v107, v78                         // 0000070C: 4A9C9D6B
  v_add_i32     v79, vcc, v107, v79                         // 00000710: 4A9E9F6B
  v_add_i32     v80, vcc, v107, v80                         // 00000714: 4AA0A16B
  v_add_i32     v81, vcc, v107, v81                         // 00000718: 4AA2A36B
  v_lshrrev_b32  v82, 23, v82                               // 0000071C: 2CA4A497
  v_lshrrev_b32  v83, 23, v83                               // 00000720: 2CA6A697
  v_lshrrev_b32  v84, 23, v84                               // 00000724: 2CA8A897
  v_lshrrev_b32  v85, 23, v85                               // 00000728: 2CAAAA97
  v_mov_b32     v107, 0xffffff03                            // 0000072C: 7ED602FF FFFFFF03
  v_add_i32     v82, vcc, v107, v82                         // 00000734: 4AA4A56B
  v_add_i32     v83, vcc, v107, v83                         // 00000738: 4AA6A76B
  v_add_i32     v84, vcc, v107, v84                         // 0000073C: 4AA8A96B
  v_add_i32     v85, vcc, v107, v85                         // 00000740: 4AAAAB6B
  v_cndmask_b32  v78, v78, v82, s[10:11]                    // 00000744: D200004E 002AA54E
  v_cndmask_b32  v79, v79, v83, s[32:33]                    // 0000074C: D200004F 0082A74F
  v_cndmask_b32  v80, v80, v84, s[18:19]                    // 00000754: D2000050 004AA950
  v_cndmask_b32  v81, v81, v85, s[6:7]                      // 0000075C: D2000051 001AAB51
  v_cvt_f32_i32  v78, v78                                   // 00000764: 7E9C0B4E
  v_cvt_f32_i32  v79, v79                                   // 00000768: 7E9E0B4F
  v_cvt_f32_i32  v80, v80                                   // 0000076C: 7EA00B50
  v_cvt_f32_i32  v81, v81                                   // 00000770: 7EA20B51
  v_mov_b32     v82, 0x3805fdf4                             // 00000774: 7EA402FF 3805FDF4
  v_bfe_u32     v83, v90, 16, 1                             // 0000077C: D2900053 0205215A
  v_bfe_i32     v84, v97, 1, 28                             // 00000784: D2920054 02710361
  v_cmp_eq_i32  s[6:7], v83, 0                              // 0000078C: D1040006 00010153
  v_bfe_u32     v83, v91, 16, 1                             // 00000794: D2900053 0205215B
  v_bfe_i32     v85, v94, 1, 28                             // 0000079C: D2920055 0271035E
  v_cmp_eq_i32  s[10:11], v83, 0                            // 000007A4: D104000A 00010153
  v_bfe_u32     v83, v93, 16, 1                             // 000007AC: D2900053 0205215D
  v_bfe_i32     v90, v96, 1, 28                             // 000007B4: D292005A 02710360
  v_cmp_eq_i32  vcc, 0, v83                                 // 000007BC: 7D04A680
  v_bfe_u32     v83, v92, 16, 1                             // 000007C0: D2900053 0205215C
  v_bfe_i32     v91, v95, 1, 28                             // 000007C8: D292005B 0271035F
  tbuffer_load_format_x  v92, v[33:34], s[12:15], 0 offen idxen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000007D0: EBA03000 80035C21
  tbuffer_load_format_x  v93, v[35:36], s[12:15], 0 offen idxen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000007D8: EBA03000 80035D23
  tbuffer_load_format_x  v94, v[98:99], s[12:15], 0 offen idxen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000007E0: EBA03000 80035E62
  tbuffer_load_format_x  v95, v[100:101], s[12:15], 0 offen idxen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000007E8: EBA03000 80035F64
  tbuffer_load_format_xyzw  v[96:99], v84, s[12:15], 0 idxen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 000007F0: EBF32000 80036054
  tbuffer_load_format_xyzw  v[100:103], v85, s[12:15], 0 idxen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 000007F8: EBF32000 80036455
  tbuffer_load_format_xyzw  v[107:110], v90, s[12:15], 0 idxen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 00000800: EBF32000 80036B5A
  tbuffer_load_format_xyzw  v[111:114], v91, s[12:15], 0 idxen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 00000808: EBF32000 80036F5B
  s_waitcnt     vmcnt(6)                                    // 00000810: BF8C1F76
  v_mul_f32     v84, v93, v86                               // 00000814: 10A8AD5D
  s_waitcnt     vmcnt(4)                                    // 00000818: BF8C1F74
  v_mul_f32     v85, v95, v87                               // 0000081C: 10AAAF5F
  v_mul_f32     v86, v94, v88                               // 00000820: 10ACB15E
  v_mul_f32     v87, v92, v89                               // 00000824: 10AEB35C
  v_mad_f32     v88, v84, v106, 0.5                         // 00000828: D2820058 03C2D554
  v_mad_f32     v89, v85, v106, 0.5                         // 00000830: D2820059 03C2D555
  v_mad_f32     v90, v86, v106, 0.5                         // 00000838: D282005A 03C2D556
  v_mad_f32     v91, v87, v106, 0.5                         // 00000840: D282005B 03C2D557
  v_mul_f32     v92, v84, v84                               // 00000848: 10B8A954
  v_mul_f32     v93, v85, v85                               // 0000084C: 10BAAB55
  v_mul_f32     v94, v86, v86                               // 00000850: 10BCAD56
  v_mul_f32     v95, v87, v87                               // 00000854: 10BEAF57
  v_mac_f32     v84, v88, v92                               // 00000858: 3EA8B958
  v_mac_f32     v85, v89, v93                               // 0000085C: 3EAABB59
  v_mac_f32     v86, v90, v94                               // 00000860: 3EACBD5A
  v_mac_f32     v87, v91, v95                               // 00000864: 3EAEBF5B
  v_mad_f32     v84, v78, v82, -v84                         // 00000868: D2820054 8552A54E
  v_mad_f32     v85, v79, v82, -v85                         // 00000870: D2820055 8556A54F
  v_mad_f32     v86, v80, v82, -v86                         // 00000878: D2820056 855AA550
  v_mad_f32     v87, v81, v82, -v87                         // 00000880: D2820057 855EA551
  s_waitcnt     vmcnt(3)                                    // 00000888: BF8C1F73
  v_cndmask_b32  v82, v98, v96, s[6:7]                      // 0000088C: D2000052 001AC162
  v_cndmask_b32  v88, v99, v97, s[6:7]                      // 00000894: D2000058 001AC363
  s_waitcnt     vmcnt(2)                                    // 0000089C: BF8C1F72
  v_cndmask_b32  v89, v102, v100, s[10:11]                  // 000008A0: D2000059 002AC966
  v_cndmask_b32  v90, v103, v101, s[10:11]                  // 000008A8: D200005A 002ACB67
  s_waitcnt     vmcnt(1)                                    // 000008B0: BF8C1F71
  v_cndmask_b32  v91, v109, v107, vcc                       // 000008B4: 00B6D76D
  v_cndmask_b32  v92, v110, v108, vcc                       // 000008B8: 00B8D96E
  v_cmp_eq_i32  vcc, 0, v83                                 // 000008BC: 7D04A680
  s_waitcnt     vmcnt(0)                                    // 000008C0: BF8C1F70
  v_cndmask_b32  v83, v113, v111, vcc                       // 000008C4: 00A6DF71
  v_cndmask_b32  v93, v114, v112, vcc                       // 000008C8: 00BAE172
  v_add_f32     v84, v84, v90                               // 000008CC: 06A8B554
  v_add_f32     v85, v85, v93                               // 000008D0: 06AABB55
  v_add_f32     v86, v86, v92                               // 000008D4: 06ACB956
  v_add_f32     v87, v87, v88                               // 000008D8: 06AEB157
  v_mov_b32     v88, 0x3f317000                             // 000008DC: 7EB002FF 3F317000
  v_mac_f32     v89, v78, v88                               // 000008E4: 3EB2B14E
  v_mac_f32     v83, v79, v88                               // 000008E8: 3EA6B14F
  v_mac_f32     v91, v80, v88                               // 000008EC: 3EB6B150
  v_mac_f32     v82, v81, v88                               // 000008F0: 3EA4B151
  v_add_f32     v78, v84, v89                               // 000008F4: 069CB354
  v_add_f32     v79, v85, v83                               // 000008F8: 069EA755
  v_add_f32     v80, v86, v91                               // 000008FC: 06A0B756
  v_add_f32     v81, v87, v82                               // 00000900: 06A2A557
  v_mov_b32     v82, 0x2f800000                             // 00000904: 7EA402FF 2F800000
  v_mad_f32     v63, v63, v82, -1.0                         // 0000090C: D282003F 03CEA53F
  v_mad_f32     v65, v65, v82, -1.0                         // 00000914: D2820041 03CEA541
  v_mad_f32     v72, v72, v82, -1.0                         // 0000091C: D2820048 03CEA548
  v_mad_f32     v73, v73, v82, -1.0                         // 00000924: D2820049 03CEA549
  v_add_f32     v82, 2.0, v63                               // 0000092C: 06A47EF4
  v_add_f32     v83, 2.0, v65                               // 00000930: 06A682F4
  v_add_f32     v84, 2.0, v72                               // 00000934: 06A890F4
  v_add_f32     v85, 2.0, v73                               // 00000938: 06AA92F4
  v_rcp_f32     v82, v82                                    // 0000093C: 7EA45552
  v_rcp_f32     v83, v83                                    // 00000940: 7EA65553
  v_rcp_f32     v84, v84                                    // 00000944: 7EA85554
  v_rcp_f32     v85, v85                                    // 00000948: 7EAA5555
  v_mul_f32     v86, v63, v82                               // 0000094C: 10ACA53F
  v_mul_f32     v87, v65, v83                               // 00000950: 10AEA741
  v_mul_f32     v88, v72, v84                               // 00000954: 10B0A948
  v_mul_f32     v89, v73, v85                               // 00000958: 10B2AB49
  v_mad_f32     v82, v63, v82, v86                          // 0000095C: D2820052 055AA53F
  v_mad_f32     v83, v65, v83, v87                          // 00000964: D2820053 055EA741
  v_mad_f32     v84, v72, v84, v88                          // 0000096C: D2820054 0562A948
  v_mad_f32     v85, v73, v85, v89                          // 00000974: D2820055 0566AB49
  v_mul_f32     v90, v82, v82                               // 0000097C: 10B4A552
  v_mul_f32     v91, v83, v83                               // 00000980: 10B6A753
  v_mul_f32     v92, v84, v84                               // 00000984: 10B8A954
  v_mul_f32     v93, v85, v85                               // 00000988: 10BAAB55
  v_mul_f32     v94, 0x3c4ccccd, v90                        // 0000098C: 10BCB4FF 3C4CCCCD
  v_add_f32     v94, 0x3daaaaab, v94                        // 00000994: 06BCBCFF 3DAAAAAB
  v_mul_f32     v95, 0x3c4ccccd, v91                        // 0000099C: 10BEB6FF 3C4CCCCD
  v_add_f32     v95, 0x3daaaaab, v95                        // 000009A4: 06BEBEFF 3DAAAAAB
  v_mul_f32     v96, 0x3c4ccccd, v92                        // 000009AC: 10C0B8FF 3C4CCCCD
  v_add_f32     v96, 0x3daaaaab, v96                        // 000009B4: 06C0C0FF 3DAAAAAB
  v_mul_f32     v97, 0x3c4ccccd, v93                        // 000009BC: 10C2BAFF 3C4CCCCD
  v_add_f32     v97, 0x3daaaaab, v97                        // 000009C4: 06C2C2FF 3DAAAAAB
  v_mul_f32     v90, v90, v94                               // 000009CC: 10B4BD5A
  v_mul_f32     v91, v91, v95                               // 000009D0: 10B6BF5B
  v_mul_f32     v92, v92, v96                               // 000009D4: 10B8C15C
  v_mul_f32     v93, v93, v97                               // 000009D8: 10BAC35D
  v_mul_f32     v86, v63, v86                               // 000009DC: 10ACAD3F
  v_mul_f32     v87, v65, v87                               // 000009E0: 10AEAF41
  v_mul_f32     v88, v72, v88                               // 000009E4: 10B0B148
  v_mul_f32     v89, v73, v89                               // 000009E8: 10B2B349
  v_mad_f32     v86, v82, v90, -v86                         // 000009EC: D2820056 855AB552
  v_mad_f32     v87, v83, v91, -v87                         // 000009F4: D2820057 855EB753
  v_mad_f32     v88, v84, v92, -v88                         // 000009FC: D2820058 8562B954
  v_mad_f32     v89, v85, v93, -v89                         // 00000A04: D2820059 8566BB55
  v_add_f32     v82, v63, v86                               // 00000A0C: 06A4AD3F
  v_add_f32     v83, v65, v87                               // 00000A10: 06A6AF41
  v_add_f32     v84, v72, v88                               // 00000A14: 06A8B148
  v_add_f32     v85, v73, v89                               // 00000A18: 06AAB349
  v_mov_b32     v86, 0x3d800000                             // 00000A1C: 7EAC02FF 3D800000
  v_cmp_gt_f32  s[6:7], v86, abs(v73)                       // 00000A24: D0080206 00029356
  v_cmp_gt_f32  s[10:11], v86, abs(v63)                     // 00000A2C: D008020A 00027F56
  v_cmp_gt_f32  s[18:19], v86, abs(v72)                     // 00000A34: D0080212 00029156
  v_cmp_gt_f32  vcc, v86, abs(v65)                          // 00000A3C: D008026A 00028356
  v_cndmask_b32  v63, v78, v82, s[10:11]                    // 00000A44: D200003F 002AA54E
  v_cndmask_b32  v65, v79, v83, vcc                         // 00000A4C: 0082A74F
  v_cndmask_b32  v72, v80, v84, s[18:19]                    // 00000A50: D2000048 004AA950
  v_cndmask_b32  v73, v81, v85, s[6:7]                      // 00000A58: D2000049 001AAB51
  v_mov_b32     v78, 0x7fffffff                             // 00000A60: 7E9C02FF 7FFFFFFF
  v_and_b32     v79, v78, v75                               // 00000A68: 369E974E
  v_and_b32     v80, v78, v76                               // 00000A6C: 36A0994E
  v_and_b32     v81, v78, v77                               // 00000A70: 36A29B4E
  v_and_b32     v78, v78, v74                               // 00000A74: 369C954E
  v_mov_b32     v82, 0x7f7fffff                             // 00000A78: 7EA402FF 7F7FFFFF
  v_cmp_gt_u32  s[6:7], v78, v82                            // 00000A80: D1880006 0002A54E
  v_cmp_gt_u32  s[10:11], v79, v82                          // 00000A88: D188000A 0002A54F
  v_cmp_gt_u32  s[18:19], v81, v82                          // 00000A90: D1880012 0002A551
  v_cmp_gt_u32  vcc, v80, v82                               // 00000A98: 7D88A550
  v_cndmask_b32  v63, v63, v75, s[10:11]                    // 00000A9C: D200003F 002A973F
  v_cndmask_b32  v65, v65, v76, vcc                         // 00000AA4: 00829941
  v_cndmask_b32  v72, v72, v77, s[18:19]                    // 00000AA8: D2000048 004A9B48
  v_cndmask_b32  v73, v73, v74, s[6:7]                      // 00000AB0: D2000049 001A9549
  v_cmp_ne_i32  s[6:7], v74, v78                            // 00000AB8: D10A0006 00029D4A
  v_cmp_ne_i32  s[10:11], v75, v79                          // 00000AC0: D10A000A 00029F4B
  v_cmp_ne_i32  s[18:19], v77, v81                          // 00000AC8: D10A0012 0002A34D
  v_cmp_ne_i32  vcc, v76, v80                               // 00000AD0: 7D0AA14C
  v_mov_b32     v74, 0x7fc00000                             // 00000AD4: 7E9402FF 7FC00000
  v_cndmask_b32  v63, v63, v74, s[10:11]                    // 00000ADC: D200003F 002A953F
  v_cndmask_b32  v65, v65, v74, vcc                         // 00000AE4: 00829541
  v_cndmask_b32  v72, v72, v74, s[18:19]                    // 00000AE8: D2000048 004A9548
  v_cndmask_b32  v73, v73, v74, s[6:7]                      // 00000AF0: D2000049 001A9549
  v_cmp_eq_i32  s[6:7], v78, 0                              // 00000AF8: D1040006 0001014E
  v_cmp_eq_i32  s[10:11], v79, 0                            // 00000B00: D104000A 0001014F
  v_cmp_eq_i32  s[18:19], v81, 0                            // 00000B08: D1040012 00010151
  v_cmp_eq_i32  vcc, 0, v80                                 // 00000B10: 7D04A080
  v_mov_b32     v74, 0xff800000                             // 00000B14: 7E9402FF FF800000
  v_cndmask_b32  v63, v63, v74, s[10:11]                    // 00000B1C: D200003F 002A953F
  v_cndmask_b32  v65, v65, v74, vcc                         // 00000B24: 00829541
  v_cndmask_b32  v72, v72, v74, s[18:19]                    // 00000B28: D2000048 004A9548
  v_cndmask_b32  v73, v73, v74, s[6:7]                      // 00000B30: D2000049 001A9549
  v_mul_f32     v63, -2.0, v63                              // 00000B38: 107E7EF5
  v_mul_f32     v65, -2.0, v65                              // 00000B3C: 108282F5
  v_mul_f32     v72, -2.0, v72                              // 00000B40: 109090F5
  v_mul_f32     v73, -2.0, v73                              // 00000B44: 109292F5
  v_sqrt_f32    v63, v63                                    // 00000B48: 7E7E673F
  v_sqrt_f32    v65, v65                                    // 00000B4C: 7E826741
  v_sqrt_f32    v72, v72                                    // 00000B50: 7E906748
  v_sqrt_f32    v73, v73                                    // 00000B54: 7E926749
  v_alignbit_b32  v74, v66, v37, 24                         // 00000B58: D29C004A 02624B42
  v_lshlrev_b32  v38, 15, v38                               // 00000B60: 344C4C8F
  v_xor_b32     v38, v74, v38                               // 00000B64: 3A4C4D4A
  v_xor_b32     v38, v56, v38                               // 00000B68: 3A4C4D38
  v_alignbit_b32  v74, v56, v59, 8                          // 00000B6C: D29C004A 02227738
  v_xor_b32     v38, v38, v74                               // 00000B74: 3A4C9526
  v_lshrrev_b32  v68, 13, v68                               // 00000B78: 2C88888D
  v_and_b32     v68, 0x00073f7d, v68                        // 00000B7C: 368888FF 00073F7D
  v_xor_b32     v38, v38, v68                               // 00000B84: 3A4C8926
  v_alignbit_b32  v37, v37, v64, 24                         // 00000B88: D29C0025 02628125
  v_lshlrev_b32  v49, 15, v49                               // 00000B90: 3462628F
  v_xor_b32     v37, v37, v49                               // 00000B94: 3A4A6325
  v_xor_b32     v37, v59, v37                               // 00000B98: 3A4A4B3B
  v_lshlrev_b32  v49, 24, v55                               // 00000B9C: 34626E98
  v_add_i32     v49, vcc, 0x02000000, v49                   // 00000BA0: 4A6262FF 02000000
  v_xor_b32     v37, v37, v49                               // 00000BA8: 3A4A6325
  v_lshrrev_b32  v49, 13, v67                               // 00000BAC: 2C62868D
  v_and_b32     v49, 0x000737ff, v49                        // 00000BB0: 366262FF 000737FF
  v_xor_b32     v37, v37, v49                               // 00000BB8: 3A4A6325
  v_lshlrev_b32  v40, 15, v40                               // 00000BBC: 3450508F
  v_lshrrev_b32  v49, 24, v39                               // 00000BC0: 2C624E98
  v_or_b32      v40, v40, v49                               // 00000BC4: 38506328
  v_xor_b32     v40, v58, v40                               // 00000BC8: 3A50513A
  v_alignbit_b32  v49, v58, v57, 8                          // 00000BCC: D29C0031 0222733A
  v_xor_b32     v40, v40, v49                               // 00000BD4: 3A506328
  v_lshrrev_b32  v49, 13, v70                               // 00000BD8: 2C628C8D
  v_and_b32     v49, 0x0007fb2f, v49                        // 00000BDC: 366262FF 0007FB2F
  v_xor_b32     v40, v40, v49                               // 00000BE4: 3A506328
  v_lshlrev_b32  v49, 15, v71                               // 00000BE8: 34628E8F
  v_alignbit_b32  v39, v39, v66, 24                         // 00000BEC: D29C0027 02628527
  v_xor_b32     v39, v49, v39                               // 00000BF4: 3A4E4F31
  v_xor_b32     v39, v57, v39                               // 00000BF8: 3A4E4F39
  v_alignbit_b32  v49, v57, v56, 8                          // 00000BFC: D29C0031 02227139
  v_xor_b32     v39, v39, v49                               // 00000C04: 3A4E6327
  v_lshrrev_b32  v49, 13, v69                               // 00000C08: 2C628A8D
  v_and_b32     v49, 0x00077b7d, v49                        // 00000C0C: 366262FF 00077B7D
  v_xor_b32     v39, v39, v49                               // 00000C14: 3A4E6327
  s_mov_b64     s[6:7], exec                                // 00000C18: BE86047E
  s_andn2_b64   exec, s[6:7], s[4:5]                        // 00000C1C: 8AFE0406
  s_cbranch_execz  label_077D                               // 00000C20: BF880474
  s_mov_b32     s9, 0x4b000000                              // 00000C24: BE8903FF 4B000000
  v_cmp_nlt_f32  s[10:11], v60, s9                          // 00000C2C: D01C000A 0000133C
  s_and_saveexec_b64  s[10:11], s[10:11]                    // 00000C34: BE8A240A
  v_and_b32     v49, 0x007fffff, v50                        // 00000C38: 366264FF 007FFFFF
  s_cbranch_execz  label_03F4                               // 00000C40: BF8800E3
  v_or_b32      v49, 0x00800000, v49                        // 00000C44: 386262FF 00800000
  s_mov_b32     s9, 0xfe5163ab                              // 00000C4C: BE8903FF FE5163AB
  s_mov_b32     s17, 0x3c439041                             // 00000C54: BE9103FF 3C439041
  v_mul_hi_u32  v55, v49, s9                                // 00000C5C: D2D40037 02001331
  v_mul_lo_u32  v56, v49, s17                               // 00000C64: D2D20038 02002331
  v_add_i32     v56, vcc, v55, v56                          // 00000C6C: 4A707137
  s_mov_b32     s9, 0xdb629599                              // 00000C70: BE8903FF DB629599
  v_cmp_gt_u32  s[18:19], v55, v56                          // 00000C78: D1880012 00027137
  v_mul_hi_u32  v55, v49, s17                               // 00000C80: D2D40037 02002331
  v_mul_lo_u32  v57, v49, s9                                // 00000C88: D2D20039 02001331
  v_addc_u32    v58, vcc, v55, 0, s[18:19]                  // 00000C90: D2506A3A 00490137
  v_addc_u32    v55, vcc, v55, v57, s[18:19]                // 00000C98: D2506A37 004A7337
  s_mov_b32     s17, 0xf534ddc0                             // 00000CA0: BE9103FF F534DDC0
  v_lshrrev_b32  v57, 23, v60                               // 00000CA8: 2C727897
  v_cmp_gt_u32  s[18:19], v58, v55                          // 00000CAC: D1880012 00026F3A
  v_mul_hi_u32  v58, v49, s9                                // 00000CB4: D2D4003A 02001331
  v_mul_lo_u32  v59, v49, s17                               // 00000CBC: D2D2003B 02002331
  v_add_i32     v57, vcc, 0xffffff88, v57                   // 00000CC4: 4A7272FF FFFFFF88
  v_addc_u32    v64, vcc, v58, 0, s[18:19]                  // 00000CCC: D2506A40 0049013A
  v_addc_u32    v58, vcc, v58, v59, s[18:19]                // 00000CD4: D2506A3A 004A773A
  s_mov_b32     s9, 0xfc2757d1                              // 00000CDC: BE8903FF FC2757D1
  v_cmp_gt_u32  s[18:19], v57, 31                           // 00000CE4: D1880012 00013F39
  v_mov_b32     v59, 0xffffffe0                             // 00000CEC: 7E7602FF FFFFFFE0
  v_cmp_gt_u32  s[32:33], v64, v58                          // 00000CF4: D1880020 00027540
  v_mul_hi_u32  v64, v49, s17                               // 00000CFC: D2D40040 02002331
  v_mul_lo_u32  v66, v49, s9                                // 00000D04: D2D20042 02001331
  v_cndmask_b32  v67, 0, v59, s[18:19]                      // 00000D0C: D2000043 004A7680
  v_addc_u32    v68, vcc, v64, 0, s[32:33]                  // 00000D14: D2506A44 00810140
  v_addc_u32    v64, vcc, v64, v66, s[32:33]                // 00000D1C: D2506A40 00828540
  s_mov_b32     s17, 0x4e441529                             // 00000D24: BE9103FF 4E441529
  v_add_i32     v57, vcc, v57, v67                          // 00000D2C: 4A728739
  v_cmp_gt_u32  s[32:33], v68, v64                          // 00000D30: D1880020 00028144
  v_mul_hi_u32  v66, v49, s9                                // 00000D38: D2D40042 02001331
  v_mul_lo_u32  v67, v49, s17                               // 00000D40: D2D20043 02002331
  v_cmp_gt_u32  s[34:35], v57, 31                           // 00000D48: D1880022 00013F39
  v_addc_u32    v68, vcc, v66, 0, s[32:33]                  // 00000D50: D2506A44 00810142
  v_addc_u32    v66, vcc, v66, v67, s[32:33]                // 00000D58: D2506A42 00828742
  s_mov_b32     s9, 0xa2f9836e                              // 00000D60: BE8903FF A2F9836E
  v_cndmask_b32  v67, 0, v59, s[34:35]                      // 00000D68: D2000043 008A7680
  v_cmp_gt_u32  s[32:33], v68, v66                          // 00000D70: D1880020 00028544
  v_mul_hi_u32  v68, v49, s17                               // 00000D78: D2D40044 02002331
  v_mul_lo_u32  v69, v49, s9                                // 00000D80: D2D20045 02001331
  v_add_i32     v57, vcc, v57, v67                          // 00000D88: 4A728739
  v_addc_u32    v67, vcc, v68, 0, s[32:33]                  // 00000D8C: D2506A43 00810144
  v_addc_u32    v68, vcc, v68, v69, s[32:33]                // 00000D94: D2506A44 00828B44
  v_cmp_gt_u32  s[32:33], v57, 31                           // 00000D9C: D1880020 00013F39
  v_cmp_gt_u32  s[36:37], v67, v68                          // 00000DA4: D1880024 00028943
  v_mul_hi_u32  v67, v49, s9                                // 00000DAC: D2D40043 02001331
  v_cndmask_b32  v59, 0, v59, s[32:33]                      // 00000DB4: D200003B 00827680
  v_addc_u32    v67, vcc, v67, 0, s[36:37]                  // 00000DBC: D2506A43 00910143
  v_add_i32     v57, vcc, v57, v59                          // 00000DC4: 4A727739
  v_cndmask_b32  v59, v67, v68, s[18:19]                    // 00000DC8: D200003B 004A8943
  v_cndmask_b32  v67, v68, v66, s[18:19]                    // 00000DD0: D2000043 004A8544
  v_cndmask_b32  v66, v66, v64, s[18:19]                    // 00000DD8: D2000042 004A8142
  v_cndmask_b32  v64, v64, v58, s[18:19]                    // 00000DE0: D2000040 004A7540
  v_cmp_gt_u32  s[36:37], v57, 31                           // 00000DE8: D1880024 00013F39
  v_cndmask_b32  v58, v58, v55, s[18:19]                    // 00000DF0: D200003A 004A6F3A
  v_cndmask_b32  v59, v59, v67, s[34:35]                    // 00000DF8: D200003B 008A873B
  v_cndmask_b32  v67, v67, v66, s[34:35]                    // 00000E00: D2000043 008A8543
  v_cndmask_b32  v66, v66, v64, s[34:35]                    // 00000E08: D2000042 008A8142
  v_cndmask_b32  v64, v64, v58, s[34:35]                    // 00000E10: D2000040 008A7540
  v_cndmask_b32  v68, 0, 32, s[36:37]                       // 00000E18: D2000044 00914080
  v_cndmask_b32  v59, v59, v67, s[32:33]                    // 00000E20: D200003B 0082873B
  v_cndmask_b32  v67, v67, v66, s[32:33]                    // 00000E28: D2000043 00828543
  v_cndmask_b32  v55, v55, v56, s[18:19]                    // 00000E30: D2000037 004A7137
  v_cndmask_b32  v66, v66, v64, s[32:33]                    // 00000E38: D2000042 00828142
  v_sub_i32     v69, vcc, v68, v57                          // 00000E40: 4C8A7344
  v_cndmask_b32  v59, v59, v67, s[36:37]                    // 00000E44: D200003B 0092873B
  v_cndmask_b32  v58, v58, v55, s[34:35]                    // 00000E4C: D200003A 008A6F3A
  v_cndmask_b32  v67, v67, v66, s[36:37]                    // 00000E54: D2000043 00928543
  s_mov_b32     s9, 0xfe5163ab                              // 00000E5C: BE8903FF FE5163AB
  v_add_i32     v69, vcc, 32, v69                           // 00000E64: 4A8A8AA0
  v_cndmask_b32  v64, v64, v58, s[32:33]                    // 00000E68: D2000040 00827540
  v_mul_lo_i32  v49, v49, s9                                // 00000E70: D2D60031 02001331
  v_cmp_ne_i32  vcc, v57, v68                               // 00000E78: 7D0A8939
  v_alignbit_b32  v57, v59, v67, v69                        // 00000E7C: D29C0039 0516873B
  v_cndmask_b32  v66, v66, v64, s[36:37]                    // 00000E84: D2000042 00928142
  v_cndmask_b32  v49, v56, v49, s[18:19]                    // 00000E8C: D2000031 004A6338
  v_cndmask_b32  v56, v59, v57, vcc                         // 00000E94: 0070733B
  v_cndmask_b32  v49, v55, v49, s[34:35]                    // 00000E98: D2000031 008A6337
  v_alignbit_b32  v55, v67, v66, v69                        // 00000EA0: D29C0037 05168543
  v_bfe_u32     v57, v56, 29, 1                             // 00000EA8: D2900039 02053B38
  v_cndmask_b32  v49, v58, v49, s[32:33]                    // 00000EB0: D2000031 0082633A
  v_cndmask_b32  v55, v67, v55, vcc                         // 00000EB8: 006E6F43
  v_cmp_ne_i32  s[18:19], v57, 0                            // 00000EBC: D10A0012 00010139
  v_cndmask_b32  v49, v64, v49, s[36:37]                    // 00000EC4: D2000031 00926340
  v_alignbit_b32  v58, v56, v55, 30                         // 00000ECC: D29C003A 027A6F38
  v_cndmask_b32  v59, 0, -1, s[18:19]                       // 00000ED4: D200003B 00498280
  v_alignbit_b32  v64, v66, v49, v69                        // 00000EDC: D29C0040 05166342
  v_xor_b32     v67, v58, v59                               // 00000EE4: 3A86773A
  v_cndmask_b32  v64, v66, v64, vcc                         // 00000EE8: 00808142
  v_ffbh_u32    v66, v67                                    // 00000EEC: 7E847343
  v_cmp_ne_i32  vcc, v58, v59                               // 00000EF0: 7D0A773A
  v_alignbit_b32  v55, v55, v64, 30                         // 00000EF4: D29C0037 027A8137
  v_alignbit_b32  v49, v64, v49, 30                         // 00000EFC: D29C0031 027A6340
  v_cndmask_b32  v58, 32, v66, vcc                          // 00000F04: 007484A0
  v_sub_i32     v64, vcc, 31, v58                           // 00000F08: 4C80749F
  v_xor_b32     v49, v49, v59                               // 00000F0C: 3A627731
  v_xor_b32     v55, v55, v59                               // 00000F10: 3A6E7737
  v_sub_i32     v59, vcc, 0, v58                            // 00000F14: 4C767480
  v_alignbit_b32  v49, v55, v49, v64                        // 00000F18: D29C0031 05026337
  v_alignbit_b32  v55, v67, v55, v64                        // 00000F20: D29C0037 05026F43
  v_lshlrev_b32  v64, 2, v56                                // 00000F28: 34807082
  v_alignbit_b32  v66, v55, v49, 9                          // 00000F2C: D29C0042 02266337
  v_lshlrev_b32  v59, 23, v59                               // 00000F34: 34767697
  v_and_b32     v64, 0x80000000, v64                        // 00000F38: 368080FF 80000000
  v_add_i32     v59, vcc, 0.5, v59                          // 00000F40: 4A7676F0
  v_ffbh_u32    v67, v66                                    // 00000F44: 7E867342
  v_cmp_ne_i32  vcc, 0, v66                                 // 00000F48: 7D0A8480
  v_lshrrev_b32  v55, 9, v55                                // 00000F4C: 2C6E6E89
  v_or_b32      v59, v64, v59                               // 00000F50: 38767740
  v_cndmask_b32  v67, 32, v67, vcc                          // 00000F54: 008686A0
  v_sub_i32     v58, vcc, 0x00000066, v58                   // 00000F58: 4C7474FF 00000066
  v_or_b32      v55, v55, v59                               // 00000F60: 386E7737
  v_sub_i32     v59, vcc, 31, v67                           // 00000F64: 4C76869F
  v_sub_i32     v58, vcc, v58, v67                          // 00000F68: 4C74873A
  v_alignbit_b32  v49, v66, v49, v59                        // 00000F6C: D29C0031 04EE6342
  v_lshlrev_b32  v58, 23, v58                               // 00000F74: 34747497
  v_mul_f32     v59, 0x3fc90fda, v55                        // 00000F78: 10766EFF 3FC90FDA
  s_mov_b32     s9, 0x3fc90fda                              // 00000F80: BE8903FF 3FC90FDA
  v_lshrrev_b32  v49, 9, v49                                // 00000F88: 2C626289
  v_or_b32      v58, v64, v58                               // 00000F8C: 38747540
  v_fma_f32     v59, v55, s9, -v59                          // 00000F90: D296003B 84EC1337
  s_mov_b32     s17, 0x33a22168                             // 00000F98: BE9103FF 33A22168
  v_or_b32      v49, v49, v58                               // 00000FA0: 38627531
  v_fma_f32     v58, v55, s17, v59                          // 00000FA4: D296003A 04EC2337
  v_fma_f32     v49, v49, s9, v58                           // 00000FAC: D2960031 04E81331
  v_mad_f32     v101, v55, s9, v49                          // 00000FB4: D2820065 04C41337
  v_lshrrev_b32  v56, 30, v56                               // 00000FBC: 2C70709E
  v_mad_f32     v55, -v55, s9, v101                         // 00000FC0: D2820037 25941337
  v_add_i32     v57, vcc, v57, v56                          // 00000FC8: 4A727139
  v_sub_f32     v49, v49, v55                               // 00000FCC: 08626F31
label_03F4:
  s_andn2_b64   exec, s[10:11], exec                        // 00000FD0: 8AFE7E0A
  s_cbranch_execz  label_0424                               // 00000FD4: BF88002E
  s_mov_b32     s9, 0x3f22f983                              // 00000FD8: BE8903FF 3F22F983
  v_mad_f32     v49, v60, s9, 0.5                           // 00000FE0: D2820031 03C0133C
  v_trunc_f32   v49, v49                                    // 00000FE8: 7E624331
  v_mul_f32     v55, 0x3fc90fda, v49                        // 00000FEC: 106E62FF 3FC90FDA
  s_mov_b32     s9, 0x3fc90fda                              // 00000FF4: BE8903FF 3FC90FDA
  v_fma_f32     v55, v49, s9, -v55                          // 00000FFC: D2960037 84DC1331
  v_mad_f32     v56, -v49, s9, v60                          // 00001004: D2820038 24F01331
  v_sub_f32     v57, v60, v56                               // 0000100C: 0872713C
  v_mad_f32     v57, -v49, s9, v57                          // 00001010: D2820039 24E41331
  v_subrev_f32  v55, v55, v57                               // 00001018: 0A6E7337
  v_add_f32     v55, v56, v55                               // 0000101C: 066E6F38
  v_mul_f32     v56, 0x33a22168, v49                        // 00001020: 107062FF 33A22168
  s_mov_b32     s9, 0x33a22168                              // 00001028: BE8903FF 33A22168
  v_fma_f32     v56, v49, s9, -v56                          // 00001030: D2960038 84E01331
  v_mad_f32     v57, -v49, s9, v55                          // 00001038: D2820039 24DC1331
  v_sub_f32     v55, v55, v57                               // 00001040: 086E7337
  v_mad_f32     v55, -v49, s9, v55                          // 00001044: D2820037 24DC1331
  v_subrev_f32  v55, v56, v55                               // 0000104C: 0A6E6F38
  v_add_f32     v55, v57, v55                               // 00001050: 066E6F39
  v_mul_f32     v56, 0x27c234c4, v49                        // 00001054: 107062FF 27C234C4
  s_mov_b32     s9, 0x27c234c4                              // 0000105C: BE8903FF 27C234C4
  v_fma_f32     v56, v49, s9, -v56                          // 00001064: D2960038 84E01331
  v_mad_f32     v57, -v49, s9, v55                          // 0000106C: D2820039 24DC1331
  v_sub_f32     v55, v55, v57                               // 00001074: 086E7337
  v_mad_f32     v55, -v49, s9, v55                          // 00001078: D2820037 24DC1331
  v_add_f32     v101, v57, v55                              // 00001080: 06CA6F39
  v_cvt_i32_f32  v57, v49                                   // 00001084: 7E721131
  v_max_f32     v49, -v56, -v56                             // 00001088: D2200031 60027138
label_0424:
  s_mov_b64     exec, s[10:11]                              // 00001090: BEFE040A
  s_mov_b32     s9, 0x4b000000                              // 00001094: BE8903FF 4B000000
  v_cmp_nlt_f32  s[10:11], v61, s9                          // 0000109C: D01C000A 0000133D
  v_and_b32     v105, 3, v57                                // 000010A4: 36D27283
  s_and_saveexec_b64  s[10:11], s[10:11]                    // 000010A8: BE8A240A
  v_and_b32     v57, 0x007fffff, v51                        // 000010AC: 367266FF 007FFFFF
  s_cbranch_execz  label_0511                               // 000010B4: BF8800E3
  v_or_b32      v57, 0x00800000, v57                        // 000010B8: 387272FF 00800000
  s_mov_b32     s9, 0xfe5163ab                              // 000010C0: BE8903FF FE5163AB
  s_mov_b32     s17, 0x3c439041                             // 000010C8: BE9103FF 3C439041
  v_mul_hi_u32  v58, v57, s9                                // 000010D0: D2D4003A 02001339
  v_mul_lo_u32  v59, v57, s17                               // 000010D8: D2D2003B 02002339
  v_add_i32     v59, vcc, v58, v59                          // 000010E0: 4A76773A
  s_mov_b32     s9, 0xdb629599                              // 000010E4: BE8903FF DB629599
  v_cmp_gt_u32  s[18:19], v58, v59                          // 000010EC: D1880012 0002773A
  v_mul_hi_u32  v58, v57, s17                               // 000010F4: D2D4003A 02002339
  v_mul_lo_u32  v64, v57, s9                                // 000010FC: D2D20040 02001339
  v_addc_u32    v66, vcc, v58, 0, s[18:19]                  // 00001104: D2506A42 0049013A
  v_addc_u32    v58, vcc, v58, v64, s[18:19]                // 0000110C: D2506A3A 004A813A
  s_mov_b32     s17, 0xf534ddc0                             // 00001114: BE9103FF F534DDC0
  v_lshrrev_b32  v64, 23, v61                               // 0000111C: 2C807A97
  v_cmp_gt_u32  s[18:19], v66, v58                          // 00001120: D1880012 00027542
  v_mul_hi_u32  v66, v57, s9                                // 00001128: D2D40042 02001339
  v_mul_lo_u32  v67, v57, s17                               // 00001130: D2D20043 02002339
  v_add_i32     v64, vcc, 0xffffff88, v64                   // 00001138: 4A8080FF FFFFFF88
  v_addc_u32    v68, vcc, v66, 0, s[18:19]                  // 00001140: D2506A44 00490142
  v_addc_u32    v66, vcc, v66, v67, s[18:19]                // 00001148: D2506A42 004A8742
  s_mov_b32     s9, 0xfc2757d1                              // 00001150: BE8903FF FC2757D1
  v_cmp_gt_u32  s[18:19], v64, 31                           // 00001158: D1880012 00013F40
  v_mov_b32     v67, 0xffffffe0                             // 00001160: 7E8602FF FFFFFFE0
  v_cmp_gt_u32  s[32:33], v68, v66                          // 00001168: D1880020 00028544
  v_mul_hi_u32  v68, v57, s17                               // 00001170: D2D40044 02002339
  v_mul_lo_u32  v69, v57, s9                                // 00001178: D2D20045 02001339
  v_cndmask_b32  v70, 0, v67, s[18:19]                      // 00001180: D2000046 004A8680
  v_addc_u32    v71, vcc, v68, 0, s[32:33]                  // 00001188: D2506A47 00810144
  v_addc_u32    v68, vcc, v68, v69, s[32:33]                // 00001190: D2506A44 00828B44
  s_mov_b32     s17, 0x4e441529                             // 00001198: BE9103FF 4E441529
  v_add_i32     v64, vcc, v64, v70                          // 000011A0: 4A808D40
  v_cmp_gt_u32  s[32:33], v71, v68                          // 000011A4: D1880020 00028947
  v_mul_hi_u32  v69, v57, s9                                // 000011AC: D2D40045 02001339
  v_mul_lo_u32  v70, v57, s17                               // 000011B4: D2D20046 02002339
  v_cmp_gt_u32  s[34:35], v64, 31                           // 000011BC: D1880022 00013F40
  v_addc_u32    v71, vcc, v69, 0, s[32:33]                  // 000011C4: D2506A47 00810145
  v_addc_u32    v69, vcc, v69, v70, s[32:33]                // 000011CC: D2506A45 00828D45
  s_mov_b32     s9, 0xa2f9836e                              // 000011D4: BE8903FF A2F9836E
  v_cndmask_b32  v70, 0, v67, s[34:35]                      // 000011DC: D2000046 008A8680
  v_cmp_gt_u32  s[32:33], v71, v69                          // 000011E4: D1880020 00028B47
  v_mul_hi_u32  v71, v57, s17                               // 000011EC: D2D40047 02002339
  v_mul_lo_u32  v74, v57, s9                                // 000011F4: D2D2004A 02001339
  v_add_i32     v64, vcc, v64, v70                          // 000011FC: 4A808D40
  v_addc_u32    v70, vcc, v71, 0, s[32:33]                  // 00001200: D2506A46 00810147
  v_addc_u32    v71, vcc, v71, v74, s[32:33]                // 00001208: D2506A47 00829547
  v_cmp_gt_u32  s[32:33], v64, 31                           // 00001210: D1880020 00013F40
  v_cmp_gt_u32  s[36:37], v70, v71                          // 00001218: D1880024 00028F46
  v_mul_hi_u32  v70, v57, s9                                // 00001220: D2D40046 02001339
  v_cndmask_b32  v67, 0, v67, s[32:33]                      // 00001228: D2000043 00828680
  v_addc_u32    v70, vcc, v70, 0, s[36:37]                  // 00001230: D2506A46 00910146
  v_add_i32     v64, vcc, v64, v67                          // 00001238: 4A808740
  v_cndmask_b32  v67, v70, v71, s[18:19]                    // 0000123C: D2000043 004A8F46
  v_cndmask_b32  v70, v71, v69, s[18:19]                    // 00001244: D2000046 004A8B47
  v_cndmask_b32  v69, v69, v68, s[18:19]                    // 0000124C: D2000045 004A8945
  v_cndmask_b32  v68, v68, v66, s[18:19]                    // 00001254: D2000044 004A8544
  v_cmp_gt_u32  s[36:37], v64, 31                           // 0000125C: D1880024 00013F40
  v_cndmask_b32  v66, v66, v58, s[18:19]                    // 00001264: D2000042 004A7542
  v_cndmask_b32  v67, v67, v70, s[34:35]                    // 0000126C: D2000043 008A8D43
  v_cndmask_b32  v70, v70, v69, s[34:35]                    // 00001274: D2000046 008A8B46
  v_cndmask_b32  v69, v69, v68, s[34:35]                    // 0000127C: D2000045 008A8945
  v_cndmask_b32  v68, v68, v66, s[34:35]                    // 00001284: D2000044 008A8544
  v_cndmask_b32  v71, 0, 32, s[36:37]                       // 0000128C: D2000047 00914080
  v_cndmask_b32  v67, v67, v70, s[32:33]                    // 00001294: D2000043 00828D43
  v_cndmask_b32  v70, v70, v69, s[32:33]                    // 0000129C: D2000046 00828B46
  v_cndmask_b32  v58, v58, v59, s[18:19]                    // 000012A4: D200003A 004A773A
  v_cndmask_b32  v69, v69, v68, s[32:33]                    // 000012AC: D2000045 00828945
  v_sub_i32     v74, vcc, v71, v64                          // 000012B4: 4C948147
  v_cndmask_b32  v67, v67, v70, s[36:37]                    // 000012B8: D2000043 00928D43
  v_cndmask_b32  v66, v66, v58, s[34:35]                    // 000012C0: D2000042 008A7542
  v_cndmask_b32  v70, v70, v69, s[36:37]                    // 000012C8: D2000046 00928B46
  s_mov_b32     s9, 0xfe5163ab                              // 000012D0: BE8903FF FE5163AB
  v_add_i32     v74, vcc, 32, v74                           // 000012D8: 4A9494A0
  v_cndmask_b32  v68, v68, v66, s[32:33]                    // 000012DC: D2000044 00828544
  v_mul_lo_i32  v57, v57, s9                                // 000012E4: D2D60039 02001339
  v_cmp_ne_i32  vcc, v64, v71                               // 000012EC: 7D0A8F40
  v_alignbit_b32  v64, v67, v70, v74                        // 000012F0: D29C0040 052A8D43
  v_cndmask_b32  v69, v69, v68, s[36:37]                    // 000012F8: D2000045 00928945
  v_cndmask_b32  v57, v59, v57, s[18:19]                    // 00001300: D2000039 004A733B
  v_cndmask_b32  v59, v67, v64, vcc                         // 00001308: 00768143
  v_cndmask_b32  v57, v58, v57, s[34:35]                    // 0000130C: D2000039 008A733A
  v_alignbit_b32  v58, v70, v69, v74                        // 00001314: D29C003A 052A8B46
  v_bfe_u32     v64, v59, 29, 1                             // 0000131C: D2900040 02053B3B
  v_cndmask_b32  v57, v66, v57, s[32:33]                    // 00001324: D2000039 00827342
  v_cndmask_b32  v58, v70, v58, vcc                         // 0000132C: 00747546
  v_cmp_ne_i32  s[18:19], v64, 0                            // 00001330: D10A0012 00010140
  v_cndmask_b32  v57, v68, v57, s[36:37]                    // 00001338: D2000039 00927344
  v_alignbit_b32  v66, v59, v58, 30                         // 00001340: D29C0042 027A753B
  v_cndmask_b32  v67, 0, -1, s[18:19]                       // 00001348: D2000043 00498280
  v_alignbit_b32  v68, v69, v57, v74                        // 00001350: D29C0044 052A7345
  v_xor_b32     v70, v66, v67                               // 00001358: 3A8C8742
  v_cndmask_b32  v68, v69, v68, vcc                         // 0000135C: 00888945
  v_ffbh_u32    v69, v70                                    // 00001360: 7E8A7346
  v_cmp_ne_i32  vcc, v66, v67                               // 00001364: 7D0A8742
  v_alignbit_b32  v58, v58, v68, 30                         // 00001368: D29C003A 027A893A
  v_alignbit_b32  v57, v68, v57, 30                         // 00001370: D29C0039 027A7344
  v_cndmask_b32  v66, 32, v69, vcc                          // 00001378: 00848AA0
  v_sub_i32     v68, vcc, 31, v66                           // 0000137C: 4C88849F
  v_xor_b32     v57, v57, v67                               // 00001380: 3A728739
  v_xor_b32     v58, v58, v67                               // 00001384: 3A74873A
  v_sub_i32     v67, vcc, 0, v66                            // 00001388: 4C868480
  v_alignbit_b32  v57, v58, v57, v68                        // 0000138C: D29C0039 0512733A
  v_alignbit_b32  v58, v70, v58, v68                        // 00001394: D29C003A 05127546
  v_lshlrev_b32  v68, 2, v59                                // 0000139C: 34887682
  v_alignbit_b32  v69, v58, v57, 9                          // 000013A0: D29C0045 0226733A
  v_lshlrev_b32  v67, 23, v67                               // 000013A8: 34868697
  v_and_b32     v68, 0x80000000, v68                        // 000013AC: 368888FF 80000000
  v_add_i32     v67, vcc, 0.5, v67                          // 000013B4: 4A8686F0
  v_ffbh_u32    v70, v69                                    // 000013B8: 7E8C7345
  v_cmp_ne_i32  vcc, 0, v69                                 // 000013BC: 7D0A8A80
  v_lshrrev_b32  v58, 9, v58                                // 000013C0: 2C747489
  v_or_b32      v67, v68, v67                               // 000013C4: 38868744
  v_cndmask_b32  v70, 32, v70, vcc                          // 000013C8: 008C8CA0
  v_sub_i32     v66, vcc, 0x00000066, v66                   // 000013CC: 4C8484FF 00000066
  v_or_b32      v58, v58, v67                               // 000013D4: 3874873A
  v_sub_i32     v67, vcc, 31, v70                           // 000013D8: 4C868C9F
  v_sub_i32     v66, vcc, v66, v70                          // 000013DC: 4C848D42
  v_alignbit_b32  v57, v69, v57, v67                        // 000013E0: D29C0039 050E7345
  v_lshlrev_b32  v66, 23, v66                               // 000013E8: 34848497
  v_mul_f32     v67, 0x3fc90fda, v58                        // 000013EC: 108674FF 3FC90FDA
  s_mov_b32     s9, 0x3fc90fda                              // 000013F4: BE8903FF 3FC90FDA
  v_lshrrev_b32  v57, 9, v57                                // 000013FC: 2C727289
  v_or_b32      v66, v68, v66                               // 00001400: 38848544
  v_fma_f32     v67, v58, s9, -v67                          // 00001404: D2960043 850C133A
  s_mov_b32     s17, 0x33a22168                             // 0000140C: BE9103FF 33A22168
  v_or_b32      v57, v57, v66                               // 00001414: 38728539
  v_fma_f32     v66, v58, s17, v67                          // 00001418: D2960042 050C233A
  v_fma_f32     v57, v57, s9, v66                           // 00001420: D2960039 05081339
  v_mad_f32     v102, v58, s9, v57                          // 00001428: D2820066 04E4133A
  v_lshrrev_b32  v59, 30, v59                               // 00001430: 2C76769E
  v_mad_f32     v58, -v58, s9, v102                         // 00001434: D282003A 2598133A
  v_add_i32     v55, vcc, v64, v59                          // 0000143C: 4A6E7740
  v_sub_f32     v56, v57, v58                               // 00001440: 08707539
label_0511:
  s_andn2_b64   exec, s[10:11], exec                        // 00001444: 8AFE7E0A
  s_cbranch_execz  label_0541                               // 00001448: BF88002E
  s_mov_b32     s9, 0x3f22f983                              // 0000144C: BE8903FF 3F22F983
  v_mad_f32     v57, v61, s9, 0.5                           // 00001454: D2820039 03C0133D
  v_trunc_f32   v57, v57                                    // 0000145C: 7E724339
  v_mul_f32     v58, 0x3fc90fda, v57                        // 00001460: 107472FF 3FC90FDA
  s_mov_b32     s9, 0x3fc90fda                              // 00001468: BE8903FF 3FC90FDA
  v_fma_f32     v58, v57, s9, -v58                          // 00001470: D296003A 84E81339
  v_mad_f32     v59, -v57, s9, v61                          // 00001478: D282003B 24F41339
  v_sub_f32     v64, v61, v59                               // 00001480: 0880773D
  v_mad_f32     v64, -v57, s9, v64                          // 00001484: D2820040 25001339
  v_subrev_f32  v58, v58, v64                               // 0000148C: 0A74813A
  v_add_f32     v58, v59, v58                               // 00001490: 0674753B
  v_mul_f32     v59, 0x33a22168, v57                        // 00001494: 107672FF 33A22168
  s_mov_b32     s9, 0x33a22168                              // 0000149C: BE8903FF 33A22168
  v_fma_f32     v59, v57, s9, -v59                          // 000014A4: D296003B 84EC1339
  v_mad_f32     v64, -v57, s9, v58                          // 000014AC: D2820040 24E81339
  v_sub_f32     v58, v58, v64                               // 000014B4: 0874813A
  v_mad_f32     v58, -v57, s9, v58                          // 000014B8: D282003A 24E81339
  v_subrev_f32  v58, v59, v58                               // 000014C0: 0A74753B
  v_add_f32     v58, v64, v58                               // 000014C4: 06747540
  v_mul_f32     v59, 0x27c234c4, v57                        // 000014C8: 107672FF 27C234C4
  s_mov_b32     s9, 0x27c234c4                              // 000014D0: BE8903FF 27C234C4
  v_fma_f32     v59, v57, s9, -v59                          // 000014D8: D296003B 84EC1339
  v_mad_f32     v64, -v57, s9, v58                          // 000014E0: D2820040 24E81339
  v_sub_f32     v58, v58, v64                               // 000014E8: 0874813A
  v_mad_f32     v58, -v57, s9, v58                          // 000014EC: D282003A 24E81339
  v_add_f32     v102, v64, v58                              // 000014F4: 06CC7540
  v_cvt_i32_f32  v55, v57                                   // 000014F8: 7E6E1139
  v_max_f32     v56, -v59, -v59                             // 000014FC: D2200038 6002773B
label_0541:
  s_mov_b64     exec, s[10:11]                              // 00001504: BEFE040A
  v_and_b32     v106, 3, v55                                // 00001508: 36D46E83
  s_mov_b32     s9, 0x4b000000                              // 0000150C: BE8903FF 4B000000
  v_cmp_nlt_f32  s[10:11], v62, s9                          // 00001514: D01C000A 0000133E
  s_and_saveexec_b64  s[10:11], s[10:11]                    // 0000151C: BE8A240A
  v_and_b32     v64, 0x007fffff, v52                        // 00001520: 368068FF 007FFFFF
  s_cbranch_execz  label_062E                               // 00001528: BF8800E3
  v_or_b32      v64, 0x00800000, v64                        // 0000152C: 388080FF 00800000
  s_mov_b32     s9, 0xfe5163ab                              // 00001534: BE8903FF FE5163AB
  s_mov_b32     s17, 0x3c439041                             // 0000153C: BE9103FF 3C439041
  v_mul_hi_u32  v66, v64, s9                                // 00001544: D2D40042 02001340
  v_mul_lo_u32  v67, v64, s17                               // 0000154C: D2D20043 02002340
  v_add_i32     v67, vcc, v66, v67                          // 00001554: 4A868742
  s_mov_b32     s9, 0xdb629599                              // 00001558: BE8903FF DB629599
  v_cmp_gt_u32  s[18:19], v66, v67                          // 00001560: D1880012 00028742
  v_mul_hi_u32  v66, v64, s17                               // 00001568: D2D40042 02002340
  v_mul_lo_u32  v68, v64, s9                                // 00001570: D2D20044 02001340
  v_addc_u32    v69, vcc, v66, 0, s[18:19]                  // 00001578: D2506A45 00490142
  v_addc_u32    v66, vcc, v66, v68, s[18:19]                // 00001580: D2506A42 004A8942
  s_mov_b32     s17, 0xf534ddc0                             // 00001588: BE9103FF F534DDC0
  v_lshrrev_b32  v68, 23, v62                               // 00001590: 2C887C97
  v_cmp_gt_u32  s[18:19], v69, v66                          // 00001594: D1880012 00028545
  v_mul_hi_u32  v69, v64, s9                                // 0000159C: D2D40045 02001340
  v_mul_lo_u32  v70, v64, s17                               // 000015A4: D2D20046 02002340
  v_add_i32     v68, vcc, 0xffffff88, v68                   // 000015AC: 4A8888FF FFFFFF88
  v_addc_u32    v71, vcc, v69, 0, s[18:19]                  // 000015B4: D2506A47 00490145
  v_addc_u32    v69, vcc, v69, v70, s[18:19]                // 000015BC: D2506A45 004A8D45
  s_mov_b32     s9, 0xfc2757d1                              // 000015C4: BE8903FF FC2757D1
  v_cmp_gt_u32  s[18:19], v68, 31                           // 000015CC: D1880012 00013F44
  v_mov_b32     v70, 0xffffffe0                             // 000015D4: 7E8C02FF FFFFFFE0
  v_cmp_gt_u32  s[32:33], v71, v69                          // 000015DC: D1880020 00028B47
  v_mul_hi_u32  v71, v64, s17                               // 000015E4: D2D40047 02002340
  v_mul_lo_u32  v74, v64, s9                                // 000015EC: D2D2004A 02001340
  v_cndmask_b32  v75, 0, v70, s[18:19]                      // 000015F4: D200004B 004A8C80
  v_addc_u32    v76, vcc, v71, 0, s[32:33]                  // 000015FC: D2506A4C 00810147
  v_addc_u32    v71, vcc, v71, v74, s[32:33]                // 00001604: D2506A47 00829547
  s_mov_b32     s17, 0x4e441529                             // 0000160C: BE9103FF 4E441529
  v_add_i32     v68, vcc, v68, v75                          // 00001614: 4A889744
  v_cmp_gt_u32  s[32:33], v76, v71                          // 00001618: D1880020 00028F4C
  v_mul_hi_u32  v74, v64, s9                                // 00001620: D2D4004A 02001340
  v_mul_lo_u32  v75, v64, s17                               // 00001628: D2D2004B 02002340
  v_cmp_gt_u32  s[34:35], v68, 31                           // 00001630: D1880022 00013F44
  v_addc_u32    v76, vcc, v74, 0, s[32:33]                  // 00001638: D2506A4C 0081014A
  v_addc_u32    v74, vcc, v74, v75, s[32:33]                // 00001640: D2506A4A 0082974A
  s_mov_b32     s9, 0xa2f9836e                              // 00001648: BE8903FF A2F9836E
  v_cndmask_b32  v75, 0, v70, s[34:35]                      // 00001650: D200004B 008A8C80
  v_cmp_gt_u32  s[32:33], v76, v74                          // 00001658: D1880020 0002954C
  v_mul_hi_u32  v76, v64, s17                               // 00001660: D2D4004C 02002340
  v_mul_lo_u32  v77, v64, s9                                // 00001668: D2D2004D 02001340
  v_add_i32     v68, vcc, v68, v75                          // 00001670: 4A889744
  v_addc_u32    v75, vcc, v76, 0, s[32:33]                  // 00001674: D2506A4B 0081014C
  v_addc_u32    v76, vcc, v76, v77, s[32:33]                // 0000167C: D2506A4C 00829B4C
  v_cmp_gt_u32  s[32:33], v68, 31                           // 00001684: D1880020 00013F44
  v_cmp_gt_u32  s[36:37], v75, v76                          // 0000168C: D1880024 0002994B
  v_mul_hi_u32  v75, v64, s9                                // 00001694: D2D4004B 02001340
  v_cndmask_b32  v70, 0, v70, s[32:33]                      // 0000169C: D2000046 00828C80
  v_addc_u32    v75, vcc, v75, 0, s[36:37]                  // 000016A4: D2506A4B 0091014B
  v_add_i32     v68, vcc, v68, v70                          // 000016AC: 4A888D44
  v_cndmask_b32  v70, v75, v76, s[18:19]                    // 000016B0: D2000046 004A994B
  v_cndmask_b32  v75, v76, v74, s[18:19]                    // 000016B8: D200004B 004A954C
  v_cndmask_b32  v74, v74, v71, s[18:19]                    // 000016C0: D200004A 004A8F4A
  v_cndmask_b32  v71, v71, v69, s[18:19]                    // 000016C8: D2000047 004A8B47
  v_cmp_gt_u32  s[36:37], v68, 31                           // 000016D0: D1880024 00013F44
  v_cndmask_b32  v69, v69, v66, s[18:19]                    // 000016D8: D2000045 004A8545
  v_cndmask_b32  v70, v70, v75, s[34:35]                    // 000016E0: D2000046 008A9746
  v_cndmask_b32  v75, v75, v74, s[34:35]                    // 000016E8: D200004B 008A954B
  v_cndmask_b32  v74, v74, v71, s[34:35]                    // 000016F0: D200004A 008A8F4A
  v_cndmask_b32  v71, v71, v69, s[34:35]                    // 000016F8: D2000047 008A8B47
  v_cndmask_b32  v76, 0, 32, s[36:37]                       // 00001700: D200004C 00914080
  v_cndmask_b32  v70, v70, v75, s[32:33]                    // 00001708: D2000046 00829746
  v_cndmask_b32  v75, v75, v74, s[32:33]                    // 00001710: D200004B 0082954B
  v_cndmask_b32  v66, v66, v67, s[18:19]                    // 00001718: D2000042 004A8742
  v_cndmask_b32  v74, v74, v71, s[32:33]                    // 00001720: D200004A 00828F4A
  v_sub_i32     v77, vcc, v76, v68                          // 00001728: 4C9A894C
  v_cndmask_b32  v70, v70, v75, s[36:37]                    // 0000172C: D2000046 00929746
  v_cndmask_b32  v69, v69, v66, s[34:35]                    // 00001734: D2000045 008A8545
  v_cndmask_b32  v75, v75, v74, s[36:37]                    // 0000173C: D200004B 0092954B
  s_mov_b32     s9, 0xfe5163ab                              // 00001744: BE8903FF FE5163AB
  v_add_i32     v77, vcc, 32, v77                           // 0000174C: 4A9A9AA0
  v_cndmask_b32  v71, v71, v69, s[32:33]                    // 00001750: D2000047 00828B47
  v_mul_lo_i32  v64, v64, s9                                // 00001758: D2D60040 02001340
  v_cmp_ne_i32  vcc, v68, v76                               // 00001760: 7D0A9944
  v_alignbit_b32  v68, v70, v75, v77                        // 00001764: D29C0044 05369746
  v_cndmask_b32  v74, v74, v71, s[36:37]                    // 0000176C: D200004A 00928F4A
  v_cndmask_b32  v64, v67, v64, s[18:19]                    // 00001774: D2000040 004A8143
  v_cndmask_b32  v67, v70, v68, vcc                         // 0000177C: 00868946
  v_cndmask_b32  v64, v66, v64, s[34:35]                    // 00001780: D2000040 008A8142
  v_alignbit_b32  v66, v75, v74, v77                        // 00001788: D29C0042 0536954B
  v_bfe_u32     v68, v67, 29, 1                             // 00001790: D2900044 02053B43
  v_cndmask_b32  v64, v69, v64, s[32:33]                    // 00001798: D2000040 00828145
  v_cndmask_b32  v66, v75, v66, vcc                         // 000017A0: 0084854B
  v_cmp_ne_i32  s[18:19], v68, 0                            // 000017A4: D10A0012 00010144
  v_cndmask_b32  v64, v71, v64, s[36:37]                    // 000017AC: D2000040 00928147
  v_alignbit_b32  v69, v67, v66, 30                         // 000017B4: D29C0045 027A8543
  v_cndmask_b32  v70, 0, -1, s[18:19]                       // 000017BC: D2000046 00498280
  v_alignbit_b32  v71, v74, v64, v77                        // 000017C4: D29C0047 0536814A
  v_xor_b32     v75, v69, v70                               // 000017CC: 3A968D45
  v_cndmask_b32  v71, v74, v71, vcc                         // 000017D0: 008E8F4A
  v_ffbh_u32    v74, v75                                    // 000017D4: 7E94734B
  v_cmp_ne_i32  vcc, v69, v70                               // 000017D8: 7D0A8D45
  v_alignbit_b32  v66, v66, v71, 30                         // 000017DC: D29C0042 027A8F42
  v_alignbit_b32  v64, v71, v64, 30                         // 000017E4: D29C0040 027A8147
  v_cndmask_b32  v69, 32, v74, vcc                          // 000017EC: 008A94A0
  v_sub_i32     v71, vcc, 31, v69                           // 000017F0: 4C8E8A9F
  v_xor_b32     v64, v64, v70                               // 000017F4: 3A808D40
  v_xor_b32     v66, v66, v70                               // 000017F8: 3A848D42
  v_sub_i32     v70, vcc, 0, v69                            // 000017FC: 4C8C8A80
  v_alignbit_b32  v64, v66, v64, v71                        // 00001800: D29C0040 051E8142
  v_alignbit_b32  v66, v75, v66, v71                        // 00001808: D29C0042 051E854B
  v_lshlrev_b32  v71, 2, v67                                // 00001810: 348E8682
  v_alignbit_b32  v74, v66, v64, 9                          // 00001814: D29C004A 02268142
  v_lshlrev_b32  v70, 23, v70                               // 0000181C: 348C8C97
  v_and_b32     v71, 0x80000000, v71                        // 00001820: 368E8EFF 80000000
  v_add_i32     v70, vcc, 0.5, v70                          // 00001828: 4A8C8CF0
  v_ffbh_u32    v75, v74                                    // 0000182C: 7E96734A
  v_cmp_ne_i32  vcc, 0, v74                                 // 00001830: 7D0A9480
  v_lshrrev_b32  v66, 9, v66                                // 00001834: 2C848489
  v_or_b32      v70, v71, v70                               // 00001838: 388C8D47
  v_cndmask_b32  v75, 32, v75, vcc                          // 0000183C: 009696A0
  v_sub_i32     v69, vcc, 0x00000066, v69                   // 00001840: 4C8A8AFF 00000066
  v_or_b32      v66, v66, v70                               // 00001848: 38848D42
  v_sub_i32     v70, vcc, 31, v75                           // 0000184C: 4C8C969F
  v_sub_i32     v69, vcc, v69, v75                          // 00001850: 4C8A9745
  v_alignbit_b32  v64, v74, v64, v70                        // 00001854: D29C0040 051A814A
  v_lshlrev_b32  v69, 23, v69                               // 0000185C: 348A8A97
  v_mul_f32     v70, 0x3fc90fda, v66                        // 00001860: 108C84FF 3FC90FDA
  s_mov_b32     s9, 0x3fc90fda                              // 00001868: BE8903FF 3FC90FDA
  v_lshrrev_b32  v64, 9, v64                                // 00001870: 2C808089
  v_or_b32      v69, v71, v69                               // 00001874: 388A8B47
  v_fma_f32     v70, v66, s9, -v70                          // 00001878: D2960046 85181342
  s_mov_b32     s17, 0x33a22168                             // 00001880: BE9103FF 33A22168
  v_or_b32      v64, v64, v69                               // 00001888: 38808B40
  v_fma_f32     v69, v66, s17, v70                          // 0000188C: D2960045 05182342
  v_fma_f32     v64, v64, s9, v69                           // 00001894: D2960040 05141340
  v_mad_f32     v103, v66, s9, v64                          // 0000189C: D2820067 05001342
  v_lshrrev_b32  v67, 30, v67                               // 000018A4: 2C86869E
  v_mad_f32     v66, -v66, s9, v103                         // 000018A8: D2820042 259C1342
  v_add_i32     v55, vcc, v68, v67                          // 000018B0: 4A6E8744
  v_sub_f32     v57, v64, v66                               // 000018B4: 08728540
label_062E:
  s_andn2_b64   exec, s[10:11], exec                        // 000018B8: 8AFE7E0A
  s_cbranch_execz  label_065E                               // 000018BC: BF88002E
  s_mov_b32     s9, 0x3f22f983                              // 000018C0: BE8903FF 3F22F983
  v_mad_f32     v64, v62, s9, 0.5                           // 000018C8: D2820040 03C0133E
  v_trunc_f32   v64, v64                                    // 000018D0: 7E804340
  v_mul_f32     v66, 0x3fc90fda, v64                        // 000018D4: 108480FF 3FC90FDA
  s_mov_b32     s9, 0x3fc90fda                              // 000018DC: BE8903FF 3FC90FDA
  v_fma_f32     v66, v64, s9, -v66                          // 000018E4: D2960042 85081340
  v_mad_f32     v67, -v64, s9, v62                          // 000018EC: D2820043 24F81340
  v_sub_f32     v68, v62, v67                               // 000018F4: 0888873E
  v_mad_f32     v68, -v64, s9, v68                          // 000018F8: D2820044 25101340
  v_subrev_f32  v66, v66, v68                               // 00001900: 0A848942
  v_add_f32     v66, v67, v66                               // 00001904: 06848543
  v_mul_f32     v67, 0x33a22168, v64                        // 00001908: 108680FF 33A22168
  s_mov_b32     s9, 0x33a22168                              // 00001910: BE8903FF 33A22168
  v_fma_f32     v67, v64, s9, -v67                          // 00001918: D2960043 850C1340
  v_mad_f32     v68, -v64, s9, v66                          // 00001920: D2820044 25081340
  v_sub_f32     v66, v66, v68                               // 00001928: 08848942
  v_mad_f32     v66, -v64, s9, v66                          // 0000192C: D2820042 25081340
  v_subrev_f32  v66, v67, v66                               // 00001934: 0A848543
  v_add_f32     v66, v68, v66                               // 00001938: 06848544
  v_mul_f32     v67, 0x27c234c4, v64                        // 0000193C: 108680FF 27C234C4
  s_mov_b32     s9, 0x27c234c4                              // 00001944: BE8903FF 27C234C4
  v_fma_f32     v67, v64, s9, -v67                          // 0000194C: D2960043 850C1340
  v_mad_f32     v68, -v64, s9, v66                          // 00001954: D2820044 25081340
  v_sub_f32     v66, v66, v68                               // 0000195C: 08848942
  v_mad_f32     v66, -v64, s9, v66                          // 00001960: D2820042 25081340
  v_add_f32     v103, v68, v66                              // 00001968: 06CE8544
  v_cvt_i32_f32  v55, v64                                   // 0000196C: 7E6E1140
  v_max_f32     v57, -v67, -v67                             // 00001970: D2200039 60028743
label_065E:
  s_mov_b64     exec, s[10:11]                              // 00001978: BEFE040A
  v_and_b32     v64, 3, v55                                 // 0000197C: 36806E83
  s_mov_b32     s9, 0x4b000000                              // 00001980: BE8903FF 4B000000
  v_cmp_nlt_f32  s[10:11], v54, s9                          // 00001988: D01C000A 00001336
  s_and_saveexec_b64  s[10:11], s[10:11]                    // 00001990: BE8A240A
  v_and_b32     v68, 0x007fffff, v53                        // 00001994: 36886AFF 007FFFFF
  s_cbranch_execz  label_074B                               // 0000199C: BF8800E3
  v_or_b32      v68, 0x00800000, v68                        // 000019A0: 388888FF 00800000
  s_mov_b32     s9, 0xfe5163ab                              // 000019A8: BE8903FF FE5163AB
  s_mov_b32     s17, 0x3c439041                             // 000019B0: BE9103FF 3C439041
  v_mul_hi_u32  v69, v68, s9                                // 000019B8: D2D40045 02001344
  v_mul_lo_u32  v70, v68, s17                               // 000019C0: D2D20046 02002344
  v_add_i32     v70, vcc, v69, v70                          // 000019C8: 4A8C8D45
  s_mov_b32     s9, 0xdb629599                              // 000019CC: BE8903FF DB629599
  v_cmp_gt_u32  s[18:19], v69, v70                          // 000019D4: D1880012 00028D45
  v_mul_hi_u32  v69, v68, s17                               // 000019DC: D2D40045 02002344
  v_mul_lo_u32  v71, v68, s9                                // 000019E4: D2D20047 02001344
  v_addc_u32    v74, vcc, v69, 0, s[18:19]                  // 000019EC: D2506A4A 00490145
  v_addc_u32    v69, vcc, v69, v71, s[18:19]                // 000019F4: D2506A45 004A8F45
  s_mov_b32     s17, 0xf534ddc0                             // 000019FC: BE9103FF F534DDC0
  v_lshrrev_b32  v71, 23, v54                               // 00001A04: 2C8E6C97
  v_cmp_gt_u32  s[18:19], v74, v69                          // 00001A08: D1880012 00028B4A
  v_mul_hi_u32  v74, v68, s9                                // 00001A10: D2D4004A 02001344
  v_mul_lo_u32  v75, v68, s17                               // 00001A18: D2D2004B 02002344
  v_add_i32     v71, vcc, 0xffffff88, v71                   // 00001A20: 4A8E8EFF FFFFFF88
  v_addc_u32    v76, vcc, v74, 0, s[18:19]                  // 00001A28: D2506A4C 0049014A
  v_addc_u32    v74, vcc, v74, v75, s[18:19]                // 00001A30: D2506A4A 004A974A
  s_mov_b32     s9, 0xfc2757d1                              // 00001A38: BE8903FF FC2757D1
  v_cmp_gt_u32  s[18:19], v71, 31                           // 00001A40: D1880012 00013F47
  v_mov_b32     v75, 0xffffffe0                             // 00001A48: 7E9602FF FFFFFFE0
  v_cmp_gt_u32  s[32:33], v76, v74                          // 00001A50: D1880020 0002954C
  v_mul_hi_u32  v76, v68, s17                               // 00001A58: D2D4004C 02002344
  v_mul_lo_u32  v77, v68, s9                                // 00001A60: D2D2004D 02001344
  v_cndmask_b32  v78, 0, v75, s[18:19]                      // 00001A68: D200004E 004A9680
  v_addc_u32    v79, vcc, v76, 0, s[32:33]                  // 00001A70: D2506A4F 0081014C
  v_addc_u32    v76, vcc, v76, v77, s[32:33]                // 00001A78: D2506A4C 00829B4C
  s_mov_b32     s17, 0x4e441529                             // 00001A80: BE9103FF 4E441529
  v_add_i32     v71, vcc, v71, v78                          // 00001A88: 4A8E9D47
  v_cmp_gt_u32  s[32:33], v79, v76                          // 00001A8C: D1880020 0002994F
  v_mul_hi_u32  v77, v68, s9                                // 00001A94: D2D4004D 02001344
  v_mul_lo_u32  v78, v68, s17                               // 00001A9C: D2D2004E 02002344
  v_cmp_gt_u32  s[34:35], v71, 31                           // 00001AA4: D1880022 00013F47
  v_addc_u32    v79, vcc, v77, 0, s[32:33]                  // 00001AAC: D2506A4F 0081014D
  v_addc_u32    v77, vcc, v77, v78, s[32:33]                // 00001AB4: D2506A4D 00829D4D
  s_mov_b32     s9, 0xa2f9836e                              // 00001ABC: BE8903FF A2F9836E
  v_cndmask_b32  v78, 0, v75, s[34:35]                      // 00001AC4: D200004E 008A9680
  v_cmp_gt_u32  s[32:33], v79, v77                          // 00001ACC: D1880020 00029B4F
  v_mul_hi_u32  v79, v68, s17                               // 00001AD4: D2D4004F 02002344
  v_mul_lo_u32  v80, v68, s9                                // 00001ADC: D2D20050 02001344
  v_add_i32     v71, vcc, v71, v78                          // 00001AE4: 4A8E9D47
  v_addc_u32    v78, vcc, v79, 0, s[32:33]                  // 00001AE8: D2506A4E 0081014F
  v_addc_u32    v79, vcc, v79, v80, s[32:33]                // 00001AF0: D2506A4F 0082A14F
  v_cmp_gt_u32  s[32:33], v71, 31                           // 00001AF8: D1880020 00013F47
  v_cmp_gt_u32  s[36:37], v78, v79                          // 00001B00: D1880024 00029F4E
  v_mul_hi_u32  v78, v68, s9                                // 00001B08: D2D4004E 02001344
  v_cndmask_b32  v75, 0, v75, s[32:33]                      // 00001B10: D200004B 00829680
  v_addc_u32    v78, vcc, v78, 0, s[36:37]                  // 00001B18: D2506A4E 0091014E
  v_add_i32     v71, vcc, v71, v75                          // 00001B20: 4A8E9747
  v_cndmask_b32  v75, v78, v79, s[18:19]                    // 00001B24: D200004B 004A9F4E
  v_cndmask_b32  v78, v79, v77, s[18:19]                    // 00001B2C: D200004E 004A9B4F
  v_cndmask_b32  v77, v77, v76, s[18:19]                    // 00001B34: D200004D 004A994D
  v_cndmask_b32  v76, v76, v74, s[18:19]                    // 00001B3C: D200004C 004A954C
  v_cmp_gt_u32  s[36:37], v71, 31                           // 00001B44: D1880024 00013F47
  v_cndmask_b32  v74, v74, v69, s[18:19]                    // 00001B4C: D200004A 004A8B4A
  v_cndmask_b32  v75, v75, v78, s[34:35]                    // 00001B54: D200004B 008A9D4B
  v_cndmask_b32  v78, v78, v77, s[34:35]                    // 00001B5C: D200004E 008A9B4E
  v_cndmask_b32  v77, v77, v76, s[34:35]                    // 00001B64: D200004D 008A994D
  v_cndmask_b32  v76, v76, v74, s[34:35]                    // 00001B6C: D200004C 008A954C
  v_cndmask_b32  v79, 0, 32, s[36:37]                       // 00001B74: D200004F 00914080
  v_cndmask_b32  v75, v75, v78, s[32:33]                    // 00001B7C: D200004B 00829D4B
  v_cndmask_b32  v78, v78, v77, s[32:33]                    // 00001B84: D200004E 00829B4E
  v_cndmask_b32  v69, v69, v70, s[18:19]                    // 00001B8C: D2000045 004A8D45
  v_cndmask_b32  v77, v77, v76, s[32:33]                    // 00001B94: D200004D 0082994D
  v_sub_i32     v80, vcc, v79, v71                          // 00001B9C: 4CA08F4F
  v_cndmask_b32  v75, v75, v78, s[36:37]                    // 00001BA0: D200004B 00929D4B
  v_cndmask_b32  v74, v74, v69, s[34:35]                    // 00001BA8: D200004A 008A8B4A
  v_cndmask_b32  v78, v78, v77, s[36:37]                    // 00001BB0: D200004E 00929B4E
  s_mov_b32     s9, 0xfe5163ab                              // 00001BB8: BE8903FF FE5163AB
  v_add_i32     v80, vcc, 32, v80                           // 00001BC0: 4AA0A0A0
  v_cndmask_b32  v76, v76, v74, s[32:33]                    // 00001BC4: D200004C 0082954C
  v_mul_lo_i32  v68, v68, s9                                // 00001BCC: D2D60044 02001344
  v_cmp_ne_i32  vcc, v71, v79                               // 00001BD4: 7D0A9F47
  v_alignbit_b32  v71, v75, v78, v80                        // 00001BD8: D29C0047 05429D4B
  v_cndmask_b32  v77, v77, v76, s[36:37]                    // 00001BE0: D200004D 0092994D
  v_cndmask_b32  v68, v70, v68, s[18:19]                    // 00001BE8: D2000044 004A8946
  v_cndmask_b32  v70, v75, v71, vcc                         // 00001BF0: 008C8F4B
  v_cndmask_b32  v68, v69, v68, s[34:35]                    // 00001BF4: D2000044 008A8945
  v_alignbit_b32  v69, v78, v77, v80                        // 00001BFC: D29C0045 05429B4E
  v_bfe_u32     v71, v70, 29, 1                             // 00001C04: D2900047 02053B46
  v_cndmask_b32  v68, v74, v68, s[32:33]                    // 00001C0C: D2000044 0082894A
  v_cndmask_b32  v69, v78, v69, vcc                         // 00001C14: 008A8B4E
  v_cmp_ne_i32  s[18:19], v71, 0                            // 00001C18: D10A0012 00010147
  v_cndmask_b32  v68, v76, v68, s[36:37]                    // 00001C20: D2000044 0092894C
  v_alignbit_b32  v74, v70, v69, 30                         // 00001C28: D29C004A 027A8B46
  v_cndmask_b32  v75, 0, -1, s[18:19]                       // 00001C30: D200004B 00498280
  v_alignbit_b32  v76, v77, v68, v80                        // 00001C38: D29C004C 0542894D
  v_xor_b32     v78, v74, v75                               // 00001C40: 3A9C974A
  v_cndmask_b32  v76, v77, v76, vcc                         // 00001C44: 0098994D
  v_ffbh_u32    v77, v78                                    // 00001C48: 7E9A734E
  v_cmp_ne_i32  vcc, v74, v75                               // 00001C4C: 7D0A974A
  v_alignbit_b32  v69, v69, v76, 30                         // 00001C50: D29C0045 027A9945
  v_alignbit_b32  v68, v76, v68, 30                         // 00001C58: D29C0044 027A894C
  v_cndmask_b32  v74, 32, v77, vcc                          // 00001C60: 00949AA0
  v_sub_i32     v76, vcc, 31, v74                           // 00001C64: 4C98949F
  v_xor_b32     v68, v68, v75                               // 00001C68: 3A889744
  v_xor_b32     v69, v69, v75                               // 00001C6C: 3A8A9745
  v_sub_i32     v75, vcc, 0, v74                            // 00001C70: 4C969480
  v_alignbit_b32  v68, v69, v68, v76                        // 00001C74: D29C0044 05328945
  v_alignbit_b32  v69, v78, v69, v76                        // 00001C7C: D29C0045 05328B4E
  v_lshlrev_b32  v76, 2, v70                                // 00001C84: 34988C82
  v_alignbit_b32  v77, v69, v68, 9                          // 00001C88: D29C004D 02268945
  v_lshlrev_b32  v75, 23, v75                               // 00001C90: 34969697
  v_and_b32     v76, 0x80000000, v76                        // 00001C94: 369898FF 80000000
  v_add_i32     v75, vcc, 0.5, v75                          // 00001C9C: 4A9696F0
  v_ffbh_u32    v78, v77                                    // 00001CA0: 7E9C734D
  v_cmp_ne_i32  vcc, 0, v77                                 // 00001CA4: 7D0A9A80
  v_lshrrev_b32  v69, 9, v69                                // 00001CA8: 2C8A8A89
  v_or_b32      v75, v76, v75                               // 00001CAC: 3896974C
  v_cndmask_b32  v78, 32, v78, vcc                          // 00001CB0: 009C9CA0
  v_sub_i32     v74, vcc, 0x00000066, v74                   // 00001CB4: 4C9494FF 00000066
  v_or_b32      v69, v69, v75                               // 00001CBC: 388A9745
  v_sub_i32     v75, vcc, 31, v78                           // 00001CC0: 4C969C9F
  v_sub_i32     v74, vcc, v74, v78                          // 00001CC4: 4C949D4A
  v_alignbit_b32  v68, v77, v68, v75                        // 00001CC8: D29C0044 052E894D
  v_lshlrev_b32  v74, 23, v74                               // 00001CD0: 34949497
  v_mul_f32     v75, 0x3fc90fda, v69                        // 00001CD4: 10968AFF 3FC90FDA
  s_mov_b32     s9, 0x3fc90fda                              // 00001CDC: BE8903FF 3FC90FDA
  v_lshrrev_b32  v68, 9, v68                                // 00001CE4: 2C888889
  v_or_b32      v74, v76, v74                               // 00001CE8: 3894954C
  v_fma_f32     v75, v69, s9, -v75                          // 00001CEC: D296004B 852C1345
  s_mov_b32     s17, 0x33a22168                             // 00001CF4: BE9103FF 33A22168
  v_or_b32      v68, v68, v74                               // 00001CFC: 38889544
  v_fma_f32     v74, v69, s17, v75                          // 00001D00: D296004A 052C2345
  v_fma_f32     v68, v68, s9, v74                           // 00001D08: D2960044 05281344
  v_mad_f32     v104, v69, s9, v68                          // 00001D10: D2820068 05101345
  v_lshrrev_b32  v70, 30, v70                               // 00001D18: 2C8C8C9E
  v_mad_f32     v69, -v69, s9, v104                         // 00001D1C: D2820045 25A01345
  v_add_i32     v55, vcc, v71, v70                          // 00001D24: 4A6E8D47
  v_sub_f32     v70, v68, v69                               // 00001D28: 088C8B44
label_074B:
  s_andn2_b64   exec, s[10:11], exec                        // 00001D2C: 8AFE7E0A
  s_cbranch_execz  label_077B                               // 00001D30: BF88002E
  s_mov_b32     s9, 0x3f22f983                              // 00001D34: BE8903FF 3F22F983
  v_mad_f32     v68, v54, s9, 0.5                           // 00001D3C: D2820044 03C01336
  v_trunc_f32   v68, v68                                    // 00001D44: 7E884344
  v_mul_f32     v69, 0x3fc90fda, v68                        // 00001D48: 108A88FF 3FC90FDA
  s_mov_b32     s9, 0x3fc90fda                              // 00001D50: BE8903FF 3FC90FDA
  v_fma_f32     v69, v68, s9, -v69                          // 00001D58: D2960045 85141344
  v_mad_f32     v70, -v68, s9, v54                          // 00001D60: D2820046 24D81344
  v_sub_f32     v71, v54, v70                               // 00001D68: 088E8D36
  v_mad_f32     v71, -v68, s9, v71                          // 00001D6C: D2820047 251C1344
  v_subrev_f32  v69, v69, v71                               // 00001D74: 0A8A8F45
  v_add_f32     v69, v70, v69                               // 00001D78: 068A8B46
  v_mul_f32     v70, 0x33a22168, v68                        // 00001D7C: 108C88FF 33A22168
  s_mov_b32     s9, 0x33a22168                              // 00001D84: BE8903FF 33A22168
  v_fma_f32     v70, v68, s9, -v70                          // 00001D8C: D2960046 85181344
  v_mad_f32     v71, -v68, s9, v69                          // 00001D94: D2820047 25141344
  v_sub_f32     v69, v69, v71                               // 00001D9C: 088A8F45
  v_mad_f32     v69, -v68, s9, v69                          // 00001DA0: D2820045 25141344
  v_subrev_f32  v69, v70, v69                               // 00001DA8: 0A8A8B46
  v_add_f32     v69, v71, v69                               // 00001DAC: 068A8B47
  v_mul_f32     v70, 0x27c234c4, v68                        // 00001DB0: 108C88FF 27C234C4
  s_mov_b32     s9, 0x27c234c4                              // 00001DB8: BE8903FF 27C234C4
  v_fma_f32     v70, v68, s9, -v70                          // 00001DC0: D2960046 85181344
  v_mad_f32     v71, -v68, s9, v69                          // 00001DC8: D2820047 25141344
  v_sub_f32     v69, v69, v71                               // 00001DD0: 088A8F45
  v_mad_f32     v69, -v68, s9, v69                          // 00001DD4: D2820045 25141344
  v_add_f32     v104, v71, v69                              // 00001DDC: 06D08B47
  v_cvt_i32_f32  v55, v68                                   // 00001DE0: 7E6E1144
  v_max_f32     v70, -v70, -v70                             // 00001DE4: D2200046 60028D46
label_077B:
  s_mov_b64     exec, s[10:11]                              // 00001DEC: BEFE040A
  v_and_b32     v107, 3, v55                                // 00001DF0: 36D66E83
label_077D:
  s_andn2_b64   exec, s[6:7], exec                          // 00001DF4: 8AFE7E06
  v_mov_b32     v49, 0x3f22f983                             // 00001DF8: 7E6202FF 3F22F983
  s_cbranch_execz  label_0817                               // 00001E00: BF880096
  v_mad_f32     v55, v60, v49, 0.5                          // 00001E04: D2820037 03C2633C
  v_mad_f32     v56, v61, v49, 0.5                          // 00001E0C: D2820038 03C2633D
  v_mad_f32     v57, v62, v49, 0.5                          // 00001E14: D2820039 03C2633E
  v_mad_f32     v49, v54, v49, 0.5                          // 00001E1C: D2820031 03C26336
  v_trunc_f32   v55, v55                                    // 00001E24: 7E6E4337
  v_trunc_f32   v56, v56                                    // 00001E28: 7E704338
  v_trunc_f32   v57, v57                                    // 00001E2C: 7E724339
  v_trunc_f32   v49, v49                                    // 00001E30: 7E624331
  v_mov_b32     v58, 0x3fc90fda                             // 00001E34: 7E7402FF 3FC90FDA
  v_mul_f32     v59, v58, v55                               // 00001E3C: 10766F3A
  v_mul_f32     v64, v56, v58                               // 00001E40: 10807538
  v_mul_f32     v66, v57, v58                               // 00001E44: 10847539
  v_mul_f32     v67, v49, v58                               // 00001E48: 10867531
  v_fma_f32     v64, v56, v58, -v64                         // 00001E4C: D2960040 85027538
  v_fma_f32     v59, v55, v58, -v59                         // 00001E54: D296003B 84EE7537
  v_fma_f32     v67, v49, v58, -v67                         // 00001E5C: D2960043 850E7531
  v_fma_f32     v66, v57, v58, -v66                         // 00001E64: D2960042 850A7539
  v_mad_f32     v68, -v55, v58, v60                         // 00001E6C: D2820044 24F27537
  v_mad_f32     v69, -v56, v58, v61                         // 00001E74: D2820045 24F67538
  v_mad_f32     v70, -v57, v58, v62                         // 00001E7C: D2820046 24FA7539
  v_mad_f32     v71, -v49, v58, v54                         // 00001E84: D2820047 24DA7531
  v_sub_f32     v74, v60, v68                               // 00001E8C: 0894893C
  v_sub_f32     v75, v61, v69                               // 00001E90: 08968B3D
  v_sub_f32     v76, v62, v70                               // 00001E94: 08988D3E
  v_sub_f32     v77, v54, v71                               // 00001E98: 089A8F36
  v_mad_f32     v74, -v55, v58, v74                         // 00001E9C: D282004A 252A7537
  v_mad_f32     v75, -v56, v58, v75                         // 00001EA4: D282004B 252E7538
  v_mad_f32     v76, -v57, v58, v76                         // 00001EAC: D282004C 25327539
  v_mad_f32     v77, -v49, v58, v77                         // 00001EB4: D282004D 25367531
  v_subrev_f32  v58, v59, v74                               // 00001EBC: 0A74953B
  v_subrev_f32  v59, v64, v75                               // 00001EC0: 0A769740
  v_subrev_f32  v64, v66, v76                               // 00001EC4: 0A809942
  v_subrev_f32  v66, v67, v77                               // 00001EC8: 0A849B43
  v_add_f32     v58, v68, v58                               // 00001ECC: 06747544
  v_add_f32     v59, v69, v59                               // 00001ED0: 06767745
  v_add_f32     v64, v70, v64                               // 00001ED4: 06808146
  v_add_f32     v66, v71, v66                               // 00001ED8: 06848547
  v_mov_b32     v67, 0x33a22168                             // 00001EDC: 7E8602FF 33A22168
  v_mul_f32     v68, v67, v55                               // 00001EE4: 10886F43
  v_mul_f32     v69, v56, v67                               // 00001EE8: 108A8738
  v_mul_f32     v70, v57, v67                               // 00001EEC: 108C8739
  v_mul_f32     v71, v49, v67                               // 00001EF0: 108E8731
  v_fma_f32     v69, v56, v67, -v69                         // 00001EF4: D2960045 85168738
  v_fma_f32     v68, v55, v67, -v68                         // 00001EFC: D2960044 85128737
  v_fma_f32     v71, v49, v67, -v71                         // 00001F04: D2960047 851E8731
  v_fma_f32     v70, v57, v67, -v70                         // 00001F0C: D2960046 851A8739
  v_mad_f32     v74, -v55, v67, v58                         // 00001F14: D282004A 24EA8737
  v_mad_f32     v75, -v56, v67, v59                         // 00001F1C: D282004B 24EE8738
  v_mad_f32     v76, -v57, v67, v64                         // 00001F24: D282004C 25028739
  v_mad_f32     v77, -v49, v67, v66                         // 00001F2C: D282004D 250A8731
  v_sub_f32     v58, v58, v74                               // 00001F34: 0874953A
  v_sub_f32     v59, v59, v75                               // 00001F38: 0876973B
  v_sub_f32     v64, v64, v76                               // 00001F3C: 08809940
  v_sub_f32     v66, v66, v77                               // 00001F40: 08849B42
  v_mad_f32     v58, -v55, v67, v58                         // 00001F44: D282003A 24EA8737
  v_mad_f32     v59, -v56, v67, v59                         // 00001F4C: D282003B 24EE8738
  v_mad_f32     v64, -v57, v67, v64                         // 00001F54: D2820040 25028739
  v_mad_f32     v66, -v49, v67, v66                         // 00001F5C: D2820042 250A8731
  v_subrev_f32  v58, v68, v58                               // 00001F64: 0A747544
  v_subrev_f32  v59, v69, v59                               // 00001F68: 0A767745
  v_subrev_f32  v64, v70, v64                               // 00001F6C: 0A808146
  v_subrev_f32  v66, v71, v66                               // 00001F70: 0A848547
  v_add_f32     v58, v74, v58                               // 00001F74: 0674754A
  v_add_f32     v59, v75, v59                               // 00001F78: 0676774B
  v_add_f32     v64, v76, v64                               // 00001F7C: 0680814C
  v_add_f32     v66, v77, v66                               // 00001F80: 0684854D
  v_mov_b32     v67, 0x27c234c4                             // 00001F84: 7E8602FF 27C234C4
  v_mul_f32     v68, v67, v55                               // 00001F8C: 10886F43
  v_mul_f32     v69, v56, v67                               // 00001F90: 108A8738
  v_mul_f32     v70, v57, v67                               // 00001F94: 108C8739
  v_mul_f32     v71, v49, v67                               // 00001F98: 108E8731
  v_fma_f32     v69, v56, v67, -v69                         // 00001F9C: D2960045 85168738
  v_fma_f32     v68, v55, v67, -v68                         // 00001FA4: D2960044 85128737
  v_fma_f32     v71, v49, v67, -v71                         // 00001FAC: D2960047 851E8731
  v_fma_f32     v70, v57, v67, -v70                         // 00001FB4: D2960046 851A8739
  v_mad_f32     v74, -v55, v67, v58                         // 00001FBC: D282004A 24EA8737
  v_mad_f32     v75, -v56, v67, v59                         // 00001FC4: D282004B 24EE8738
  v_mad_f32     v76, -v57, v67, v64                         // 00001FCC: D282004C 25028739
  v_mad_f32     v77, -v49, v67, v66                         // 00001FD4: D282004D 250A8731
  v_sub_f32     v58, v58, v74                               // 00001FDC: 0874953A
  v_sub_f32     v59, v59, v75                               // 00001FE0: 0876973B
  v_sub_f32     v64, v64, v76                               // 00001FE4: 08809940
  v_sub_f32     v66, v66, v77                               // 00001FE8: 08849B42
  v_mad_f32     v58, -v55, v67, v58                         // 00001FEC: D282003A 24EA8737
  v_mad_f32     v59, -v56, v67, v59                         // 00001FF4: D282003B 24EE8738
  v_mad_f32     v64, -v57, v67, v64                         // 00001FFC: D2820040 25028739
  v_mad_f32     v66, -v49, v67, v66                         // 00002004: D2820042 250A8731
  v_add_f32     v101, v74, v58                              // 0000200C: 06CA754A
  v_add_f32     v102, v75, v59                              // 00002010: 06CC774B
  v_add_f32     v103, v76, v64                              // 00002014: 06CE814C
  v_add_f32     v104, v77, v66                              // 00002018: 06D0854D
  v_cvt_i32_f32  v55, v55                                   // 0000201C: 7E6E1137
  v_cvt_i32_f32  v56, v56                                   // 00002020: 7E701138
  v_cvt_i32_f32  v57, v57                                   // 00002024: 7E721139
  v_cvt_i32_f32  v49, v49                                   // 00002028: 7E621131
  v_and_b32     v105, 3, v55                                // 0000202C: 36D26E83
  v_and_b32     v106, 3, v56                                // 00002030: 36D47083
  v_and_b32     v64, 3, v57                                 // 00002034: 36807283
  v_and_b32     v107, 3, v49                                // 00002038: 36D66283
  v_max_f32     v49, -v68, -v68                             // 0000203C: D2200031 60028944
  v_max_f32     v56, -v69, -v69                             // 00002044: D2200038 60028B45
  v_max_f32     v57, -v70, -v70                             // 0000204C: D2200039 60028D46
  v_max_f32     v70, -v71, -v71                             // 00002054: D2200046 60028F47
label_0817:
  s_mov_b64     exec, s[6:7]                                // 0000205C: BEFE0406
  v_mul_f32     v71, v101, v101                             // 00002060: 108ECB65
  v_mul_f32     v74, v102, v102                             // 00002064: 1094CD66
  v_mul_f32     v75, v103, v103                             // 00002068: 1096CF67
  v_mul_f32     v76, v104, v104                             // 0000206C: 1098D168
  v_mul_f32     v77, 0xad47d74e, v71                        // 00002070: 109A8EFF AD47D74E
  v_mul_f32     v78, 0xad47d74e, v74                        // 00002078: 109C94FF AD47D74E
  v_mul_f32     v79, 0xad47d74e, v75                        // 00002080: 109E96FF AD47D74E
  v_mul_f32     v80, 0xad47d74e, v76                        // 00002088: 10A098FF AD47D74E
  v_mul_f32     v81, 0x2f2ec9d3, v71                        // 00002090: 10A28EFF 2F2EC9D3
  v_mul_f32     v82, 0x2f2ec9d3, v74                        // 00002098: 10A494FF 2F2EC9D3
  v_mul_f32     v83, 0x2f2ec9d3, v75                        // 000020A0: 10A696FF 2F2EC9D3
  v_mul_f32     v84, 0x2f2ec9d3, v76                        // 000020A8: 10A898FF 2F2EC9D3
  v_mov_b32     v85, 0x7fffffff                             // 000020B0: 7EAA02FF 7FFFFFFF
  v_add_f32     v77, 0x310f74f6, v77                        // 000020B8: 069A9AFF 310F74F6
  v_add_f32     v78, 0x310f74f6, v78                        // 000020C0: 069C9CFF 310F74F6
  v_add_f32     v79, 0x310f74f6, v79                        // 000020C8: 069E9EFF 310F74F6
  v_add_f32     v80, 0x310f74f6, v80                        // 000020D0: 06A0A0FF 310F74F6
  v_mov_b32     v86, 0xb492923a                             // 000020D8: 7EAC02FF B492923A
  v_add_f32     v81, 0xb2d72f34, v81                        // 000020E0: 06A2A2FF B2D72F34
  v_add_f32     v82, 0xb2d72f34, v82                        // 000020E8: 06A4A4FF B2D72F34
  v_add_f32     v83, 0xb2d72f34, v83                        // 000020F0: 06A6A6FF B2D72F34
  v_add_f32     v84, 0xb2d72f34, v84                        // 000020F8: 06A8A8FF B2D72F34
  v_mov_b32     v87, 0x3636df25                             // 00002100: 7EAE02FF 3636DF25
  v_and_b32     v88, v85, v101                              // 00002108: 36B0CB55
  v_and_b32     v89, v85, v102                              // 0000210C: 36B2CD55
  v_and_b32     v90, v85, v103                              // 00002110: 36B4CF55
  v_and_b32     v85, v85, v104                              // 00002114: 36AAD155
  v_mov_b32     v91, 0x3f480001                             // 00002118: 7EB602FF 3F480001
  v_mov_b32     v92, 0x3e999999                             // 00002120: 7EB802FF 3E999999
  v_mad_f32     v77, v71, v77, v86                          // 00002128: D282004D 055A9B47
  v_mad_f32     v78, v74, v78, v86                          // 00002130: D282004E 055A9D4A
  v_mad_f32     v79, v75, v79, v86                          // 00002138: D282004F 055A9F4B
  v_mac_f32     v86, v76, v80                               // 00002140: 3EACA14C
  v_mov_b32     v80, 0x37d00ae2                             // 00002144: 7EA002FF 37D00AE2
  v_mad_f32     v81, v71, v81, v87                          // 0000214C: D2820051 055EA347
  v_mad_f32     v82, v74, v82, v87                          // 00002154: D2820052 055EA54A
  v_mad_f32     v83, v75, v83, v87                          // 0000215C: D2820053 055EA74B
  v_mac_f32     v87, v76, v84                               // 00002164: 3EAEA94C
  v_mov_b32     v84, 0xb95009d4                             // 00002168: 7EA802FF B95009D4
  v_cmp_lt_u32  s[6:7], v85, v91                            // 00002170: D1820006 0002B755
  v_cmp_lt_u32  s[10:11], v88, v91                          // 00002178: D182000A 0002B758
  v_cmp_lt_u32  s[18:19], v90, v91                          // 00002180: D1820012 0002B75A
  v_cmp_lt_u32  s[32:33], v89, v91                          // 00002188: D1820020 0002B759
  v_cmp_gt_u32  s[34:35], v85, v92                          // 00002190: D1880022 0002B955
  v_cmp_gt_u32  s[36:37], v88, v92                          // 00002198: D1880024 0002B958
  v_cmp_gt_u32  s[38:39], v90, v92                          // 000021A0: D1880026 0002B95A
  v_cmp_gt_u32  s[40:41], v89, v92                          // 000021A8: D1880028 0002B959
  v_mov_b32     v91, 0xff000000                             // 000021B0: 7EB602FF FF000000
  v_mad_f32     v77, v71, v77, v80                          // 000021B8: D282004D 05429B47
  v_mad_f32     v78, v74, v78, v80                          // 000021C0: D282004E 05429D4A
  v_mad_f32     v79, v75, v79, v80                          // 000021C8: D282004F 05429F4B
  v_mac_f32     v80, v76, v86                               // 000021D0: 3EA0AD4C
  v_mov_b32     v86, 0xbab60b60                             // 000021D4: 7EAC02FF BAB60B60
  v_mad_f32     v81, v71, v81, v84                          // 000021DC: D2820051 0552A347
  v_mad_f32     v82, v74, v82, v84                          // 000021E4: D2820052 0552A54A
  v_mad_f32     v83, v75, v83, v84                          // 000021EC: D2820053 0552A74B
  v_mac_f32     v84, v76, v87                               // 000021F4: 3EA8AF4C
  v_mov_b32     v87, 0x3c088887                             // 000021F8: 7EAE02FF 3C088887
  s_and_b64     s[10:11], s[10:11], s[36:37]                // 00002200: 878A240A
  s_and_b64     s[32:33], s[32:33], s[40:41]                // 00002204: 87A02820
  s_and_b64     s[18:19], s[18:19], s[38:39]                // 00002208: 87922612
  s_and_b64     s[6:7], s[6:7], s[34:35]                    // 0000220C: 87862206
  v_add_i32     v92, vcc, v91, v88                          // 00002210: 4AB8B15B
  v_add_i32     v93, vcc, v89, v91                          // 00002214: 4ABAB759
  v_add_i32     v94, vcc, v90, v91                          // 00002218: 4ABCB75A
  v_add_i32     v91, vcc, v85, v91                          // 0000221C: 4AB6B755
  v_mov_b32     v95, 0x3f480000                             // 00002220: 7EBE02FF 3F480000
  v_mad_f32     v77, v71, v77, v86                          // 00002228: D282004D 055A9B47
  v_mad_f32     v78, v74, v78, v86                          // 00002230: D282004E 055A9D4A
  v_mad_f32     v79, v75, v79, v86                          // 00002238: D282004F 055A9F4B
  v_mac_f32     v86, v76, v80                               // 00002240: 3EACA14C
  v_mov_b32     v80, 0x3d2aaaab                             // 00002244: 7EA002FF 3D2AAAAB
  v_mad_f32     v81, v71, v81, v87                          // 0000224C: D2820051 055EA347
  v_mad_f32     v82, v74, v82, v87                          // 00002254: D2820052 055EA54A
  v_mad_f32     v83, v75, v83, v87                          // 0000225C: D2820053 055EA74B
  v_mac_f32     v87, v76, v84                               // 00002264: 3EAEA94C
  v_mul_f32     v84, v101, v71                              // 00002268: 10A88F65
  v_mul_f32     v96, v102, v74                              // 0000226C: 10C09566
  v_mul_f32     v97, v103, v75                              // 00002270: 10C29767
  v_mul_f32     v98, v104, v76                              // 00002274: 10C49968
  v_cndmask_b32  v92, 0, v92, s[10:11]                      // 00002278: D200005C 002AB880
  v_cndmask_b32  v93, 0, v93, s[32:33]                      // 00002280: D200005D 0082BA80
  v_cndmask_b32  v94, 0, v94, s[18:19]                      // 00002288: D200005E 004ABC80
  v_cndmask_b32  v91, 0, v91, s[6:7]                        // 00002290: D200005B 001AB680
  v_cmp_gt_u32  s[6:7], v85, v95                            // 00002298: D1880006 0002BF55
  v_cmp_gt_u32  s[10:11], v88, v95                          // 000022A0: D188000A 0002BF58
  v_cmp_gt_u32  s[18:19], v90, v95                          // 000022A8: D1880012 0002BF5A
  v_cmp_gt_u32  vcc, v89, v95                               // 000022B0: 7D88BF59
  v_mov_b32     v85, 0x3e900000                             // 000022B4: 7EAA02FF 3E900000
  v_mad_f32     v77, v71, v77, v80                          // 000022BC: D282004D 05429B47
  v_mad_f32     v78, v74, v78, v80                          // 000022C4: D282004E 05429D4A
  v_mad_f32     v79, v75, v79, v80                          // 000022CC: D282004F 05429F4B
  v_mac_f32     v80, v76, v86                               // 000022D4: 3EA0AD4C
  v_mul_f32     v81, v81, -v84                              // 000022D8: D2100051 4002A951
  v_mul_f32     v82, v82, -v96                              // 000022E0: D2100052 4002C152
  v_mul_f32     v83, v83, -v97                              // 000022E8: D2100053 4002C353
  v_mul_f32     v86, v87, -v98                              // 000022F0: D2100056 4002C557
  v_cndmask_b32  v87, v92, v85, s[10:11]                    // 000022F8: D2000057 002AAB5C
  v_cndmask_b32  v88, v93, v85, vcc                         // 00002300: 00B0AB5D
  v_cndmask_b32  v89, v94, v85, s[18:19]                    // 00002304: D2000059 004AAB5E
  v_cndmask_b32  v85, v91, v85, s[6:7]                      // 0000230C: D2000055 001AAB5B
  v_mul_f32     v77, v71, v77                               // 00002314: 109A9B47
  v_mul_f32     v78, v74, v78                               // 00002318: 109C9D4A
  v_mul_f32     v79, v75, v79                               // 0000231C: 109E9F4B
  v_mul_f32     v80, v76, v80                               // 00002320: 10A0A14C
  v_mul_f32     v90, v49, -v101                             // 00002324: D210005A 4002CB31
  v_mul_f32     v91, v56, -v102                             // 0000232C: D210005B 4002CD38
  v_mul_f32     v92, v57, -v103                             // 00002334: D210005C 4002CF39
  v_mul_f32     v93, v70, -v104                             // 0000233C: D210005D 4002D146
  v_mac_f32     v81, 0.5, v49                               // 00002344: 3EA262F0
  v_mac_f32     v82, 0.5, v56                               // 00002348: 3EA470F0
  v_mac_f32     v83, 0.5, v57                               // 0000234C: 3EA672F0
  v_mac_f32     v86, 0.5, v70                               // 00002350: 3EAC8CF0
  v_mad_f32     v94, v71, 0.5, -v87                         // 00002354: D282005E 855DE147
  v_mad_f32     v95, v74, 0.5, -v88                         // 0000235C: D282005F 8561E14A
  v_mad_f32     v99, v75, 0.5, -v89                         // 00002364: D2820063 8565E14B
  v_mad_f32     v100, v76, 0.5, -v85                        // 0000236C: D2820064 8555E14C
  v_mac_f32     v90, v71, v77                               // 00002374: 3EB49B47
  v_mac_f32     v91, v74, v78                               // 00002378: 3EB69D4A
  v_mac_f32     v92, v75, v79                               // 0000237C: 3EB89F4B
  v_mac_f32     v93, v76, v80                               // 00002380: 3EBAA14C
  v_mad_f32     v67, v71, v81, -v49                         // 00002384: D2820043 84C6A347
  v_mad_f32     v68, v74, v82, -v56                         // 0000238C: D2820044 84E2A54A
  v_mad_f32     v69, v75, v83, -v57                         // 00002394: D2820045 84E6A74B
  v_mad_f32     v70, v76, v86, -v70                         // 0000239C: D2820046 851AAD4C
  v_mov_b32     v71, 0x3e2aaaab                             // 000023A4: 7E8E02FF 3E2AAAAB
  v_sub_f32     v74, 1.0, v87                               // 000023AC: 0894AEF2
  v_sub_f32     v75, 1.0, v88                               // 000023B0: 0896B0F2
  v_sub_f32     v76, 1.0, v89                               // 000023B4: 0898B2F2
  v_sub_f32     v77, 1.0, v85                               // 000023B8: 089AAAF2
  v_sub_f32     v78, v94, v90                               // 000023BC: 089CB55E
  v_sub_f32     v79, v95, v91                               // 000023C0: 089EB75F
  v_sub_f32     v80, v99, v92                               // 000023C4: 08A0B963
  v_sub_f32     v81, v100, v93                              // 000023C8: 08A2BB64
  v_and_b32     v82, 1, v105                                // 000023CC: 36A4D281
  v_and_b32     v83, 1, v106                                // 000023D0: 36A6D481
  v_and_b32     v85, 1, v64                                 // 000023D4: 36AA8081
  v_and_b32     v86, 1, v107                                // 000023D8: 36ACD681
  v_mac_f32     v67, v84, v71                               // 000023DC: 3E868F54
  v_mac_f32     v68, v96, v71                               // 000023E0: 3E888F60
  v_mac_f32     v69, v97, v71                               // 000023E4: 3E8A8F61
  v_mac_f32     v70, v98, v71                               // 000023E8: 3E8C8F62
  v_sub_f32     v71, v74, v78                               // 000023EC: 088E9D4A
  v_sub_f32     v74, v75, v79                               // 000023F0: 08949F4B
  v_sub_f32     v75, v76, v80                               // 000023F4: 0896A14C
  v_sub_f32     v76, v77, v81                               // 000023F8: 0898A34D
  v_cmp_ne_i32  s[6:7], v86, 0                              // 000023FC: D10A0006 00010156
  v_cmp_ne_i32  s[10:11], v82, 0                            // 00002404: D10A000A 00010152
  v_cmp_ne_i32  s[18:19], v85, 0                            // 0000240C: D10A0012 00010155
  v_cmp_ne_i32  s[32:33], v83, 0                            // 00002414: D10A0020 00010153
  v_sub_f32     v49, v101, v67                              // 0000241C: 08628765
  v_sub_f32     v55, v102, v68                              // 00002420: 086E8966
  v_sub_f32     v56, v103, v69                              // 00002424: 08708B67
  v_sub_f32     v57, v104, v70                              // 00002428: 08728D68
  v_cmp_gt_i32  s[34:35], v107, 1                           // 0000242C: D1080022 0001036B
  v_cmp_gt_i32  s[36:37], v105, 1                           // 00002434: D1080024 00010369
  v_cmp_gt_i32  s[38:39], v64, 1                            // 0000243C: D1080026 00010340
  v_cmp_lt_i32  vcc, 1, v106                                // 00002444: 7D02D481
  v_mov_b32     v58, 0x80000000                             // 00002448: 7E7402FF 80000000
  v_cndmask_b32  v49, v71, -v49, s[10:11]                   // 00002450: D2000031 402A6347
  v_cndmask_b32  v55, v74, -v55, s[32:33]                   // 00002458: D2000037 40826F4A
  v_cndmask_b32  v56, v75, -v56, s[18:19]                   // 00002460: D2000038 404A714B
  v_cndmask_b32  v57, v76, -v57, s[6:7]                     // 00002468: D2000039 401A734C
  v_cndmask_b32  v59, 0, v58, s[36:37]                      // 00002470: D200003B 00927480
  v_cndmask_b32  v64, 0, v58, vcc                           // 00002478: 00807480
  v_cndmask_b32  v66, 0, v58, s[38:39]                      // 0000247C: D2000042 009A7480
  v_cndmask_b32  v58, 0, v58, s[34:35]                      // 00002484: D200003A 008A7480
  v_mov_b32     v67, 0x7f7fffff                             // 0000248C: 7E8602FF 7F7FFFFF
  v_xor_b32     v49, v49, v59                               // 00002494: 3A627731
  v_xor_b32     v55, v55, v64                               // 00002498: 3A6E8137
  v_xor_b32     v56, v56, v66                               // 0000249C: 3A708538
  v_xor_b32     v57, v57, v58                               // 000024A0: 3A727539
  v_cmp_gt_u32  s[6:7], v54, v67                            // 000024A4: D1880006 00028736
  v_cmp_gt_u32  s[10:11], v60, v67                          // 000024AC: D188000A 0002873C
  v_cmp_gt_u32  s[18:19], v62, v67                          // 000024B4: D1880012 0002873E
  v_cmp_gt_u32  s[32:33], v61, v67                          // 000024BC: D1880020 0002873D
  v_mov_b32     v58, 0x7fc00000                             // 000024C4: 7E7402FF 7FC00000
  v_cndmask_b32  v49, v49, v58, s[10:11]                    // 000024CC: D2000031 002A7531
  v_cndmask_b32  v55, v55, v58, s[32:33]                    // 000024D4: D2000037 00827537
  v_cndmask_b32  v56, v56, v58, s[18:19]                    // 000024DC: D2000038 004A7538
  v_cndmask_b32  v57, v57, v58, s[6:7]                      // 000024E4: D2000039 001A7539
  v_mul_f32     v49, v63, v49                               // 000024EC: 1062633F
  v_mul_f32     v55, v65, v55                               // 000024F0: 106E6F41
  v_mul_f32     v56, v72, v56                               // 000024F4: 10707148
  v_mul_f32     v57, v73, v57                               // 000024F8: 10727349
  s_mov_b64     s[34:35], exec                              // 000024FC: BEA2047E
  s_andn2_b64   exec, s[34:35], s[4:5]                      // 00002500: 8AFE0422
  s_cbranch_execz  label_0DB6                               // 00002504: BF880474
  s_mov_b32     s4, 0x4b000000                              // 00002508: BE8403FF 4B000000
  v_cmp_nlt_f32  s[4:5], v60, s4                            // 00002510: D01C0004 0000093C
  s_and_saveexec_b64  s[4:5], s[4:5]                        // 00002518: BE842404
  v_and_b32     v58, 0x007fffff, v50                        // 0000251C: 367464FF 007FFFFF
  s_cbranch_execz  label_0A2D                               // 00002524: BF8800E3
  v_or_b32      v58, 0x00800000, v58                        // 00002528: 387474FF 00800000
  s_mov_b32     s9, 0xfe5163ab                              // 00002530: BE8903FF FE5163AB
  s_mov_b32     s17, 0x3c439041                             // 00002538: BE9103FF 3C439041
  v_mul_hi_u32  v59, v58, s9                                // 00002540: D2D4003B 0200133A
  v_mul_lo_u32  v64, v58, s17                               // 00002548: D2D20040 0200233A
  v_add_i32     v64, vcc, v59, v64                          // 00002550: 4A80813B
  s_mov_b32     s9, 0xdb629599                              // 00002554: BE8903FF DB629599
  v_cmp_gt_u32  s[36:37], v59, v64                          // 0000255C: D1880024 0002813B
  v_mul_hi_u32  v59, v58, s17                               // 00002564: D2D4003B 0200233A
  v_mul_lo_u32  v66, v58, s9                                // 0000256C: D2D20042 0200133A
  v_addc_u32    v67, vcc, v59, 0, s[36:37]                  // 00002574: D2506A43 0091013B
  v_addc_u32    v59, vcc, v59, v66, s[36:37]                // 0000257C: D2506A3B 0092853B
  s_mov_b32     s17, 0xf534ddc0                             // 00002584: BE9103FF F534DDC0
  v_lshrrev_b32  v66, 23, v60                               // 0000258C: 2C847897
  v_cmp_gt_u32  s[36:37], v67, v59                          // 00002590: D1880024 00027743
  v_mul_hi_u32  v67, v58, s9                                // 00002598: D2D40043 0200133A
  v_mul_lo_u32  v68, v58, s17                               // 000025A0: D2D20044 0200233A
  v_add_i32     v66, vcc, 0xffffff88, v66                   // 000025A8: 4A8484FF FFFFFF88
  v_addc_u32    v69, vcc, v67, 0, s[36:37]                  // 000025B0: D2506A45 00910143
  v_addc_u32    v67, vcc, v67, v68, s[36:37]                // 000025B8: D2506A43 00928943
  s_mov_b32     s9, 0xfc2757d1                              // 000025C0: BE8903FF FC2757D1
  v_cmp_gt_u32  s[36:37], v66, 31                           // 000025C8: D1880024 00013F42
  v_mov_b32     v68, 0xffffffe0                             // 000025D0: 7E8802FF FFFFFFE0
  v_cmp_gt_u32  s[38:39], v69, v67                          // 000025D8: D1880026 00028745
  v_mul_hi_u32  v69, v58, s17                               // 000025E0: D2D40045 0200233A
  v_mul_lo_u32  v70, v58, s9                                // 000025E8: D2D20046 0200133A
  v_cndmask_b32  v71, 0, v68, s[36:37]                      // 000025F0: D2000047 00928880
  v_addc_u32    v74, vcc, v69, 0, s[38:39]                  // 000025F8: D2506A4A 00990145
  v_addc_u32    v69, vcc, v69, v70, s[38:39]                // 00002600: D2506A45 009A8D45
  s_mov_b32     s17, 0x4e441529                             // 00002608: BE9103FF 4E441529
  v_add_i32     v66, vcc, v66, v71                          // 00002610: 4A848F42
  v_cmp_gt_u32  s[38:39], v74, v69                          // 00002614: D1880026 00028B4A
  v_mul_hi_u32  v70, v58, s9                                // 0000261C: D2D40046 0200133A
  v_mul_lo_u32  v71, v58, s17                               // 00002624: D2D20047 0200233A
  v_cmp_gt_u32  s[40:41], v66, 31                           // 0000262C: D1880028 00013F42
  v_addc_u32    v74, vcc, v70, 0, s[38:39]                  // 00002634: D2506A4A 00990146
  v_addc_u32    v70, vcc, v70, v71, s[38:39]                // 0000263C: D2506A46 009A8F46
  s_mov_b32     s9, 0xa2f9836e                              // 00002644: BE8903FF A2F9836E
  v_cndmask_b32  v71, 0, v68, s[40:41]                      // 0000264C: D2000047 00A28880
  v_cmp_gt_u32  s[38:39], v74, v70                          // 00002654: D1880026 00028D4A
  v_mul_hi_u32  v74, v58, s17                               // 0000265C: D2D4004A 0200233A
  v_mul_lo_u32  v75, v58, s9                                // 00002664: D2D2004B 0200133A
  v_add_i32     v66, vcc, v66, v71                          // 0000266C: 4A848F42
  v_addc_u32    v71, vcc, v74, 0, s[38:39]                  // 00002670: D2506A47 0099014A
  v_addc_u32    v74, vcc, v74, v75, s[38:39]                // 00002678: D2506A4A 009A974A
  v_cmp_gt_u32  s[38:39], v66, 31                           // 00002680: D1880026 00013F42
  v_cmp_gt_u32  s[42:43], v71, v74                          // 00002688: D188002A 00029547
  v_mul_hi_u32  v71, v58, s9                                // 00002690: D2D40047 0200133A
  v_cndmask_b32  v68, 0, v68, s[38:39]                      // 00002698: D2000044 009A8880
  v_addc_u32    v71, vcc, v71, 0, s[42:43]                  // 000026A0: D2506A47 00A90147
  v_add_i32     v66, vcc, v66, v68                          // 000026A8: 4A848942
  v_cndmask_b32  v68, v71, v74, s[36:37]                    // 000026AC: D2000044 00929547
  v_cndmask_b32  v71, v74, v70, s[36:37]                    // 000026B4: D2000047 00928D4A
  v_cndmask_b32  v70, v70, v69, s[36:37]                    // 000026BC: D2000046 00928B46
  v_cndmask_b32  v69, v69, v67, s[36:37]                    // 000026C4: D2000045 00928745
  v_cmp_gt_u32  s[42:43], v66, 31                           // 000026CC: D188002A 00013F42
  v_cndmask_b32  v67, v67, v59, s[36:37]                    // 000026D4: D2000043 00927743
  v_cndmask_b32  v68, v68, v71, s[40:41]                    // 000026DC: D2000044 00A28F44
  v_cndmask_b32  v71, v71, v70, s[40:41]                    // 000026E4: D2000047 00A28D47
  v_cndmask_b32  v70, v70, v69, s[40:41]                    // 000026EC: D2000046 00A28B46
  v_cndmask_b32  v69, v69, v67, s[40:41]                    // 000026F4: D2000045 00A28745
  v_cndmask_b32  v74, 0, 32, s[42:43]                       // 000026FC: D200004A 00A94080
  v_cndmask_b32  v68, v68, v71, s[38:39]                    // 00002704: D2000044 009A8F44
  v_cndmask_b32  v71, v71, v70, s[38:39]                    // 0000270C: D2000047 009A8D47
  v_cndmask_b32  v59, v59, v64, s[36:37]                    // 00002714: D200003B 0092813B
  v_cndmask_b32  v70, v70, v69, s[38:39]                    // 0000271C: D2000046 009A8B46
  v_sub_i32     v75, vcc, v74, v66                          // 00002724: 4C96854A
  v_cndmask_b32  v68, v68, v71, s[42:43]                    // 00002728: D2000044 00AA8F44
  v_cndmask_b32  v67, v67, v59, s[40:41]                    // 00002730: D2000043 00A27743
  v_cndmask_b32  v71, v71, v70, s[42:43]                    // 00002738: D2000047 00AA8D47
  s_mov_b32     s9, 0xfe5163ab                              // 00002740: BE8903FF FE5163AB
  v_add_i32     v75, vcc, 32, v75                           // 00002748: 4A9696A0
  v_cndmask_b32  v69, v69, v67, s[38:39]                    // 0000274C: D2000045 009A8745
  v_mul_lo_i32  v58, v58, s9                                // 00002754: D2D6003A 0200133A
  v_cmp_ne_i32  vcc, v66, v74                               // 0000275C: 7D0A9542
  v_alignbit_b32  v66, v68, v71, v75                        // 00002760: D29C0042 052E8F44
  v_cndmask_b32  v70, v70, v69, s[42:43]                    // 00002768: D2000046 00AA8B46
  v_cndmask_b32  v58, v64, v58, s[36:37]                    // 00002770: D200003A 00927540
  v_cndmask_b32  v64, v68, v66, vcc                         // 00002778: 00808544
  v_cndmask_b32  v58, v59, v58, s[40:41]                    // 0000277C: D200003A 00A2753B
  v_alignbit_b32  v59, v71, v70, v75                        // 00002784: D29C003B 052E8D47
  v_bfe_u32     v66, v64, 29, 1                             // 0000278C: D2900042 02053B40
  v_cndmask_b32  v58, v67, v58, s[38:39]                    // 00002794: D200003A 009A7543
  v_cndmask_b32  v59, v71, v59, vcc                         // 0000279C: 00767747
  v_cmp_ne_i32  s[36:37], v66, 0                            // 000027A0: D10A0024 00010142
  v_cndmask_b32  v58, v69, v58, s[42:43]                    // 000027A8: D200003A 00AA7545
  v_alignbit_b32  v67, v64, v59, 30                         // 000027B0: D29C0043 027A7740
  v_cndmask_b32  v68, 0, -1, s[36:37]                       // 000027B8: D2000044 00918280
  v_alignbit_b32  v69, v70, v58, v75                        // 000027C0: D29C0045 052E7546
  v_xor_b32     v71, v67, v68                               // 000027C8: 3A8E8943
  v_cndmask_b32  v69, v70, v69, vcc                         // 000027CC: 008A8B46
  v_ffbh_u32    v70, v71                                    // 000027D0: 7E8C7347
  v_cmp_ne_i32  vcc, v67, v68                               // 000027D4: 7D0A8943
  v_alignbit_b32  v59, v59, v69, 30                         // 000027D8: D29C003B 027A8B3B
  v_alignbit_b32  v58, v69, v58, 30                         // 000027E0: D29C003A 027A7545
  v_cndmask_b32  v67, 32, v70, vcc                          // 000027E8: 00868CA0
  v_sub_i32     v69, vcc, 31, v67                           // 000027EC: 4C8A869F
  v_xor_b32     v58, v58, v68                               // 000027F0: 3A74893A
  v_xor_b32     v59, v59, v68                               // 000027F4: 3A76893B
  v_sub_i32     v68, vcc, 0, v67                            // 000027F8: 4C888680
  v_alignbit_b32  v58, v59, v58, v69                        // 000027FC: D29C003A 0516753B
  v_alignbit_b32  v59, v71, v59, v69                        // 00002804: D29C003B 05167747
  v_lshlrev_b32  v69, 2, v64                                // 0000280C: 348A8082
  v_alignbit_b32  v70, v59, v58, 9                          // 00002810: D29C0046 0226753B
  v_lshlrev_b32  v68, 23, v68                               // 00002818: 34888897
  v_and_b32     v69, 0x80000000, v69                        // 0000281C: 368A8AFF 80000000
  v_add_i32     v68, vcc, 0.5, v68                          // 00002824: 4A8888F0
  v_ffbh_u32    v71, v70                                    // 00002828: 7E8E7346
  v_cmp_ne_i32  vcc, 0, v70                                 // 0000282C: 7D0A8C80
  v_lshrrev_b32  v59, 9, v59                                // 00002830: 2C767689
  v_or_b32      v68, v69, v68                               // 00002834: 38888945
  v_cndmask_b32  v71, 32, v71, vcc                          // 00002838: 008E8EA0
  v_sub_i32     v67, vcc, 0x00000066, v67                   // 0000283C: 4C8686FF 00000066
  v_or_b32      v59, v59, v68                               // 00002844: 3876893B
  v_sub_i32     v68, vcc, 31, v71                           // 00002848: 4C888E9F
  v_sub_i32     v67, vcc, v67, v71                          // 0000284C: 4C868F43
  v_alignbit_b32  v58, v70, v58, v68                        // 00002850: D29C003A 05127546
  v_lshlrev_b32  v67, 23, v67                               // 00002858: 34868697
  v_mul_f32     v68, 0x3fc90fda, v59                        // 0000285C: 108876FF 3FC90FDA
  s_mov_b32     s9, 0x3fc90fda                              // 00002864: BE8903FF 3FC90FDA
  v_lshrrev_b32  v58, 9, v58                                // 0000286C: 2C747489
  v_or_b32      v67, v69, v67                               // 00002870: 38868745
  v_fma_f32     v68, v59, s9, -v68                          // 00002874: D2960044 8510133B
  s_mov_b32     s17, 0x33a22168                             // 0000287C: BE9103FF 33A22168
  v_or_b32      v58, v58, v67                               // 00002884: 3874873A
  v_fma_f32     v67, v59, s17, v68                          // 00002888: D2960043 0510233B
  v_fma_f32     v58, v58, s9, v67                           // 00002890: D296003A 050C133A
  v_mad_f32     v97, v59, s9, v58                           // 00002898: D2820061 04E8133B
  v_lshrrev_b32  v64, 30, v64                               // 000028A0: 2C80809E
  v_mad_f32     v59, -v59, s9, v97                          // 000028A4: D282003B 2584133B
  v_add_i32     v66, vcc, v66, v64                          // 000028AC: 4A848142
  v_sub_f32     v58, v58, v59                               // 000028B0: 0874773A
label_0A2D:
  s_andn2_b64   exec, s[4:5], exec                          // 000028B4: 8AFE7E04
  s_cbranch_execz  label_0A5D                               // 000028B8: BF88002E
  s_mov_b32     s9, 0x3f22f983                              // 000028BC: BE8903FF 3F22F983
  v_mad_f32     v58, v60, s9, 0.5                           // 000028C4: D282003A 03C0133C
  v_trunc_f32   v58, v58                                    // 000028CC: 7E74433A
  v_mul_f32     v59, 0x3fc90fda, v58                        // 000028D0: 107674FF 3FC90FDA
  s_mov_b32     s9, 0x3fc90fda                              // 000028D8: BE8903FF 3FC90FDA
  v_fma_f32     v59, v58, s9, -v59                          // 000028E0: D296003B 84EC133A
  v_mad_f32     v64, -v58, s9, v60                          // 000028E8: D2820040 24F0133A
  v_sub_f32     v66, v60, v64                               // 000028F0: 0884813C
  v_mad_f32     v66, -v58, s9, v66                          // 000028F4: D2820042 2508133A
  v_subrev_f32  v59, v59, v66                               // 000028FC: 0A76853B
  v_add_f32     v59, v64, v59                               // 00002900: 06767740
  v_mul_f32     v64, 0x33a22168, v58                        // 00002904: 108074FF 33A22168
  s_mov_b32     s9, 0x33a22168                              // 0000290C: BE8903FF 33A22168
  v_fma_f32     v64, v58, s9, -v64                          // 00002914: D2960040 8500133A
  v_mad_f32     v66, -v58, s9, v59                          // 0000291C: D2820042 24EC133A
  v_sub_f32     v59, v59, v66                               // 00002924: 0876853B
  v_mad_f32     v59, -v58, s9, v59                          // 00002928: D282003B 24EC133A
  v_subrev_f32  v59, v64, v59                               // 00002930: 0A767740
  v_add_f32     v59, v66, v59                               // 00002934: 06767742
  v_mul_f32     v64, 0x27c234c4, v58                        // 00002938: 108074FF 27C234C4
  s_mov_b32     s9, 0x27c234c4                              // 00002940: BE8903FF 27C234C4
  v_fma_f32     v64, v58, s9, -v64                          // 00002948: D2960040 8500133A
  v_mad_f32     v66, -v58, s9, v59                          // 00002950: D2820042 24EC133A
  v_sub_f32     v59, v59, v66                               // 00002958: 0876853B
  v_mad_f32     v59, -v58, s9, v59                          // 0000295C: D282003B 24EC133A
  v_add_f32     v97, v66, v59                               // 00002964: 06C27742
  v_cvt_i32_f32  v66, v58                                   // 00002968: 7E84113A
  v_max_f32     v58, -v64, -v64                             // 0000296C: D220003A 60028140
label_0A5D:
  s_mov_b64     exec, s[4:5]                                // 00002974: BEFE0404
  s_mov_b32     s4, 0x4b000000                              // 00002978: BE8403FF 4B000000
  v_cmp_nlt_f32  s[4:5], v61, s4                            // 00002980: D01C0004 0000093D
  v_and_b32     v101, 3, v66                                // 00002988: 36CA8483
  s_and_saveexec_b64  s[4:5], s[4:5]                        // 0000298C: BE842404
  v_and_b32     v66, 0x007fffff, v51                        // 00002990: 368466FF 007FFFFF
  s_cbranch_execz  label_0B4A                               // 00002998: BF8800E3
  v_or_b32      v66, 0x00800000, v66                        // 0000299C: 388484FF 00800000
  s_mov_b32     s9, 0xfe5163ab                              // 000029A4: BE8903FF FE5163AB
  s_mov_b32     s17, 0x3c439041                             // 000029AC: BE9103FF 3C439041
  v_mul_hi_u32  v67, v66, s9                                // 000029B4: D2D40043 02001342
  v_mul_lo_u32  v68, v66, s17                               // 000029BC: D2D20044 02002342
  v_add_i32     v68, vcc, v67, v68                          // 000029C4: 4A888943
  s_mov_b32     s9, 0xdb629599                              // 000029C8: BE8903FF DB629599
  v_cmp_gt_u32  s[36:37], v67, v68                          // 000029D0: D1880024 00028943
  v_mul_hi_u32  v67, v66, s17                               // 000029D8: D2D40043 02002342
  v_mul_lo_u32  v69, v66, s9                                // 000029E0: D2D20045 02001342
  v_addc_u32    v70, vcc, v67, 0, s[36:37]                  // 000029E8: D2506A46 00910143
  v_addc_u32    v67, vcc, v67, v69, s[36:37]                // 000029F0: D2506A43 00928B43
  s_mov_b32     s17, 0xf534ddc0                             // 000029F8: BE9103FF F534DDC0
  v_lshrrev_b32  v69, 23, v61                               // 00002A00: 2C8A7A97
  v_cmp_gt_u32  s[36:37], v70, v67                          // 00002A04: D1880024 00028746
  v_mul_hi_u32  v70, v66, s9                                // 00002A0C: D2D40046 02001342
  v_mul_lo_u32  v71, v66, s17                               // 00002A14: D2D20047 02002342
  v_add_i32     v69, vcc, 0xffffff88, v69                   // 00002A1C: 4A8A8AFF FFFFFF88
  v_addc_u32    v74, vcc, v70, 0, s[36:37]                  // 00002A24: D2506A4A 00910146
  v_addc_u32    v70, vcc, v70, v71, s[36:37]                // 00002A2C: D2506A46 00928F46
  s_mov_b32     s9, 0xfc2757d1                              // 00002A34: BE8903FF FC2757D1
  v_cmp_gt_u32  s[36:37], v69, 31                           // 00002A3C: D1880024 00013F45
  v_mov_b32     v71, 0xffffffe0                             // 00002A44: 7E8E02FF FFFFFFE0
  v_cmp_gt_u32  s[38:39], v74, v70                          // 00002A4C: D1880026 00028D4A
  v_mul_hi_u32  v74, v66, s17                               // 00002A54: D2D4004A 02002342
  v_mul_lo_u32  v75, v66, s9                                // 00002A5C: D2D2004B 02001342
  v_cndmask_b32  v76, 0, v71, s[36:37]                      // 00002A64: D200004C 00928E80
  v_addc_u32    v77, vcc, v74, 0, s[38:39]                  // 00002A6C: D2506A4D 0099014A
  v_addc_u32    v74, vcc, v74, v75, s[38:39]                // 00002A74: D2506A4A 009A974A
  s_mov_b32     s17, 0x4e441529                             // 00002A7C: BE9103FF 4E441529
  v_add_i32     v69, vcc, v69, v76                          // 00002A84: 4A8A9945
  v_cmp_gt_u32  s[38:39], v77, v74                          // 00002A88: D1880026 0002954D
  v_mul_hi_u32  v75, v66, s9                                // 00002A90: D2D4004B 02001342
  v_mul_lo_u32  v76, v66, s17                               // 00002A98: D2D2004C 02002342
  v_cmp_gt_u32  s[40:41], v69, 31                           // 00002AA0: D1880028 00013F45
  v_addc_u32    v77, vcc, v75, 0, s[38:39]                  // 00002AA8: D2506A4D 0099014B
  v_addc_u32    v75, vcc, v75, v76, s[38:39]                // 00002AB0: D2506A4B 009A994B
  s_mov_b32     s9, 0xa2f9836e                              // 00002AB8: BE8903FF A2F9836E
  v_cndmask_b32  v76, 0, v71, s[40:41]                      // 00002AC0: D200004C 00A28E80
  v_cmp_gt_u32  s[38:39], v77, v75                          // 00002AC8: D1880026 0002974D
  v_mul_hi_u32  v77, v66, s17                               // 00002AD0: D2D4004D 02002342
  v_mul_lo_u32  v78, v66, s9                                // 00002AD8: D2D2004E 02001342
  v_add_i32     v69, vcc, v69, v76                          // 00002AE0: 4A8A9945
  v_addc_u32    v76, vcc, v77, 0, s[38:39]                  // 00002AE4: D2506A4C 0099014D
  v_addc_u32    v77, vcc, v77, v78, s[38:39]                // 00002AEC: D2506A4D 009A9D4D
  v_cmp_gt_u32  s[38:39], v69, 31                           // 00002AF4: D1880026 00013F45
  v_cmp_gt_u32  s[42:43], v76, v77                          // 00002AFC: D188002A 00029B4C
  v_mul_hi_u32  v76, v66, s9                                // 00002B04: D2D4004C 02001342
  v_cndmask_b32  v71, 0, v71, s[38:39]                      // 00002B0C: D2000047 009A8E80
  v_addc_u32    v76, vcc, v76, 0, s[42:43]                  // 00002B14: D2506A4C 00A9014C
  v_add_i32     v69, vcc, v69, v71                          // 00002B1C: 4A8A8F45
  v_cndmask_b32  v71, v76, v77, s[36:37]                    // 00002B20: D2000047 00929B4C
  v_cndmask_b32  v76, v77, v75, s[36:37]                    // 00002B28: D200004C 0092974D
  v_cndmask_b32  v75, v75, v74, s[36:37]                    // 00002B30: D200004B 0092954B
  v_cndmask_b32  v74, v74, v70, s[36:37]                    // 00002B38: D200004A 00928D4A
  v_cmp_gt_u32  s[42:43], v69, 31                           // 00002B40: D188002A 00013F45
  v_cndmask_b32  v70, v70, v67, s[36:37]                    // 00002B48: D2000046 00928746
  v_cndmask_b32  v71, v71, v76, s[40:41]                    // 00002B50: D2000047 00A29947
  v_cndmask_b32  v76, v76, v75, s[40:41]                    // 00002B58: D200004C 00A2974C
  v_cndmask_b32  v75, v75, v74, s[40:41]                    // 00002B60: D200004B 00A2954B
  v_cndmask_b32  v74, v74, v70, s[40:41]                    // 00002B68: D200004A 00A28D4A
  v_cndmask_b32  v77, 0, 32, s[42:43]                       // 00002B70: D200004D 00A94080
  v_cndmask_b32  v71, v71, v76, s[38:39]                    // 00002B78: D2000047 009A9947
  v_cndmask_b32  v76, v76, v75, s[38:39]                    // 00002B80: D200004C 009A974C
  v_cndmask_b32  v67, v67, v68, s[36:37]                    // 00002B88: D2000043 00928943
  v_cndmask_b32  v75, v75, v74, s[38:39]                    // 00002B90: D200004B 009A954B
  v_sub_i32     v78, vcc, v77, v69                          // 00002B98: 4C9C8B4D
  v_cndmask_b32  v71, v71, v76, s[42:43]                    // 00002B9C: D2000047 00AA9947
  v_cndmask_b32  v70, v70, v67, s[40:41]                    // 00002BA4: D2000046 00A28746
  v_cndmask_b32  v76, v76, v75, s[42:43]                    // 00002BAC: D200004C 00AA974C
  s_mov_b32     s9, 0xfe5163ab                              // 00002BB4: BE8903FF FE5163AB
  v_add_i32     v78, vcc, 32, v78                           // 00002BBC: 4A9C9CA0
  v_cndmask_b32  v74, v74, v70, s[38:39]                    // 00002BC0: D200004A 009A8D4A
  v_mul_lo_i32  v66, v66, s9                                // 00002BC8: D2D60042 02001342
  v_cmp_ne_i32  vcc, v69, v77                               // 00002BD0: 7D0A9B45
  v_alignbit_b32  v69, v71, v76, v78                        // 00002BD4: D29C0045 053A9947
  v_cndmask_b32  v75, v75, v74, s[42:43]                    // 00002BDC: D200004B 00AA954B
  v_cndmask_b32  v66, v68, v66, s[36:37]                    // 00002BE4: D2000042 00928544
  v_cndmask_b32  v68, v71, v69, vcc                         // 00002BEC: 00888B47
  v_cndmask_b32  v66, v67, v66, s[40:41]                    // 00002BF0: D2000042 00A28543
  v_alignbit_b32  v67, v76, v75, v78                        // 00002BF8: D29C0043 053A974C
  v_bfe_u32     v69, v68, 29, 1                             // 00002C00: D2900045 02053B44
  v_cndmask_b32  v66, v70, v66, s[38:39]                    // 00002C08: D2000042 009A8546
  v_cndmask_b32  v67, v76, v67, vcc                         // 00002C10: 0086874C
  v_cmp_ne_i32  s[36:37], v69, 0                            // 00002C14: D10A0024 00010145
  v_cndmask_b32  v66, v74, v66, s[42:43]                    // 00002C1C: D2000042 00AA854A
  v_alignbit_b32  v70, v68, v67, 30                         // 00002C24: D29C0046 027A8744
  v_cndmask_b32  v71, 0, -1, s[36:37]                       // 00002C2C: D2000047 00918280
  v_alignbit_b32  v74, v75, v66, v78                        // 00002C34: D29C004A 053A854B
  v_xor_b32     v76, v70, v71                               // 00002C3C: 3A988F46
  v_cndmask_b32  v74, v75, v74, vcc                         // 00002C40: 0094954B
  v_ffbh_u32    v75, v76                                    // 00002C44: 7E96734C
  v_cmp_ne_i32  vcc, v70, v71                               // 00002C48: 7D0A8F46
  v_alignbit_b32  v67, v67, v74, 30                         // 00002C4C: D29C0043 027A9543
  v_alignbit_b32  v66, v74, v66, 30                         // 00002C54: D29C0042 027A854A
  v_cndmask_b32  v70, 32, v75, vcc                          // 00002C5C: 008C96A0
  v_sub_i32     v74, vcc, 31, v70                           // 00002C60: 4C948C9F
  v_xor_b32     v66, v66, v71                               // 00002C64: 3A848F42
  v_xor_b32     v67, v67, v71                               // 00002C68: 3A868F43
  v_sub_i32     v71, vcc, 0, v70                            // 00002C6C: 4C8E8C80
  v_alignbit_b32  v66, v67, v66, v74                        // 00002C70: D29C0042 052A8543
  v_alignbit_b32  v67, v76, v67, v74                        // 00002C78: D29C0043 052A874C
  v_lshlrev_b32  v74, 2, v68                                // 00002C80: 34948882
  v_alignbit_b32  v75, v67, v66, 9                          // 00002C84: D29C004B 02268543
  v_lshlrev_b32  v71, 23, v71                               // 00002C8C: 348E8E97
  v_and_b32     v74, 0x80000000, v74                        // 00002C90: 369494FF 80000000
  v_add_i32     v71, vcc, 0.5, v71                          // 00002C98: 4A8E8EF0
  v_ffbh_u32    v76, v75                                    // 00002C9C: 7E98734B
  v_cmp_ne_i32  vcc, 0, v75                                 // 00002CA0: 7D0A9680
  v_lshrrev_b32  v67, 9, v67                                // 00002CA4: 2C868689
  v_or_b32      v71, v74, v71                               // 00002CA8: 388E8F4A
  v_cndmask_b32  v76, 32, v76, vcc                          // 00002CAC: 009898A0
  v_sub_i32     v70, vcc, 0x00000066, v70                   // 00002CB0: 4C8C8CFF 00000066
  v_or_b32      v67, v67, v71                               // 00002CB8: 38868F43
  v_sub_i32     v71, vcc, 31, v76                           // 00002CBC: 4C8E989F
  v_sub_i32     v70, vcc, v70, v76                          // 00002CC0: 4C8C9946
  v_alignbit_b32  v66, v75, v66, v71                        // 00002CC4: D29C0042 051E854B
  v_lshlrev_b32  v70, 23, v70                               // 00002CCC: 348C8C97
  v_mul_f32     v71, 0x3fc90fda, v67                        // 00002CD0: 108E86FF 3FC90FDA
  s_mov_b32     s9, 0x3fc90fda                              // 00002CD8: BE8903FF 3FC90FDA
  v_lshrrev_b32  v66, 9, v66                                // 00002CE0: 2C848489
  v_or_b32      v70, v74, v70                               // 00002CE4: 388C8D4A
  v_fma_f32     v71, v67, s9, -v71                          // 00002CE8: D2960047 851C1343
  s_mov_b32     s17, 0x33a22168                             // 00002CF0: BE9103FF 33A22168
  v_or_b32      v66, v66, v70                               // 00002CF8: 38848D42
  v_fma_f32     v70, v67, s17, v71                          // 00002CFC: D2960046 051C2343
  v_fma_f32     v66, v66, s9, v70                           // 00002D04: D2960042 05181342
  v_mad_f32     v98, v67, s9, v66                           // 00002D0C: D2820062 05081343
  v_lshrrev_b32  v68, 30, v68                               // 00002D14: 2C88889E
  v_mad_f32     v67, -v67, s9, v98                          // 00002D18: D2820043 25881343
  v_add_i32     v59, vcc, v69, v68                          // 00002D20: 4A768945
  v_sub_f32     v64, v66, v67                               // 00002D24: 08808742
label_0B4A:
  s_andn2_b64   exec, s[4:5], exec                          // 00002D28: 8AFE7E04
  s_cbranch_execz  label_0B7A                               // 00002D2C: BF88002E
  s_mov_b32     s9, 0x3f22f983                              // 00002D30: BE8903FF 3F22F983
  v_mad_f32     v66, v61, s9, 0.5                           // 00002D38: D2820042 03C0133D
  v_trunc_f32   v66, v66                                    // 00002D40: 7E844342
  v_mul_f32     v67, 0x3fc90fda, v66                        // 00002D44: 108684FF 3FC90FDA
  s_mov_b32     s9, 0x3fc90fda                              // 00002D4C: BE8903FF 3FC90FDA
  v_fma_f32     v67, v66, s9, -v67                          // 00002D54: D2960043 850C1342
  v_mad_f32     v68, -v66, s9, v61                          // 00002D5C: D2820044 24F41342
  v_sub_f32     v69, v61, v68                               // 00002D64: 088A893D
  v_mad_f32     v69, -v66, s9, v69                          // 00002D68: D2820045 25141342
  v_subrev_f32  v67, v67, v69                               // 00002D70: 0A868B43
  v_add_f32     v67, v68, v67                               // 00002D74: 06868744
  v_mul_f32     v68, 0x33a22168, v66                        // 00002D78: 108884FF 33A22168
  s_mov_b32     s9, 0x33a22168                              // 00002D80: BE8903FF 33A22168
  v_fma_f32     v68, v66, s9, -v68                          // 00002D88: D2960044 85101342
  v_mad_f32     v69, -v66, s9, v67                          // 00002D90: D2820045 250C1342
  v_sub_f32     v67, v67, v69                               // 00002D98: 08868B43
  v_mad_f32     v67, -v66, s9, v67                          // 00002D9C: D2820043 250C1342
  v_subrev_f32  v67, v68, v67                               // 00002DA4: 0A868744
  v_add_f32     v67, v69, v67                               // 00002DA8: 06868745
  v_mul_f32     v68, 0x27c234c4, v66                        // 00002DAC: 108884FF 27C234C4
  s_mov_b32     s9, 0x27c234c4                              // 00002DB4: BE8903FF 27C234C4
  v_fma_f32     v68, v66, s9, -v68                          // 00002DBC: D2960044 85101342
  v_mad_f32     v69, -v66, s9, v67                          // 00002DC4: D2820045 250C1342
  v_sub_f32     v67, v67, v69                               // 00002DCC: 08868B43
  v_mad_f32     v67, -v66, s9, v67                          // 00002DD0: D2820043 250C1342
  v_add_f32     v98, v69, v67                               // 00002DD8: 06C48745
  v_cvt_i32_f32  v59, v66                                   // 00002DDC: 7E761142
  v_max_f32     v64, -v68, -v68                             // 00002DE0: D2200040 60028944
label_0B7A:
  s_mov_b64     exec, s[4:5]                                // 00002DE8: BEFE0404
  v_and_b32     v68, 3, v59                                 // 00002DEC: 36887683
  s_mov_b32     s4, 0x4b000000                              // 00002DF0: BE8403FF 4B000000
  v_cmp_nlt_f32  s[4:5], v62, s4                            // 00002DF8: D01C0004 0000093E
  s_and_saveexec_b64  s[4:5], s[4:5]                        // 00002E00: BE842404
  v_and_b32     v69, 0x007fffff, v52                        // 00002E04: 368A68FF 007FFFFF
  s_cbranch_execz  label_0C67                               // 00002E0C: BF8800E3
  v_or_b32      v69, 0x00800000, v69                        // 00002E10: 388A8AFF 00800000
  s_mov_b32     s9, 0xfe5163ab                              // 00002E18: BE8903FF FE5163AB
  s_mov_b32     s17, 0x3c439041                             // 00002E20: BE9103FF 3C439041
  v_mul_hi_u32  v70, v69, s9                                // 00002E28: D2D40046 02001345
  v_mul_lo_u32  v71, v69, s17                               // 00002E30: D2D20047 02002345
  v_add_i32     v71, vcc, v70, v71                          // 00002E38: 4A8E8F46
  s_mov_b32     s9, 0xdb629599                              // 00002E3C: BE8903FF DB629599
  v_cmp_gt_u32  s[36:37], v70, v71                          // 00002E44: D1880024 00028F46
  v_mul_hi_u32  v70, v69, s17                               // 00002E4C: D2D40046 02002345
  v_mul_lo_u32  v74, v69, s9                                // 00002E54: D2D2004A 02001345
  v_addc_u32    v75, vcc, v70, 0, s[36:37]                  // 00002E5C: D2506A4B 00910146
  v_addc_u32    v70, vcc, v70, v74, s[36:37]                // 00002E64: D2506A46 00929546
  s_mov_b32     s17, 0xf534ddc0                             // 00002E6C: BE9103FF F534DDC0
  v_lshrrev_b32  v74, 23, v62                               // 00002E74: 2C947C97
  v_cmp_gt_u32  s[36:37], v75, v70                          // 00002E78: D1880024 00028D4B
  v_mul_hi_u32  v75, v69, s9                                // 00002E80: D2D4004B 02001345
  v_mul_lo_u32  v76, v69, s17                               // 00002E88: D2D2004C 02002345
  v_add_i32     v74, vcc, 0xffffff88, v74                   // 00002E90: 4A9494FF FFFFFF88
  v_addc_u32    v77, vcc, v75, 0, s[36:37]                  // 00002E98: D2506A4D 0091014B
  v_addc_u32    v75, vcc, v75, v76, s[36:37]                // 00002EA0: D2506A4B 0092994B
  s_mov_b32     s9, 0xfc2757d1                              // 00002EA8: BE8903FF FC2757D1
  v_cmp_gt_u32  s[36:37], v74, 31                           // 00002EB0: D1880024 00013F4A
  v_mov_b32     v76, 0xffffffe0                             // 00002EB8: 7E9802FF FFFFFFE0
  v_cmp_gt_u32  s[38:39], v77, v75                          // 00002EC0: D1880026 0002974D
  v_mul_hi_u32  v77, v69, s17                               // 00002EC8: D2D4004D 02002345
  v_mul_lo_u32  v78, v69, s9                                // 00002ED0: D2D2004E 02001345
  v_cndmask_b32  v79, 0, v76, s[36:37]                      // 00002ED8: D200004F 00929880
  v_addc_u32    v80, vcc, v77, 0, s[38:39]                  // 00002EE0: D2506A50 0099014D
  v_addc_u32    v77, vcc, v77, v78, s[38:39]                // 00002EE8: D2506A4D 009A9D4D
  s_mov_b32     s17, 0x4e441529                             // 00002EF0: BE9103FF 4E441529
  v_add_i32     v74, vcc, v74, v79                          // 00002EF8: 4A949F4A
  v_cmp_gt_u32  s[38:39], v80, v77                          // 00002EFC: D1880026 00029B50
  v_mul_hi_u32  v78, v69, s9                                // 00002F04: D2D4004E 02001345
  v_mul_lo_u32  v79, v69, s17                               // 00002F0C: D2D2004F 02002345
  v_cmp_gt_u32  s[40:41], v74, 31                           // 00002F14: D1880028 00013F4A
  v_addc_u32    v80, vcc, v78, 0, s[38:39]                  // 00002F1C: D2506A50 0099014E
  v_addc_u32    v78, vcc, v78, v79, s[38:39]                // 00002F24: D2506A4E 009A9F4E
  s_mov_b32     s9, 0xa2f9836e                              // 00002F2C: BE8903FF A2F9836E
  v_cndmask_b32  v79, 0, v76, s[40:41]                      // 00002F34: D200004F 00A29880
  v_cmp_gt_u32  s[38:39], v80, v78                          // 00002F3C: D1880026 00029D50
  v_mul_hi_u32  v80, v69, s17                               // 00002F44: D2D40050 02002345
  v_mul_lo_u32  v81, v69, s9                                // 00002F4C: D2D20051 02001345
  v_add_i32     v74, vcc, v74, v79                          // 00002F54: 4A949F4A
  v_addc_u32    v79, vcc, v80, 0, s[38:39]                  // 00002F58: D2506A4F 00990150
  v_addc_u32    v80, vcc, v80, v81, s[38:39]                // 00002F60: D2506A50 009AA350
  v_cmp_gt_u32  s[38:39], v74, 31                           // 00002F68: D1880026 00013F4A
  v_cmp_gt_u32  s[42:43], v79, v80                          // 00002F70: D188002A 0002A14F
  v_mul_hi_u32  v79, v69, s9                                // 00002F78: D2D4004F 02001345
  v_cndmask_b32  v76, 0, v76, s[38:39]                      // 00002F80: D200004C 009A9880
  v_addc_u32    v79, vcc, v79, 0, s[42:43]                  // 00002F88: D2506A4F 00A9014F
  v_add_i32     v74, vcc, v74, v76                          // 00002F90: 4A94994A
  v_cndmask_b32  v76, v79, v80, s[36:37]                    // 00002F94: D200004C 0092A14F
  v_cndmask_b32  v79, v80, v78, s[36:37]                    // 00002F9C: D200004F 00929D50
  v_cndmask_b32  v78, v78, v77, s[36:37]                    // 00002FA4: D200004E 00929B4E
  v_cndmask_b32  v77, v77, v75, s[36:37]                    // 00002FAC: D200004D 0092974D
  v_cmp_gt_u32  s[42:43], v74, 31                           // 00002FB4: D188002A 00013F4A
  v_cndmask_b32  v75, v75, v70, s[36:37]                    // 00002FBC: D200004B 00928D4B
  v_cndmask_b32  v76, v76, v79, s[40:41]                    // 00002FC4: D200004C 00A29F4C
  v_cndmask_b32  v79, v79, v78, s[40:41]                    // 00002FCC: D200004F 00A29D4F
  v_cndmask_b32  v78, v78, v77, s[40:41]                    // 00002FD4: D200004E 00A29B4E
  v_cndmask_b32  v77, v77, v75, s[40:41]                    // 00002FDC: D200004D 00A2974D
  v_cndmask_b32  v80, 0, 32, s[42:43]                       // 00002FE4: D2000050 00A94080
  v_cndmask_b32  v76, v76, v79, s[38:39]                    // 00002FEC: D200004C 009A9F4C
  v_cndmask_b32  v79, v79, v78, s[38:39]                    // 00002FF4: D200004F 009A9D4F
  v_cndmask_b32  v70, v70, v71, s[36:37]                    // 00002FFC: D2000046 00928F46
  v_cndmask_b32  v78, v78, v77, s[38:39]                    // 00003004: D200004E 009A9B4E
  v_sub_i32     v81, vcc, v80, v74                          // 0000300C: 4CA29550
  v_cndmask_b32  v76, v76, v79, s[42:43]                    // 00003010: D200004C 00AA9F4C
  v_cndmask_b32  v75, v75, v70, s[40:41]                    // 00003018: D200004B 00A28D4B
  v_cndmask_b32  v79, v79, v78, s[42:43]                    // 00003020: D200004F 00AA9D4F
  s_mov_b32     s9, 0xfe5163ab                              // 00003028: BE8903FF FE5163AB
  v_add_i32     v81, vcc, 32, v81                           // 00003030: 4AA2A2A0
  v_cndmask_b32  v77, v77, v75, s[38:39]                    // 00003034: D200004D 009A974D
  v_mul_lo_i32  v69, v69, s9                                // 0000303C: D2D60045 02001345
  v_cmp_ne_i32  vcc, v74, v80                               // 00003044: 7D0AA14A
  v_alignbit_b32  v74, v76, v79, v81                        // 00003048: D29C004A 05469F4C
  v_cndmask_b32  v78, v78, v77, s[42:43]                    // 00003050: D200004E 00AA9B4E
  v_cndmask_b32  v69, v71, v69, s[36:37]                    // 00003058: D2000045 00928B47
  v_cndmask_b32  v71, v76, v74, vcc                         // 00003060: 008E954C
  v_cndmask_b32  v69, v70, v69, s[40:41]                    // 00003064: D2000045 00A28B46
  v_alignbit_b32  v70, v79, v78, v81                        // 0000306C: D29C0046 05469D4F
  v_bfe_u32     v74, v71, 29, 1                             // 00003074: D290004A 02053B47
  v_cndmask_b32  v69, v75, v69, s[38:39]                    // 0000307C: D2000045 009A8B4B
  v_cndmask_b32  v70, v79, v70, vcc                         // 00003084: 008C8D4F
  v_cmp_ne_i32  s[36:37], v74, 0                            // 00003088: D10A0024 0001014A
  v_cndmask_b32  v69, v77, v69, s[42:43]                    // 00003090: D2000045 00AA8B4D
  v_alignbit_b32  v75, v71, v70, 30                         // 00003098: D29C004B 027A8D47
  v_cndmask_b32  v76, 0, -1, s[36:37]                       // 000030A0: D200004C 00918280
  v_alignbit_b32  v77, v78, v69, v81                        // 000030A8: D29C004D 05468B4E
  v_xor_b32     v79, v75, v76                               // 000030B0: 3A9E994B
  v_cndmask_b32  v77, v78, v77, vcc                         // 000030B4: 009A9B4E
  v_ffbh_u32    v78, v79                                    // 000030B8: 7E9C734F
  v_cmp_ne_i32  vcc, v75, v76                               // 000030BC: 7D0A994B
  v_alignbit_b32  v70, v70, v77, 30                         // 000030C0: D29C0046 027A9B46
  v_alignbit_b32  v69, v77, v69, 30                         // 000030C8: D29C0045 027A8B4D
  v_cndmask_b32  v75, 32, v78, vcc                          // 000030D0: 00969CA0
  v_sub_i32     v77, vcc, 31, v75                           // 000030D4: 4C9A969F
  v_xor_b32     v69, v69, v76                               // 000030D8: 3A8A9945
  v_xor_b32     v70, v70, v76                               // 000030DC: 3A8C9946
  v_sub_i32     v76, vcc, 0, v75                            // 000030E0: 4C989680
  v_alignbit_b32  v69, v70, v69, v77                        // 000030E4: D29C0045 05368B46
  v_alignbit_b32  v70, v79, v70, v77                        // 000030EC: D29C0046 05368D4F
  v_lshlrev_b32  v77, 2, v71                                // 000030F4: 349A8E82
  v_alignbit_b32  v78, v70, v69, 9                          // 000030F8: D29C004E 02268B46
  v_lshlrev_b32  v76, 23, v76                               // 00003100: 34989897
  v_and_b32     v77, 0x80000000, v77                        // 00003104: 369A9AFF 80000000
  v_add_i32     v76, vcc, 0.5, v76                          // 0000310C: 4A9898F0
  v_ffbh_u32    v79, v78                                    // 00003110: 7E9E734E
  v_cmp_ne_i32  vcc, 0, v78                                 // 00003114: 7D0A9C80
  v_lshrrev_b32  v70, 9, v70                                // 00003118: 2C8C8C89
  v_or_b32      v76, v77, v76                               // 0000311C: 3898994D
  v_cndmask_b32  v79, 32, v79, vcc                          // 00003120: 009E9EA0
  v_sub_i32     v75, vcc, 0x00000066, v75                   // 00003124: 4C9696FF 00000066
  v_or_b32      v70, v70, v76                               // 0000312C: 388C9946
  v_sub_i32     v76, vcc, 31, v79                           // 00003130: 4C989E9F
  v_sub_i32     v75, vcc, v75, v79                          // 00003134: 4C969F4B
  v_alignbit_b32  v69, v78, v69, v76                        // 00003138: D29C0045 05328B4E
  v_lshlrev_b32  v75, 23, v75                               // 00003140: 34969697
  v_mul_f32     v76, 0x3fc90fda, v70                        // 00003144: 10988CFF 3FC90FDA
  s_mov_b32     s9, 0x3fc90fda                              // 0000314C: BE8903FF 3FC90FDA
  v_lshrrev_b32  v69, 9, v69                                // 00003154: 2C8A8A89
  v_or_b32      v75, v77, v75                               // 00003158: 3896974D
  v_fma_f32     v76, v70, s9, -v76                          // 0000315C: D296004C 85301346
  s_mov_b32     s17, 0x33a22168                             // 00003164: BE9103FF 33A22168
  v_or_b32      v69, v69, v75                               // 0000316C: 388A9745
  v_fma_f32     v75, v70, s17, v76                          // 00003170: D296004B 05302346
  v_fma_f32     v69, v69, s9, v75                           // 00003178: D2960045 052C1345
  v_mad_f32     v99, v70, s9, v69                           // 00003180: D2820063 05141346
  v_lshrrev_b32  v71, 30, v71                               // 00003188: 2C8E8E9E
  v_mad_f32     v70, -v70, s9, v99                          // 0000318C: D2820046 258C1346
  v_add_i32     v59, vcc, v74, v71                          // 00003194: 4A768F4A
  v_sub_f32     v66, v69, v70                               // 00003198: 08848D45
label_0C67:
  s_andn2_b64   exec, s[4:5], exec                          // 0000319C: 8AFE7E04
  s_cbranch_execz  label_0C97                               // 000031A0: BF88002E
  s_mov_b32     s9, 0x3f22f983                              // 000031A4: BE8903FF 3F22F983
  v_mad_f32     v69, v62, s9, 0.5                           // 000031AC: D2820045 03C0133E
  v_trunc_f32   v69, v69                                    // 000031B4: 7E8A4345
  v_mul_f32     v70, 0x3fc90fda, v69                        // 000031B8: 108C8AFF 3FC90FDA
  s_mov_b32     s9, 0x3fc90fda                              // 000031C0: BE8903FF 3FC90FDA
  v_fma_f32     v70, v69, s9, -v70                          // 000031C8: D2960046 85181345
  v_mad_f32     v71, -v69, s9, v62                          // 000031D0: D2820047 24F81345
  v_sub_f32     v74, v62, v71                               // 000031D8: 08948F3E
  v_mad_f32     v74, -v69, s9, v74                          // 000031DC: D282004A 25281345
  v_subrev_f32  v70, v70, v74                               // 000031E4: 0A8C9546
  v_add_f32     v70, v71, v70                               // 000031E8: 068C8D47
  v_mul_f32     v71, 0x33a22168, v69                        // 000031EC: 108E8AFF 33A22168
  s_mov_b32     s9, 0x33a22168                              // 000031F4: BE8903FF 33A22168
  v_fma_f32     v71, v69, s9, -v71                          // 000031FC: D2960047 851C1345
  v_mad_f32     v74, -v69, s9, v70                          // 00003204: D282004A 25181345
  v_sub_f32     v70, v70, v74                               // 0000320C: 088C9546
  v_mad_f32     v70, -v69, s9, v70                          // 00003210: D2820046 25181345
  v_subrev_f32  v70, v71, v70                               // 00003218: 0A8C8D47
  v_add_f32     v70, v74, v70                               // 0000321C: 068C8D4A
  v_mul_f32     v71, 0x27c234c4, v69                        // 00003220: 108E8AFF 27C234C4
  s_mov_b32     s9, 0x27c234c4                              // 00003228: BE8903FF 27C234C4
  v_fma_f32     v71, v69, s9, -v71                          // 00003230: D2960047 851C1345
  v_mad_f32     v74, -v69, s9, v70                          // 00003238: D282004A 25181345
  v_sub_f32     v70, v70, v74                               // 00003240: 088C9546
  v_mad_f32     v70, -v69, s9, v70                          // 00003244: D2820046 25181345
  v_add_f32     v99, v74, v70                               // 0000324C: 06C68D4A
  v_cvt_i32_f32  v59, v69                                   // 00003250: 7E761145
  v_max_f32     v66, -v71, -v71                             // 00003254: D2200042 60028F47
label_0C97:
  s_mov_b64     exec, s[4:5]                                // 0000325C: BEFE0404
  v_and_b32     v69, 3, v59                                 // 00003260: 368A7683
  s_mov_b32     s4, 0x4b000000                              // 00003264: BE8403FF 4B000000
  v_cmp_nlt_f32  s[4:5], v54, s4                            // 0000326C: D01C0004 00000936
  s_and_saveexec_b64  s[4:5], s[4:5]                        // 00003274: BE842404
  v_and_b32     v74, 0x007fffff, v53                        // 00003278: 36946AFF 007FFFFF
  s_cbranch_execz  label_0D84                               // 00003280: BF8800E3
  v_or_b32      v74, 0x00800000, v74                        // 00003284: 389494FF 00800000
  s_mov_b32     s9, 0xfe5163ab                              // 0000328C: BE8903FF FE5163AB
  s_mov_b32     s17, 0x3c439041                             // 00003294: BE9103FF 3C439041
  v_mul_hi_u32  v75, v74, s9                                // 0000329C: D2D4004B 0200134A
  v_mul_lo_u32  v76, v74, s17                               // 000032A4: D2D2004C 0200234A
  v_add_i32     v76, vcc, v75, v76                          // 000032AC: 4A98994B
  s_mov_b32     s9, 0xdb629599                              // 000032B0: BE8903FF DB629599
  v_cmp_gt_u32  s[36:37], v75, v76                          // 000032B8: D1880024 0002994B
  v_mul_hi_u32  v75, v74, s17                               // 000032C0: D2D4004B 0200234A
  v_mul_lo_u32  v77, v74, s9                                // 000032C8: D2D2004D 0200134A
  v_addc_u32    v78, vcc, v75, 0, s[36:37]                  // 000032D0: D2506A4E 0091014B
  v_addc_u32    v75, vcc, v75, v77, s[36:37]                // 000032D8: D2506A4B 00929B4B
  s_mov_b32     s17, 0xf534ddc0                             // 000032E0: BE9103FF F534DDC0
  v_lshrrev_b32  v77, 23, v54                               // 000032E8: 2C9A6C97
  v_cmp_gt_u32  s[36:37], v78, v75                          // 000032EC: D1880024 0002974E
  v_mul_hi_u32  v78, v74, s9                                // 000032F4: D2D4004E 0200134A
  v_mul_lo_u32  v79, v74, s17                               // 000032FC: D2D2004F 0200234A
  v_add_i32     v77, vcc, 0xffffff88, v77                   // 00003304: 4A9A9AFF FFFFFF88
  v_addc_u32    v80, vcc, v78, 0, s[36:37]                  // 0000330C: D2506A50 0091014E
  v_addc_u32    v78, vcc, v78, v79, s[36:37]                // 00003314: D2506A4E 00929F4E
  s_mov_b32     s9, 0xfc2757d1                              // 0000331C: BE8903FF FC2757D1
  v_cmp_gt_u32  s[36:37], v77, 31                           // 00003324: D1880024 00013F4D
  v_mov_b32     v79, 0xffffffe0                             // 0000332C: 7E9E02FF FFFFFFE0
  v_cmp_gt_u32  s[38:39], v80, v78                          // 00003334: D1880026 00029D50
  v_mul_hi_u32  v80, v74, s17                               // 0000333C: D2D40050 0200234A
  v_mul_lo_u32  v81, v74, s9                                // 00003344: D2D20051 0200134A
  v_cndmask_b32  v82, 0, v79, s[36:37]                      // 0000334C: D2000052 00929E80
  v_addc_u32    v83, vcc, v80, 0, s[38:39]                  // 00003354: D2506A53 00990150
  v_addc_u32    v80, vcc, v80, v81, s[38:39]                // 0000335C: D2506A50 009AA350
  s_mov_b32     s17, 0x4e441529                             // 00003364: BE9103FF 4E441529
  v_add_i32     v77, vcc, v77, v82                          // 0000336C: 4A9AA54D
  v_cmp_gt_u32  s[38:39], v83, v80                          // 00003370: D1880026 0002A153
  v_mul_hi_u32  v81, v74, s9                                // 00003378: D2D40051 0200134A
  v_mul_lo_u32  v82, v74, s17                               // 00003380: D2D20052 0200234A
  v_cmp_gt_u32  s[40:41], v77, 31                           // 00003388: D1880028 00013F4D
  v_addc_u32    v83, vcc, v81, 0, s[38:39]                  // 00003390: D2506A53 00990151
  v_addc_u32    v81, vcc, v81, v82, s[38:39]                // 00003398: D2506A51 009AA551
  s_mov_b32     s9, 0xa2f9836e                              // 000033A0: BE8903FF A2F9836E
  v_cndmask_b32  v82, 0, v79, s[40:41]                      // 000033A8: D2000052 00A29E80
  v_cmp_gt_u32  s[38:39], v83, v81                          // 000033B0: D1880026 0002A353
  v_mul_hi_u32  v83, v74, s17                               // 000033B8: D2D40053 0200234A
  v_mul_lo_u32  v84, v74, s9                                // 000033C0: D2D20054 0200134A
  v_add_i32     v77, vcc, v77, v82                          // 000033C8: 4A9AA54D
  v_addc_u32    v82, vcc, v83, 0, s[38:39]                  // 000033CC: D2506A52 00990153
  v_addc_u32    v83, vcc, v83, v84, s[38:39]                // 000033D4: D2506A53 009AA953
  v_cmp_gt_u32  s[38:39], v77, 31                           // 000033DC: D1880026 00013F4D
  v_cmp_gt_u32  s[42:43], v82, v83                          // 000033E4: D188002A 0002A752
  v_mul_hi_u32  v82, v74, s9                                // 000033EC: D2D40052 0200134A
  v_cndmask_b32  v79, 0, v79, s[38:39]                      // 000033F4: D200004F 009A9E80
  v_addc_u32    v82, vcc, v82, 0, s[42:43]                  // 000033FC: D2506A52 00A90152
  v_add_i32     v77, vcc, v77, v79                          // 00003404: 4A9A9F4D
  v_cndmask_b32  v79, v82, v83, s[36:37]                    // 00003408: D200004F 0092A752
  v_cndmask_b32  v82, v83, v81, s[36:37]                    // 00003410: D2000052 0092A353
  v_cndmask_b32  v81, v81, v80, s[36:37]                    // 00003418: D2000051 0092A151
  v_cndmask_b32  v80, v80, v78, s[36:37]                    // 00003420: D2000050 00929D50
  v_cmp_gt_u32  s[42:43], v77, 31                           // 00003428: D188002A 00013F4D
  v_cndmask_b32  v78, v78, v75, s[36:37]                    // 00003430: D200004E 0092974E
  v_cndmask_b32  v79, v79, v82, s[40:41]                    // 00003438: D200004F 00A2A54F
  v_cndmask_b32  v82, v82, v81, s[40:41]                    // 00003440: D2000052 00A2A352
  v_cndmask_b32  v81, v81, v80, s[40:41]                    // 00003448: D2000051 00A2A151
  v_cndmask_b32  v80, v80, v78, s[40:41]                    // 00003450: D2000050 00A29D50
  v_cndmask_b32  v83, 0, 32, s[42:43]                       // 00003458: D2000053 00A94080
  v_cndmask_b32  v79, v79, v82, s[38:39]                    // 00003460: D200004F 009AA54F
  v_cndmask_b32  v82, v82, v81, s[38:39]                    // 00003468: D2000052 009AA352
  v_cndmask_b32  v75, v75, v76, s[36:37]                    // 00003470: D200004B 0092994B
  v_cndmask_b32  v81, v81, v80, s[38:39]                    // 00003478: D2000051 009AA151
  v_sub_i32     v84, vcc, v83, v77                          // 00003480: 4CA89B53
  v_cndmask_b32  v79, v79, v82, s[42:43]                    // 00003484: D200004F 00AAA54F
  v_cndmask_b32  v78, v78, v75, s[40:41]                    // 0000348C: D200004E 00A2974E
  v_cndmask_b32  v82, v82, v81, s[42:43]                    // 00003494: D2000052 00AAA352
  s_mov_b32     s9, 0xfe5163ab                              // 0000349C: BE8903FF FE5163AB
  v_add_i32     v84, vcc, 32, v84                           // 000034A4: 4AA8A8A0
  v_cndmask_b32  v80, v80, v78, s[38:39]                    // 000034A8: D2000050 009A9D50
  v_mul_lo_i32  v74, v74, s9                                // 000034B0: D2D6004A 0200134A
  v_cmp_ne_i32  vcc, v77, v83                               // 000034B8: 7D0AA74D
  v_alignbit_b32  v77, v79, v82, v84                        // 000034BC: D29C004D 0552A54F
  v_cndmask_b32  v81, v81, v80, s[42:43]                    // 000034C4: D2000051 00AAA151
  v_cndmask_b32  v74, v76, v74, s[36:37]                    // 000034CC: D200004A 0092954C
  v_cndmask_b32  v76, v79, v77, vcc                         // 000034D4: 00989B4F
  v_cndmask_b32  v74, v75, v74, s[40:41]                    // 000034D8: D200004A 00A2954B
  v_alignbit_b32  v75, v82, v81, v84                        // 000034E0: D29C004B 0552A352
  v_bfe_u32     v77, v76, 29, 1                             // 000034E8: D290004D 02053B4C
  v_cndmask_b32  v74, v78, v74, s[38:39]                    // 000034F0: D200004A 009A954E
  v_cndmask_b32  v75, v82, v75, vcc                         // 000034F8: 00969752
  v_cmp_ne_i32  s[36:37], v77, 0                            // 000034FC: D10A0024 0001014D
  v_cndmask_b32  v74, v80, v74, s[42:43]                    // 00003504: D200004A 00AA9550
  v_alignbit_b32  v78, v76, v75, 30                         // 0000350C: D29C004E 027A974C
  v_cndmask_b32  v79, 0, -1, s[36:37]                       // 00003514: D200004F 00918280
  v_alignbit_b32  v80, v81, v74, v84                        // 0000351C: D29C0050 05529551
  v_xor_b32     v82, v78, v79                               // 00003524: 3AA49F4E
  v_cndmask_b32  v80, v81, v80, vcc                         // 00003528: 00A0A151
  v_ffbh_u32    v81, v82                                    // 0000352C: 7EA27352
  v_cmp_ne_i32  vcc, v78, v79                               // 00003530: 7D0A9F4E
  v_alignbit_b32  v75, v75, v80, 30                         // 00003534: D29C004B 027AA14B
  v_alignbit_b32  v74, v80, v74, 30                         // 0000353C: D29C004A 027A9550
  v_cndmask_b32  v78, 32, v81, vcc                          // 00003544: 009CA2A0
  v_sub_i32     v80, vcc, 31, v78                           // 00003548: 4CA09C9F
  v_xor_b32     v74, v74, v79                               // 0000354C: 3A949F4A
  v_xor_b32     v75, v75, v79                               // 00003550: 3A969F4B
  v_sub_i32     v79, vcc, 0, v78                            // 00003554: 4C9E9C80
  v_alignbit_b32  v74, v75, v74, v80                        // 00003558: D29C004A 0542954B
  v_alignbit_b32  v75, v82, v75, v80                        // 00003560: D29C004B 05429752
  v_lshlrev_b32  v80, 2, v76                                // 00003568: 34A09882
  v_alignbit_b32  v81, v75, v74, 9                          // 0000356C: D29C0051 0226954B
  v_lshlrev_b32  v79, 23, v79                               // 00003574: 349E9E97
  v_and_b32     v80, 0x80000000, v80                        // 00003578: 36A0A0FF 80000000
  v_add_i32     v79, vcc, 0.5, v79                          // 00003580: 4A9E9EF0
  v_ffbh_u32    v82, v81                                    // 00003584: 7EA47351
  v_cmp_ne_i32  vcc, 0, v81                                 // 00003588: 7D0AA280
  v_lshrrev_b32  v75, 9, v75                                // 0000358C: 2C969689
  v_or_b32      v79, v80, v79                               // 00003590: 389E9F50
  v_cndmask_b32  v82, 32, v82, vcc                          // 00003594: 00A4A4A0
  v_sub_i32     v78, vcc, 0x00000066, v78                   // 00003598: 4C9C9CFF 00000066
  v_or_b32      v75, v75, v79                               // 000035A0: 38969F4B
  v_sub_i32     v79, vcc, 31, v82                           // 000035A4: 4C9EA49F
  v_sub_i32     v78, vcc, v78, v82                          // 000035A8: 4C9CA54E
  v_alignbit_b32  v74, v81, v74, v79                        // 000035AC: D29C004A 053E9551
  v_lshlrev_b32  v78, 23, v78                               // 000035B4: 349C9C97
  v_mul_f32     v79, 0x3fc90fda, v75                        // 000035B8: 109E96FF 3FC90FDA
  s_mov_b32     s9, 0x3fc90fda                              // 000035C0: BE8903FF 3FC90FDA
  v_lshrrev_b32  v74, 9, v74                                // 000035C8: 2C949489
  v_or_b32      v78, v80, v78                               // 000035CC: 389C9D50
  v_fma_f32     v79, v75, s9, -v79                          // 000035D0: D296004F 853C134B
  s_mov_b32     s17, 0x33a22168                             // 000035D8: BE9103FF 33A22168
  v_or_b32      v74, v74, v78                               // 000035E0: 38949D4A
  v_fma_f32     v78, v75, s17, v79                          // 000035E4: D296004E 053C234B
  v_fma_f32     v74, v74, s9, v78                           // 000035EC: D296004A 0538134A
  v_mad_f32     v100, v75, s9, v74                          // 000035F4: D2820064 0528134B
  v_lshrrev_b32  v76, 30, v76                               // 000035FC: 2C98989E
  v_mad_f32     v75, -v75, s9, v100                         // 00003600: D282004B 2590134B
  v_add_i32     v59, vcc, v77, v76                          // 00003608: 4A76994D
  v_sub_f32     v76, v74, v75                               // 0000360C: 0898974A
label_0D84:
  s_andn2_b64   exec, s[4:5], exec                          // 00003610: 8AFE7E04
  s_cbranch_execz  label_0DB4                               // 00003614: BF88002E
  s_mov_b32     s9, 0x3f22f983                              // 00003618: BE8903FF 3F22F983
  v_mad_f32     v74, v54, s9, 0.5                           // 00003620: D282004A 03C01336
  v_trunc_f32   v74, v74                                    // 00003628: 7E94434A
  v_mul_f32     v75, 0x3fc90fda, v74                        // 0000362C: 109694FF 3FC90FDA
  s_mov_b32     s9, 0x3fc90fda                              // 00003634: BE8903FF 3FC90FDA
  v_fma_f32     v75, v74, s9, -v75                          // 0000363C: D296004B 852C134A
  v_mad_f32     v76, -v74, s9, v54                          // 00003644: D282004C 24D8134A
  v_sub_f32     v77, v54, v76                               // 0000364C: 089A9936
  v_mad_f32     v77, -v74, s9, v77                          // 00003650: D282004D 2534134A
  v_subrev_f32  v75, v75, v77                               // 00003658: 0A969B4B
  v_add_f32     v75, v76, v75                               // 0000365C: 0696974C
  v_mul_f32     v76, 0x33a22168, v74                        // 00003660: 109894FF 33A22168
  s_mov_b32     s9, 0x33a22168                              // 00003668: BE8903FF 33A22168
  v_fma_f32     v76, v74, s9, -v76                          // 00003670: D296004C 8530134A
  v_mad_f32     v77, -v74, s9, v75                          // 00003678: D282004D 252C134A
  v_sub_f32     v75, v75, v77                               // 00003680: 08969B4B
  v_mad_f32     v75, -v74, s9, v75                          // 00003684: D282004B 252C134A
  v_subrev_f32  v75, v76, v75                               // 0000368C: 0A96974C
  v_add_f32     v75, v77, v75                               // 00003690: 0696974D
  v_mul_f32     v76, 0x27c234c4, v74                        // 00003694: 109894FF 27C234C4
  s_mov_b32     s9, 0x27c234c4                              // 0000369C: BE8903FF 27C234C4
  v_fma_f32     v76, v74, s9, -v76                          // 000036A4: D296004C 8530134A
  v_mad_f32     v77, -v74, s9, v75                          // 000036AC: D282004D 252C134A
  v_sub_f32     v75, v75, v77                               // 000036B4: 08969B4B
  v_mad_f32     v75, -v74, s9, v75                          // 000036B8: D282004B 252C134A
  v_add_f32     v100, v77, v75                              // 000036C0: 06C8974D
  v_cvt_i32_f32  v59, v74                                   // 000036C4: 7E76114A
  v_max_f32     v76, -v76, -v76                             // 000036C8: D220004C 6002994C
label_0DB4:
  s_mov_b64     exec, s[4:5]                                // 000036D0: BEFE0404
  v_and_b32     v70, 3, v59                                 // 000036D4: 368C7683
label_0DB6:
  s_andn2_b64   exec, s[34:35], exec                        // 000036D8: 8AFE7E22
  v_mov_b32     v58, 0x3f22f983                             // 000036DC: 7E7402FF 3F22F983
  s_cbranch_execz  label_0E50                               // 000036E4: BF880096
  v_mad_f32     v59, v60, v58, 0.5                          // 000036E8: D282003B 03C2753C
  v_mad_f32     v64, v61, v58, 0.5                          // 000036F0: D2820040 03C2753D
  v_mad_f32     v66, v62, v58, 0.5                          // 000036F8: D2820042 03C2753E
  v_mad_f32     v58, v54, v58, 0.5                          // 00003700: D282003A 03C27536
  v_trunc_f32   v59, v59                                    // 00003708: 7E76433B
  v_trunc_f32   v64, v64                                    // 0000370C: 7E804340
  v_trunc_f32   v66, v66                                    // 00003710: 7E844342
  v_trunc_f32   v58, v58                                    // 00003714: 7E74433A
  v_mov_b32     v67, 0x3fc90fda                             // 00003718: 7E8602FF 3FC90FDA
  v_mul_f32     v68, v67, v59                               // 00003720: 10887743
  v_mul_f32     v69, v64, v67                               // 00003724: 108A8740
  v_mul_f32     v70, v66, v67                               // 00003728: 108C8742
  v_mul_f32     v71, v58, v67                               // 0000372C: 108E873A
  v_fma_f32     v69, v64, v67, -v69                         // 00003730: D2960045 85168740
  v_fma_f32     v68, v59, v67, -v68                         // 00003738: D2960044 8512873B
  v_fma_f32     v71, v58, v67, -v71                         // 00003740: D2960047 851E873A
  v_fma_f32     v70, v66, v67, -v70                         // 00003748: D2960046 851A8742
  v_mad_f32     v74, -v59, v67, v60                         // 00003750: D282004A 24F2873B
  v_mad_f32     v75, -v64, v67, v61                         // 00003758: D282004B 24F68740
  v_mad_f32     v76, -v66, v67, v62                         // 00003760: D282004C 24FA8742
  v_mad_f32     v77, -v58, v67, v54                         // 00003768: D282004D 24DA873A
  v_sub_f32     v78, v60, v74                               // 00003770: 089C953C
  v_sub_f32     v79, v61, v75                               // 00003774: 089E973D
  v_sub_f32     v80, v62, v76                               // 00003778: 08A0993E
  v_sub_f32     v81, v54, v77                               // 0000377C: 08A29B36
  v_mad_f32     v78, -v59, v67, v78                         // 00003780: D282004E 253A873B
  v_mad_f32     v79, -v64, v67, v79                         // 00003788: D282004F 253E8740
  v_mad_f32     v80, -v66, v67, v80                         // 00003790: D2820050 25428742
  v_mad_f32     v81, -v58, v67, v81                         // 00003798: D2820051 2546873A
  v_subrev_f32  v67, v68, v78                               // 000037A0: 0A869D44
  v_subrev_f32  v68, v69, v79                               // 000037A4: 0A889F45
  v_subrev_f32  v69, v70, v80                               // 000037A8: 0A8AA146
  v_subrev_f32  v70, v71, v81                               // 000037AC: 0A8CA347
  v_add_f32     v67, v74, v67                               // 000037B0: 0686874A
  v_add_f32     v68, v75, v68                               // 000037B4: 0688894B
  v_add_f32     v69, v76, v69                               // 000037B8: 068A8B4C
  v_add_f32     v70, v77, v70                               // 000037BC: 068C8D4D
  v_mov_b32     v71, 0x33a22168                             // 000037C0: 7E8E02FF 33A22168
  v_mul_f32     v74, v71, v59                               // 000037C8: 10947747
  v_mul_f32     v75, v64, v71                               // 000037CC: 10968F40
  v_mul_f32     v76, v66, v71                               // 000037D0: 10988F42
  v_mul_f32     v77, v58, v71                               // 000037D4: 109A8F3A
  v_fma_f32     v75, v64, v71, -v75                         // 000037D8: D296004B 852E8F40
  v_fma_f32     v74, v59, v71, -v74                         // 000037E0: D296004A 852A8F3B
  v_fma_f32     v77, v58, v71, -v77                         // 000037E8: D296004D 85368F3A
  v_fma_f32     v76, v66, v71, -v76                         // 000037F0: D296004C 85328F42
  v_mad_f32     v78, -v59, v71, v67                         // 000037F8: D282004E 250E8F3B
  v_mad_f32     v79, -v64, v71, v68                         // 00003800: D282004F 25128F40
  v_mad_f32     v80, -v66, v71, v69                         // 00003808: D2820050 25168F42
  v_mad_f32     v81, -v58, v71, v70                         // 00003810: D2820051 251A8F3A
  v_sub_f32     v67, v67, v78                               // 00003818: 08869D43
  v_sub_f32     v68, v68, v79                               // 0000381C: 08889F44
  v_sub_f32     v69, v69, v80                               // 00003820: 088AA145
  v_sub_f32     v70, v70, v81                               // 00003824: 088CA346
  v_mad_f32     v67, -v59, v71, v67                         // 00003828: D2820043 250E8F3B
  v_mad_f32     v68, -v64, v71, v68                         // 00003830: D2820044 25128F40
  v_mad_f32     v69, -v66, v71, v69                         // 00003838: D2820045 25168F42
  v_mad_f32     v70, -v58, v71, v70                         // 00003840: D2820046 251A8F3A
  v_subrev_f32  v67, v74, v67                               // 00003848: 0A86874A
  v_subrev_f32  v68, v75, v68                               // 0000384C: 0A88894B
  v_subrev_f32  v69, v76, v69                               // 00003850: 0A8A8B4C
  v_subrev_f32  v70, v77, v70                               // 00003854: 0A8C8D4D
  v_add_f32     v67, v78, v67                               // 00003858: 0686874E
  v_add_f32     v68, v79, v68                               // 0000385C: 0688894F
  v_add_f32     v69, v80, v69                               // 00003860: 068A8B50
  v_add_f32     v70, v81, v70                               // 00003864: 068C8D51
  v_mov_b32     v71, 0x27c234c4                             // 00003868: 7E8E02FF 27C234C4
  v_mul_f32     v74, v71, v59                               // 00003870: 10947747
  v_mul_f32     v75, v64, v71                               // 00003874: 10968F40
  v_mul_f32     v76, v66, v71                               // 00003878: 10988F42
  v_mul_f32     v77, v58, v71                               // 0000387C: 109A8F3A
  v_fma_f32     v75, v64, v71, -v75                         // 00003880: D296004B 852E8F40
  v_fma_f32     v74, v59, v71, -v74                         // 00003888: D296004A 852A8F3B
  v_fma_f32     v77, v58, v71, -v77                         // 00003890: D296004D 85368F3A
  v_fma_f32     v76, v66, v71, -v76                         // 00003898: D296004C 85328F42
  v_mad_f32     v78, -v59, v71, v67                         // 000038A0: D282004E 250E8F3B
  v_mad_f32     v79, -v64, v71, v68                         // 000038A8: D282004F 25128F40
  v_mad_f32     v80, -v66, v71, v69                         // 000038B0: D2820050 25168F42
  v_mad_f32     v81, -v58, v71, v70                         // 000038B8: D2820051 251A8F3A
  v_sub_f32     v67, v67, v78                               // 000038C0: 08869D43
  v_sub_f32     v68, v68, v79                               // 000038C4: 08889F44
  v_sub_f32     v69, v69, v80                               // 000038C8: 088AA145
  v_sub_f32     v70, v70, v81                               // 000038CC: 088CA346
  v_mad_f32     v67, -v59, v71, v67                         // 000038D0: D2820043 250E8F3B
  v_mad_f32     v68, -v64, v71, v68                         // 000038D8: D2820044 25128F40
  v_mad_f32     v69, -v66, v71, v69                         // 000038E0: D2820045 25168F42
  v_mad_f32     v70, -v58, v71, v70                         // 000038E8: D2820046 251A8F3A
  v_add_f32     v97, v78, v67                               // 000038F0: 06C2874E
  v_add_f32     v98, v79, v68                               // 000038F4: 06C4894F
  v_add_f32     v99, v80, v69                               // 000038F8: 06C68B50
  v_add_f32     v100, v81, v70                              // 000038FC: 06C88D51
  v_cvt_i32_f32  v59, v59                                   // 00003900: 7E76113B
  v_cvt_i32_f32  v64, v64                                   // 00003904: 7E801140
  v_cvt_i32_f32  v66, v66                                   // 00003908: 7E841142
  v_cvt_i32_f32  v58, v58                                   // 0000390C: 7E74113A
  v_and_b32     v101, 3, v59                                // 00003910: 36CA7683
  v_and_b32     v68, 3, v64                                 // 00003914: 36888083
  v_and_b32     v69, 3, v66                                 // 00003918: 368A8483
  v_and_b32     v70, 3, v58                                 // 0000391C: 368C7483
  v_max_f32     v58, -v74, -v74                             // 00003920: D220003A 6002954A
  v_max_f32     v64, -v75, -v75                             // 00003928: D2200040 6002974B
  v_max_f32     v66, -v76, -v76                             // 00003930: D2200042 6002994C
  v_max_f32     v76, -v77, -v77                             // 00003938: D220004C 60029B4D
label_0E50:
  s_mov_b64     exec, s[34:35]                              // 00003940: BEFE0422
  v_mov_b32     v77, 0x7fffffff                             // 00003944: 7E9A02FF 7FFFFFFF
  v_and_b32     v78, v77, v97                               // 0000394C: 369CC34D
  v_and_b32     v79, v77, v98                               // 00003950: 369EC54D
  v_and_b32     v80, v77, v99                               // 00003954: 36A0C74D
  v_and_b32     v77, v77, v100                              // 00003958: 369AC94D
  v_mov_b32     v81, 0x3f480001                             // 0000395C: 7EA202FF 3F480001
  v_cmp_lt_u32  s[4:5], v77, v81                            // 00003964: D1820004 0002A34D
  v_cmp_lt_u32  s[34:35], v78, v81                          // 0000396C: D1820022 0002A34E
  v_cmp_lt_u32  s[36:37], v80, v81                          // 00003974: D1820024 0002A350
  v_cmp_lt_u32  s[38:39], v79, v81                          // 0000397C: D1820026 0002A34F
  v_mov_b32     v81, 0x3e999999                             // 00003984: 7EA202FF 3E999999
  v_cmp_gt_u32  s[40:41], v77, v81                          // 0000398C: D1880028 0002A34D
  v_cmp_gt_u32  s[42:43], v78, v81                          // 00003994: D188002A 0002A34E
  v_cmp_gt_u32  s[44:45], v80, v81                          // 0000399C: D188002C 0002A350
  v_cmp_gt_u32  s[46:47], v79, v81                          // 000039A4: D188002E 0002A34F
  s_and_b64     s[34:35], s[34:35], s[42:43]                // 000039AC: 87A22A22
  s_and_b64     s[38:39], s[38:39], s[46:47]                // 000039B0: 87A62E26
  s_and_b64     s[36:37], s[36:37], s[44:45]                // 000039B4: 87A42C24
  s_and_b64     s[4:5], s[4:5], s[40:41]                    // 000039B8: 87842804
  v_mov_b32     v81, 0xff000000                             // 000039BC: 7EA202FF FF000000
  v_add_i32     v82, vcc, v81, v78                          // 000039C4: 4AA49D51
  v_add_i32     v83, vcc, v79, v81                          // 000039C8: 4AA6A34F
  v_add_i32     v84, vcc, v80, v81                          // 000039CC: 4AA8A350
  v_add_i32     v81, vcc, v77, v81                          // 000039D0: 4AA2A34D
  v_cndmask_b32  v82, 0, v82, s[34:35]                      // 000039D4: D2000052 008AA480
  v_cndmask_b32  v83, 0, v83, s[38:39]                      // 000039DC: D2000053 009AA680
  v_cndmask_b32  v84, 0, v84, s[36:37]                      // 000039E4: D2000054 0092A880
  v_cndmask_b32  v81, 0, v81, s[4:5]                        // 000039EC: D2000051 0012A280
  v_mov_b32     v85, 0x3f480000                             // 000039F4: 7EAA02FF 3F480000
  v_cmp_gt_u32  s[4:5], v77, v85                            // 000039FC: D1880004 0002AB4D
  v_cmp_gt_u32  s[34:35], v78, v85                          // 00003A04: D1880022 0002AB4E
  v_cmp_gt_u32  s[36:37], v80, v85                          // 00003A0C: D1880024 0002AB50
  v_cmp_gt_u32  vcc, v79, v85                               // 00003A14: 7D88AB4F
  v_mov_b32     v77, 0x3e900000                             // 00003A18: 7E9A02FF 3E900000
  v_cndmask_b32  v78, v82, v77, s[34:35]                    // 00003A20: D200004E 008A9B52
  v_cndmask_b32  v79, v83, v77, vcc                         // 00003A28: 009E9B53
  v_cndmask_b32  v80, v84, v77, s[36:37]                    // 00003A2C: D2000050 00929B54
  v_cndmask_b32  v77, v81, v77, s[4:5]                      // 00003A34: D200004D 00129B51
  v_sub_f32     v81, 1.0, v78                               // 00003A3C: 08A29CF2
  v_sub_f32     v82, 1.0, v79                               // 00003A40: 08A49EF2
  v_sub_f32     v83, 1.0, v80                               // 00003A44: 08A6A0F2
  v_sub_f32     v84, 1.0, v77                               // 00003A48: 08A89AF2
  v_mul_f32     v85, v97, v97                               // 00003A4C: 10AAC361
  v_mul_f32     v86, v98, v98                               // 00003A50: 10ACC562
  v_mul_f32     v87, v99, v99                               // 00003A54: 10AEC763
  v_mul_f32     v88, v100, v100                             // 00003A58: 10B0C964
  v_mad_f32     v78, v85, 0.5, -v78                         // 00003A5C: D282004E 8539E155
  v_mad_f32     v79, v86, 0.5, -v79                         // 00003A64: D282004F 853DE156
  v_mad_f32     v80, v87, 0.5, -v80                         // 00003A6C: D2820050 8541E157
  v_mad_f32     v77, v88, 0.5, -v77                         // 00003A74: D282004D 8535E158
  v_mul_f32     v89, 0xad47d74e, v85                        // 00003A7C: 10B2AAFF AD47D74E
  v_add_f32     v89, 0x310f74f6, v89                        // 00003A84: 06B2B2FF 310F74F6
  v_mul_f32     v90, 0xad47d74e, v86                        // 00003A8C: 10B4ACFF AD47D74E
  v_add_f32     v90, 0x310f74f6, v90                        // 00003A94: 06B4B4FF 310F74F6
  v_mul_f32     v91, 0xad47d74e, v87                        // 00003A9C: 10B6AEFF AD47D74E
  v_add_f32     v91, 0x310f74f6, v91                        // 00003AA4: 06B6B6FF 310F74F6
  v_mul_f32     v92, 0xad47d74e, v88                        // 00003AAC: 10B8B0FF AD47D74E
  v_add_f32     v92, 0x310f74f6, v92                        // 00003AB4: 06B8B8FF 310F74F6
  v_mov_b32     v93, 0xb492923a                             // 00003ABC: 7EBA02FF B492923A
  v_mad_f32     v89, v85, v89, v93                          // 00003AC4: D2820059 0576B355
  v_mad_f32     v90, v86, v90, v93                          // 00003ACC: D282005A 0576B556
  v_mad_f32     v91, v87, v91, v93                          // 00003AD4: D282005B 0576B757
  v_mac_f32     v93, v88, v92                               // 00003ADC: 3EBAB958
  v_mov_b32     v92, 0x37d00ae2                             // 00003AE0: 7EB802FF 37D00AE2
  v_mad_f32     v89, v85, v89, v92                          // 00003AE8: D2820059 0572B355
  v_mad_f32     v90, v86, v90, v92                          // 00003AF0: D282005A 0572B556
  v_mad_f32     v91, v87, v91, v92                          // 00003AF8: D282005B 0572B757
  v_mac_f32     v92, v88, v93                               // 00003B00: 3EB8BB58
  v_mov_b32     v93, 0xbab60b60                             // 00003B04: 7EBA02FF BAB60B60
  v_mad_f32     v89, v85, v89, v93                          // 00003B0C: D2820059 0576B355
  v_mad_f32     v90, v86, v90, v93                          // 00003B14: D282005A 0576B556
  v_mad_f32     v91, v87, v91, v93                          // 00003B1C: D282005B 0576B757
  v_mac_f32     v93, v88, v92                               // 00003B24: 3EBAB958
  v_mov_b32     v92, 0x3d2aaaab                             // 00003B28: 7EB802FF 3D2AAAAB
  v_mad_f32     v89, v85, v89, v92                          // 00003B30: D2820059 0572B355
  v_mad_f32     v90, v86, v90, v92                          // 00003B38: D282005A 0572B556
  v_mad_f32     v91, v87, v91, v92                          // 00003B40: D282005B 0572B757
  v_mac_f32     v92, v88, v93                               // 00003B48: 3EB8BB58
  v_mul_f32     v89, v85, v89                               // 00003B4C: 10B2B355
  v_mul_f32     v90, v86, v90                               // 00003B50: 10B4B556
  v_mul_f32     v91, v87, v91                               // 00003B54: 10B6B757
  v_mul_f32     v92, v88, v92                               // 00003B58: 10B8B958
  v_mul_f32     v93, v58, -v97                              // 00003B5C: D210005D 4002C33A
  v_mul_f32     v94, v64, -v98                              // 00003B64: D210005E 4002C540
  v_mul_f32     v95, v66, -v99                              // 00003B6C: D210005F 4002C742
  v_mul_f32     v96, v76, -v100                             // 00003B74: D2100060 4002C94C
  v_mac_f32     v93, v85, v89                               // 00003B7C: 3EBAB355
  v_mac_f32     v94, v86, v90                               // 00003B80: 3EBCB556
  v_mac_f32     v95, v87, v91                               // 00003B84: 3EBEB757
  v_mac_f32     v96, v88, v92                               // 00003B88: 3EC0B958
  v_sub_f32     v78, v78, v93                               // 00003B8C: 089CBB4E
  v_sub_f32     v79, v79, v94                               // 00003B90: 089EBD4F
  v_sub_f32     v80, v80, v95                               // 00003B94: 08A0BF50
  v_sub_f32     v77, v77, v96                               // 00003B98: 089AC14D
  v_sub_f32     v78, v81, v78                               // 00003B9C: 089C9D51
  v_sub_f32     v79, v82, v79                               // 00003BA0: 089E9F52
  v_sub_f32     v80, v83, v80                               // 00003BA4: 08A0A153
  v_sub_f32     v77, v84, v77                               // 00003BA8: 089A9B54
  v_and_b32     v81, 1, v101                                // 00003BAC: 36A2CA81
  v_and_b32     v82, 1, v68                                 // 00003BB0: 36A48881
  v_and_b32     v83, 1, v69                                 // 00003BB4: 36A68A81
  v_and_b32     v84, 1, v70                                 // 00003BB8: 36A88C81
  v_cmp_ne_i32  s[4:5], v84, 0                              // 00003BBC: D10A0004 00010154
  v_cmp_ne_i32  s[34:35], v81, 0                            // 00003BC4: D10A0022 00010151
  v_cmp_ne_i32  s[36:37], v83, 0                            // 00003BCC: D10A0024 00010153
  v_cmp_ne_i32  vcc, 0, v82                                 // 00003BD4: 7D0AA480
  v_mul_f32     v81, 0x2f2ec9d3, v85                        // 00003BD8: 10A2AAFF 2F2EC9D3
  v_add_f32     v81, 0xb2d72f34, v81                        // 00003BE0: 06A2A2FF B2D72F34
  v_mul_f32     v82, 0x2f2ec9d3, v86                        // 00003BE8: 10A4ACFF 2F2EC9D3
  v_add_f32     v82, 0xb2d72f34, v82                        // 00003BF0: 06A4A4FF B2D72F34
  v_mul_f32     v83, 0x2f2ec9d3, v87                        // 00003BF8: 10A6AEFF 2F2EC9D3
  v_add_f32     v83, 0xb2d72f34, v83                        // 00003C00: 06A6A6FF B2D72F34
  v_mul_f32     v84, 0x2f2ec9d3, v88                        // 00003C08: 10A8B0FF 2F2EC9D3
  v_add_f32     v84, 0xb2d72f34, v84                        // 00003C10: 06A8A8FF B2D72F34
  v_mov_b32     v89, 0x3636df25                             // 00003C18: 7EB202FF 3636DF25
  v_mad_f32     v81, v85, v81, v89                          // 00003C20: D2820051 0566A355
  v_mad_f32     v82, v86, v82, v89                          // 00003C28: D2820052 0566A556
  v_mad_f32     v83, v87, v83, v89                          // 00003C30: D2820053 0566A757
  v_mac_f32     v89, v88, v84                               // 00003C38: 3EB2A958
  v_mov_b32     v84, 0xb95009d4                             // 00003C3C: 7EA802FF B95009D4
  v_mad_f32     v81, v85, v81, v84                          // 00003C44: D2820051 0552A355
  v_mad_f32     v82, v86, v82, v84                          // 00003C4C: D2820052 0552A556
  v_mad_f32     v83, v87, v83, v84                          // 00003C54: D2820053 0552A757
  v_mac_f32     v84, v88, v89                               // 00003C5C: 3EA8B358
  v_mov_b32     v89, 0x3c088887                             // 00003C60: 7EB202FF 3C088887
  v_mad_f32     v81, v85, v81, v89                          // 00003C68: D2820051 0566A355
  v_mad_f32     v82, v86, v82, v89                          // 00003C70: D2820052 0566A556
  v_mad_f32     v83, v87, v83, v89                          // 00003C78: D2820053 0566A757
  v_mac_f32     v89, v88, v84                               // 00003C80: 3EB2A958
  v_mul_f32     v84, v97, v85                               // 00003C84: 10A8AB61
  v_mul_f32     v90, v98, v86                               // 00003C88: 10B4AD62
  v_mul_f32     v91, v99, v87                               // 00003C8C: 10B6AF63
  v_mul_f32     v92, v100, v88                              // 00003C90: 10B8B164
  v_mul_f32     v81, v81, -v84                              // 00003C94: D2100051 4002A951
  v_mul_f32     v82, v82, -v90                              // 00003C9C: D2100052 4002B552
  v_mul_f32     v83, v83, -v91                              // 00003CA4: D2100053 4002B753
  v_mul_f32     v89, v89, -v92                              // 00003CAC: D2100059 4002B959
  v_mac_f32     v81, 0.5, v58                               // 00003CB4: 3EA274F0
  v_mac_f32     v82, 0.5, v64                               // 00003CB8: 3EA480F0
  v_mac_f32     v83, 0.5, v66                               // 00003CBC: 3EA684F0
  v_mac_f32     v89, 0.5, v76                               // 00003CC0: 3EB298F0
  v_mad_f32     v71, v85, v81, -v58                         // 00003CC4: D2820047 84EAA355
  v_mad_f32     v74, v86, v82, -v64                         // 00003CCC: D282004A 8502A556
  v_mad_f32     v75, v87, v83, -v66                         // 00003CD4: D282004B 850AA757
  v_mad_f32     v76, v88, v89, -v76                         // 00003CDC: D282004C 8532B358
  v_mov_b32     v81, 0x3e2aaaab                             // 00003CE4: 7EA202FF 3E2AAAAB
  v_mac_f32     v71, v84, v81                               // 00003CEC: 3E8EA354
  v_mac_f32     v74, v90, v81                               // 00003CF0: 3E94A35A
  v_mac_f32     v75, v91, v81                               // 00003CF4: 3E96A35B
  v_mac_f32     v76, v92, v81                               // 00003CF8: 3E98A35C
  v_sub_f32     v58, v97, v71                               // 00003CFC: 08748F61
  v_sub_f32     v59, v98, v74                               // 00003D00: 08769562
  v_sub_f32     v64, v99, v75                               // 00003D04: 08809763
  v_sub_f32     v66, v100, v76                              // 00003D08: 08849964
  v_cndmask_b32  v58, v58, v78, s[34:35]                    // 00003D0C: D200003A 008A9D3A
  v_cndmask_b32  v59, v59, v79, vcc                         // 00003D14: 00769F3B
  v_cndmask_b32  v64, v64, v80, s[36:37]                    // 00003D18: D2000040 0092A140
  v_cndmask_b32  v66, v66, v77, s[4:5]                      // 00003D20: D2000042 00129B42
  v_cmp_gt_i32  s[4:5], v70, 1                              // 00003D28: D1080004 00010346
  v_cmp_gt_i32  s[34:35], v101, 1                           // 00003D30: D1080022 00010365
  v_cmp_gt_i32  s[36:37], v69, 1                            // 00003D38: D1080024 00010345
  v_cmp_lt_i32  vcc, 1, v68                                 // 00003D40: 7D028881
  v_mov_b32     v67, 0x80000000                             // 00003D44: 7E8602FF 80000000
  v_cndmask_b32  v68, 0, v67, s[34:35]                      // 00003D4C: D2000044 008A8680
  v_cndmask_b32  v69, 0, v67, vcc                           // 00003D54: 008A8680
  v_cndmask_b32  v70, 0, v67, s[36:37]                      // 00003D58: D2000046 00928680
  v_cndmask_b32  v67, 0, v67, s[4:5]                        // 00003D60: D2000043 00128680
  v_xor_b32     v58, v58, v68                               // 00003D68: 3A74893A
  v_xor_b32     v59, v59, v69                               // 00003D6C: 3A768B3B
  v_xor_b32     v64, v64, v70                               // 00003D70: 3A808D40
  v_xor_b32     v66, v66, v67                               // 00003D74: 3A848742
  v_xor_b32     v50, v50, v60                               // 00003D78: 3A647932
  v_xor_b32     v51, v51, v61                               // 00003D7C: 3A667B33
  v_xor_b32     v52, v52, v62                               // 00003D80: 3A687D34
  v_xor_b32     v53, v53, v54                               // 00003D84: 3A6A6D35
  v_xor_b32     v50, v58, v50                               // 00003D88: 3A64653A
  v_xor_b32     v51, v59, v51                               // 00003D8C: 3A66673B
  v_xor_b32     v52, v64, v52                               // 00003D90: 3A686940
  v_xor_b32     v53, v66, v53                               // 00003D94: 3A6A6B42
  v_mov_b32     v54, 0x7fc00000                             // 00003D98: 7E6C02FF 7FC00000
  v_cndmask_b32  v50, v50, v54, s[10:11]                    // 00003DA0: D2000032 002A6D32
  v_cndmask_b32  v51, v51, v54, s[32:33]                    // 00003DA8: D2000033 00826D33
  v_cndmask_b32  v52, v52, v54, s[18:19]                    // 00003DB0: D2000034 004A6D34
  v_cndmask_b32  v53, v53, v54, s[6:7]                      // 00003DB8: D2000035 001A6D35
  v_mul_f32     v50, v63, v50                               // 00003DC0: 1064653F
  v_mul_f32     v51, v65, v51                               // 00003DC4: 10666741
  v_mul_f32     v52, v72, v52                               // 00003DC8: 10686948
  v_mul_f32     v53, v73, v53                               // 00003DCC: 106A6B49
  v_mov_b32     v54, s24                                    // 00003DD0: 7E6C0218
  v_mac_f32     v54, s28, v50                               // 00003DD4: 3E6C641C
  v_mov_b32     v50, s25                                    // 00003DD8: 7E640219
  v_mac_f32     v50, s29, v51                               // 00003DDC: 3E64661D
  v_mov_b32     v51, s26                                    // 00003DE0: 7E66021A
  v_mac_f32     v51, s30, v52                               // 00003DE4: 3E66681E
  v_mov_b32     v52, s27                                    // 00003DE8: 7E68021B
  v_mac_f32     v52, s31, v53                               // 00003DEC: 3E686A1F
  v_cmp_lt_f32  s[4:5], v52, 0                              // 00003DF0: D0020004 00010134
  v_cmp_lt_f32  s[6:7], v54, 0                              // 00003DF8: D0020006 00010136
  v_cmp_lt_f32  s[10:11], v51, 0                            // 00003E00: D002000A 00010133
  v_cmp_gt_f32  vcc, 0, v50                                 // 00003E08: 7C086480
  v_cndmask_b32  v53, 0.5, -0.5, s[6:7]                     // 00003E0C: D2000035 0019E2F0
  v_cndmask_b32  v58, 0.5, -0.5, vcc                        // 00003E14: D200003A 01A9E2F0
  v_cndmask_b32  v59, 0.5, -0.5, s[10:11]                   // 00003E1C: D200003B 0029E2F0
  v_cndmask_b32  v60, 0.5, -0.5, s[4:5]                     // 00003E24: D200003C 0011E2F0
  v_mov_b32     v61, 0x3fb8aa3b                             // 00003E2C: 7E7A02FF 3FB8AA3B
  v_mac_f32     v53, v54, v61                               // 00003E34: 3E6A7B36
  v_mac_f32     v58, v50, v61                               // 00003E38: 3E747B32
  v_mac_f32     v59, v51, v61                               // 00003E3C: 3E767B33
  v_mac_f32     v60, v52, v61                               // 00003E40: 3E787B34
  v_cvt_i32_f32  v53, v53                                   // 00003E44: 7E6A1135
  v_cvt_i32_f32  v58, v58                                   // 00003E48: 7E74113A
  v_cvt_i32_f32  v59, v59                                   // 00003E4C: 7E76113B
  v_cvt_i32_f32  v60, v60                                   // 00003E50: 7E78113C
  v_cvt_f32_i32  v61, v53                                   // 00003E54: 7E7A0B35
  v_cvt_f32_i32  v62, v58                                   // 00003E58: 7E7C0B3A
  v_cvt_f32_i32  v63, v59                                   // 00003E5C: 7E7E0B3B
  v_cvt_f32_i32  v64, v60                                   // 00003E60: 7E800B3C
  v_mov_b32     v65, 0xbf317180                             // 00003E64: 7E8202FF BF317180
  v_mad_f32     v66, v61, v65, v54                          // 00003E6C: D2820042 04DA833D
  v_mad_f32     v67, v62, v65, v50                          // 00003E74: D2820043 04CA833E
  v_mad_f32     v68, v63, v65, v51                          // 00003E7C: D2820044 04CE833F
  v_mad_f32     v65, v64, v65, v52                          // 00003E84: D2820041 04D28340
  v_mov_b32     v69, 0x3717f7d1                             // 00003E8C: 7E8A02FF 3717F7D1
  v_mul_f32     v70, -v61, v69                              // 00003E94: D2100046 20028B3D
  v_mul_f32     v71, -v62, v69                              // 00003E9C: D2100047 20028B3E
  v_mul_f32     v72, -v63, v69                              // 00003EA4: D2100048 20028B3F
  v_mul_f32     v73, -v64, v69                              // 00003EAC: D2100049 20028B40
  v_mad_f32     v61, -v61, v69, v66                         // 00003EB4: D282003D 250A8B3D
  v_mad_f32     v62, -v62, v69, v67                         // 00003EBC: D282003E 250E8B3E
  v_mad_f32     v63, -v63, v69, v68                         // 00003EC4: D282003F 25128B3F
  v_mad_f32     v64, -v64, v69, v65                         // 00003ECC: D2820040 25068B40
  v_mul_f32     v69, v61, v61                               // 00003ED4: 108A7B3D
  v_mul_f32     v74, v62, v62                               // 00003ED8: 10947D3E
  v_mul_f32     v75, v63, v63                               // 00003EDC: 10967F3F
  v_mul_f32     v76, v64, v64                               // 00003EE0: 10988140
  v_mul_f32     v77, 0x3331bb4c, v69                        // 00003EE4: 109A8AFF 3331BB4C
  v_add_f32     v77, 0xb5ddea0e, v77                        // 00003EEC: 069A9AFF B5DDEA0E
  v_mul_f32     v78, 0x3331bb4c, v74                        // 00003EF4: 109C94FF 3331BB4C
  v_add_f32     v78, 0xb5ddea0e, v78                        // 00003EFC: 069C9CFF B5DDEA0E
  v_mul_f32     v79, 0x3331bb4c, v75                        // 00003F04: 109E96FF 3331BB4C
  v_add_f32     v79, 0xb5ddea0e, v79                        // 00003F0C: 069E9EFF B5DDEA0E
  v_mul_f32     v80, 0x3331bb4c, v76                        // 00003F14: 10A098FF 3331BB4C
  v_add_f32     v80, 0xb5ddea0e, v80                        // 00003F1C: 06A0A0FF B5DDEA0E
  v_mov_b32     v81, 0x388ab355                             // 00003F24: 7EA202FF 388AB355
  v_mad_f32     v77, v69, v77, v81                          // 00003F2C: D282004D 05469B45
  v_mad_f32     v78, v74, v78, v81                          // 00003F34: D282004E 05469D4A
  v_mad_f32     v79, v75, v79, v81                          // 00003F3C: D282004F 05469F4B
  v_mac_f32     v81, v76, v80                               // 00003F44: 3EA2A14C
  v_mov_b32     v80, 0xbb360b61                             // 00003F48: 7EA002FF BB360B61
  v_mad_f32     v77, v69, v77, v80                          // 00003F50: D282004D 05429B45
  v_mad_f32     v78, v74, v78, v80                          // 00003F58: D282004E 05429D4A
  v_mad_f32     v79, v75, v79, v80                          // 00003F60: D282004F 05429F4B
  v_mac_f32     v80, v76, v81                               // 00003F68: 3EA0A34C
  v_mov_b32     v81, 0x3e2aaaab                             // 00003F6C: 7EA202FF 3E2AAAAB
  v_mad_f32     v77, v69, v77, v81                          // 00003F74: D282004D 05469B45
  v_mad_f32     v78, v74, v78, v81                          // 00003F7C: D282004E 05469D4A
  v_mad_f32     v79, v75, v79, v81                          // 00003F84: D282004F 05469F4B
  v_mac_f32     v81, v76, v80                               // 00003F8C: 3EA2A14C
  v_mad_f32     v69, v69, -v77, v61                         // 00003F90: D2820045 44F69B45
  v_mad_f32     v74, v74, -v78, v62                         // 00003F98: D282004A 44FA9D4A
  v_mad_f32     v75, v75, -v79, v63                         // 00003FA0: D282004B 44FE9F4B
  v_mad_f32     v76, v76, -v81, v64                         // 00003FA8: D282004C 4502A34C
  v_sub_f32     v77, 2.0, v69                               // 00003FB0: 089A8AF4
  v_sub_f32     v78, 2.0, v74                               // 00003FB4: 089C94F4
  v_sub_f32     v79, 2.0, v75                               // 00003FB8: 089E96F4
  v_sub_f32     v80, 2.0, v76                               // 00003FBC: 08A098F4
  v_mul_f32     v61, v61, v69                               // 00003FC0: 107A8B3D
  v_mul_f32     v62, v62, v74                               // 00003FC4: 107C953E
  v_mul_f32     v63, v63, v75                               // 00003FC8: 107E973F
  v_mul_f32     v64, v64, v76                               // 00003FCC: 10809940
  v_rcp_f32     v69, v77                                    // 00003FD0: 7E8A554D
  v_rcp_f32     v74, v78                                    // 00003FD4: 7E94554E
  v_rcp_f32     v75, v79                                    // 00003FD8: 7E96554F
  v_rcp_f32     v76, v80                                    // 00003FDC: 7E985550
  v_mad_f32     v70, -v61, v69, -v70                        // 00003FE0: D2820046 A51A8B3D
  v_mad_f32     v71, -v62, v74, -v71                        // 00003FE8: D2820047 A51E953E
  v_mad_f32     v72, -v63, v75, -v72                        // 00003FF0: D2820048 A522973F
  v_mad_f32     v73, -v64, v76, -v73                        // 00003FF8: D2820049 A5269940
  v_subrev_f32  v61, v66, v70                               // 00004000: 0A7A8D42
  v_subrev_f32  v62, v67, v71                               // 00004004: 0A7C8F43
  v_subrev_f32  v63, v68, v72                               // 00004008: 0A7E9144
  v_subrev_f32  v64, v65, v73                               // 0000400C: 0A809341
  v_sub_f32     v61, 1.0, v61                               // 00004010: 087A7AF2
  v_sub_f32     v62, 1.0, v62                               // 00004014: 087C7CF2
  v_sub_f32     v63, 1.0, v63                               // 00004018: 087E7EF2
  v_sub_f32     v64, 1.0, v64                               // 0000401C: 088080F2
  v_lshlrev_b32  v53, 23, v53                               // 00004020: 346A6A97
  v_lshlrev_b32  v58, 23, v58                               // 00004024: 34747497
  v_lshlrev_b32  v59, 23, v59                               // 00004028: 34767697
  v_lshlrev_b32  v60, 23, v60                               // 0000402C: 34787897
  v_add_i32     v53, vcc, v61, v53                          // 00004030: 4A6A6B3D
  v_add_i32     v58, vcc, v62, v58                          // 00004034: 4A74753E
  v_add_i32     v59, vcc, v63, v59                          // 00004038: 4A76773F
  v_add_i32     v60, vcc, v64, v60                          // 0000403C: 4A787940
  s_mov_b32     s4, 0xc2aeac4f                              // 00004040: BE8403FF C2AEAC4F
  v_cmp_ngt_f32  vcc, s4, v54                               // 00004048: 7C166C04
  v_cndmask_b32  v53, 0, v53, vcc                           // 0000404C: 006A6A80
  v_cmp_ngt_f32  vcc, s4, v50                               // 00004050: 7C166404
  v_cndmask_b32  v58, 0, v58, vcc                           // 00004054: 00747480
  v_cmp_ngt_f32  vcc, s4, v51                               // 00004058: 7C166604
  v_cndmask_b32  v59, 0, v59, vcc                           // 0000405C: 00767680
  v_cmp_ngt_f32  vcc, s4, v52                               // 00004060: 7C166804
  v_cndmask_b32  v60, 0, v60, vcc                           // 00004064: 00787880
  v_mov_b32     v61, 0x42b17218                             // 00004068: 7E7A02FF 42B17218
  v_cmp_lt_f32  s[6:7], v52, v61                            // 00004070: D0020006 00027B34
  v_cmp_lt_f32  s[10:11], v54, v61                          // 00004078: D002000A 00027B36
  v_cmp_lt_f32  s[18:19], v51, v61                          // 00004080: D0020012 00027B33
  v_cmp_lt_f32  vcc, v50, v61                               // 00004088: 7C027B32
  v_mov_b32     v61, 0x7f800000                             // 0000408C: 7E7A02FF 7F800000
  v_cndmask_b32  v53, v61, v53, s[10:11]                    // 00004094: D2000035 002A6B3D
  v_cndmask_b32  v58, v61, v58, vcc                         // 0000409C: 0074753D
  v_cndmask_b32  v59, v61, v59, s[18:19]                    // 000040A0: D200003B 004A773D
  v_cndmask_b32  v60, v61, v60, s[6:7]                      // 000040A8: D200003C 001A793D
  v_cmp_neq_f32  s[6:7], v52, v52                           // 000040B0: D01A0006 00026934
  v_cmp_neq_f32  s[10:11], v54, v54                         // 000040B8: D01A000A 00026D36
  v_cmp_neq_f32  s[18:19], v51, v51                         // 000040C0: D01A0012 00026733
  v_cmp_neq_f32  vcc, v50, v50                              // 000040C8: 7C1A6532
  v_cndmask_b32  v53, v53, v54, s[10:11]                    // 000040CC: D2000035 002A6D35
  v_cndmask_b32  v50, v58, v50, vcc                         // 000040D4: 0064653A
  v_cndmask_b32  v51, v59, v51, s[18:19]                    // 000040D8: D2000033 004A673B
  v_cndmask_b32  v52, v60, v52, s[6:7]                      // 000040E0: D2000034 001A693C
  v_mul_f32     v54, v41, v53                               // 000040E8: 106C6B29
  v_mul_f32     v58, v42, v50                               // 000040EC: 1074652A
  v_mul_f32     v59, v43, v51                               // 000040F0: 1076672B
  v_mul_f32     v60, v44, v52                               // 000040F4: 1078692C
  v_mul_f32     v61, v54, v13                               // 000040F8: 107A1B36
  v_mul_f32     v62, v58, v14                               // 000040FC: 107C1D3A
  v_mul_f32     v63, v59, v15                               // 00004100: 107E1F3B
  v_mul_f32     v64, v60, v16                               // 00004104: 1080213C
  v_mul_f32     v65, v10, v61                               // 00004108: 10827B0A
  v_mul_f32     v66, v11, v62                               // 0000410C: 10847D0B
  v_mul_f32     v67, v12, v63                               // 00004110: 10867F0C
  v_mul_f32     v68, v9, v64                                // 00004114: 10888109
  v_lshrrev_b32  v69, 23, v65                               // 00004118: 2C8A8297
  v_lshrrev_b32  v70, 23, v66                               // 0000411C: 2C8C8497
  v_lshrrev_b32  v71, 23, v67                               // 00004120: 2C8E8697
  v_lshrrev_b32  v72, 23, v68                               // 00004124: 2C908897
  v_cmp_eq_i32  s[6:7], v72, 0                              // 00004128: D1040006 00010148
  v_cmp_eq_i32  s[10:11], v69, 0                            // 00004130: D104000A 00010145
  v_cmp_eq_i32  s[18:19], v71, 0                            // 00004138: D1040012 00010147
  v_cmp_eq_i32  s[32:33], v70, 0                            // 00004140: D1040020 00010146
  v_or_b32      v73, 1.0, v65                               // 00004148: 389282F2
  v_or_b32      v74, 1.0, v66                               // 0000414C: 389484F2
  v_or_b32      v75, 1.0, v67                               // 00004150: 389686F2
  v_or_b32      v76, 1.0, v68                               // 00004154: 389888F2
  v_add_f32     v73, -1.0, v73                              // 00004158: 069292F3
  v_add_f32     v74, -1.0, v74                              // 0000415C: 069494F3
  v_add_f32     v75, -1.0, v75                              // 00004160: 069696F3
  v_add_f32     v76, -1.0, v76                              // 00004164: 069898F3
  v_cndmask_b32  v77, v65, v73, s[10:11]                    // 00004168: D200004D 002A9341
  v_cndmask_b32  v78, v66, v74, s[32:33]                    // 00004170: D200004E 00829542
  v_cndmask_b32  v79, v67, v75, s[18:19]                    // 00004178: D200004F 004A9743
  v_cndmask_b32  v80, v68, v76, s[6:7]                      // 00004180: D2000050 001A9944
  v_mov_b32     v81, 0x007f0000                             // 00004188: 7EA202FF 007F0000
  v_and_b32     v82, v81, v77                               // 00004190: 36A49B51
  v_and_b32     v83, v78, v81                               // 00004194: 36A6A34E
  v_and_b32     v84, v79, v81                               // 00004198: 36A8A34F
  v_and_b32     v81, v80, v81                               // 0000419C: 36A2A350
  v_mov_b32     v85, 0x00008000                             // 000041A0: 7EAA02FF 00008000
  v_and_b32     v86, v85, v77                               // 000041A8: 36AC9B55
  v_and_b32     v87, v78, v85                               // 000041AC: 36AEAB4E
  v_and_b32     v88, v79, v85                               // 000041B0: 36B0AB4F
  v_and_b32     v85, v80, v85                               // 000041B4: 36AAAB50
  v_lshlrev_b32  v86, 1, v86                                // 000041B8: 34ACAC81
  v_lshlrev_b32  v87, 1, v87                                // 000041BC: 34AEAE81
  v_lshlrev_b32  v88, 1, v88                                // 000041C0: 34B0B081
  v_lshlrev_b32  v85, 1, v85                                // 000041C4: 34AAAA81
  v_add_i32     v82, vcc, v82, v86                          // 000041C8: 4AA4AD52
  v_add_i32     v83, vcc, v83, v87                          // 000041CC: 4AA6AF53
  v_add_i32     v84, vcc, v84, v88                          // 000041D0: 4AA8B154
  v_add_i32     v81, vcc, v81, v85                          // 000041D4: 4AA2AB51
  v_lshrrev_b32  v85, 16, v82                               // 000041D8: 2CAAA490
  v_lshrrev_b32  v86, 16, v83                               // 000041DC: 2CACA690
  v_lshrrev_b32  v87, 16, v84                               // 000041E0: 2CAEA890
  v_lshrrev_b32  v88, 16, v81                               // 000041E4: 2CB0A290
  v_lshlrev_b32  v89, 2, v88                                // 000041E8: 34B2B082
  v_add_i32     v89, vcc, 0x00000410, v89                   // 000041EC: 4AB2B2FF 00000410
  v_ashrrev_i32  v33, 4, v89                                // 000041F4: 3042B284
  v_and_b32     v34, 12, v89                                // 000041F8: 3644B28C
  v_lshlrev_b32  v91, 2, v85                                // 000041FC: 34B6AA82
  v_add_i32     v91, vcc, 0x00000410, v91                   // 00004200: 4AB6B6FF 00000410
  v_ashrrev_i32  v35, 4, v91                                // 00004208: 3046B684
  v_and_b32     v36, 12, v91                                // 0000420C: 3648B68C
  v_lshlrev_b32  v93, 2, v87                                // 00004210: 34BAAE82
  v_add_i32     v93, vcc, 0x00000410, v93                   // 00004214: 4ABABAFF 00000410
  v_ashrrev_i32  v89, 4, v93                                // 0000421C: 30B2BA84
  v_and_b32     v90, 12, v93                                // 00004220: 36B4BA8C
  v_lshlrev_b32  v95, 2, v86                                // 00004224: 34BEAC82
  v_add_i32     v95, vcc, 0x00000410, v95                   // 00004228: 4ABEBEFF 00000410
  v_ashrrev_i32  v91, 4, v95                                // 00004230: 30B6BE84
  v_and_b32     v92, 12, v95                                // 00004234: 36B8BE8C
  v_or_b32      v97, 0.5, v82                               // 00004238: 38C2A4F0
  v_or_b32      v98, 0.5, v83                               // 0000423C: 38C4A6F0
  v_or_b32      v99, 0.5, v84                               // 00004240: 38C6A8F0
  v_or_b32      v100, 0.5, v81                              // 00004244: 38C8A2F0
  v_mov_b32     v101, 0x007fffff                            // 00004248: 7ECA02FF 007FFFFF
  v_and_b32     v77, v101, v77                              // 00004250: 369A9B65
  v_and_b32     v78, v78, v101                              // 00004254: 369CCB4E
  v_and_b32     v79, v79, v101                              // 00004258: 369ECB4F
  v_and_b32     v80, v80, v101                              // 0000425C: 36A0CB50
  v_or_b32      v77, 0.5, v77                               // 00004260: 389A9AF0
  v_or_b32      v78, 0.5, v78                               // 00004264: 389C9CF0
  v_or_b32      v79, 0.5, v79                               // 00004268: 389E9EF0
  v_or_b32      v80, 0.5, v80                               // 0000426C: 38A0A0F0
  v_sub_f32     v77, v97, v77                               // 00004270: 089A9B61
  v_sub_f32     v78, v98, v78                               // 00004274: 089C9D62
  v_sub_f32     v79, v99, v79                               // 00004278: 089E9F63
  v_sub_f32     v80, v100, v80                              // 0000427C: 08A0A164
  v_mov_b32     v97, 0x3eaaaaab                             // 00004280: 7EC202FF 3EAAAAAB
  v_mov_b32     v98, 0xffffff81                             // 00004288: 7EC402FF FFFFFF81
  v_add_i32     v69, vcc, v98, v69                          // 00004290: 4A8A8B62
  v_add_i32     v70, vcc, v98, v70                          // 00004294: 4A8C8D62
  v_add_i32     v71, vcc, v98, v71                          // 00004298: 4A8E8F62
  v_add_i32     v72, vcc, v98, v72                          // 0000429C: 4A909162
  v_lshrrev_b32  v73, 23, v73                               // 000042A0: 2C929297
  v_lshrrev_b32  v74, 23, v74                               // 000042A4: 2C949497
  v_lshrrev_b32  v75, 23, v75                               // 000042A8: 2C969697
  v_lshrrev_b32  v76, 23, v76                               // 000042AC: 2C989897
  v_mov_b32     v98, 0xffffff03                             // 000042B0: 7EC402FF FFFFFF03
  v_add_i32     v73, vcc, v98, v73                          // 000042B8: 4A929362
  v_add_i32     v74, vcc, v98, v74                          // 000042BC: 4A949562
  v_add_i32     v75, vcc, v98, v75                          // 000042C0: 4A969762
  v_add_i32     v76, vcc, v98, v76                          // 000042C4: 4A989962
  v_cndmask_b32  v69, v69, v73, s[10:11]                    // 000042C8: D2000045 002A9345
  v_cndmask_b32  v70, v70, v74, s[32:33]                    // 000042D0: D2000046 00829546
  v_cndmask_b32  v71, v71, v75, s[18:19]                    // 000042D8: D2000047 004A9747
  v_cndmask_b32  v72, v72, v76, s[6:7]                      // 000042E0: D2000048 001A9948
  v_cvt_f32_i32  v69, v69                                   // 000042E8: 7E8A0B45
  v_cvt_f32_i32  v70, v70                                   // 000042EC: 7E8C0B46
  v_cvt_f32_i32  v71, v71                                   // 000042F0: 7E8E0B47
  v_cvt_f32_i32  v72, v72                                   // 000042F4: 7E900B48
  v_mov_b32     v73, 0x3805fdf4                             // 000042F8: 7E9202FF 3805FDF4
  v_bfe_u32     v74, v81, 16, 1                             // 00004300: D290004A 02052151
  v_bfe_i32     v75, v88, 1, 28                             // 00004308: D292004B 02710358
  v_cmp_eq_i32  s[6:7], v74, 0                              // 00004310: D1040006 0001014A
  v_bfe_u32     v74, v82, 16, 1                             // 00004318: D290004A 02052152
  v_bfe_i32     v76, v85, 1, 28                             // 00004320: D292004C 02710355
  v_cmp_eq_i32  s[10:11], v74, 0                            // 00004328: D104000A 0001014A
  v_bfe_u32     v74, v84, 16, 1                             // 00004330: D290004A 02052154
  v_bfe_i32     v81, v87, 1, 28                             // 00004338: D2920051 02710357
  v_cmp_eq_i32  vcc, 0, v74                                 // 00004340: 7D049480
  v_bfe_u32     v74, v83, 16, 1                             // 00004344: D290004A 02052153
  v_bfe_i32     v82, v86, 1, 28                             // 0000434C: D2920052 02710356
  tbuffer_load_format_x  v83, v[33:34], s[12:15], 0 offen idxen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004354: EBA03000 80035321
  tbuffer_load_format_x  v84, v[35:36], s[12:15], 0 offen idxen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000435C: EBA03000 80035423
  tbuffer_load_format_x  v85, v[89:90], s[12:15], 0 offen idxen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004364: EBA03000 80035559
  tbuffer_load_format_x  v86, v[91:92], s[12:15], 0 offen idxen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000436C: EBA03000 8003565B
  tbuffer_load_format_xyzw  v[87:90], v75, s[12:15], 0 idxen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 00004374: EBF32000 8003574B
  tbuffer_load_format_xyzw  v[91:94], v76, s[12:15], 0 idxen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 0000437C: EBF32000 80035B4C
  tbuffer_load_format_xyzw  v[98:101], v81, s[12:15], 0 idxen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 00004384: EBF32000 80036251
  tbuffer_load_format_xyzw  v[102:105], v82, s[12:15], 0 idxen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 0000438C: EBF32000 80036652
  s_waitcnt     vmcnt(6)                                    // 00004394: BF8C1F76
  v_mul_f32     v75, v84, v77                               // 00004398: 10969B54
  s_waitcnt     vmcnt(4)                                    // 0000439C: BF8C1F74
  v_mul_f32     v76, v86, v78                               // 000043A0: 10989D56
  v_mul_f32     v77, v85, v79                               // 000043A4: 109A9F55
  v_mul_f32     v78, v83, v80                               // 000043A8: 109CA153
  v_mad_f32     v79, v75, v97, 0.5                          // 000043AC: D282004F 03C2C34B
  v_mad_f32     v80, v76, v97, 0.5                          // 000043B4: D2820050 03C2C34C
  v_mad_f32     v81, v77, v97, 0.5                          // 000043BC: D2820051 03C2C34D
  v_mad_f32     v82, v78, v97, 0.5                          // 000043C4: D2820052 03C2C34E
  v_mul_f32     v83, v75, v75                               // 000043CC: 10A6974B
  v_mul_f32     v84, v76, v76                               // 000043D0: 10A8994C
  v_mul_f32     v85, v77, v77                               // 000043D4: 10AA9B4D
  v_mul_f32     v86, v78, v78                               // 000043D8: 10AC9D4E
  v_mac_f32     v75, v79, v83                               // 000043DC: 3E96A74F
  v_mac_f32     v76, v80, v84                               // 000043E0: 3E98A950
  v_mac_f32     v77, v81, v85                               // 000043E4: 3E9AAB51
  v_mac_f32     v78, v82, v86                               // 000043E8: 3E9CAD52
  v_mad_f32     v75, v69, v73, -v75                         // 000043EC: D282004B 852E9345
  v_mad_f32     v76, v70, v73, -v76                         // 000043F4: D282004C 85329346
  v_mad_f32     v77, v71, v73, -v77                         // 000043FC: D282004D 85369347
  v_mad_f32     v78, v72, v73, -v78                         // 00004404: D282004E 853A9348
  s_waitcnt     vmcnt(3)                                    // 0000440C: BF8C1F73
  v_cndmask_b32  v73, v89, v87, s[6:7]                      // 00004410: D2000049 001AAF59
  v_cndmask_b32  v79, v90, v88, s[6:7]                      // 00004418: D200004F 001AB15A
  s_waitcnt     vmcnt(2)                                    // 00004420: BF8C1F72
  v_cndmask_b32  v80, v93, v91, s[10:11]                    // 00004424: D2000050 002AB75D
  v_cndmask_b32  v81, v94, v92, s[10:11]                    // 0000442C: D2000051 002AB95E
  s_waitcnt     vmcnt(1)                                    // 00004434: BF8C1F71
  v_cndmask_b32  v82, v100, v98, vcc                        // 00004438: 00A4C564
  v_cndmask_b32  v83, v101, v99, vcc                        // 0000443C: 00A6C765
  v_cmp_eq_i32  vcc, 0, v74                                 // 00004440: 7D049480
  s_waitcnt     vmcnt(0)                                    // 00004444: BF8C1F70
  v_cndmask_b32  v74, v104, v102, vcc                       // 00004448: 0094CD68
  v_cndmask_b32  v84, v105, v103, vcc                       // 0000444C: 00A8CF69
  v_add_f32     v75, v75, v81                               // 00004450: 0696A34B
  v_add_f32     v76, v76, v84                               // 00004454: 0698A94C
  v_add_f32     v77, v77, v83                               // 00004458: 069AA74D
  v_add_f32     v78, v78, v79                               // 0000445C: 069C9F4E
  v_mov_b32     v79, 0x3f317000                             // 00004460: 7E9E02FF 3F317000
  v_mac_f32     v80, v69, v79                               // 00004468: 3EA09F45
  v_mac_f32     v74, v70, v79                               // 0000446C: 3E949F46
  v_mac_f32     v82, v71, v79                               // 00004470: 3EA49F47
  v_mac_f32     v73, v72, v79                               // 00004474: 3E929F48
  v_add_f32     v69, v75, v80                               // 00004478: 068AA14B
  v_add_f32     v70, v76, v74                               // 0000447C: 068C954C
  v_add_f32     v71, v77, v82                               // 00004480: 068EA54D
  v_add_f32     v72, v78, v73                               // 00004484: 0690934E
  v_mad_f32     v61, v10, v61, -1.0                         // 00004488: D282003D 03CE7B0A
  v_mad_f32     v62, v11, v62, -1.0                         // 00004490: D282003E 03CE7D0B
  v_mad_f32     v63, v12, v63, -1.0                         // 00004498: D282003F 03CE7F0C
  v_mad_f32     v64, v9, v64, -1.0                          // 000044A0: D2820040 03CE8109
  v_add_f32     v73, 2.0, v61                               // 000044A8: 06927AF4
  v_add_f32     v74, 2.0, v62                               // 000044AC: 06947CF4
  v_add_f32     v75, 2.0, v63                               // 000044B0: 06967EF4
  v_add_f32     v76, 2.0, v64                               // 000044B4: 069880F4
  v_rcp_f32     v73, v73                                    // 000044B8: 7E925549
  v_rcp_f32     v74, v74                                    // 000044BC: 7E94554A
  v_rcp_f32     v75, v75                                    // 000044C0: 7E96554B
  v_rcp_f32     v76, v76                                    // 000044C4: 7E98554C
  v_mul_f32     v77, v61, v73                               // 000044C8: 109A933D
  v_mul_f32     v78, v62, v74                               // 000044CC: 109C953E
  v_mul_f32     v79, v63, v75                               // 000044D0: 109E973F
  v_mul_f32     v80, v64, v76                               // 000044D4: 10A09940
  v_mad_f32     v73, v61, v73, v77                          // 000044D8: D2820049 0536933D
  v_mad_f32     v74, v62, v74, v78                          // 000044E0: D282004A 053A953E
  v_mad_f32     v75, v63, v75, v79                          // 000044E8: D282004B 053E973F
  v_mad_f32     v76, v64, v76, v80                          // 000044F0: D282004C 05429940
  v_mul_f32     v81, v73, v73                               // 000044F8: 10A29349
  v_mul_f32     v82, v74, v74                               // 000044FC: 10A4954A
  v_mul_f32     v83, v75, v75                               // 00004500: 10A6974B
  v_mul_f32     v84, v76, v76                               // 00004504: 10A8994C
  v_mul_f32     v85, 0x3c4ccccd, v81                        // 00004508: 10AAA2FF 3C4CCCCD
  v_add_f32     v85, 0x3daaaaab, v85                        // 00004510: 06AAAAFF 3DAAAAAB
  v_mul_f32     v86, 0x3c4ccccd, v82                        // 00004518: 10ACA4FF 3C4CCCCD
  v_add_f32     v86, 0x3daaaaab, v86                        // 00004520: 06ACACFF 3DAAAAAB
  v_mul_f32     v87, 0x3c4ccccd, v83                        // 00004528: 10AEA6FF 3C4CCCCD
  v_add_f32     v87, 0x3daaaaab, v87                        // 00004530: 06AEAEFF 3DAAAAAB
  v_mul_f32     v88, 0x3c4ccccd, v84                        // 00004538: 10B0A8FF 3C4CCCCD
  v_add_f32     v88, 0x3daaaaab, v88                        // 00004540: 06B0B0FF 3DAAAAAB
  v_mul_f32     v81, v81, v85                               // 00004548: 10A2AB51
  v_mul_f32     v82, v82, v86                               // 0000454C: 10A4AD52
  v_mul_f32     v83, v83, v87                               // 00004550: 10A6AF53
  v_mul_f32     v84, v84, v88                               // 00004554: 10A8B154
  v_mul_f32     v77, v61, v77                               // 00004558: 109A9B3D
  v_mul_f32     v78, v62, v78                               // 0000455C: 109C9D3E
  v_mul_f32     v79, v63, v79                               // 00004560: 109E9F3F
  v_mul_f32     v80, v64, v80                               // 00004564: 10A0A140
  v_mad_f32     v77, v73, v81, -v77                         // 00004568: D282004D 8536A349
  v_mad_f32     v78, v74, v82, -v78                         // 00004570: D282004E 853AA54A
  v_mad_f32     v79, v75, v83, -v79                         // 00004578: D282004F 853EA74B
  v_mad_f32     v80, v76, v84, -v80                         // 00004580: D2820050 8542A94C
  v_add_f32     v73, v61, v77                               // 00004588: 06929B3D
  v_add_f32     v74, v62, v78                               // 0000458C: 06949D3E
  v_add_f32     v75, v63, v79                               // 00004590: 06969F3F
  v_add_f32     v76, v64, v80                               // 00004594: 0698A140
  v_mov_b32     v77, 0x3d800000                             // 00004598: 7E9A02FF 3D800000
  v_cmp_gt_f32  s[6:7], v77, abs(v64)                       // 000045A0: D0080206 0002814D
  v_cmp_gt_f32  s[10:11], v77, abs(v61)                     // 000045A8: D008020A 00027B4D
  v_cmp_gt_f32  s[18:19], v77, abs(v63)                     // 000045B0: D0080212 00027F4D
  v_cmp_gt_f32  vcc, v77, abs(v62)                          // 000045B8: D008026A 00027D4D
  v_cndmask_b32  v61, v69, v73, s[10:11]                    // 000045C0: D200003D 002A9345
  v_cndmask_b32  v62, v70, v74, vcc                         // 000045C8: 007C9546
  v_cndmask_b32  v63, v71, v75, s[18:19]                    // 000045CC: D200003F 004A9747
  v_cndmask_b32  v64, v72, v76, s[6:7]                      // 000045D4: D2000040 001A9948
  v_mov_b32     v69, 0x7fffffff                             // 000045DC: 7E8A02FF 7FFFFFFF
  v_and_b32     v70, v69, v65                               // 000045E4: 368C8345
  v_and_b32     v71, v69, v66                               // 000045E8: 368E8545
  v_and_b32     v72, v69, v67                               // 000045EC: 36908745
  v_and_b32     v69, v69, v68                               // 000045F0: 368A8945
  v_mov_b32     v73, 0x7f7fffff                             // 000045F4: 7E9202FF 7F7FFFFF
  v_cmp_gt_u32  s[6:7], v69, v73                            // 000045FC: D1880006 00029345
  v_cmp_gt_u32  s[10:11], v70, v73                          // 00004604: D188000A 00029346
  v_cmp_gt_u32  s[18:19], v72, v73                          // 0000460C: D1880012 00029348
  v_cmp_gt_u32  vcc, v71, v73                               // 00004614: 7D889347
  v_cndmask_b32  v61, v61, v65, s[10:11]                    // 00004618: D200003D 002A833D
  v_cndmask_b32  v62, v62, v66, vcc                         // 00004620: 007C853E
  v_cndmask_b32  v63, v63, v67, s[18:19]                    // 00004624: D200003F 004A873F
  v_cndmask_b32  v64, v64, v68, s[6:7]                      // 0000462C: D2000040 001A8940
  v_cmp_ne_i32  s[6:7], v68, v69                            // 00004634: D10A0006 00028B44
  v_cmp_ne_i32  s[10:11], v65, v70                          // 0000463C: D10A000A 00028D41
  v_cmp_ne_i32  s[18:19], v67, v72                          // 00004644: D10A0012 00029143
  v_cmp_ne_i32  vcc, v66, v71                               // 0000464C: 7D0A8F42
  v_mov_b32     v65, 0x7fc00000                             // 00004650: 7E8202FF 7FC00000
  v_cndmask_b32  v61, v61, v65, s[10:11]                    // 00004658: D200003D 002A833D
  v_cndmask_b32  v62, v62, v65, vcc                         // 00004660: 007C833E
  v_cndmask_b32  v63, v63, v65, s[18:19]                    // 00004664: D200003F 004A833F
  v_cndmask_b32  v64, v64, v65, s[6:7]                      // 0000466C: D2000040 001A8340
  v_cmp_eq_i32  s[6:7], v69, 0                              // 00004674: D1040006 00010145
  v_cmp_eq_i32  s[10:11], v70, 0                            // 0000467C: D104000A 00010146
  v_cmp_eq_i32  s[18:19], v72, 0                            // 00004684: D1040012 00010148
  v_cmp_eq_i32  vcc, 0, v71                                 // 0000468C: 7D048E80
  v_mov_b32     v65, 0xff800000                             // 00004690: 7E8202FF FF800000
  v_cndmask_b32  v61, v61, v65, s[10:11]                    // 00004698: D200003D 002A833D
  v_cndmask_b32  v62, v62, v65, vcc                         // 000046A0: 007C833E
  v_cndmask_b32  v63, v63, v65, s[18:19]                    // 000046A4: D200003F 004A833F
  v_cndmask_b32  v64, v64, v65, s[6:7]                      // 000046AC: D2000040 001A8340
  v_cvt_f32_i32  v65, s1                                    // 000046B4: 7E820A01
  v_mad_f32     v61, -v1, v65, v61                          // 000046B8: D282003D 24F68301
  v_mad_f32     v62, -v2, v65, v62                          // 000046C0: D282003E 24FA8302
  v_mad_f32     v63, -v3, v65, v63                          // 000046C8: D282003F 24FE8303
  v_mad_f32     v64, -v4, v65, v64                          // 000046D0: D2820040 25028304
  v_mul_f32     v61, v61, v21                               // 000046D8: 107A2B3D
  v_mul_f32     v62, v62, v22                               // 000046DC: 107C2D3E
  v_mul_f32     v63, v63, v23                               // 000046E0: 107E2F3F
  v_mul_f32     v64, v64, v24                               // 000046E4: 10803140
  v_mul_f32     v61, v18, v61                               // 000046E8: 107A7B12
  v_mul_f32     v62, v19, v62                               // 000046EC: 107C7D13
  v_mul_f32     v63, v20, v63                               // 000046F0: 107E7F14
  v_mul_f32     v64, v17, v64                               // 000046F4: 10808111
  v_mac_f32     v115, v54, v61                              // 000046F8: 3EE67B36
  v_mac_f32     v116, v58, v62                              // 000046FC: 3EE87D3A
  v_mac_f32     v117, v59, v63                              // 00004700: 3EEA7F3B
  v_mac_f32     v118, v60, v64                              // 00004704: 3EEC813C
  v_mov_b32     v61, s24                                    // 00004708: 7E7A0218
  v_mac_f32     v61, s28, v49                               // 0000470C: 3E7A621C
  v_mov_b32     v49, s25                                    // 00004710: 7E620219
  v_mac_f32     v49, s29, v55                               // 00004714: 3E626E1D
  v_mov_b32     v55, s26                                    // 00004718: 7E6E021A
  v_mac_f32     v55, s30, v56                               // 0000471C: 3E6E701E
  v_mov_b32     v56, s27                                    // 00004720: 7E70021B
  v_mac_f32     v56, s31, v57                               // 00004724: 3E70721F
  v_cmp_lt_f32  s[6:7], v56, 0                              // 00004728: D0020006 00010138
  v_cmp_lt_f32  s[10:11], v61, 0                            // 00004730: D002000A 0001013D
  v_cmp_lt_f32  s[18:19], v55, 0                            // 00004738: D0020012 00010137
  v_cmp_gt_f32  vcc, 0, v49                                 // 00004740: 7C086280
  v_cndmask_b32  v57, 0.5, -0.5, s[10:11]                   // 00004744: D2000039 0029E2F0
  v_cndmask_b32  v62, 0.5, -0.5, vcc                        // 0000474C: D200003E 01A9E2F0
  v_cndmask_b32  v63, 0.5, -0.5, s[18:19]                   // 00004754: D200003F 0049E2F0
  v_cndmask_b32  v64, 0.5, -0.5, s[6:7]                     // 0000475C: D2000040 0019E2F0
  v_mov_b32     v66, 0x3fb8aa3b                             // 00004764: 7E8402FF 3FB8AA3B
  v_mac_f32     v57, v61, v66                               // 0000476C: 3E72853D
  v_mac_f32     v62, v49, v66                               // 00004770: 3E7C8531
  v_mac_f32     v63, v55, v66                               // 00004774: 3E7E8537
  v_mac_f32     v64, v56, v66                               // 00004778: 3E808538
  v_cvt_i32_f32  v57, v57                                   // 0000477C: 7E721139
  v_cvt_i32_f32  v62, v62                                   // 00004780: 7E7C113E
  v_cvt_i32_f32  v63, v63                                   // 00004784: 7E7E113F
  v_cvt_i32_f32  v64, v64                                   // 00004788: 7E801140
  v_cvt_f32_i32  v66, v57                                   // 0000478C: 7E840B39
  v_cvt_f32_i32  v67, v62                                   // 00004790: 7E860B3E
  v_cvt_f32_i32  v68, v63                                   // 00004794: 7E880B3F
  v_cvt_f32_i32  v69, v64                                   // 00004798: 7E8A0B40
  v_mov_b32     v70, 0xbf317180                             // 0000479C: 7E8C02FF BF317180
  v_mad_f32     v71, v66, v70, v61                          // 000047A4: D2820047 04F68D42
  v_mad_f32     v72, v67, v70, v49                          // 000047AC: D2820048 04C68D43
  v_mad_f32     v73, v68, v70, v55                          // 000047B4: D2820049 04DE8D44
  v_mad_f32     v70, v69, v70, v56                          // 000047BC: D2820046 04E28D45
  v_mov_b32     v74, 0x3717f7d1                             // 000047C4: 7E9402FF 3717F7D1
  v_mul_f32     v75, -v66, v74                              // 000047CC: D210004B 20029542
  v_mul_f32     v76, -v67, v74                              // 000047D4: D210004C 20029543
  v_mul_f32     v77, -v68, v74                              // 000047DC: D210004D 20029544
  v_mul_f32     v78, -v69, v74                              // 000047E4: D210004E 20029545
  v_mad_f32     v66, -v66, v74, v71                         // 000047EC: D2820042 251E9542
  v_mad_f32     v67, -v67, v74, v72                         // 000047F4: D2820043 25229543
  v_mad_f32     v68, -v68, v74, v73                         // 000047FC: D2820044 25269544
  v_mad_f32     v69, -v69, v74, v70                         // 00004804: D2820045 251A9545
  v_mul_f32     v74, v66, v66                               // 0000480C: 10948542
  v_mul_f32     v79, v67, v67                               // 00004810: 109E8743
  v_mul_f32     v80, v68, v68                               // 00004814: 10A08944
  v_mul_f32     v81, v69, v69                               // 00004818: 10A28B45
  v_mul_f32     v82, 0x3331bb4c, v74                        // 0000481C: 10A494FF 3331BB4C
  v_add_f32     v82, 0xb5ddea0e, v82                        // 00004824: 06A4A4FF B5DDEA0E
  v_mul_f32     v83, 0x3331bb4c, v79                        // 0000482C: 10A69EFF 3331BB4C
  v_add_f32     v83, 0xb5ddea0e, v83                        // 00004834: 06A6A6FF B5DDEA0E
  v_mul_f32     v84, 0x3331bb4c, v80                        // 0000483C: 10A8A0FF 3331BB4C
  v_add_f32     v84, 0xb5ddea0e, v84                        // 00004844: 06A8A8FF B5DDEA0E
  v_mul_f32     v85, 0x3331bb4c, v81                        // 0000484C: 10AAA2FF 3331BB4C
  v_add_f32     v85, 0xb5ddea0e, v85                        // 00004854: 06AAAAFF B5DDEA0E
  v_mov_b32     v86, 0x388ab355                             // 0000485C: 7EAC02FF 388AB355
  v_mad_f32     v82, v74, v82, v86                          // 00004864: D2820052 055AA54A
  v_mad_f32     v83, v79, v83, v86                          // 0000486C: D2820053 055AA74F
  v_mad_f32     v84, v80, v84, v86                          // 00004874: D2820054 055AA950
  v_mac_f32     v86, v81, v85                               // 0000487C: 3EACAB51
  v_mov_b32     v85, 0xbb360b61                             // 00004880: 7EAA02FF BB360B61
  v_mad_f32     v82, v74, v82, v85                          // 00004888: D2820052 0556A54A
  v_mad_f32     v83, v79, v83, v85                          // 00004890: D2820053 0556A74F
  v_mad_f32     v84, v80, v84, v85                          // 00004898: D2820054 0556A950
  v_mac_f32     v85, v81, v86                               // 000048A0: 3EAAAD51
  v_mov_b32     v86, 0x3e2aaaab                             // 000048A4: 7EAC02FF 3E2AAAAB
  v_mad_f32     v82, v74, v82, v86                          // 000048AC: D2820052 055AA54A
  v_mad_f32     v83, v79, v83, v86                          // 000048B4: D2820053 055AA74F
  v_mad_f32     v84, v80, v84, v86                          // 000048BC: D2820054 055AA950
  v_mac_f32     v86, v81, v85                               // 000048C4: 3EACAB51
  v_mad_f32     v74, v74, -v82, v66                         // 000048C8: D282004A 450AA54A
  v_mad_f32     v79, v79, -v83, v67                         // 000048D0: D282004F 450EA74F
  v_mad_f32     v80, v80, -v84, v68                         // 000048D8: D2820050 4512A950
  v_mad_f32     v81, v81, -v86, v69                         // 000048E0: D2820051 4516AD51
  v_sub_f32     v82, 2.0, v74                               // 000048E8: 08A494F4
  v_sub_f32     v83, 2.0, v79                               // 000048EC: 08A69EF4
  v_sub_f32     v84, 2.0, v80                               // 000048F0: 08A8A0F4
  v_sub_f32     v85, 2.0, v81                               // 000048F4: 08AAA2F4
  v_mul_f32     v66, v66, v74                               // 000048F8: 10849542
  v_mul_f32     v67, v67, v79                               // 000048FC: 10869F43
  v_mul_f32     v68, v68, v80                               // 00004900: 1088A144
  v_mul_f32     v69, v69, v81                               // 00004904: 108AA345
  v_rcp_f32     v74, v82                                    // 00004908: 7E945552
  v_rcp_f32     v79, v83                                    // 0000490C: 7E9E5553
  v_rcp_f32     v80, v84                                    // 00004910: 7EA05554
  v_rcp_f32     v81, v85                                    // 00004914: 7EA25555
  v_mad_f32     v75, -v66, v74, -v75                        // 00004918: D282004B A52E9542
  v_mad_f32     v76, -v67, v79, -v76                        // 00004920: D282004C A5329F43
  v_mad_f32     v77, -v68, v80, -v77                        // 00004928: D282004D A536A144
  v_mad_f32     v78, -v69, v81, -v78                        // 00004930: D282004E A53AA345
  v_subrev_f32  v66, v71, v75                               // 00004938: 0A849747
  v_subrev_f32  v67, v72, v76                               // 0000493C: 0A869948
  v_subrev_f32  v68, v73, v77                               // 00004940: 0A889B49
  v_subrev_f32  v69, v70, v78                               // 00004944: 0A8A9D46
  v_sub_f32     v66, 1.0, v66                               // 00004948: 088484F2
  v_sub_f32     v67, 1.0, v67                               // 0000494C: 088686F2
  v_sub_f32     v68, 1.0, v68                               // 00004950: 088888F2
  v_sub_f32     v69, 1.0, v69                               // 00004954: 088A8AF2
  v_lshlrev_b32  v57, 23, v57                               // 00004958: 34727297
  v_lshlrev_b32  v62, 23, v62                               // 0000495C: 347C7C97
  v_lshlrev_b32  v63, 23, v63                               // 00004960: 347E7E97
  v_lshlrev_b32  v64, 23, v64                               // 00004964: 34808097
  v_add_i32     v57, vcc, v66, v57                          // 00004968: 4A727342
  v_add_i32     v62, vcc, v67, v62                          // 0000496C: 4A7C7D43
  v_add_i32     v63, vcc, v68, v63                          // 00004970: 4A7E7F44
  v_add_i32     v64, vcc, v69, v64                          // 00004974: 4A808145
  v_cmp_ngt_f32  vcc, s4, v61                               // 00004978: 7C167A04
  v_cndmask_b32  v57, 0, v57, vcc                           // 0000497C: 00727280
  v_cmp_ngt_f32  vcc, s4, v49                               // 00004980: 7C166204
  v_cndmask_b32  v62, 0, v62, vcc                           // 00004984: 007C7C80
  v_cmp_ngt_f32  vcc, s4, v55                               // 00004988: 7C166E04
  v_cndmask_b32  v63, 0, v63, vcc                           // 0000498C: 007E7E80
  v_cmp_ngt_f32  vcc, s4, v56                               // 00004990: 7C167004
  v_cndmask_b32  v64, 0, v64, vcc                           // 00004994: 00808080
  v_mov_b32     v66, 0x42b17218                             // 00004998: 7E8402FF 42B17218
  v_cmp_lt_f32  s[4:5], v56, v66                            // 000049A0: D0020004 00028538
  v_cmp_lt_f32  s[6:7], v61, v66                            // 000049A8: D0020006 0002853D
  v_cmp_lt_f32  s[10:11], v55, v66                          // 000049B0: D002000A 00028537
  v_cmp_lt_f32  vcc, v49, v66                               // 000049B8: 7C028531
  v_mov_b32     v66, 0x7f800000                             // 000049BC: 7E8402FF 7F800000
  v_cndmask_b32  v57, v66, v57, s[6:7]                      // 000049C4: D2000039 001A7342
  v_cndmask_b32  v62, v66, v62, vcc                         // 000049CC: 007C7D42
  v_cndmask_b32  v63, v66, v63, s[10:11]                    // 000049D0: D200003F 002A7F42
  v_cndmask_b32  v64, v66, v64, s[4:5]                      // 000049D8: D2000040 00128142
  v_cmp_neq_f32  s[4:5], v56, v56                           // 000049E0: D01A0004 00027138
  v_cmp_neq_f32  s[6:7], v61, v61                           // 000049E8: D01A0006 00027B3D
  v_cmp_neq_f32  s[10:11], v55, v55                         // 000049F0: D01A000A 00026F37
  v_cmp_neq_f32  vcc, v49, v49                              // 000049F8: 7C1A6331
  v_cndmask_b32  v57, v57, v61, s[6:7]                      // 000049FC: D2000039 001A7B39
  v_cndmask_b32  v49, v62, v49, vcc                         // 00004A04: 0062633E
  v_cndmask_b32  v55, v63, v55, s[10:11]                    // 00004A08: D2000037 002A6F3F
  v_cndmask_b32  v56, v64, v56, s[4:5]                      // 00004A10: D2000038 00127140
  v_mul_f32     v61, v45, v57                               // 00004A18: 107A732D
  v_mul_f32     v62, v46, v49                               // 00004A1C: 107C632E
  v_mul_f32     v63, v47, v55                               // 00004A20: 107E6F2F
  v_mul_f32     v64, v48, v56                               // 00004A24: 10807130
  v_mul_f32     v66, v13, v61                               // 00004A28: 10847B0D
  v_mul_f32     v67, v14, v62                               // 00004A2C: 10867D0E
  v_mul_f32     v68, v15, v63                               // 00004A30: 10887F0F
  v_mul_f32     v69, v16, v64                               // 00004A34: 108A8110
  v_mul_f32     v70, v10, v66                               // 00004A38: 108C850A
  v_mul_f32     v71, v11, v67                               // 00004A3C: 108E870B
  v_mul_f32     v72, v12, v68                               // 00004A40: 1090890C
  v_mul_f32     v73, v9, v69                                // 00004A44: 10928B09
  v_lshrrev_b32  v74, 23, v70                               // 00004A48: 2C948C97
  v_lshrrev_b32  v75, 23, v71                               // 00004A4C: 2C968E97
  v_lshrrev_b32  v76, 23, v72                               // 00004A50: 2C989097
  v_lshrrev_b32  v77, 23, v73                               // 00004A54: 2C9A9297
  v_cmp_eq_i32  s[4:5], v77, 0                              // 00004A58: D1040004 0001014D
  v_cmp_eq_i32  s[6:7], v74, 0                              // 00004A60: D1040006 0001014A
  v_cmp_eq_i32  s[10:11], v76, 0                            // 00004A68: D104000A 0001014C
  v_cmp_eq_i32  s[18:19], v75, 0                            // 00004A70: D1040012 0001014B
  v_or_b32      v78, 1.0, v70                               // 00004A78: 389C8CF2
  v_or_b32      v79, 1.0, v71                               // 00004A7C: 389E8EF2
  v_or_b32      v80, 1.0, v72                               // 00004A80: 38A090F2
  v_or_b32      v81, 1.0, v73                               // 00004A84: 38A292F2
  v_add_f32     v78, -1.0, v78                              // 00004A88: 069C9CF3
  v_add_f32     v79, -1.0, v79                              // 00004A8C: 069E9EF3
  v_add_f32     v80, -1.0, v80                              // 00004A90: 06A0A0F3
  v_add_f32     v81, -1.0, v81                              // 00004A94: 06A2A2F3
  v_cndmask_b32  v82, v70, v78, s[6:7]                      // 00004A98: D2000052 001A9D46
  v_cndmask_b32  v83, v71, v79, s[18:19]                    // 00004AA0: D2000053 004A9F47
  v_cndmask_b32  v84, v72, v80, s[10:11]                    // 00004AA8: D2000054 002AA148
  v_cndmask_b32  v85, v73, v81, s[4:5]                      // 00004AB0: D2000055 0012A349
  v_mov_b32     v86, 0x007f0000                             // 00004AB8: 7EAC02FF 007F0000
  v_and_b32     v87, v86, v82                               // 00004AC0: 36AEA556
  v_and_b32     v88, v83, v86                               // 00004AC4: 36B0AD53
  v_and_b32     v89, v84, v86                               // 00004AC8: 36B2AD54
  v_and_b32     v86, v85, v86                               // 00004ACC: 36ACAD55
  v_mov_b32     v90, 0x00008000                             // 00004AD0: 7EB402FF 00008000
  v_and_b32     v91, v90, v82                               // 00004AD8: 36B6A55A
  v_and_b32     v92, v83, v90                               // 00004ADC: 36B8B553
  v_and_b32     v93, v84, v90                               // 00004AE0: 36BAB554
  v_and_b32     v90, v85, v90                               // 00004AE4: 36B4B555
  v_lshlrev_b32  v91, 1, v91                                // 00004AE8: 34B6B681
  v_lshlrev_b32  v92, 1, v92                                // 00004AEC: 34B8B881
  v_lshlrev_b32  v93, 1, v93                                // 00004AF0: 34BABA81
  v_lshlrev_b32  v90, 1, v90                                // 00004AF4: 34B4B481
  v_add_i32     v87, vcc, v87, v91                          // 00004AF8: 4AAEB757
  v_add_i32     v88, vcc, v88, v92                          // 00004AFC: 4AB0B958
  v_add_i32     v89, vcc, v89, v93                          // 00004B00: 4AB2BB59
  v_add_i32     v86, vcc, v86, v90                          // 00004B04: 4AACB556
  v_lshrrev_b32  v90, 16, v87                               // 00004B08: 2CB4AE90
  v_lshrrev_b32  v91, 16, v88                               // 00004B0C: 2CB6B090
  v_lshrrev_b32  v92, 16, v89                               // 00004B10: 2CB8B290
  v_lshrrev_b32  v93, 16, v86                               // 00004B14: 2CBAAC90
  v_lshlrev_b32  v94, 2, v93                                // 00004B18: 34BCBA82
  v_add_i32     v94, vcc, 0x00000410, v94                   // 00004B1C: 4ABCBCFF 00000410
  v_ashrrev_i32  v33, 4, v94                                // 00004B24: 3042BC84
  v_and_b32     v34, 12, v94                                // 00004B28: 3644BC8C
  v_lshlrev_b32  v96, 2, v90                                // 00004B2C: 34C0B482
  v_add_i32     v96, vcc, 0x00000410, v96                   // 00004B30: 4AC0C0FF 00000410
  v_ashrrev_i32  v35, 4, v96                                // 00004B38: 3046C084
  v_and_b32     v36, 12, v96                                // 00004B3C: 3648C08C
  v_lshlrev_b32  v98, 2, v92                                // 00004B40: 34C4B882
  v_add_i32     v98, vcc, 0x00000410, v98                   // 00004B44: 4AC4C4FF 00000410
  v_ashrrev_i32  v94, 4, v98                                // 00004B4C: 30BCC484
  v_and_b32     v95, 12, v98                                // 00004B50: 36BEC48C
  v_lshlrev_b32  v100, 2, v91                               // 00004B54: 34C8B682
  v_add_i32     v100, vcc, 0x00000410, v100                 // 00004B58: 4AC8C8FF 00000410
  v_ashrrev_i32  v96, 4, v100                               // 00004B60: 30C0C884
  v_and_b32     v97, 12, v100                               // 00004B64: 36C2C88C
  v_or_b32      v102, 0.5, v87                              // 00004B68: 38CCAEF0
  v_or_b32      v103, 0.5, v88                              // 00004B6C: 38CEB0F0
  v_or_b32      v104, 0.5, v89                              // 00004B70: 38D0B2F0
  v_or_b32      v105, 0.5, v86                              // 00004B74: 38D2ACF0
  v_mov_b32     v106, 0x007fffff                            // 00004B78: 7ED402FF 007FFFFF
  v_and_b32     v82, v106, v82                              // 00004B80: 36A4A56A
  v_and_b32     v83, v83, v106                              // 00004B84: 36A6D553
  v_and_b32     v84, v84, v106                              // 00004B88: 36A8D554
  v_and_b32     v85, v85, v106                              // 00004B8C: 36AAD555
  v_or_b32      v82, 0.5, v82                               // 00004B90: 38A4A4F0
  v_or_b32      v83, 0.5, v83                               // 00004B94: 38A6A6F0
  v_or_b32      v84, 0.5, v84                               // 00004B98: 38A8A8F0
  v_or_b32      v85, 0.5, v85                               // 00004B9C: 38AAAAF0
  v_sub_f32     v82, v102, v82                              // 00004BA0: 08A4A566
  v_sub_f32     v83, v103, v83                              // 00004BA4: 08A6A767
  v_sub_f32     v84, v104, v84                              // 00004BA8: 08A8A968
  v_sub_f32     v85, v105, v85                              // 00004BAC: 08AAAB69
  v_mov_b32     v102, 0x3eaaaaab                            // 00004BB0: 7ECC02FF 3EAAAAAB
  v_mov_b32     v103, 0xffffff81                            // 00004BB8: 7ECE02FF FFFFFF81
  v_add_i32     v74, vcc, v103, v74                         // 00004BC0: 4A949567
  v_add_i32     v75, vcc, v103, v75                         // 00004BC4: 4A969767
  v_add_i32     v76, vcc, v103, v76                         // 00004BC8: 4A989967
  v_add_i32     v77, vcc, v103, v77                         // 00004BCC: 4A9A9B67
  v_lshrrev_b32  v78, 23, v78                               // 00004BD0: 2C9C9C97
  v_lshrrev_b32  v79, 23, v79                               // 00004BD4: 2C9E9E97
  v_lshrrev_b32  v80, 23, v80                               // 00004BD8: 2CA0A097
  v_lshrrev_b32  v81, 23, v81                               // 00004BDC: 2CA2A297
  v_mov_b32     v103, 0xffffff03                            // 00004BE0: 7ECE02FF FFFFFF03
  v_add_i32     v78, vcc, v103, v78                         // 00004BE8: 4A9C9D67
  v_add_i32     v79, vcc, v103, v79                         // 00004BEC: 4A9E9F67
  v_add_i32     v80, vcc, v103, v80                         // 00004BF0: 4AA0A167
  v_add_i32     v81, vcc, v103, v81                         // 00004BF4: 4AA2A367
  v_cndmask_b32  v74, v74, v78, s[6:7]                      // 00004BF8: D200004A 001A9D4A
  v_cndmask_b32  v75, v75, v79, s[18:19]                    // 00004C00: D200004B 004A9F4B
  v_cndmask_b32  v76, v76, v80, s[10:11]                    // 00004C08: D200004C 002AA14C
  v_cndmask_b32  v77, v77, v81, s[4:5]                      // 00004C10: D200004D 0012A34D
  v_cvt_f32_i32  v74, v74                                   // 00004C18: 7E940B4A
  v_cvt_f32_i32  v75, v75                                   // 00004C1C: 7E960B4B
  v_cvt_f32_i32  v76, v76                                   // 00004C20: 7E980B4C
  v_cvt_f32_i32  v77, v77                                   // 00004C24: 7E9A0B4D
  v_mov_b32     v78, 0x3805fdf4                             // 00004C28: 7E9C02FF 3805FDF4
  v_bfe_u32     v79, v86, 16, 1                             // 00004C30: D290004F 02052156
  v_bfe_i32     v80, v93, 1, 28                             // 00004C38: D2920050 0271035D
  v_cmp_eq_i32  s[4:5], v79, 0                              // 00004C40: D1040004 0001014F
  v_bfe_u32     v79, v87, 16, 1                             // 00004C48: D290004F 02052157
  v_bfe_i32     v81, v90, 1, 28                             // 00004C50: D2920051 0271035A
  v_cmp_eq_i32  s[6:7], v79, 0                              // 00004C58: D1040006 0001014F
  v_bfe_u32     v79, v89, 16, 1                             // 00004C60: D290004F 02052159
  v_bfe_i32     v86, v92, 1, 28                             // 00004C68: D2920056 0271035C
  v_cmp_eq_i32  vcc, 0, v79                                 // 00004C70: 7D049E80
  v_bfe_u32     v79, v88, 16, 1                             // 00004C74: D290004F 02052158
  v_bfe_i32     v87, v91, 1, 28                             // 00004C7C: D2920057 0271035B
  tbuffer_load_format_x  v88, v[33:34], s[12:15], 0 offen idxen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004C84: EBA03000 80035821
  tbuffer_load_format_x  v89, v[35:36], s[12:15], 0 offen idxen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004C8C: EBA03000 80035923
  tbuffer_load_format_x  v90, v[94:95], s[12:15], 0 offen idxen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004C94: EBA03000 80035A5E
  tbuffer_load_format_x  v91, v[96:97], s[12:15], 0 offen idxen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004C9C: EBA03000 80035B60
  tbuffer_load_format_xyzw  v[92:95], v80, s[12:15], 0 idxen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 00004CA4: EBF32000 80035C50
  tbuffer_load_format_xyzw  v[96:99], v81, s[12:15], 0 idxen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 00004CAC: EBF32000 80036051
  tbuffer_load_format_xyzw  v[103:106], v86, s[12:15], 0 idxen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 00004CB4: EBF32000 80036756
  tbuffer_load_format_xyzw  v[107:110], v87, s[12:15], 0 idxen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 00004CBC: EBF32000 80036B57
  s_waitcnt     vmcnt(6)                                    // 00004CC4: BF8C1F76
  v_mul_f32     v80, v89, v82                               // 00004CC8: 10A0A559
  s_waitcnt     vmcnt(4)                                    // 00004CCC: BF8C1F74
  v_mul_f32     v81, v91, v83                               // 00004CD0: 10A2A75B
  v_mul_f32     v82, v90, v84                               // 00004CD4: 10A4A95A
  v_mul_f32     v83, v88, v85                               // 00004CD8: 10A6AB58
  v_mad_f32     v84, v80, v102, 0.5                         // 00004CDC: D2820054 03C2CD50
  v_mad_f32     v85, v81, v102, 0.5                         // 00004CE4: D2820055 03C2CD51
  v_mad_f32     v86, v82, v102, 0.5                         // 00004CEC: D2820056 03C2CD52
  v_mad_f32     v87, v83, v102, 0.5                         // 00004CF4: D2820057 03C2CD53
  v_mul_f32     v88, v80, v80                               // 00004CFC: 10B0A150
  v_mul_f32     v89, v81, v81                               // 00004D00: 10B2A351
  v_mul_f32     v90, v82, v82                               // 00004D04: 10B4A552
  v_mul_f32     v91, v83, v83                               // 00004D08: 10B6A753
  v_mac_f32     v80, v84, v88                               // 00004D0C: 3EA0B154
  v_mac_f32     v81, v85, v89                               // 00004D10: 3EA2B355
  v_mac_f32     v82, v86, v90                               // 00004D14: 3EA4B556
  v_mac_f32     v83, v87, v91                               // 00004D18: 3EA6B757
  v_mad_f32     v80, v74, v78, -v80                         // 00004D1C: D2820050 85429D4A
  v_mad_f32     v81, v75, v78, -v81                         // 00004D24: D2820051 85469D4B
  v_mad_f32     v82, v76, v78, -v82                         // 00004D2C: D2820052 854A9D4C
  v_mad_f32     v83, v77, v78, -v83                         // 00004D34: D2820053 854E9D4D
  s_waitcnt     vmcnt(3)                                    // 00004D3C: BF8C1F73
  v_cndmask_b32  v78, v94, v92, s[4:5]                      // 00004D40: D200004E 0012B95E
  v_cndmask_b32  v84, v95, v93, s[4:5]                      // 00004D48: D2000054 0012BB5F
  s_waitcnt     vmcnt(2)                                    // 00004D50: BF8C1F72
  v_cndmask_b32  v85, v98, v96, s[6:7]                      // 00004D54: D2000055 001AC162
  v_cndmask_b32  v86, v99, v97, s[6:7]                      // 00004D5C: D2000056 001AC363
  s_waitcnt     vmcnt(1)                                    // 00004D64: BF8C1F71
  v_cndmask_b32  v87, v105, v103, vcc                       // 00004D68: 00AECF69
  v_cndmask_b32  v88, v106, v104, vcc                       // 00004D6C: 00B0D16A
  v_cmp_eq_i32  vcc, 0, v79                                 // 00004D70: 7D049E80
  s_waitcnt     vmcnt(0)                                    // 00004D74: BF8C1F70
  v_cndmask_b32  v79, v109, v107, vcc                       // 00004D78: 009ED76D
  v_cndmask_b32  v89, v110, v108, vcc                       // 00004D7C: 00B2D96E
  v_add_f32     v80, v80, v86                               // 00004D80: 06A0AD50
  v_add_f32     v81, v81, v89                               // 00004D84: 06A2B351
  v_add_f32     v82, v82, v88                               // 00004D88: 06A4B152
  v_add_f32     v83, v83, v84                               // 00004D8C: 06A6A953
  v_mov_b32     v84, 0x3f317000                             // 00004D90: 7EA802FF 3F317000
  v_mac_f32     v85, v74, v84                               // 00004D98: 3EAAA94A
  v_mac_f32     v79, v75, v84                               // 00004D9C: 3E9EA94B
  v_mac_f32     v87, v76, v84                               // 00004DA0: 3EAEA94C
  v_mac_f32     v78, v77, v84                               // 00004DA4: 3E9CA94D
  v_add_f32     v74, v80, v85                               // 00004DA8: 0694AB50
  v_add_f32     v75, v81, v79                               // 00004DAC: 06969F51
  v_add_f32     v76, v82, v87                               // 00004DB0: 0698AF52
  v_add_f32     v77, v83, v78                               // 00004DB4: 069A9D53
  v_mad_f32     v66, v10, v66, -1.0                         // 00004DB8: D2820042 03CE850A
  v_mad_f32     v67, v11, v67, -1.0                         // 00004DC0: D2820043 03CE870B
  v_mad_f32     v68, v12, v68, -1.0                         // 00004DC8: D2820044 03CE890C
  v_mad_f32     v69, v9, v69, -1.0                          // 00004DD0: D2820045 03CE8B09
  v_add_f32     v78, 2.0, v66                               // 00004DD8: 069C84F4
  v_add_f32     v79, 2.0, v67                               // 00004DDC: 069E86F4
  v_add_f32     v80, 2.0, v68                               // 00004DE0: 06A088F4
  v_add_f32     v81, 2.0, v69                               // 00004DE4: 06A28AF4
  v_rcp_f32     v78, v78                                    // 00004DE8: 7E9C554E
  v_rcp_f32     v79, v79                                    // 00004DEC: 7E9E554F
  v_rcp_f32     v80, v80                                    // 00004DF0: 7EA05550
  v_rcp_f32     v81, v81                                    // 00004DF4: 7EA25551
  v_mul_f32     v82, v66, v78                               // 00004DF8: 10A49D42
  v_mul_f32     v83, v67, v79                               // 00004DFC: 10A69F43
  v_mul_f32     v84, v68, v80                               // 00004E00: 10A8A144
  v_mul_f32     v85, v69, v81                               // 00004E04: 10AAA345
  v_mad_f32     v78, v66, v78, v82                          // 00004E08: D282004E 054A9D42
  v_mad_f32     v79, v67, v79, v83                          // 00004E10: D282004F 054E9F43
  v_mad_f32     v80, v68, v80, v84                          // 00004E18: D2820050 0552A144
  v_mad_f32     v81, v69, v81, v85                          // 00004E20: D2820051 0556A345
  v_mul_f32     v86, v78, v78                               // 00004E28: 10AC9D4E
  v_mul_f32     v87, v79, v79                               // 00004E2C: 10AE9F4F
  v_mul_f32     v88, v80, v80                               // 00004E30: 10B0A150
  v_mul_f32     v89, v81, v81                               // 00004E34: 10B2A351
  v_mul_f32     v90, 0x3c4ccccd, v86                        // 00004E38: 10B4ACFF 3C4CCCCD
  v_add_f32     v90, 0x3daaaaab, v90                        // 00004E40: 06B4B4FF 3DAAAAAB
  v_mul_f32     v91, 0x3c4ccccd, v87                        // 00004E48: 10B6AEFF 3C4CCCCD
  v_add_f32     v91, 0x3daaaaab, v91                        // 00004E50: 06B6B6FF 3DAAAAAB
  v_mul_f32     v92, 0x3c4ccccd, v88                        // 00004E58: 10B8B0FF 3C4CCCCD
  v_add_f32     v92, 0x3daaaaab, v92                        // 00004E60: 06B8B8FF 3DAAAAAB
  v_mul_f32     v93, 0x3c4ccccd, v89                        // 00004E68: 10BAB2FF 3C4CCCCD
  v_add_f32     v93, 0x3daaaaab, v93                        // 00004E70: 06BABAFF 3DAAAAAB
  v_mul_f32     v86, v86, v90                               // 00004E78: 10ACB556
  v_mul_f32     v87, v87, v91                               // 00004E7C: 10AEB757
  v_mul_f32     v88, v88, v92                               // 00004E80: 10B0B958
  v_mul_f32     v89, v89, v93                               // 00004E84: 10B2BB59
  v_mul_f32     v82, v66, v82                               // 00004E88: 10A4A542
  v_mul_f32     v83, v67, v83                               // 00004E8C: 10A6A743
  v_mul_f32     v84, v68, v84                               // 00004E90: 10A8A944
  v_mul_f32     v85, v69, v85                               // 00004E94: 10AAAB45
  v_mad_f32     v82, v78, v86, -v82                         // 00004E98: D2820052 854AAD4E
  v_mad_f32     v83, v79, v87, -v83                         // 00004EA0: D2820053 854EAF4F
  v_mad_f32     v84, v80, v88, -v84                         // 00004EA8: D2820054 8552B150
  v_mad_f32     v85, v81, v89, -v85                         // 00004EB0: D2820055 8556B351
  v_add_f32     v78, v66, v82                               // 00004EB8: 069CA542
  v_add_f32     v79, v67, v83                               // 00004EBC: 069EA743
  v_add_f32     v80, v68, v84                               // 00004EC0: 06A0A944
  v_add_f32     v81, v69, v85                               // 00004EC4: 06A2AB45
  v_mov_b32     v82, 0x3d800000                             // 00004EC8: 7EA402FF 3D800000
  v_cmp_gt_f32  s[4:5], v82, abs(v69)                       // 00004ED0: D0080204 00028B52
  v_cmp_gt_f32  s[6:7], v82, abs(v66)                       // 00004ED8: D0080206 00028552
  v_cmp_gt_f32  s[10:11], v82, abs(v68)                     // 00004EE0: D008020A 00028952
  v_cmp_gt_f32  vcc, v82, abs(v67)                          // 00004EE8: D008026A 00028752
  v_cndmask_b32  v66, v74, v78, s[6:7]                      // 00004EF0: D2000042 001A9D4A
  v_cndmask_b32  v67, v75, v79, vcc                         // 00004EF8: 00869F4B
  v_cndmask_b32  v68, v76, v80, s[10:11]                    // 00004EFC: D2000044 002AA14C
  v_cndmask_b32  v69, v77, v81, s[4:5]                      // 00004F04: D2000045 0012A34D
  v_mov_b32     v74, 0x7fffffff                             // 00004F0C: 7E9402FF 7FFFFFFF
  v_and_b32     v75, v74, v70                               // 00004F14: 36968D4A
  v_and_b32     v76, v74, v71                               // 00004F18: 36988F4A
  v_and_b32     v77, v74, v72                               // 00004F1C: 369A914A
  v_and_b32     v74, v74, v73                               // 00004F20: 3694934A
  v_mov_b32     v78, 0x7f7fffff                             // 00004F24: 7E9C02FF 7F7FFFFF
  v_cmp_gt_u32  s[4:5], v74, v78                            // 00004F2C: D1880004 00029D4A
  v_cmp_gt_u32  s[6:7], v75, v78                            // 00004F34: D1880006 00029D4B
  v_cmp_gt_u32  s[10:11], v77, v78                          // 00004F3C: D188000A 00029D4D
  v_cmp_gt_u32  vcc, v76, v78                               // 00004F44: 7D889D4C
  v_cndmask_b32  v66, v66, v70, s[6:7]                      // 00004F48: D2000042 001A8D42
  v_cndmask_b32  v67, v67, v71, vcc                         // 00004F50: 00868F43
  v_cndmask_b32  v68, v68, v72, s[10:11]                    // 00004F54: D2000044 002A9144
  v_cndmask_b32  v69, v69, v73, s[4:5]                      // 00004F5C: D2000045 00129345
  v_cmp_ne_i32  s[4:5], v73, v74                            // 00004F64: D10A0004 00029549
  v_cmp_ne_i32  s[6:7], v70, v75                            // 00004F6C: D10A0006 00029746
  v_cmp_ne_i32  s[10:11], v72, v77                          // 00004F74: D10A000A 00029B48
  v_cmp_ne_i32  vcc, v71, v76                               // 00004F7C: 7D0A9947
  v_mov_b32     v70, 0x7fc00000                             // 00004F80: 7E8C02FF 7FC00000
  v_cndmask_b32  v66, v66, v70, s[6:7]                      // 00004F88: D2000042 001A8D42
  v_cndmask_b32  v67, v67, v70, vcc                         // 00004F90: 00868D43
  v_cndmask_b32  v68, v68, v70, s[10:11]                    // 00004F94: D2000044 002A8D44
  v_cndmask_b32  v69, v69, v70, s[4:5]                      // 00004F9C: D2000045 00128D45
  v_cmp_eq_i32  s[4:5], v74, 0                              // 00004FA4: D1040004 0001014A
  v_cmp_eq_i32  s[6:7], v75, 0                              // 00004FAC: D1040006 0001014B
  v_cmp_eq_i32  s[10:11], v77, 0                            // 00004FB4: D104000A 0001014D
  v_cmp_eq_i32  vcc, 0, v76                                 // 00004FBC: 7D049880
  v_mov_b32     v70, 0xff800000                             // 00004FC0: 7E8C02FF FF800000
  v_cndmask_b32  v66, v66, v70, s[6:7]                      // 00004FC8: D2000042 001A8D42
  v_cndmask_b32  v67, v67, v70, vcc                         // 00004FD0: 00868D43
  v_cndmask_b32  v68, v68, v70, s[10:11]                    // 00004FD4: D2000044 002A8D44
  v_cndmask_b32  v69, v69, v70, s[4:5]                      // 00004FDC: D2000045 00128D45
  v_mad_f32     v66, -v1, v65, v66                          // 00004FE4: D2820042 250A8301
  v_mad_f32     v67, -v2, v65, v67                          // 00004FEC: D2820043 250E8302
  v_mad_f32     v68, -v3, v65, v68                          // 00004FF4: D2820044 25128303
  v_mad_f32     v69, -v4, v65, v69                          // 00004FFC: D2820045 25168304
  v_mul_f32     v65, v21, v66                               // 00005004: 10828515
  v_mul_f32     v66, v22, v67                               // 00005008: 10848716
  v_mul_f32     v67, v23, v68                               // 0000500C: 10868917
  v_mul_f32     v68, v24, v69                               // 00005010: 10888B18
  v_mul_f32     v65, v18, v65                               // 00005014: 10828312
  v_mul_f32     v66, v19, v66                               // 00005018: 10848513
  v_mul_f32     v67, v20, v67                               // 0000501C: 10868714
  v_mul_f32     v68, v17, v68                               // 00005020: 10888911
  v_mac_f32     v5, v61, v65                                // 00005024: 3E0A833D
  v_mac_f32     v6, v62, v66                                // 00005028: 3E0C853E
  v_mac_f32     v7, v63, v67                                // 0000502C: 3E0E873F
  v_mac_f32     v8, v64, v68                                // 00005030: 3E108940
  v_mac_f32     v25, v41, v53                               // 00005034: 3E326B29
  v_mac_f32     v26, v42, v50                               // 00005038: 3E34652A
  v_mac_f32     v27, v43, v51                               // 0000503C: 3E36672B
  v_mac_f32     v28, v44, v52                               // 00005040: 3E38692C
  v_mac_f32     v29, v45, v57                               // 00005044: 3E3A732D
  v_mac_f32     v30, v46, v49                               // 00005048: 3E3C632E
  v_mac_f32     v31, v47, v55                               // 0000504C: 3E3E6F2F
  v_mac_f32     v32, v48, v56                               // 00005050: 3E407130
  s_addk_i32    s1, 0x0001                                  // 00005054: B7810001
  s_cmp_eq_i32  s0, s1                                      // 00005058: BF000100
  s_cbranch_scc1  label_1421                                // 0000505C: BF850009
  v_mov_b32     v41, v54                                    // 00005060: 7E520336
  v_mov_b32     v42, v58                                    // 00005064: 7E54033A
  v_mov_b32     v43, v59                                    // 00005068: 7E56033B
  v_mov_b32     v44, v60                                    // 0000506C: 7E58033C
  v_mov_b32     v45, v61                                    // 00005070: 7E5A033D
  v_mov_b32     v46, v62                                    // 00005074: 7E5C033E
  v_mov_b32     v47, v63                                    // 00005078: 7E5E033F
  v_mov_b32     v48, v64                                    // 0000507C: 7E600340
  s_branch      label_007F                                  // 00005080: BF82EC5E
label_1421:
  s_branch      label_1432                                  // 00005084: BF820010
label_1422:
  v_mov_b32     v115, 0                                     // 00005088: 7EE60280
  v_mov_b32     v116, 0                                     // 0000508C: 7EE80280
  v_mov_b32     v117, 0                                     // 00005090: 7EEA0280
  v_mov_b32     v118, 0                                     // 00005094: 7EEC0280
  v_mov_b32     v5, 0                                       // 00005098: 7E0A0280
  v_mov_b32     v6, 0                                       // 0000509C: 7E0C0280
  v_mov_b32     v7, 0                                       // 000050A0: 7E0E0280
  v_mov_b32     v8, 0                                       // 000050A4: 7E100280
  v_mov_b32     v25, s36                                    // 000050A8: 7E320224
  v_mov_b32     v26, s37                                    // 000050AC: 7E340225
  v_mov_b32     v27, s38                                    // 000050B0: 7E360226
  v_mov_b32     v28, s39                                    // 000050B4: 7E380227
  v_mov_b32     v29, s36                                    // 000050B8: 7E3A0224
  v_mov_b32     v30, s37                                    // 000050BC: 7E3C0225
  v_mov_b32     v31, s38                                    // 000050C0: 7E3E0226
  v_mov_b32     v32, s39                                    // 000050C4: 7E400227
label_1432:
  v_cvt_f32_i32  v17, s0                                    // 000050C8: 7E220A00
  s_mov_b32     s0, 0x6f800000                              // 000050CC: BE8003FF 6F800000
  v_cmp_gt_f32  vcc, abs(v17), s0                           // 000050D4: D008016A 00000111
  v_mov_b32     v18, 0x2f800000                             // 000050DC: 7E2402FF 2F800000
  v_cndmask_b32  v18, 1.0, v18, vcc                         // 000050E4: 002424F2
  v_mul_f32     v17, v17, v18                               // 000050E8: 10222511
  v_rcp_f32     v17, v17                                    // 000050EC: 7E225511
  v_mul_f32     v13, v29, v17                               // 000050F0: 101A231D
  v_mul_f32     v14, v30, v17                               // 000050F4: 101C231E
  v_mul_f32     v15, v31, v17                               // 000050F8: 101E231F
  v_mul_f32     v16, v32, v17                               // 000050FC: 10202320
  s_load_dwordx4  s[4:7], s[2:3], 0x58                      // 00005100: C0820358
  v_mad_f32     v13, v18, v13, -s20                         // 00005104: D282000D 80521B12
  v_mad_f32     v14, v18, v14, -s21                         // 0000510C: D282000E 80561D12
  v_mad_f32     v15, v18, v15, -s22                         // 00005114: D282000F 805A1F12
  v_mad_f32     v16, v18, v16, -s23                         // 0000511C: D2820010 805E2112
  v_mul_f32     v9, v25, v17                                // 00005124: 10122319
  v_mul_f32     v10, v26, v17                               // 00005128: 1014231A
  v_mul_f32     v11, v27, v17                               // 0000512C: 1016231B
  v_mul_f32     v12, v28, v17                               // 00005130: 1018231C
  s_waitcnt     lgkmcnt(0)                                  // 00005134: BF8C007F
  v_cmp_gt_f32  s[0:1], v13, 0                              // 00005138: D0080000 0001010D
  v_cmp_gt_f32  s[10:11], v14, 0                            // 00005140: D008000A 0001010E
  v_cmp_gt_f32  s[12:13], v15, 0                            // 00005148: D008000C 0001010F
  v_cmp_gt_f32  s[14:15], v16, 0                            // 00005150: D008000E 00010110
  v_mad_f32     v9, v18, v9, -s20                           // 00005158: D2820009 80521312
  v_mad_f32     v10, v18, v10, -s21                         // 00005160: D282000A 80561512
  v_mad_f32     v11, v18, v11, -s22                         // 00005168: D282000B 805A1712
  v_mad_f32     v12, v18, v12, -s23                         // 00005170: D282000C 805E1912
  s_load_dwordx4  s[20:23], s[2:3], 0x50                    // 00005178: C08A0350
  v_cndmask_b32  v13, 0, v13, s[0:1]                        // 0000517C: D200000D 00021A80
  v_cndmask_b32  v14, 0, v14, s[10:11]                      // 00005184: D200000E 002A1C80
  v_cndmask_b32  v15, 0, v15, s[12:13]                      // 0000518C: D200000F 00321E80
  v_cndmask_b32  v16, 0, v16, s[14:15]                      // 00005194: D2000010 003A2080
  v_lshlrev_b32  v0, 5, v0                                  // 0000519C: 34000085
  v_cmp_gt_f32  s[2:3], v9, 0                               // 000051A0: D0080002 00010109
  v_cmp_gt_f32  s[18:19], v10, 0                            // 000051A8: D0080012 0001010A
  v_cmp_gt_f32  s[24:25], v11, 0                            // 000051B0: D0080018 0001010B
  v_cmp_gt_f32  s[26:27], v12, 0                            // 000051B8: D008001A 0001010C
  v_mul_f32     v5, v5, v17                                 // 000051C0: 100A2305
  v_mul_f32     v6, v6, v17                                 // 000051C4: 100C2306
  v_mul_f32     v7, v7, v17                                 // 000051C8: 100E2307
  v_mul_f32     v8, v8, v17                                 // 000051CC: 10102308
  v_add_i32     v19, vcc, s16, v0                           // 000051D0: 4A260010
  v_cndmask_b32  v9, 0, v9, s[2:3]                          // 000051D4: D2000009 000A1280
  v_cndmask_b32  v10, 0, v10, s[18:19]                      // 000051DC: D200000A 004A1480
  v_cndmask_b32  v11, 0, v11, s[24:25]                      // 000051E4: D200000B 00621680
  v_cndmask_b32  v12, 0, v12, s[26:27]                      // 000051EC: D200000C 006A1880
  v_or_b32      v20, 16, v0                                 // 000051F4: 38280090
  v_cndmask_b32  v21, 0, 1.0, s[14:15]                      // 000051F8: D2000015 0039E480
  v_cndmask_b32  v22, 0, 1.0, s[0:1]                        // 00005200: D2000016 0001E480
  v_cndmask_b32  v23, 0, 1.0, s[12:13]                      // 00005208: D2000017 0031E480
  v_cndmask_b32  v24, 0, 1.0, s[10:11]                      // 00005210: D2000018 0029E480
  v_mul_f32     v5, v18, v5                                 // 00005218: 100A0B12
  v_mul_f32     v6, v18, v6                                 // 0000521C: 100C0D12
  v_mul_f32     v7, v18, v7                                 // 00005220: 100E0F12
  v_mul_f32     v8, v18, v8                                 // 00005224: 10101112
  v_mul_f32     v1, v115, v17                               // 00005228: 10022373
  v_mul_f32     v2, v116, v17                               // 0000522C: 10042374
  v_mul_f32     v3, v117, v17                               // 00005230: 10062375
  v_mul_f32     v4, v118, v17                               // 00005234: 10082376
  tbuffer_store_format_xyzw  v[13:16], v19, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 00005238: EBF71000 80010D13
  s_waitcnt     expcnt(0)                                   // 00005240: BF8C1F0F
  v_add_i32     v13, vcc, s16, v20                          // 00005244: 4A1A2810
  v_mul_f32     v5, v22, v5                                 // 00005248: 100A0B16
  v_mul_f32     v6, v24, v6                                 // 0000524C: 100C0D18
  v_mul_f32     v7, v23, v7                                 // 00005250: 100E0F17
  v_mul_f32     v8, v21, v8                                 // 00005254: 10101115
  v_cndmask_b32  v14, 0, 1.0, s[26:27]                      // 00005258: D200000E 0069E480
  v_cndmask_b32  v15, 0, 1.0, s[2:3]                        // 00005260: D200000F 0009E480
  v_cndmask_b32  v16, 0, 1.0, s[24:25]                      // 00005268: D2000010 0061E480
  v_cndmask_b32  v17, 0, 1.0, s[18:19]                      // 00005270: D2000011 0049E480
  v_mul_f32     v1, v18, v1                                 // 00005278: 10020312
  v_mul_f32     v2, v18, v2                                 // 0000527C: 10040512
  v_mul_f32     v3, v18, v3                                 // 00005280: 10060712
  v_mul_f32     v4, v18, v4                                 // 00005284: 10080912
  tbuffer_store_format_xyzw  v[9:12], v13, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 00005288: EBF71000 8001090D
  v_add_i32     v0, vcc, s8, v0                             // 00005290: 4A000008
  v_mul_f32     v1, v15, v1                                 // 00005294: 1002030F
  v_mul_f32     v2, v17, v2                                 // 00005298: 10040511
  v_mul_f32     v3, v16, v3                                 // 0000529C: 10060710
  v_mul_f32     v4, v14, v4                                 // 000052A0: 1008090E
  s_waitcnt     lgkmcnt(0)                                  // 000052A4: BF8C007F
  tbuffer_store_format_xyzw  v[5:8], v0, s[20:23], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 000052A8: EBF71000 80050500
  v_add_i32     v0, vcc, s8, v20                            // 000052B0: 4A002808
  tbuffer_store_format_xyzw  v[1:4], v0, s[20:23], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 000052B4: EBF71000 80050100
  s_endpgm                                                  // 000052BC: BF810000



