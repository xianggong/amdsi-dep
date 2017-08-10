label_0000:
  s_load_dwordx4  s[20:23], s[2:3], 0x00                    // 00000000: C08A0300
  s_load_dwordx4  s[24:27], s[2:3], 0x04                    // 00000004: C08C0304
  s_waitcnt     lgkmcnt(0)                                  // 00000008: BF8C007F
  s_buffer_load_dwordx2  s[0:1], s[20:23], 0x04             // 0000000C: C2401504
  s_buffer_load_dwordx2  s[20:21], s[20:23], 0x18           // 00000010: C24A1518
  s_buffer_load_dword  s15, s[24:27], 0x00                  // 00000014: C2079900
  s_buffer_load_dword  s22, s[24:27], 0x04                  // 00000018: C20B1904
  s_buffer_load_dword  s23, s[24:27], 0x08                  // 0000001C: C20B9908
  s_buffer_load_dword  s24, s[24:27], 0x0c                  // 00000020: C20C190C
  s_waitcnt     lgkmcnt(0)                                  // 00000024: BF8C007F
  s_min_u32     s0, s0, 0x0000ffff                          // 00000028: 8380FF00 0000FFFF
  s_min_u32     s1, s1, 0x0000ffff                          // 00000030: 8381FF01 0000FFFF
  v_mov_b32     v2, s0                                      // 00000038: 7E040200
  v_mul_i32_i24  v2, s12, v2                                // 0000003C: 1204040C
  v_mov_b32     v3, s1                                      // 00000040: 7E060201
  v_mul_i32_i24  v3, s13, v3                                // 00000044: 1206060D
  v_add_i32     v0, vcc, v0, v2                             // 00000048: 4A000500
  v_add_i32     v1, vcc, v1, v3                             // 0000004C: 4A020701
  v_add_i32     v0, vcc, s20, v0                            // 00000050: 4A000014
  v_add_i32     v1, vcc, s21, v1                            // 00000054: 4A020215
  s_cmp_eq_i32  s23, 0                                      // 00000058: BF008017
  s_cbranch_scc1  label_100B                                // 0000005C: BF850FF3
  v_mul_lo_i32  v1, v1, s22                                 // 00000060: D2D60001 02002D01
  v_add_i32     v0, vcc, v0, v1                             // 00000068: 4A000300
  v_lshlrev_b32  v1, 4, v0                                  // 0000006C: 34020084
  v_add_i32     v1, vcc, s15, v1                            // 00000070: 4A02020F
  v_mov_b32     v2, 0x6c078965                              // 00000074: 7E0402FF 6C078965
  tbuffer_load_format_xyzw  v[3:6], v1, s[8:11], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 0000007C: EBF31000 80020301
  s_waitcnt     vmcnt(0)                                    // 00000084: BF8C1F70
  v_lshrrev_b32  v1, 30, v3                                 // 00000088: 2C02069E
  v_lshrrev_b32  v7, 30, v4                                 // 0000008C: 2C0E089E
  v_lshrrev_b32  v8, 30, v5                                 // 00000090: 2C100A9E
  v_lshrrev_b32  v9, 30, v6                                 // 00000094: 2C120C9E
  v_xor_b32     v1, v3, v1                                  // 00000098: 3A020303
  v_xor_b32     v7, v4, v7                                  // 0000009C: 3A0E0F04
  v_xor_b32     v8, v5, v8                                  // 000000A0: 3A101105
  v_xor_b32     v9, v6, v9                                  // 000000A4: 3A121306
  v_mul_lo_i32  v1, v1, v2                                  // 000000A8: D2D60001 02020501
  v_mul_lo_i32  v7, v7, v2                                  // 000000B0: D2D60007 02020507
  v_mul_lo_i32  v8, v8, v2                                  // 000000B8: D2D60008 02020508
  v_mul_lo_i32  v9, v9, v2                                  // 000000C0: D2D60009 02020509
  v_add_i32     v1, vcc, 1, v1                              // 000000C8: 4A020281
  v_add_i32     v7, vcc, 1, v7                              // 000000CC: 4A0E0E81
  v_add_i32     v8, vcc, 1, v8                              // 000000D0: 4A101081
  v_add_i32     v9, vcc, 1, v9                              // 000000D4: 4A121281
  v_lshrrev_b32  v10, 30, v1                                // 000000D8: 2C14029E
  v_lshrrev_b32  v11, 30, v7                                // 000000DC: 2C160E9E
  v_lshrrev_b32  v12, 30, v8                                // 000000E0: 2C18109E
  v_lshrrev_b32  v13, 30, v9                                // 000000E4: 2C1A129E
  v_xor_b32     v10, v1, v10                                // 000000E8: 3A141501
  v_xor_b32     v11, v7, v11                                // 000000EC: 3A161707
  v_xor_b32     v12, v8, v12                                // 000000F0: 3A181908
  v_xor_b32     v13, v9, v13                                // 000000F4: 3A1A1B09
  v_mul_lo_i32  v10, v10, v2                                // 000000F8: D2D6000A 0202050A
  v_mul_lo_i32  v11, v11, v2                                // 00000100: D2D6000B 0202050B
  v_mul_lo_i32  v12, v12, v2                                // 00000108: D2D6000C 0202050C
  v_mul_lo_i32  v13, v13, v2                                // 00000110: D2D6000D 0202050D
  v_add_i32     v10, vcc, 2, v10                            // 00000118: 4A141482
  v_add_i32     v11, vcc, 2, v11                            // 0000011C: 4A161682
  v_add_i32     v12, vcc, 2, v12                            // 00000120: 4A181882
  v_add_i32     v13, vcc, 2, v13                            // 00000124: 4A1A1A82
  v_lshrrev_b32  v14, 30, v10                               // 00000128: 2C1C149E
  v_lshrrev_b32  v15, 30, v11                               // 0000012C: 2C1E169E
  v_lshrrev_b32  v16, 30, v12                               // 00000130: 2C20189E
  v_lshrrev_b32  v17, 30, v13                               // 00000134: 2C221A9E
  v_xor_b32     v14, v10, v14                               // 00000138: 3A1C1D0A
  v_xor_b32     v15, v11, v15                               // 0000013C: 3A1E1F0B
  v_xor_b32     v16, v12, v16                               // 00000140: 3A20210C
  v_xor_b32     v17, v13, v17                               // 00000144: 3A22230D
  v_mul_lo_i32  v14, v14, v2                                // 00000148: D2D6000E 0202050E
  v_mul_lo_i32  v15, v15, v2                                // 00000150: D2D6000F 0202050F
  v_mul_lo_i32  v16, v16, v2                                // 00000158: D2D60010 02020510
  v_mul_lo_i32  v17, v17, v2                                // 00000160: D2D60011 02020511
  v_add_i32     v14, vcc, 3, v14                            // 00000168: 4A1C1C83
  v_add_i32     v15, vcc, 3, v15                            // 0000016C: 4A1E1E83
  v_add_i32     v16, vcc, 3, v16                            // 00000170: 4A202083
  v_add_i32     v17, vcc, 3, v17                            // 00000174: 4A222283
  v_lshrrev_b32  v18, 30, v14                               // 00000178: 2C241C9E
  v_lshrrev_b32  v19, 30, v15                               // 0000017C: 2C261E9E
  v_lshrrev_b32  v20, 30, v16                               // 00000180: 2C28209E
  v_lshrrev_b32  v21, 30, v17                               // 00000184: 2C2A229E
  v_xor_b32     v18, v14, v18                               // 00000188: 3A24250E
  v_xor_b32     v19, v15, v19                               // 0000018C: 3A26270F
  v_xor_b32     v20, v16, v20                               // 00000190: 3A282910
  v_xor_b32     v21, v17, v21                               // 00000194: 3A2A2B11
  v_mul_lo_i32  v18, v18, v2                                // 00000198: D2D60012 02020512
  v_mul_lo_i32  v19, v19, v2                                // 000001A0: D2D60013 02020513
  v_mul_lo_i32  v20, v20, v2                                // 000001A8: D2D60014 02020514
  v_mul_lo_i32  v2, v21, v2                                 // 000001B0: D2D60002 02020515
  v_add_i32     v18, vcc, 4, v18                            // 000001B8: 4A242484
  v_add_i32     v19, vcc, 4, v19                            // 000001BC: 4A262684
  v_add_i32     v20, vcc, 4, v20                            // 000001C0: 4A282884
  v_add_i32     v2, vcc, 4, v2                              // 000001C4: 4A040484
  s_movk_i32    s0, 0x0000                                  // 000001C8: B0000000
  v_mov_b32     v21, 0                                      // 000001CC: 7E2A0280
  v_mov_b32     v22, 0                                      // 000001D0: 7E2C0280
  v_mov_b32     v23, 0                                      // 000001D4: 7E2E0280
  v_mov_b32     v24, 0                                      // 000001D8: 7E300280
  v_mov_b32     v25, 0                                      // 000001DC: 7E320280
  v_mov_b32     v26, 0                                      // 000001E0: 7E340280
  v_mov_b32     v27, 0                                      // 000001E4: 7E360280
  v_mov_b32     v28, 0                                      // 000001E8: 7E380280
  v_mov_b32     v29, 0                                      // 000001EC: 7E3A0280
  v_mov_b32     v30, 0                                      // 000001F0: 7E3C0280
  v_mov_b32     v31, 0                                      // 000001F4: 7E3E0280
  v_mov_b32     v32, 0                                      // 000001F8: 7E400280
  v_mov_b32     v33, 0                                      // 000001FC: 7E420280
  v_mov_b32     v34, 0                                      // 00000200: 7E440280
  v_mov_b32     v35, 0                                      // 00000204: 7E460280
  v_mov_b32     v36, 0                                      // 00000208: 7E480280
label_0083:
  v_mov_b32     v37, v71                                    // 0000020C: 7E4A0347
  v_mov_b32     v38, v72                                    // 00000210: 7E4C0348
  v_mov_b32     v39, v73                                    // 00000214: 7E4E0349
  v_mov_b32     v40, v74                                    // 00000218: 7E50034A
  v_mov_b32     v41, v75                                    // 0000021C: 7E52034B
  v_mov_b32     v42, v76                                    // 00000220: 7E54034C
  v_mov_b32     v43, v77                                    // 00000224: 7E56034D
  v_mov_b32     v44, v78                                    // 00000228: 7E58034E
  v_mov_b32     v45, v67                                    // 0000022C: 7E5A0343
  v_mov_b32     v46, v68                                    // 00000230: 7E5C0344
  v_mov_b32     v47, v69                                    // 00000234: 7E5E0345
  v_mov_b32     v48, v70                                    // 00000238: 7E600346
  s_cmp_gt_i32  s0, 3                                       // 0000023C: BF028300
  s_cbranch_scc0  label_00F0                                // 00000240: BF84005F
  v_mov_b32     v49, v79                                    // 00000244: 7E62034F
  v_mov_b32     v50, v80                                    // 00000248: 7E640350
  v_mov_b32     v51, v81                                    // 0000024C: 7E660351
  v_mov_b32     v52, v82                                    // 00000250: 7E680352
  v_mov_b32     v53, v83                                    // 00000254: 7E6A0353
  v_mov_b32     v54, v84                                    // 00000258: 7E6C0354
  v_mov_b32     v55, v85                                    // 0000025C: 7E6E0355
  v_mov_b32     v56, v86                                    // 00000260: 7E700356
  s_cmp_gt_i32  s0, 5                                       // 00000264: BF028500
  s_cbranch_scc0  label_00CA                                // 00000268: BF84002F
  s_cmp_eq_i32  s0, 6                                       // 0000026C: BF008600
  s_cbranch_scc0  label_00B2                                // 00000270: BF840015
  v_mov_b32     v21, v87                                    // 00000274: 7E2A0357
  v_mov_b32     v22, v88                                    // 00000278: 7E2C0358
  v_mov_b32     v23, v89                                    // 0000027C: 7E2E0359
  v_mov_b32     v24, v90                                    // 00000280: 7E30035A
  v_mov_b32     v25, v37                                    // 00000284: 7E320325
  v_mov_b32     v26, v38                                    // 00000288: 7E340326
  v_mov_b32     v27, v39                                    // 0000028C: 7E360327
  v_mov_b32     v28, v40                                    // 00000290: 7E380328
  v_mov_b32     v33, v29                                    // 00000294: 7E42031D
  v_mov_b32     v34, v30                                    // 00000298: 7E44031E
  v_mov_b32     v35, v31                                    // 0000029C: 7E46031F
  v_mov_b32     v36, v32                                    // 000002A0: 7E480320
  v_mov_b32     v29, v21                                    // 000002A4: 7E3A0315
  v_mov_b32     v30, v22                                    // 000002A8: 7E3C0316
  v_mov_b32     v31, v23                                    // 000002AC: 7E3E0317
  v_mov_b32     v32, v24                                    // 000002B0: 7E400318
  v_mov_b32     v21, v49                                    // 000002B4: 7E2A0331
  v_mov_b32     v22, v50                                    // 000002B8: 7E2C0332
  v_mov_b32     v23, v51                                    // 000002BC: 7E2E0333
  v_mov_b32     v24, v52                                    // 000002C0: 7E300334
  s_branch      label_013D                                  // 000002C4: BF82008B
label_00B2:
  s_cmp_eq_i32  s0, 7                                       // 000002C8: BF008700
  s_cbranch_scc0  label_013D                                // 000002CC: BF840089
  v_mov_b32     v21, v91                                    // 000002D0: 7E2A035B
  v_mov_b32     v22, v92                                    // 000002D4: 7E2C035C
  v_mov_b32     v23, v93                                    // 000002D8: 7E2E035D
  v_mov_b32     v24, v94                                    // 000002DC: 7E30035E
  v_mov_b32     v25, v41                                    // 000002E0: 7E320329
  v_mov_b32     v26, v42                                    // 000002E4: 7E34032A
  v_mov_b32     v27, v43                                    // 000002E8: 7E36032B
  v_mov_b32     v28, v44                                    // 000002EC: 7E38032C
  v_mov_b32     v33, v29                                    // 000002F0: 7E42031D
  v_mov_b32     v34, v30                                    // 000002F4: 7E44031E
  v_mov_b32     v35, v31                                    // 000002F8: 7E46031F
  v_mov_b32     v36, v32                                    // 000002FC: 7E480320
  v_mov_b32     v29, v21                                    // 00000300: 7E3A0315
  v_mov_b32     v30, v22                                    // 00000304: 7E3C0316
  v_mov_b32     v31, v23                                    // 00000308: 7E3E0317
  v_mov_b32     v32, v24                                    // 0000030C: 7E400318
  v_mov_b32     v21, v53                                    // 00000310: 7E2A0335
  v_mov_b32     v22, v54                                    // 00000314: 7E2C0336
  v_mov_b32     v23, v55                                    // 00000318: 7E2E0337
  v_mov_b32     v24, v56                                    // 0000031C: 7E300338
  s_branch      label_013D                                  // 00000320: BF820074
  s_branch      label_013D                                  // 00000324: BF820073
label_00CA:
  s_cmp_eq_i32  s0, 4                                       // 00000328: BF008400
  s_cbranch_scc0  label_00DD                                // 0000032C: BF840011
  v_mov_b32     v21, v1                                     // 00000330: 7E2A0301
  v_mov_b32     v22, v7                                     // 00000334: 7E2C0307
  v_mov_b32     v23, v8                                     // 00000338: 7E2E0308
  v_mov_b32     v24, v9                                     // 0000033C: 7E300309
  v_mov_b32     v25, v18                                    // 00000340: 7E320312
  v_mov_b32     v26, v19                                    // 00000344: 7E340313
  v_mov_b32     v27, v20                                    // 00000348: 7E360314
  v_mov_b32     v28, v2                                     // 0000034C: 7E380302
  v_mov_b32     v33, v29                                    // 00000350: 7E42031D
  v_mov_b32     v34, v30                                    // 00000354: 7E44031E
  v_mov_b32     v35, v31                                    // 00000358: 7E46031F
  v_mov_b32     v36, v32                                    // 0000035C: 7E480320
  v_mov_b32     v29, v49                                    // 00000360: 7E3A0331
  v_mov_b32     v30, v50                                    // 00000364: 7E3C0332
  v_mov_b32     v31, v51                                    // 00000368: 7E3E0333
  v_mov_b32     v32, v52                                    // 0000036C: 7E400334
  s_branch      label_013D                                  // 00000370: BF820060
label_00DD:
  v_cmp_eq_i32  vcc, s0, 5                                  // 00000374: D104006A 00010A00
  v_cndmask_b32  v36, v36, v32, vcc                         // 0000037C: 00484124
  v_cndmask_b32  v35, v35, v31, vcc                         // 00000380: 00463F23
  v_cndmask_b32  v34, v34, v30, vcc                         // 00000384: 00443D22
  v_cndmask_b32  v33, v33, v29, vcc                         // 00000388: 00423B21
  v_cndmask_b32  v32, v32, v56, vcc                         // 0000038C: 00407120
  v_cndmask_b32  v31, v31, v55, vcc                         // 00000390: 003E6F1F
  v_cndmask_b32  v30, v30, v54, vcc                         // 00000394: 003C6D1E
  v_cndmask_b32  v29, v29, v53, vcc                         // 00000398: 003A6B1D
  v_cndmask_b32  v28, v28, v48, vcc                         // 0000039C: 0038611C
  v_cndmask_b32  v27, v27, v47, vcc                         // 000003A0: 00365F1B
  v_cndmask_b32  v26, v26, v46, vcc                         // 000003A4: 00345D1A
  v_cndmask_b32  v25, v25, v45, vcc                         // 000003A8: 00325B19
  v_cndmask_b32  v24, v24, v44, vcc                         // 000003AC: 00305918
  v_cndmask_b32  v23, v23, v43, vcc                         // 000003B0: 002E5717
  v_cndmask_b32  v22, v22, v42, vcc                         // 000003B4: 002C5516
  v_cndmask_b32  v21, v21, v41, vcc                         // 000003B8: 002A5315
  s_branch      label_013D                                  // 000003BC: BF82004D
label_00F0:
  s_cmp_gt_i32  s0, 1                                       // 000003C0: BF028100
  s_cbranch_scc0  label_0118                                // 000003C4: BF840026
  s_cmp_eq_i32  s0, 2                                       // 000003C8: BF008200
  s_cbranch_scc0  label_0105                                // 000003CC: BF840011
  v_mov_b32     v21, v18                                    // 000003D0: 7E2A0312
  v_mov_b32     v22, v19                                    // 000003D4: 7E2C0313
  v_mov_b32     v23, v20                                    // 000003D8: 7E2E0314
  v_mov_b32     v24, v2                                     // 000003DC: 7E300302
  v_mov_b32     v25, v10                                    // 000003E0: 7E32030A
  v_mov_b32     v26, v11                                    // 000003E4: 7E34030B
  v_mov_b32     v27, v12                                    // 000003E8: 7E36030C
  v_mov_b32     v28, v13                                    // 000003EC: 7E38030D
  v_mov_b32     v33, v29                                    // 000003F0: 7E42031D
  v_mov_b32     v34, v30                                    // 000003F4: 7E44031E
  v_mov_b32     v35, v31                                    // 000003F8: 7E46031F
  v_mov_b32     v36, v32                                    // 000003FC: 7E480320
  v_mov_b32     v29, v37                                    // 00000400: 7E3A0325
  v_mov_b32     v30, v38                                    // 00000404: 7E3C0326
  v_mov_b32     v31, v39                                    // 00000408: 7E3E0327
  v_mov_b32     v32, v40                                    // 0000040C: 7E400328
  s_branch      label_013D                                  // 00000410: BF820038
label_0105:
  v_cmp_eq_i32  vcc, s0, 3                                  // 00000414: D104006A 00010600
  v_cndmask_b32  v36, v36, v32, vcc                         // 0000041C: 00484124
  v_cndmask_b32  v35, v35, v31, vcc                         // 00000420: 00463F23
  v_cndmask_b32  v34, v34, v30, vcc                         // 00000424: 00443D22
  v_cndmask_b32  v33, v33, v29, vcc                         // 00000428: 00423B21
  v_cndmask_b32  v32, v32, v44, vcc                         // 0000042C: 00405920
  v_cndmask_b32  v31, v31, v43, vcc                         // 00000430: 003E571F
  v_cndmask_b32  v30, v30, v42, vcc                         // 00000434: 003C551E
  v_cndmask_b32  v29, v29, v41, vcc                         // 00000438: 003A531D
  v_cndmask_b32  v28, v28, v17, vcc                         // 0000043C: 0038231C
  v_cndmask_b32  v27, v27, v16, vcc                         // 00000440: 0036211B
  v_cndmask_b32  v26, v26, v15, vcc                         // 00000444: 00341F1A
  v_cndmask_b32  v25, v25, v14, vcc                         // 00000448: 00321D19
  v_cndmask_b32  v24, v24, v6, vcc                          // 0000044C: 00300D18
  v_cndmask_b32  v23, v23, v5, vcc                          // 00000450: 002E0B17
  v_cndmask_b32  v22, v22, v4, vcc                          // 00000454: 002C0916
  v_cndmask_b32  v21, v21, v3, vcc                          // 00000458: 002A0715
  s_branch      label_013D                                  // 0000045C: BF820025
label_0118:
  s_cmp_eq_i32  s0, 0                                       // 00000460: BF008000
  s_cbranch_scc1  label_012D                                // 00000464: BF850013
  v_cmp_eq_i32  vcc, s0, 1                                  // 00000468: D104006A 00010200
  v_cndmask_b32  v36, v36, v32, vcc                         // 00000470: 00484124
  v_cndmask_b32  v35, v35, v31, vcc                         // 00000474: 00463F23
  v_cndmask_b32  v34, v34, v30, vcc                         // 00000478: 00443D22
  v_cndmask_b32  v33, v33, v29, vcc                         // 0000047C: 00423B21
  v_cndmask_b32  v32, v32, v48, vcc                         // 00000480: 00406120
  v_cndmask_b32  v31, v31, v47, vcc                         // 00000484: 003E5F1F
  v_cndmask_b32  v30, v30, v46, vcc                         // 00000488: 003C5D1E
  v_cndmask_b32  v29, v29, v45, vcc                         // 0000048C: 003A5B1D
  v_cndmask_b32  v28, v28, v9, vcc                          // 00000490: 0038131C
  v_cndmask_b32  v27, v27, v8, vcc                          // 00000494: 0036111B
  v_cndmask_b32  v26, v26, v7, vcc                          // 00000498: 00340F1A
  v_cndmask_b32  v25, v25, v1, vcc                          // 0000049C: 00320319
  v_cndmask_b32  v24, v24, v17, vcc                         // 000004A0: 00302318
  v_cndmask_b32  v23, v23, v16, vcc                         // 000004A4: 002E2117
  v_cndmask_b32  v22, v22, v15, vcc                         // 000004A8: 002C1F16
  v_cndmask_b32  v21, v21, v14, vcc                         // 000004AC: 002A1D15
  s_branch      label_013D                                  // 000004B0: BF820010
label_012D:
  v_mov_b32     v21, v10                                    // 000004B4: 7E2A030A
  v_mov_b32     v22, v11                                    // 000004B8: 7E2C030B
  v_mov_b32     v23, v12                                    // 000004BC: 7E2E030C
  v_mov_b32     v24, v13                                    // 000004C0: 7E30030D
  v_mov_b32     v25, v3                                     // 000004C4: 7E320303
  v_mov_b32     v26, v4                                     // 000004C8: 7E340304
  v_mov_b32     v27, v5                                     // 000004CC: 7E360305
  v_mov_b32     v28, v6                                     // 000004D0: 7E380306
  v_mov_b32     v29, v18                                    // 000004D4: 7E3A0312
  v_mov_b32     v30, v19                                    // 000004D8: 7E3C0313
  v_mov_b32     v31, v20                                    // 000004DC: 7E3E0314
  v_mov_b32     v32, v2                                     // 000004E0: 7E400302
  v_mov_b32     v33, v14                                    // 000004E4: 7E42030E
  v_mov_b32     v34, v15                                    // 000004E8: 7E44030F
  v_mov_b32     v35, v16                                    // 000004EC: 7E460310
  v_mov_b32     v36, v17                                    // 000004F0: 7E480311
label_013D:
  v_alignbit_b32  v37, v27, v26, 8                          // 000004F4: D29C0025 0222351B
  v_alignbit_b32  v38, v36, v35, 24                         // 000004FC: D29C0026 02624724
  v_lshlrev_b32  v39, 15, v31                               // 00000504: 344E3E8F
  v_xor_b32     v38, v38, v39                               // 00000508: 3A4C4F26
  v_xor_b32     v38, v27, v38                               // 0000050C: 3A4C4D1B
  v_xor_b32     v37, v37, v38                               // 00000510: 3A4A4D25
  v_lshrrev_b32  v38, 13, v23                               // 00000514: 2C4C2E8D
  v_and_b32     v38, 0x00077b7d, v38                        // 00000518: 364C4CFF 00077B7D
  v_xor_b32     v37, v37, v38                               // 00000520: 3A4A4D25
  v_alignbit_b32  v38, v28, v27, 8                          // 00000524: D29C0026 0222371C
  v_lshrrev_b32  v39, 24, v36                               // 0000052C: 2C4E4898
  v_lshlrev_b32  v40, 15, v32                               // 00000530: 3450408F
  v_or_b32      v39, v39, v40                               // 00000534: 384E5127
  v_xor_b32     v39, v28, v39                               // 00000538: 3A4E4F1C
  v_xor_b32     v38, v38, v39                               // 0000053C: 3A4C4F26
  v_lshrrev_b32  v39, 13, v24                               // 00000540: 2C4E308D
  v_and_b32     v39, 0x0007fb2f, v39                        // 00000544: 364E4EFF 0007FB2F
  v_xor_b32     v38, v38, v39                               // 0000054C: 3A4C4F26
  v_alignbit_b32  v39, v34, v33, 24                         // 00000550: D29C0027 02624322
  v_lshlrev_b32  v40, 15, v29                               // 00000558: 34503A8F
  v_xor_b32     v39, v39, v40                               // 0000055C: 3A4E5127
  v_xor_b32     v39, v25, v39                               // 00000560: 3A4E4F19
  v_lshlrev_b32  v40, 24, v25                               // 00000564: 34503298
  v_xor_b32     v39, v39, v40                               // 00000568: 3A4E5127
  v_lshrrev_b32  v40, 13, v21                               // 0000056C: 2C502A8D
  v_and_b32     v40, 0x000737ff, v40                        // 00000570: 365050FF 000737FF
  v_xor_b32     v39, v39, v40                               // 00000578: 3A4E5127
  v_alignbit_b32  v40, v26, v25, 8                          // 0000057C: D29C0028 0222331A
  v_alignbit_b32  v41, v35, v34, 24                         // 00000584: D29C0029 02624523
  v_lshlrev_b32  v42, 15, v30                               // 0000058C: 34543C8F
  v_xor_b32     v41, v41, v42                               // 00000590: 3A525529
  v_xor_b32     v41, v26, v41                               // 00000594: 3A52531A
  v_xor_b32     v40, v40, v41                               // 00000598: 3A505328
  v_lshrrev_b32  v41, 13, v22                               // 0000059C: 2C522C8D
  v_and_b32     v41, 0x00073f7d, v41                        // 000005A0: 365252FF 00073F7D
  v_xor_b32     v40, v40, v41                               // 000005A8: 3A505328
  s_lshl_b32    s1, s0, 4                                   // 000005AC: 8F018400
  v_mov_b32     v41, s1                                     // 000005B0: 7E520201
  v_lshrrev_b32  v65, 2, v41                                // 000005B4: 2C825282
  s_mov_b64     s[42:43], exec                              // 000005B8: BEAA047E
  s_cbranch_execz  label_0178                               // 000005BC: BF880008
label_0170:
  v_readfirstlane_b32  s40, v65                             // 000005C0: 7E500541
  s_mov_b32     m0, s40                                     // 000005C4: BEFC0328
  s_mov_b64     s[44:45], exec                              // 000005C8: BEAC047E
  v_cmpx_eq_i32  s[46:47], s40, v65                         // 000005CC: D124002E 00028228
  v_movreld_b32  v67, v39                                   // 000005D4: 7E868527
  s_andn2_b64   exec, s[44:45], s[46:47]                    // 000005D8: 8AFE2E2C
  s_cbranch_execnz  label_0170                              // 000005DC: BF89FFF8
label_0178:
  s_mov_b64     exec, s[42:43]                              // 000005E0: BEFE042A
  v_lshrrev_b32  v65, 2, v41                                // 000005E4: 2C825282
  v_mad_u32_u24  v65, v65, 1, 1                             // 000005E8: D2860041 02050341
  s_cbranch_execz  label_0185                               // 000005F0: BF880008
label_017D:
  v_readfirstlane_b32  s40, v65                             // 000005F4: 7E500541
  s_mov_b32     m0, s40                                     // 000005F8: BEFC0328
  s_mov_b64     s[44:45], exec                              // 000005FC: BEAC047E
  v_cmpx_eq_i32  s[46:47], s40, v65                         // 00000600: D124002E 00028228
  v_movreld_b32  v67, v40                                   // 00000608: 7E868528
  s_andn2_b64   exec, s[44:45], s[46:47]                    // 0000060C: 8AFE2E2C
  s_cbranch_execnz  label_017D                              // 00000610: BF89FFF8
label_0185:
  s_mov_b64     exec, s[42:43]                              // 00000614: BEFE042A
  v_lshrrev_b32  v65, 2, v41                                // 00000618: 2C825282
  v_mad_u32_u24  v65, v65, 1, 2                             // 0000061C: D2860041 02090341
  s_cbranch_execz  label_0192                               // 00000624: BF880008
label_018A:
  v_readfirstlane_b32  s40, v65                             // 00000628: 7E500541
  s_mov_b32     m0, s40                                     // 0000062C: BEFC0328
  s_mov_b64     s[44:45], exec                              // 00000630: BEAC047E
  v_cmpx_eq_i32  s[46:47], s40, v65                         // 00000634: D124002E 00028228
  v_movreld_b32  v67, v37                                   // 0000063C: 7E868525
  s_andn2_b64   exec, s[44:45], s[46:47]                    // 00000640: 8AFE2E2C
  s_cbranch_execnz  label_018A                              // 00000644: BF89FFF8
label_0192:
  s_mov_b64     exec, s[42:43]                              // 00000648: BEFE042A
  v_lshrrev_b32  v65, 2, v41                                // 0000064C: 2C825282
  v_mad_u32_u24  v65, v65, 1, 3                             // 00000650: D2860041 020D0341
  s_cbranch_execz  label_019F                               // 00000658: BF880008
label_0197:
  v_readfirstlane_b32  s40, v65                             // 0000065C: 7E500541
  s_mov_b32     m0, s40                                     // 00000660: BEFC0328
  s_mov_b64     s[44:45], exec                              // 00000664: BEAC047E
  v_cmpx_eq_i32  s[46:47], s40, v65                         // 00000668: D124002E 00028228
  v_movreld_b32  v67, v38                                   // 00000670: 7E868526
  s_andn2_b64   exec, s[44:45], s[46:47]                    // 00000674: 8AFE2E2C
  s_cbranch_execnz  label_0197                              // 00000678: BF89FFF8
label_019F:
  s_mov_b64     exec, s[42:43]                              // 0000067C: BEFE042A
  s_addk_i32    s0, 0x0001                                  // 00000680: B7800001
  s_cmp_eq_i32  s23, s0                                     // 00000684: BF000017
  s_cbranch_scc0  label_0083                                // 00000688: BF84FEE0
  s_cmp_ge_u32  s23, 2                                      // 0000068C: BF098217
  s_cbranch_scc0  label_100B                                // 00000690: BF840E66
  s_lshr_b32    s1, s23, 1                                  // 00000694: 90018117
  v_mul_lo_i32  v0, s23, v0                                 // 00000698: D2D60000 02020017
  v_mov_b32     v26, v67                                    // 000006A0: 7E340343
  v_mov_b32     v27, v68                                    // 000006A4: 7E360344
  v_mov_b32     v28, v69                                    // 000006A8: 7E380345
  v_mov_b32     v22, v70                                    // 000006AC: 7E2C0346
  v_lshlrev_b32  v0, 4, v0                                  // 000006B0: 34000084
  v_add_i32     v0, vcc, s24, v0                            // 000006B4: 4A000018
  v_add_i32     v0, vcc, 16, v0                             // 000006B8: 4A000090
  s_load_dwordx4  s[8:11], s[2:3], 0x08                     // 000006BC: C0840308
  s_movk_i32    s0, 0x0010                                  // 000006C0: B0000010
label_01B1:
  v_cvt_f32_u32  v1, v26                                    // 000006C4: 7E020D1A
  v_cvt_f32_u32  v2, v27                                    // 000006C8: 7E040D1B
  v_cvt_f32_u32  v3, v28                                    // 000006CC: 7E060D1C
  v_cvt_f32_u32  v4, v22                                    // 000006D0: 7E080D16
  v_mov_b32     v5, 0x2f800000                              // 000006D4: 7E0A02FF 2F800000
  v_mul_f32     v6, v5, v1                                  // 000006DC: 100C0305
  s_waitcnt     expcnt(0)                                   // 000006E0: BF8C1F0F
  v_mul_f32     v7, v2, v5                                  // 000006E4: 100E0B02
  v_mul_f32     v8, v3, v5                                  // 000006E8: 10100B03
  v_mul_f32     v5, v4, v5                                  // 000006EC: 100A0B04
  v_lshrrev_b32  v9, 23, v6                                 // 000006F0: 2C120C97
  v_lshrrev_b32  v10, 23, v7                                // 000006F4: 2C140E97
  v_lshrrev_b32  v11, 23, v8                                // 000006F8: 2C161097
  v_lshrrev_b32  v12, 23, v5                                // 000006FC: 2C180A97
  v_or_b32      v13, 1.0, v6                                // 00000700: 381A0CF2
  v_or_b32      v14, 1.0, v7                                // 00000704: 381C0EF2
  v_or_b32      v15, 1.0, v8                                // 00000708: 381E10F2
  v_or_b32      v16, 1.0, v5                                // 0000070C: 38200AF2
  v_cmp_eq_i32  s[2:3], v12, 0                              // 00000710: D1040002 0001010C
  v_cmp_eq_i32  s[12:13], v9, 0                             // 00000718: D104000C 00010109
  v_cmp_eq_i32  s[20:21], v11, 0                            // 00000720: D1040014 0001010B
  v_cmp_eq_i32  s[22:23], v10, 0                            // 00000728: D1040016 0001010A
  v_add_f32     v13, -1.0, v13                              // 00000730: 061A1AF3
  v_add_f32     v14, -1.0, v14                              // 00000734: 061C1CF3
  v_add_f32     v15, -1.0, v15                              // 00000738: 061E1EF3
  v_add_f32     v16, -1.0, v16                              // 0000073C: 062020F3
  v_cndmask_b32  v17, v6, v13, s[12:13]                     // 00000740: D2000011 00321B06
  v_cndmask_b32  v18, v7, v14, s[22:23]                     // 00000748: D2000012 005A1D07
  v_cndmask_b32  v19, v8, v15, s[20:21]                     // 00000750: D2000013 00521F08
  v_cndmask_b32  v20, v5, v16, s[2:3]                       // 00000758: D2000014 000A2105
  v_mov_b32     v21, 0x00008000                             // 00000760: 7E2A02FF 00008000
  v_mov_b32     v22, 0x007f0000                             // 00000768: 7E2C02FF 007F0000
  v_and_b32     v23, v21, v17                               // 00000770: 362E2315
  v_and_b32     v24, v18, v21                               // 00000774: 36302B12
  v_and_b32     v25, v19, v21                               // 00000778: 36322B13
  v_and_b32     v21, v20, v21                               // 0000077C: 362A2B14
  v_and_b32     v26, v22, v17                               // 00000780: 36342316
  v_and_b32     v27, v18, v22                               // 00000784: 36362D12
  v_and_b32     v28, v19, v22                               // 00000788: 36382D13
  v_and_b32     v22, v20, v22                               // 0000078C: 362C2D14
  v_lshlrev_b32  v23, 1, v23                                // 00000790: 342E2E81
  v_lshlrev_b32  v24, 1, v24                                // 00000794: 34303081
  v_lshlrev_b32  v25, 1, v25                                // 00000798: 34323281
  v_lshlrev_b32  v21, 1, v21                                // 0000079C: 342A2A81
  v_add_i32     v23, vcc, v26, v23                          // 000007A0: 4A2E2F1A
  v_add_i32     v24, vcc, v27, v24                          // 000007A4: 4A30311B
  v_add_i32     v25, vcc, v28, v25                          // 000007A8: 4A32331C
  v_add_i32     v21, vcc, v22, v21                          // 000007AC: 4A2A2B16
  v_lshrrev_b32  v22, 16, v23                               // 000007B0: 2C2C2E90
  v_lshrrev_b32  v26, 16, v24                               // 000007B4: 2C343090
  v_lshrrev_b32  v27, 16, v25                               // 000007B8: 2C363290
  v_lshrrev_b32  v28, 16, v21                               // 000007BC: 2C382A90
  v_lshlrev_b32  v29, 2, v28                                // 000007C0: 343A3882
  v_lshlrev_b32  v30, 2, v22                                // 000007C4: 343C2C82
  v_lshlrev_b32  v31, 2, v27                                // 000007C8: 343E3682
  v_lshlrev_b32  v32, 2, v26                                // 000007CC: 34403482
  v_add_i32     v29, vcc, 0x00000410, v29                   // 000007D0: 4A3A3AFF 00000410
  v_add_i32     v30, vcc, 0x00000410, v30                   // 000007D8: 4A3C3CFF 00000410
  v_add_i32     v31, vcc, 0x00000410, v31                   // 000007E0: 4A3E3EFF 00000410
  v_add_i32     v32, vcc, 0x00000410, v32                   // 000007E8: 4A4040FF 00000410
  v_ashrrev_i32  v37, 4, v29                                // 000007F0: 304A3A84
  v_and_b32     v38, 12, v29                                // 000007F4: 364C3A8C
  v_ashrrev_i32  v33, 4, v30                                // 000007F8: 30423C84
  v_and_b32     v34, 12, v30                                // 000007FC: 36443C8C
  v_ashrrev_i32  v39, 4, v31                                // 00000800: 304E3E84
  v_and_b32     v40, 12, v31                                // 00000804: 36503E8C
  v_ashrrev_i32  v35, 4, v32                                // 00000808: 30464084
  v_and_b32     v36, 12, v32                                // 0000080C: 3648408C
  s_waitcnt     lgkmcnt(0)                                  // 00000810: BF8C007F
  tbuffer_load_format_x  v29, v[37:38], s[8:11], 0 offen idxen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000814: EBA03000 80021D25
  tbuffer_load_format_x  v30, v[33:34], s[8:11], 0 offen idxen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000081C: EBA03000 80021E21
  tbuffer_load_format_x  v31, v[39:40], s[8:11], 0 offen idxen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000824: EBA03000 80021F27
  tbuffer_load_format_x  v32, v[35:36], s[8:11], 0 offen idxen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000082C: EBA03000 80022023
  v_bfe_i32     v28, v28, 1, 28                             // 00000834: D292001C 0271031C
  v_bfe_i32     v22, v22, 1, 28                             // 0000083C: D2920016 02710316
  v_bfe_i32     v27, v27, 1, 28                             // 00000844: D292001B 0271031B
  v_bfe_i32     v26, v26, 1, 28                             // 0000084C: D292001A 0271031A
  tbuffer_load_format_xyzw  v[33:36], v28, s[8:11], 0 idxen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 00000854: EBF32000 8002211C
  tbuffer_load_format_xyzw  v[37:40], v22, s[8:11], 0 idxen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 0000085C: EBF32000 80022516
  tbuffer_load_format_xyzw  v[41:44], v27, s[8:11], 0 idxen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 00000864: EBF32000 8002291B
  tbuffer_load_format_xyzw  v[45:48], v26, s[8:11], 0 idxen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 0000086C: EBF32000 80022D1A
  v_mov_b32     v22, s0                                     // 00000874: 7E2C0200
  v_lshrrev_b32  v65, 2, v22                                // 00000878: 2C822C82
  s_mov_b64     s[42:43], exec                              // 0000087C: BEAA047E
  s_cbranch_execz  label_0229                               // 00000880: BF880008
label_0221:
  v_readfirstlane_b32  s40, v65                             // 00000884: 7E500541
  s_mov_b32     m0, s40                                     // 00000888: BEFC0328
  s_mov_b64     s[44:45], exec                              // 0000088C: BEAC047E
  v_cmpx_eq_i32  s[46:47], s40, v65                         // 00000890: D124002E 00028228
  v_movrels_b32  v26, v67                                   // 00000898: 7E348743
  s_andn2_b64   exec, s[44:45], s[46:47]                    // 0000089C: 8AFE2E2C
  s_cbranch_execnz  label_0221                              // 000008A0: BF89FFF8
label_0229:
  s_mov_b64     exec, s[42:43]                              // 000008A4: BEFE042A
  v_lshrrev_b32  v65, 2, v22                                // 000008A8: 2C822C82
  v_mad_u32_u24  v65, v65, 1, 1                             // 000008AC: D2860041 02050341
  s_mov_b64     s[42:43], exec                              // 000008B4: BEAA047E
  s_cbranch_execz  label_0237                               // 000008B8: BF880008
label_022F:
  v_readfirstlane_b32  s40, v65                             // 000008BC: 7E500541
  s_mov_b32     m0, s40                                     // 000008C0: BEFC0328
  s_mov_b64     s[44:45], exec                              // 000008C4: BEAC047E
  v_cmpx_eq_i32  s[46:47], s40, v65                         // 000008C8: D124002E 00028228
  v_movrels_b32  v27, v67                                   // 000008D0: 7E368743
  s_andn2_b64   exec, s[44:45], s[46:47]                    // 000008D4: 8AFE2E2C
  s_cbranch_execnz  label_022F                              // 000008D8: BF89FFF8
label_0237:
  s_mov_b64     exec, s[42:43]                              // 000008DC: BEFE042A
  v_lshrrev_b32  v65, 2, v22                                // 000008E0: 2C822C82
  v_mad_u32_u24  v65, v65, 1, 2                             // 000008E4: D2860041 02090341
  s_mov_b64     s[42:43], exec                              // 000008EC: BEAA047E
  s_cbranch_execz  label_0245                               // 000008F0: BF880008
label_023D:
  v_readfirstlane_b32  s40, v65                             // 000008F4: 7E500541
  s_mov_b32     m0, s40                                     // 000008F8: BEFC0328
  s_mov_b64     s[44:45], exec                              // 000008FC: BEAC047E
  v_cmpx_eq_i32  s[46:47], s40, v65                         // 00000900: D124002E 00028228
  v_movrels_b32  v28, v67                                   // 00000908: 7E388743
  s_andn2_b64   exec, s[44:45], s[46:47]                    // 0000090C: 8AFE2E2C
  s_cbranch_execnz  label_023D                              // 00000910: BF89FFF8
label_0245:
  s_mov_b64     exec, s[42:43]                              // 00000914: BEFE042A
  v_lshrrev_b32  v65, 2, v22                                // 00000918: 2C822C82
  v_mad_u32_u24  v65, v65, 1, 3                             // 0000091C: D2860041 020D0341
  s_mov_b64     s[42:43], exec                              // 00000924: BEAA047E
  s_cbranch_execz  label_0253                               // 00000928: BF880008
label_024B:
  v_readfirstlane_b32  s40, v65                             // 0000092C: 7E500541
  s_mov_b32     m0, s40                                     // 00000930: BEFC0328
  s_mov_b64     s[44:45], exec                              // 00000934: BEAC047E
  v_cmpx_eq_i32  s[46:47], s40, v65                         // 00000938: D124002E 00028228
  v_movrels_b32  v22, v67                                   // 00000940: 7E2C8743
  s_andn2_b64   exec, s[44:45], s[46:47]                    // 00000944: 8AFE2E2C
  s_cbranch_execnz  label_024B                              // 00000948: BF89FFF8
label_0253:
  s_mov_b64     exec, s[42:43]                              // 0000094C: BEFE042A
  v_mov_b32     v49, 0x2f800000                             // 00000950: 7E6202FF 2F800000
  v_mad_f32     v1, v1, v49, -1.0                           // 00000958: D2820001 03CE6301
  v_mad_f32     v2, v2, v49, -1.0                           // 00000960: D2820002 03CE6302
  v_mad_f32     v3, v3, v49, -1.0                           // 00000968: D2820003 03CE6303
  v_mad_f32     v4, v4, v49, -1.0                           // 00000970: D2820004 03CE6304
  v_mov_b32     v49, 0x007fffff                             // 00000978: 7E6202FF 007FFFFF
  v_add_f32     v50, 2.0, v1                                // 00000980: 066402F4
  v_add_f32     v51, 2.0, v2                                // 00000984: 066604F4
  v_add_f32     v52, 2.0, v3                                // 00000988: 066806F4
  v_add_f32     v53, 2.0, v4                                // 0000098C: 066A08F4
  v_and_b32     v17, v49, v17                               // 00000990: 36222331
  v_and_b32     v18, v18, v49                               // 00000994: 36246312
  v_and_b32     v19, v19, v49                               // 00000998: 36266313
  v_and_b32     v20, v20, v49                               // 0000099C: 36286314
  v_rcp_f32     v49, v50                                    // 000009A0: 7E625532
  v_rcp_f32     v50, v51                                    // 000009A4: 7E645533
  v_rcp_f32     v51, v52                                    // 000009A8: 7E665534
  v_rcp_f32     v52, v53                                    // 000009AC: 7E685535
  v_or_b32      v53, 0.5, v23                               // 000009B0: 386A2EF0
  v_or_b32      v54, 0.5, v24                               // 000009B4: 386C30F0
  v_or_b32      v55, 0.5, v25                               // 000009B8: 386E32F0
  v_or_b32      v56, 0.5, v21                               // 000009BC: 38702AF0
  v_or_b32      v17, 0.5, v17                               // 000009C0: 382222F0
  v_or_b32      v18, 0.5, v18                               // 000009C4: 382424F0
  v_or_b32      v19, 0.5, v19                               // 000009C8: 382626F0
  v_or_b32      v20, 0.5, v20                               // 000009CC: 382828F0
  v_mul_f32     v57, v1, v49                                // 000009D0: 10726301
  v_mul_f32     v58, v2, v50                                // 000009D4: 10746502
  v_mul_f32     v59, v3, v51                                // 000009D8: 10766703
  v_mul_f32     v60, v4, v52                                // 000009DC: 10786904
  v_sub_f32     v17, v53, v17                               // 000009E0: 08222335
  v_sub_f32     v18, v54, v18                               // 000009E4: 08242536
  v_sub_f32     v19, v55, v19                               // 000009E8: 08262737
  v_sub_f32     v20, v56, v20                               // 000009EC: 08282938
  v_mov_b32     v53, 0xffffff81                             // 000009F0: 7E6A02FF FFFFFF81
  v_lshrrev_b32  v13, 23, v13                               // 000009F8: 2C1A1A97
  v_lshrrev_b32  v14, 23, v14                               // 000009FC: 2C1C1C97
  v_lshrrev_b32  v15, 23, v15                               // 00000A00: 2C1E1E97
  v_lshrrev_b32  v16, 23, v16                               // 00000A04: 2C202097
  v_mov_b32     v54, 0xffffff03                             // 00000A08: 7E6C02FF FFFFFF03
  v_mad_f32     v49, v1, v49, v57                           // 00000A10: D2820031 04E66301
  v_mad_f32     v50, v2, v50, v58                           // 00000A18: D2820032 04EA6502
  v_mad_f32     v51, v3, v51, v59                           // 00000A20: D2820033 04EE6703
  v_mad_f32     v52, v4, v52, v60                           // 00000A28: D2820034 04F26904
  s_waitcnt     vmcnt(6)                                    // 00000A30: BF8C1F76
  v_mul_f32     v17, v30, v17                               // 00000A34: 1022231E
  s_waitcnt     vmcnt(4)                                    // 00000A38: BF8C1F74
  v_mul_f32     v18, v32, v18                               // 00000A3C: 10242520
  v_mul_f32     v19, v31, v19                               // 00000A40: 1026271F
  v_mul_f32     v20, v29, v20                               // 00000A44: 1028291D
  v_mov_b32     v29, 0x3eaaaaab                             // 00000A48: 7E3A02FF 3EAAAAAB
  v_add_i32     v9, vcc, v53, v9                            // 00000A50: 4A121335
  v_add_i32     v10, vcc, v53, v10                          // 00000A54: 4A141535
  v_add_i32     v11, vcc, v53, v11                          // 00000A58: 4A161735
  v_add_i32     v12, vcc, v53, v12                          // 00000A5C: 4A181935
  v_add_i32     v13, vcc, v54, v13                          // 00000A60: 4A1A1B36
  v_add_i32     v14, vcc, v54, v14                          // 00000A64: 4A1C1D36
  v_add_i32     v15, vcc, v54, v15                          // 00000A68: 4A1E1F36
  v_add_i32     v16, vcc, v54, v16                          // 00000A6C: 4A202136
  v_mul_f32     v30, v49, v49                               // 00000A70: 103C6331
  v_mul_f32     v31, v50, v50                               // 00000A74: 103E6532
  v_mul_f32     v32, v51, v51                               // 00000A78: 10406733
  v_mul_f32     v53, v52, v52                               // 00000A7C: 106A6934
  v_mad_f32     v54, v17, v29, 0.5                          // 00000A80: D2820036 03C23B11
  v_mad_f32     v55, v18, v29, 0.5                          // 00000A88: D2820037 03C23B12
  v_mad_f32     v56, v19, v29, 0.5                          // 00000A90: D2820038 03C23B13
  v_mad_f32     v29, v20, v29, 0.5                          // 00000A98: D282001D 03C23B14
  v_mul_f32     v61, v17, v17                               // 00000AA0: 107A2311
  v_mul_f32     v62, v18, v18                               // 00000AA4: 107C2512
  v_mul_f32     v63, v19, v19                               // 00000AA8: 107E2713
  v_mul_f32     v64, v20, v20                               // 00000AAC: 10802914
  v_cndmask_b32  v9, v9, v13, s[12:13]                      // 00000AB0: D2000009 00321B09
  v_cndmask_b32  v10, v10, v14, s[22:23]                    // 00000AB8: D200000A 005A1D0A
  v_cndmask_b32  v11, v11, v15, s[20:21]                    // 00000AC0: D200000B 00521F0B
  v_cndmask_b32  v12, v12, v16, s[2:3]                      // 00000AC8: D200000C 000A210C
  v_bfe_u32     v13, v21, 16, 1                             // 00000AD0: D290000D 02052115
  v_bfe_u32     v14, v23, 16, 1                             // 00000AD8: D290000E 02052117
  v_bfe_u32     v15, v25, 16, 1                             // 00000AE0: D290000F 02052119
  v_bfe_u32     v16, v24, 16, 1                             // 00000AE8: D2900010 02052118
  v_mul_f32     v21, 0x3c4ccccd, v30                        // 00000AF0: 102A3CFF 3C4CCCCD
  v_mul_f32     v23, 0x3c4ccccd, v31                        // 00000AF8: 102E3EFF 3C4CCCCD
  v_mul_f32     v24, 0x3c4ccccd, v32                        // 00000B00: 103040FF 3C4CCCCD
  v_mul_f32     v25, 0x3c4ccccd, v53                        // 00000B08: 10326AFF 3C4CCCCD
  v_mac_f32     v17, v54, v61                               // 00000B10: 3E227B36
  v_mac_f32     v18, v55, v62                               // 00000B14: 3E247D37
  v_mac_f32     v19, v56, v63                               // 00000B18: 3E267F38
  v_mac_f32     v20, v29, v64                               // 00000B1C: 3E28811D
  v_cvt_f32_i32  v9, v9                                     // 00000B20: 7E120B09
  v_cvt_f32_i32  v10, v10                                   // 00000B24: 7E140B0A
  v_cvt_f32_i32  v11, v11                                   // 00000B28: 7E160B0B
  v_cvt_f32_i32  v12, v12                                   // 00000B2C: 7E180B0C
  v_mov_b32     v29, 0x3805fdf4                             // 00000B30: 7E3A02FF 3805FDF4
  v_cmp_eq_i32  s[2:3], v13, 0                              // 00000B38: D1040002 0001010D
  v_cmp_eq_i32  s[12:13], v14, 0                            // 00000B40: D104000C 0001010E
  v_cmp_eq_i32  s[20:21], v15, 0                            // 00000B48: D1040014 0001010F
  v_cmp_eq_i32  vcc, 0, v16                                 // 00000B50: 7D042080
  v_add_f32     v13, 0x3daaaaab, v21                        // 00000B54: 061A2AFF 3DAAAAAB
  v_add_f32     v14, 0x3daaaaab, v23                        // 00000B5C: 061C2EFF 3DAAAAAB
  v_add_f32     v15, 0x3daaaaab, v24                        // 00000B64: 061E30FF 3DAAAAAB
  v_add_f32     v16, 0x3daaaaab, v25                        // 00000B6C: 062032FF 3DAAAAAB
  v_mad_f32     v17, v9, v29, -v17                          // 00000B74: D2820011 84463B09
  v_mad_f32     v18, v10, v29, -v18                         // 00000B7C: D2820012 844A3B0A
  v_mad_f32     v19, v11, v29, -v19                         // 00000B84: D2820013 844E3B0B
  v_mad_f32     v20, v12, v29, -v20                         // 00000B8C: D2820014 84523B0C
  s_waitcnt     vmcnt(3)                                    // 00000B94: BF8C1F73
  v_cndmask_b32  v21, v35, v33, s[2:3]                      // 00000B98: D2000015 000A4323
  v_cndmask_b32  v23, v36, v34, s[2:3]                      // 00000BA0: D2000017 000A4524
  s_waitcnt     vmcnt(2)                                    // 00000BA8: BF8C1F72
  v_cndmask_b32  v24, v39, v37, s[12:13]                    // 00000BAC: D2000018 00324B27
  v_cndmask_b32  v25, v40, v38, s[12:13]                    // 00000BB4: D2000019 00324D28
  s_waitcnt     vmcnt(1)                                    // 00000BBC: BF8C1F71
  v_cndmask_b32  v29, v43, v41, s[20:21]                    // 00000BC0: D200001D 0052532B
  v_cndmask_b32  v33, v44, v42, s[20:21]                    // 00000BC8: D2000021 0052552C
  s_waitcnt     vmcnt(0)                                    // 00000BD0: BF8C1F70
  v_cndmask_b32  v34, v47, v45, vcc                         // 00000BD4: 00445B2F
  v_cndmask_b32  v35, v48, v46, vcc                         // 00000BD8: 00465D30
  v_mov_b32     v36, 0x3f317000                             // 00000BDC: 7E4802FF 3F317000
  v_mul_f32     v13, v30, v13                               // 00000BE4: 101A1B1E
  v_mul_f32     v14, v31, v14                               // 00000BE8: 101C1D1F
  v_mul_f32     v15, v32, v15                               // 00000BEC: 101E1F20
  v_mul_f32     v16, v53, v16                               // 00000BF0: 10202135
  v_mul_f32     v30, v1, v57                                // 00000BF4: 103C7301
  v_mul_f32     v31, v2, v58                                // 00000BF8: 103E7502
  v_mul_f32     v32, v3, v59                                // 00000BFC: 10407703
  v_mul_f32     v37, v4, v60                                // 00000C00: 104A7904
  v_add_f32     v17, v17, v25                               // 00000C04: 06223311
  v_add_f32     v18, v18, v35                               // 00000C08: 06244712
  v_add_f32     v19, v19, v33                               // 00000C0C: 06264313
  v_add_f32     v20, v20, v23                               // 00000C10: 06282F14
  v_mac_f32     v24, v9, v36                                // 00000C14: 3E304909
  v_mac_f32     v34, v10, v36                               // 00000C18: 3E44490A
  v_mac_f32     v29, v11, v36                               // 00000C1C: 3E3A490B
  v_mac_f32     v21, v12, v36                               // 00000C20: 3E2A490C
  v_mad_f32     v30, v49, v13, -v30                         // 00000C24: D282001E 847A1B31
  v_mad_f32     v31, v50, v14, -v31                         // 00000C2C: D282001F 847E1D32
  v_mad_f32     v32, v51, v15, -v32                         // 00000C34: D2820020 84821F33
  v_mad_f32     v37, v52, v16, -v37                         // 00000C3C: D2820025 84962134
  v_mov_b32     v9, 0x3d800000                              // 00000C44: 7E1202FF 3D800000
  v_mov_b32     v10, 0x7fffffff                             // 00000C4C: 7E1402FF 7FFFFFFF
  v_add_f32     v11, v17, v24                               // 00000C54: 06163111
  v_add_f32     v12, v18, v34                               // 00000C58: 06184512
  v_add_f32     v13, v19, v29                               // 00000C5C: 061A3B13
  v_add_f32     v14, v20, v21                               // 00000C60: 061C2B14
  v_add_f32     v15, v1, v30                                // 00000C64: 061E3D01
  v_add_f32     v16, v2, v31                                // 00000C68: 06203F02
  v_add_f32     v17, v3, v32                                // 00000C6C: 06224103
  v_add_f32     v18, v4, v37                                // 00000C70: 06244B04
  v_cmp_gt_f32  s[2:3], v9, abs(v4)                         // 00000C74: D0080202 00020909
  v_cmp_gt_f32  s[12:13], v9, abs(v1)                       // 00000C7C: D008020C 00020309
  v_cmp_gt_f32  s[20:21], v9, abs(v3)                       // 00000C84: D0080214 00020709
  v_cmp_gt_f32  vcc, v9, abs(v2)                            // 00000C8C: D008026A 00020509
  v_and_b32     v1, v10, v6                                 // 00000C94: 36020D0A
  v_and_b32     v2, v10, v7                                 // 00000C98: 36040F0A
  v_and_b32     v3, v10, v8                                 // 00000C9C: 3606110A
  v_and_b32     v4, v10, v5                                 // 00000CA0: 36080B0A
  v_mov_b32     v9, 0x7f7fffff                              // 00000CA4: 7E1202FF 7F7FFFFF
  v_cvt_f32_u32  v10, v26                                   // 00000CAC: 7E140D1A
  v_cvt_f32_u32  v19, v27                                   // 00000CB0: 7E260D1B
  v_cvt_f32_u32  v20, v28                                   // 00000CB4: 7E280D1C
  v_cvt_f32_u32  v21, v22                                   // 00000CB8: 7E2A0D16
  v_mov_b32     v23, 0x2f800000                             // 00000CBC: 7E2E02FF 2F800000
  v_cndmask_b32  v11, v11, v15, s[12:13]                    // 00000CC4: D200000B 00321F0B
  v_cndmask_b32  v12, v12, v16, vcc                         // 00000CCC: 0018210C
  v_cndmask_b32  v13, v13, v17, s[20:21]                    // 00000CD0: D200000D 0052230D
  v_cndmask_b32  v14, v14, v18, s[2:3]                      // 00000CD8: D200000E 000A250E
  v_cmp_gt_u32  s[2:3], v4, v9                              // 00000CE0: D1880002 00021304
  v_cmp_gt_u32  s[12:13], v1, v9                            // 00000CE8: D188000C 00021301
  v_cmp_gt_u32  s[20:21], v3, v9                            // 00000CF0: D1880014 00021303
  v_cmp_gt_u32  vcc, v2, v9                                 // 00000CF8: 7D881302
  v_mul_f32     v9, v23, v10                                // 00000CFC: 10121517
  v_mul_f32     v10, v19, v23                               // 00000D00: 10142F13
  v_mul_f32     v15, v20, v23                               // 00000D04: 101E2F14
  v_mul_f32     v16, v21, v23                               // 00000D08: 10202F15
  v_mov_b32     v17, 0x40c90fdb                             // 00000D0C: 7E2202FF 40C90FDB
  v_cndmask_b32  v11, v11, v6, s[12:13]                     // 00000D14: D200000B 00320D0B
  v_cndmask_b32  v12, v12, v7, vcc                          // 00000D1C: 00180F0C
  v_cndmask_b32  v13, v13, v8, s[20:21]                     // 00000D20: D200000D 0052110D
  v_cndmask_b32  v14, v14, v5, s[2:3]                       // 00000D28: D200000E 000A0B0E
  v_cmp_ne_i32  s[2:3], v5, v4                              // 00000D30: D10A0002 00020905
  v_cmp_ne_i32  s[12:13], v6, v1                            // 00000D38: D10A000C 00020306
  v_cmp_ne_i32  s[20:21], v8, v3                            // 00000D40: D10A0014 00020708
  v_cmp_ne_i32  vcc, v7, v2                                 // 00000D48: 7D0A0507
  v_mov_b32     v5, 0x7fc00000                              // 00000D4C: 7E0A02FF 7FC00000
  v_mul_f32     v6, v17, v9                                 // 00000D54: 100C1311
  v_mul_f32     v7, v10, v17                                // 00000D58: 100E230A
  v_mul_f32     v8, v15, v17                                // 00000D5C: 1010230F
  v_mul_f32     v9, v16, v17                                // 00000D60: 10122310
  v_mov_b32     v10, 0x7fffffff                             // 00000D64: 7E1402FF 7FFFFFFF
  v_cndmask_b32  v11, v11, v5, s[12:13]                     // 00000D6C: D200000B 00320B0B
  v_cndmask_b32  v12, v12, v5, vcc                          // 00000D74: 00180B0C
  v_cndmask_b32  v13, v13, v5, s[20:21]                     // 00000D78: D200000D 00520B0D
  v_cndmask_b32  v5, v14, v5, s[2:3]                        // 00000D80: D2000005 000A0B0E
  v_cmp_eq_i32  s[2:3], v4, 0                               // 00000D88: D1040002 00010104
  v_cmp_eq_i32  s[12:13], v1, 0                             // 00000D90: D104000C 00010101
  v_cmp_eq_i32  s[20:21], v3, 0                             // 00000D98: D1040014 00010103
  v_cmp_eq_i32  vcc, 0, v2                                  // 00000DA0: 7D040480
  v_mov_b32     v1, 0xff800000                              // 00000DA4: 7E0202FF FF800000
  v_and_b32     v2, v10, v6                                 // 00000DAC: 36040D0A
  v_and_b32     v3, v10, v7                                 // 00000DB0: 36060F0A
  v_and_b32     v4, v10, v8                                 // 00000DB4: 3608110A
  v_and_b32     v10, v10, v9                                // 00000DB8: 3614130A
  v_mov_b32     v14, 0x4b000000                             // 00000DBC: 7E1C02FF 4B000000
  v_cndmask_b32  v11, v11, v1, s[12:13]                     // 00000DC4: D200000B 0032030B
  v_cndmask_b32  v12, v12, v1, vcc                          // 00000DCC: 0018030C
  v_cndmask_b32  v13, v13, v1, s[20:21]                     // 00000DD0: D200000D 0052030D
  v_cndmask_b32  v1, v5, v1, s[2:3]                         // 00000DD8: D2000001 000A0305
  v_cmp_lt_f32  s[2:3], v10, v14                            // 00000DE0: D0020002 00021D0A
  v_cmp_lt_f32  s[12:13], v2, v14                           // 00000DE8: D002000C 00021D02
  v_cmp_lt_f32  s[20:21], v4, v14                           // 00000DF0: D0020014 00021D04
  v_cmp_lt_f32  s[22:23], v3, v14                           // 00000DF8: D0020016 00021D03
  v_mul_f32     v5, -2.0, v11                               // 00000E00: 100A16F5
  v_mul_f32     v11, -2.0, v12                              // 00000E04: 101618F5
  v_mul_f32     v12, -2.0, v13                              // 00000E08: 10181AF5
  v_mul_f32     v1, -2.0, v1                                // 00000E0C: 100202F5
  s_and_b64     s[12:13], s[12:13], s[20:21]                // 00000E10: 878C140C
  s_and_b64     vcc, s[22:23], s[2:3]                       // 00000E14: 87EA0216
  v_sqrt_f32    v5, v5                                      // 00000E18: 7E0A6705
  v_sqrt_f32    v11, v11                                    // 00000E1C: 7E16670B
  v_sqrt_f32    v12, v12                                    // 00000E20: 7E18670C
  v_sqrt_f32    v1, v1                                      // 00000E24: 7E026701
  s_and_b64     s[2:3], s[12:13], vcc                       // 00000E28: 87826A0C
  s_mov_b64     s[12:13], exec                              // 00000E2C: BE8C047E
  s_andn2_b64   exec, s[12:13], s[2:3]                      // 00000E30: 8AFE020C
  s_cbranch_execz  label_0802                               // 00000E34: BF880474
  s_mov_b32     s15, 0x4b000000                             // 00000E38: BE8F03FF 4B000000
  v_cmp_nlt_f32  s[20:21], v2, s15                          // 00000E40: D01C0014 00001F02
  s_and_saveexec_b64  s[20:21], s[20:21]                    // 00000E48: BE942414
  v_and_b32     v13, 0x007fffff, v6                         // 00000E4C: 361A0CFF 007FFFFF
  s_cbranch_execz  label_0479                               // 00000E54: BF8800E3
  v_or_b32      v13, 0x00800000, v13                        // 00000E58: 381A1AFF 00800000
  s_mov_b32     s15, 0xfe5163ab                             // 00000E60: BE8F03FF FE5163AB
  s_mov_b32     s22, 0x3c439041                             // 00000E68: BE9603FF 3C439041
  v_mul_hi_u32  v14, v13, s15                               // 00000E70: D2D4000E 02001F0D
  v_mul_lo_u32  v15, v13, s22                               // 00000E78: D2D2000F 02002D0D
  v_add_i32     v15, vcc, v14, v15                          // 00000E80: 4A1E1F0E
  s_mov_b32     s15, 0xdb629599                             // 00000E84: BE8F03FF DB629599
  v_cmp_gt_u32  s[24:25], v14, v15                          // 00000E8C: D1880018 00021F0E
  v_mul_hi_u32  v14, v13, s22                               // 00000E94: D2D4000E 02002D0D
  v_mul_lo_u32  v16, v13, s15                               // 00000E9C: D2D20010 02001F0D
  v_addc_u32    v17, vcc, v14, 0, s[24:25]                  // 00000EA4: D2506A11 0061010E
  v_addc_u32    v14, vcc, v14, v16, s[24:25]                // 00000EAC: D2506A0E 0062210E
  s_mov_b32     s22, 0xf534ddc0                             // 00000EB4: BE9603FF F534DDC0
  v_lshrrev_b32  v16, 23, v2                                // 00000EBC: 2C200497
  v_cmp_gt_u32  s[24:25], v17, v14                          // 00000EC0: D1880018 00021D11
  v_mul_hi_u32  v17, v13, s15                               // 00000EC8: D2D40011 02001F0D
  v_mul_lo_u32  v18, v13, s22                               // 00000ED0: D2D20012 02002D0D
  v_add_i32     v16, vcc, 0xffffff88, v16                   // 00000ED8: 4A2020FF FFFFFF88
  v_addc_u32    v19, vcc, v17, 0, s[24:25]                  // 00000EE0: D2506A13 00610111
  v_addc_u32    v17, vcc, v17, v18, s[24:25]                // 00000EE8: D2506A11 00622511
  s_mov_b32     s15, 0xfc2757d1                             // 00000EF0: BE8F03FF FC2757D1
  v_cmp_gt_u32  s[24:25], v16, 31                           // 00000EF8: D1880018 00013F10
  v_mov_b32     v18, 0xffffffe0                             // 00000F00: 7E2402FF FFFFFFE0
  v_cmp_gt_u32  s[26:27], v19, v17                          // 00000F08: D188001A 00022313
  v_mul_hi_u32  v19, v13, s22                               // 00000F10: D2D40013 02002D0D
  v_mul_lo_u32  v20, v13, s15                               // 00000F18: D2D20014 02001F0D
  v_cndmask_b32  v21, 0, v18, s[24:25]                      // 00000F20: D2000015 00622480
  v_addc_u32    v23, vcc, v19, 0, s[26:27]                  // 00000F28: D2506A17 00690113
  v_addc_u32    v19, vcc, v19, v20, s[26:27]                // 00000F30: D2506A13 006A2913
  s_mov_b32     s22, 0x4e441529                             // 00000F38: BE9603FF 4E441529
  v_add_i32     v16, vcc, v16, v21                          // 00000F40: 4A202B10
  v_cmp_gt_u32  s[26:27], v23, v19                          // 00000F44: D188001A 00022717
  v_mul_hi_u32  v20, v13, s15                               // 00000F4C: D2D40014 02001F0D
  v_mul_lo_u32  v21, v13, s22                               // 00000F54: D2D20015 02002D0D
  v_cmp_gt_u32  s[28:29], v16, 31                           // 00000F5C: D188001C 00013F10
  v_addc_u32    v23, vcc, v20, 0, s[26:27]                  // 00000F64: D2506A17 00690114
  v_addc_u32    v20, vcc, v20, v21, s[26:27]                // 00000F6C: D2506A14 006A2B14
  s_mov_b32     s15, 0xa2f9836e                             // 00000F74: BE8F03FF A2F9836E
  v_cndmask_b32  v21, 0, v18, s[28:29]                      // 00000F7C: D2000015 00722480
  v_cmp_gt_u32  s[26:27], v23, v20                          // 00000F84: D188001A 00022917
  v_mul_hi_u32  v23, v13, s22                               // 00000F8C: D2D40017 02002D0D
  v_mul_lo_u32  v24, v13, s15                               // 00000F94: D2D20018 02001F0D
  v_add_i32     v16, vcc, v16, v21                          // 00000F9C: 4A202B10
  v_addc_u32    v21, vcc, v23, 0, s[26:27]                  // 00000FA0: D2506A15 00690117
  v_addc_u32    v23, vcc, v23, v24, s[26:27]                // 00000FA8: D2506A17 006A3117
  v_cmp_gt_u32  s[22:23], v16, 31                           // 00000FB0: D1880016 00013F10
  v_cmp_gt_u32  s[26:27], v21, v23                          // 00000FB8: D188001A 00022F15
  v_mul_hi_u32  v21, v13, s15                               // 00000FC0: D2D40015 02001F0D
  v_cndmask_b32  v18, 0, v18, s[22:23]                      // 00000FC8: D2000012 005A2480
  v_addc_u32    v21, vcc, v21, 0, s[26:27]                  // 00000FD0: D2506A15 00690115
  v_add_i32     v16, vcc, v16, v18                          // 00000FD8: 4A202510
  v_cndmask_b32  v18, v21, v23, s[24:25]                    // 00000FDC: D2000012 00622F15
  v_cndmask_b32  v21, v23, v20, s[24:25]                    // 00000FE4: D2000015 00622917
  v_cndmask_b32  v20, v20, v19, s[24:25]                    // 00000FEC: D2000014 00622714
  v_cndmask_b32  v19, v19, v17, s[24:25]                    // 00000FF4: D2000013 00622313
  v_cmp_gt_u32  s[26:27], v16, 31                           // 00000FFC: D188001A 00013F10
  v_cndmask_b32  v17, v17, v14, s[24:25]                    // 00001004: D2000011 00621D11
  v_cndmask_b32  v18, v18, v21, s[28:29]                    // 0000100C: D2000012 00722B12
  v_cndmask_b32  v21, v21, v20, s[28:29]                    // 00001014: D2000015 00722915
  v_cndmask_b32  v20, v20, v19, s[28:29]                    // 0000101C: D2000014 00722714
  v_cndmask_b32  v19, v19, v17, s[28:29]                    // 00001024: D2000013 00722313
  v_cndmask_b32  v23, 0, 32, s[26:27]                       // 0000102C: D2000017 00694080
  v_cndmask_b32  v18, v18, v21, s[22:23]                    // 00001034: D2000012 005A2B12
  v_cndmask_b32  v21, v21, v20, s[22:23]                    // 0000103C: D2000015 005A2915
  v_cndmask_b32  v14, v14, v15, s[24:25]                    // 00001044: D200000E 00621F0E
  v_cndmask_b32  v20, v20, v19, s[22:23]                    // 0000104C: D2000014 005A2714
  v_sub_i32     v24, vcc, v23, v16                          // 00001054: 4C302117
  v_cndmask_b32  v18, v18, v21, s[26:27]                    // 00001058: D2000012 006A2B12
  v_cndmask_b32  v17, v17, v14, s[28:29]                    // 00001060: D2000011 00721D11
  v_cndmask_b32  v21, v21, v20, s[26:27]                    // 00001068: D2000015 006A2915
  s_mov_b32     s15, 0xfe5163ab                             // 00001070: BE8F03FF FE5163AB
  v_add_i32     v24, vcc, 32, v24                           // 00001078: 4A3030A0
  v_cndmask_b32  v19, v19, v17, s[22:23]                    // 0000107C: D2000013 005A2313
  v_mul_lo_i32  v13, v13, s15                               // 00001084: D2D6000D 02001F0D
  v_cmp_ne_i32  vcc, v16, v23                               // 0000108C: 7D0A2F10
  v_alignbit_b32  v16, v18, v21, v24                        // 00001090: D29C0010 04622B12
  v_cndmask_b32  v20, v20, v19, s[26:27]                    // 00001098: D2000014 006A2714
  v_cndmask_b32  v13, v15, v13, s[24:25]                    // 000010A0: D200000D 00621B0F
  v_cndmask_b32  v15, v18, v16, vcc                         // 000010A8: 001E2112
  v_cndmask_b32  v13, v14, v13, s[28:29]                    // 000010AC: D200000D 00721B0E
  v_alignbit_b32  v14, v21, v20, v24                        // 000010B4: D29C000E 04622915
  v_bfe_u32     v16, v15, 29, 1                             // 000010BC: D2900010 02053B0F
  v_cndmask_b32  v13, v17, v13, s[22:23]                    // 000010C4: D200000D 005A1B11
  v_cndmask_b32  v14, v21, v14, vcc                         // 000010CC: 001C1D15
  v_cmp_ne_i32  s[22:23], v16, 0                            // 000010D0: D10A0016 00010110
  v_cndmask_b32  v13, v19, v13, s[26:27]                    // 000010D8: D200000D 006A1B13
  v_alignbit_b32  v17, v15, v14, 30                         // 000010E0: D29C0011 027A1D0F
  v_cndmask_b32  v18, 0, -1, s[22:23]                       // 000010E8: D2000012 00598280
  v_alignbit_b32  v19, v20, v13, v24                        // 000010F0: D29C0013 04621B14
  v_xor_b32     v21, v17, v18                               // 000010F8: 3A2A2511
  v_cndmask_b32  v19, v20, v19, vcc                         // 000010FC: 00262714
  v_ffbh_u32    v20, v21                                    // 00001100: 7E287315
  v_cmp_ne_i32  vcc, v17, v18                               // 00001104: 7D0A2511
  v_alignbit_b32  v14, v14, v19, 30                         // 00001108: D29C000E 027A270E
  v_alignbit_b32  v13, v19, v13, 30                         // 00001110: D29C000D 027A1B13
  v_cndmask_b32  v17, 32, v20, vcc                          // 00001118: 002228A0
  v_sub_i32     v19, vcc, 31, v17                           // 0000111C: 4C26229F
  v_xor_b32     v13, v13, v18                               // 00001120: 3A1A250D
  v_xor_b32     v14, v14, v18                               // 00001124: 3A1C250E
  v_sub_i32     v18, vcc, 0, v17                            // 00001128: 4C242280
  v_alignbit_b32  v13, v14, v13, v19                        // 0000112C: D29C000D 044E1B0E
  v_alignbit_b32  v14, v21, v14, v19                        // 00001134: D29C000E 044E1D15
  v_lshlrev_b32  v19, 2, v15                                // 0000113C: 34261E82
  v_alignbit_b32  v20, v14, v13, 9                          // 00001140: D29C0014 02261B0E
  v_lshlrev_b32  v18, 23, v18                               // 00001148: 34242497
  v_and_b32     v19, 0x80000000, v19                        // 0000114C: 362626FF 80000000
  v_add_i32     v18, vcc, 0.5, v18                          // 00001154: 4A2424F0
  v_ffbh_u32    v21, v20                                    // 00001158: 7E2A7314
  v_cmp_ne_i32  vcc, 0, v20                                 // 0000115C: 7D0A2880
  v_lshrrev_b32  v14, 9, v14                                // 00001160: 2C1C1C89
  v_or_b32      v18, v19, v18                               // 00001164: 38242513
  v_cndmask_b32  v21, 32, v21, vcc                          // 00001168: 002A2AA0
  v_sub_i32     v17, vcc, 0x00000066, v17                   // 0000116C: 4C2222FF 00000066
  v_or_b32      v14, v14, v18                               // 00001174: 381C250E
  v_sub_i32     v18, vcc, 31, v21                           // 00001178: 4C242A9F
  v_sub_i32     v17, vcc, v17, v21                          // 0000117C: 4C222B11
  v_alignbit_b32  v13, v20, v13, v18                        // 00001180: D29C000D 044A1B14
  v_lshlrev_b32  v17, 23, v17                               // 00001188: 34222297
  v_mul_f32     v18, 0x3fc90fda, v14                        // 0000118C: 10241CFF 3FC90FDA
  s_mov_b32     s15, 0x3fc90fda                             // 00001194: BE8F03FF 3FC90FDA
  v_lshrrev_b32  v13, 9, v13                                // 0000119C: 2C1A1A89
  v_or_b32      v17, v19, v17                               // 000011A0: 38222313
  v_fma_f32     v18, v14, s15, -v18                         // 000011A4: D2960012 84481F0E
  s_mov_b32     s22, 0x33a22168                             // 000011AC: BE9603FF 33A22168
  v_or_b32      v13, v13, v17                               // 000011B4: 381A230D
  v_fma_f32     v17, v14, s22, v18                          // 000011B8: D2960011 04482D0E
  v_fma_f32     v13, v13, s15, v17                          // 000011C0: D296000D 04441F0D
  v_mad_f32     v60, v14, s15, v13                          // 000011C8: D282003C 04341F0E
  v_lshrrev_b32  v15, 30, v15                               // 000011D0: 2C1E1E9E
  v_mad_f32     v14, -v14, s15, v60                         // 000011D4: D282000E 24F01F0E
  v_add_i32     v16, vcc, v16, v15                          // 000011DC: 4A201F10
  v_sub_f32     v13, v13, v14                               // 000011E0: 081A1D0D
label_0479:
  s_andn2_b64   exec, s[20:21], exec                        // 000011E4: 8AFE7E14
  s_cbranch_execz  label_04A9                               // 000011E8: BF88002E
  s_mov_b32     s15, 0x3f22f983                             // 000011EC: BE8F03FF 3F22F983
  v_mad_f32     v13, v2, s15, 0.5                           // 000011F4: D282000D 03C01F02
  v_trunc_f32   v13, v13                                    // 000011FC: 7E1A430D
  v_mul_f32     v14, 0x3fc90fda, v13                        // 00001200: 101C1AFF 3FC90FDA
  s_mov_b32     s15, 0x3fc90fda                             // 00001208: BE8F03FF 3FC90FDA
  v_fma_f32     v14, v13, s15, -v14                         // 00001210: D296000E 84381F0D
  v_mad_f32     v15, -v13, s15, v2                          // 00001218: D282000F 24081F0D
  v_sub_f32     v16, v2, v15                                // 00001220: 08201F02
  v_mad_f32     v16, -v13, s15, v16                         // 00001224: D2820010 24401F0D
  v_subrev_f32  v14, v14, v16                               // 0000122C: 0A1C210E
  v_add_f32     v14, v15, v14                               // 00001230: 061C1D0F
  v_mul_f32     v15, 0x33a22168, v13                        // 00001234: 101E1AFF 33A22168
  s_mov_b32     s15, 0x33a22168                             // 0000123C: BE8F03FF 33A22168
  v_fma_f32     v15, v13, s15, -v15                         // 00001244: D296000F 843C1F0D
  v_mad_f32     v16, -v13, s15, v14                         // 0000124C: D2820010 24381F0D
  v_sub_f32     v14, v14, v16                               // 00001254: 081C210E
  v_mad_f32     v14, -v13, s15, v14                         // 00001258: D282000E 24381F0D
  v_subrev_f32  v14, v15, v14                               // 00001260: 0A1C1D0F
  v_add_f32     v14, v16, v14                               // 00001264: 061C1D10
  v_mul_f32     v15, 0x27c234c4, v13                        // 00001268: 101E1AFF 27C234C4
  s_mov_b32     s15, 0x27c234c4                             // 00001270: BE8F03FF 27C234C4
  v_fma_f32     v15, v13, s15, -v15                         // 00001278: D296000F 843C1F0D
  v_mad_f32     v16, -v13, s15, v14                         // 00001280: D2820010 24381F0D
  v_sub_f32     v14, v14, v16                               // 00001288: 081C210E
  v_mad_f32     v14, -v13, s15, v14                         // 0000128C: D282000E 24381F0D
  v_add_f32     v60, v16, v14                               // 00001294: 06781D10
  v_cvt_i32_f32  v16, v13                                   // 00001298: 7E20110D
  v_max_f32     v13, -v15, -v15                             // 0000129C: D220000D 60021F0F
label_04A9:
  s_mov_b64     exec, s[20:21]                              // 000012A4: BEFE0414
  s_mov_b32     s15, 0x4b000000                             // 000012A8: BE8F03FF 4B000000
  v_cmp_nlt_f32  s[20:21], v3, s15                          // 000012B0: D01C0014 00001F03
  v_and_b32     v57, 3, v16                                 // 000012B8: 36722083
  s_and_saveexec_b64  s[20:21], s[20:21]                    // 000012BC: BE942414
  v_and_b32     v16, 0x007fffff, v7                         // 000012C0: 36200EFF 007FFFFF
  s_cbranch_execz  label_0596                               // 000012C8: BF8800E3
  v_or_b32      v16, 0x00800000, v16                        // 000012CC: 382020FF 00800000
  s_mov_b32     s15, 0xfe5163ab                             // 000012D4: BE8F03FF FE5163AB
  s_mov_b32     s22, 0x3c439041                             // 000012DC: BE9603FF 3C439041
  v_mul_hi_u32  v17, v16, s15                               // 000012E4: D2D40011 02001F10
  v_mul_lo_u32  v18, v16, s22                               // 000012EC: D2D20012 02002D10
  v_add_i32     v18, vcc, v17, v18                          // 000012F4: 4A242511
  s_mov_b32     s15, 0xdb629599                             // 000012F8: BE8F03FF DB629599
  v_cmp_gt_u32  s[24:25], v17, v18                          // 00001300: D1880018 00022511
  v_mul_hi_u32  v17, v16, s22                               // 00001308: D2D40011 02002D10
  v_mul_lo_u32  v19, v16, s15                               // 00001310: D2D20013 02001F10
  v_addc_u32    v20, vcc, v17, 0, s[24:25]                  // 00001318: D2506A14 00610111
  v_addc_u32    v17, vcc, v17, v19, s[24:25]                // 00001320: D2506A11 00622711
  s_mov_b32     s22, 0xf534ddc0                             // 00001328: BE9603FF F534DDC0
  v_lshrrev_b32  v19, 23, v3                                // 00001330: 2C260697
  v_cmp_gt_u32  s[24:25], v20, v17                          // 00001334: D1880018 00022314
  v_mul_hi_u32  v20, v16, s15                               // 0000133C: D2D40014 02001F10
  v_mul_lo_u32  v21, v16, s22                               // 00001344: D2D20015 02002D10
  v_add_i32     v19, vcc, 0xffffff88, v19                   // 0000134C: 4A2626FF FFFFFF88
  v_addc_u32    v23, vcc, v20, 0, s[24:25]                  // 00001354: D2506A17 00610114
  v_addc_u32    v20, vcc, v20, v21, s[24:25]                // 0000135C: D2506A14 00622B14
  s_mov_b32     s15, 0xfc2757d1                             // 00001364: BE8F03FF FC2757D1
  v_cmp_gt_u32  s[24:25], v19, 31                           // 0000136C: D1880018 00013F13
  v_mov_b32     v21, 0xffffffe0                             // 00001374: 7E2A02FF FFFFFFE0
  v_cmp_gt_u32  s[26:27], v23, v20                          // 0000137C: D188001A 00022917
  v_mul_hi_u32  v23, v16, s22                               // 00001384: D2D40017 02002D10
  v_mul_lo_u32  v24, v16, s15                               // 0000138C: D2D20018 02001F10
  v_cndmask_b32  v25, 0, v21, s[24:25]                      // 00001394: D2000019 00622A80
  v_addc_u32    v29, vcc, v23, 0, s[26:27]                  // 0000139C: D2506A1D 00690117
  v_addc_u32    v23, vcc, v23, v24, s[26:27]                // 000013A4: D2506A17 006A3117
  s_mov_b32     s22, 0x4e441529                             // 000013AC: BE9603FF 4E441529
  v_add_i32     v19, vcc, v19, v25                          // 000013B4: 4A263313
  v_cmp_gt_u32  s[26:27], v29, v23                          // 000013B8: D188001A 00022F1D
  v_mul_hi_u32  v24, v16, s15                               // 000013C0: D2D40018 02001F10
  v_mul_lo_u32  v25, v16, s22                               // 000013C8: D2D20019 02002D10
  v_cmp_gt_u32  s[28:29], v19, 31                           // 000013D0: D188001C 00013F13
  v_addc_u32    v29, vcc, v24, 0, s[26:27]                  // 000013D8: D2506A1D 00690118
  v_addc_u32    v24, vcc, v24, v25, s[26:27]                // 000013E0: D2506A18 006A3318
  s_mov_b32     s15, 0xa2f9836e                             // 000013E8: BE8F03FF A2F9836E
  v_cndmask_b32  v25, 0, v21, s[28:29]                      // 000013F0: D2000019 00722A80
  v_cmp_gt_u32  s[26:27], v29, v24                          // 000013F8: D188001A 0002311D
  v_mul_hi_u32  v29, v16, s22                               // 00001400: D2D4001D 02002D10
  v_mul_lo_u32  v30, v16, s15                               // 00001408: D2D2001E 02001F10
  v_add_i32     v19, vcc, v19, v25                          // 00001410: 4A263313
  v_addc_u32    v25, vcc, v29, 0, s[26:27]                  // 00001414: D2506A19 0069011D
  v_addc_u32    v29, vcc, v29, v30, s[26:27]                // 0000141C: D2506A1D 006A3D1D
  v_cmp_gt_u32  s[22:23], v19, 31                           // 00001424: D1880016 00013F13
  v_cmp_gt_u32  s[26:27], v25, v29                          // 0000142C: D188001A 00023B19
  v_mul_hi_u32  v25, v16, s15                               // 00001434: D2D40019 02001F10
  v_cndmask_b32  v21, 0, v21, s[22:23]                      // 0000143C: D2000015 005A2A80
  v_addc_u32    v25, vcc, v25, 0, s[26:27]                  // 00001444: D2506A19 00690119
  v_add_i32     v19, vcc, v19, v21                          // 0000144C: 4A262B13
  v_cndmask_b32  v21, v25, v29, s[24:25]                    // 00001450: D2000015 00623B19
  v_cndmask_b32  v25, v29, v24, s[24:25]                    // 00001458: D2000019 0062311D
  v_cndmask_b32  v24, v24, v23, s[24:25]                    // 00001460: D2000018 00622F18
  v_cndmask_b32  v23, v23, v20, s[24:25]                    // 00001468: D2000017 00622917
  v_cmp_gt_u32  s[26:27], v19, 31                           // 00001470: D188001A 00013F13
  v_cndmask_b32  v20, v20, v17, s[24:25]                    // 00001478: D2000014 00622314
  v_cndmask_b32  v21, v21, v25, s[28:29]                    // 00001480: D2000015 00723315
  v_cndmask_b32  v25, v25, v24, s[28:29]                    // 00001488: D2000019 00723119
  v_cndmask_b32  v24, v24, v23, s[28:29]                    // 00001490: D2000018 00722F18
  v_cndmask_b32  v23, v23, v20, s[28:29]                    // 00001498: D2000017 00722917
  v_cndmask_b32  v29, 0, 32, s[26:27]                       // 000014A0: D200001D 00694080
  v_cndmask_b32  v21, v21, v25, s[22:23]                    // 000014A8: D2000015 005A3315
  v_cndmask_b32  v25, v25, v24, s[22:23]                    // 000014B0: D2000019 005A3119
  v_cndmask_b32  v17, v17, v18, s[24:25]                    // 000014B8: D2000011 00622511
  v_cndmask_b32  v24, v24, v23, s[22:23]                    // 000014C0: D2000018 005A2F18
  v_sub_i32     v30, vcc, v29, v19                          // 000014C8: 4C3C271D
  v_cndmask_b32  v21, v21, v25, s[26:27]                    // 000014CC: D2000015 006A3315
  v_cndmask_b32  v20, v20, v17, s[28:29]                    // 000014D4: D2000014 00722314
  v_cndmask_b32  v25, v25, v24, s[26:27]                    // 000014DC: D2000019 006A3119
  s_mov_b32     s15, 0xfe5163ab                             // 000014E4: BE8F03FF FE5163AB
  v_add_i32     v30, vcc, 32, v30                           // 000014EC: 4A3C3CA0
  v_cndmask_b32  v23, v23, v20, s[22:23]                    // 000014F0: D2000017 005A2917
  v_mul_lo_i32  v16, v16, s15                               // 000014F8: D2D60010 02001F10
  v_cmp_ne_i32  vcc, v19, v29                               // 00001500: 7D0A3B13
  v_alignbit_b32  v19, v21, v25, v30                        // 00001504: D29C0013 047A3315
  v_cndmask_b32  v24, v24, v23, s[26:27]                    // 0000150C: D2000018 006A2F18
  v_cndmask_b32  v16, v18, v16, s[24:25]                    // 00001514: D2000010 00622112
  v_cndmask_b32  v18, v21, v19, vcc                         // 0000151C: 00242715
  v_cndmask_b32  v16, v17, v16, s[28:29]                    // 00001520: D2000010 00722111
  v_alignbit_b32  v17, v25, v24, v30                        // 00001528: D29C0011 047A3119
  v_bfe_u32     v19, v18, 29, 1                             // 00001530: D2900013 02053B12
  v_cndmask_b32  v16, v20, v16, s[22:23]                    // 00001538: D2000010 005A2114
  v_cndmask_b32  v17, v25, v17, vcc                         // 00001540: 00222319
  v_cmp_ne_i32  s[22:23], v19, 0                            // 00001544: D10A0016 00010113
  v_cndmask_b32  v16, v23, v16, s[26:27]                    // 0000154C: D2000010 006A2117
  v_alignbit_b32  v20, v18, v17, 30                         // 00001554: D29C0014 027A2312
  v_cndmask_b32  v21, 0, -1, s[22:23]                       // 0000155C: D2000015 00598280
  v_alignbit_b32  v23, v24, v16, v30                        // 00001564: D29C0017 047A2118
  v_xor_b32     v25, v20, v21                               // 0000156C: 3A322B14
  v_cndmask_b32  v23, v24, v23, vcc                         // 00001570: 002E2F18
  v_ffbh_u32    v24, v25                                    // 00001574: 7E307319
  v_cmp_ne_i32  vcc, v20, v21                               // 00001578: 7D0A2B14
  v_alignbit_b32  v17, v17, v23, 30                         // 0000157C: D29C0011 027A2F11
  v_alignbit_b32  v16, v23, v16, 30                         // 00001584: D29C0010 027A2117
  v_cndmask_b32  v20, 32, v24, vcc                          // 0000158C: 002830A0
  v_sub_i32     v23, vcc, 31, v20                           // 00001590: 4C2E289F
  v_xor_b32     v16, v16, v21                               // 00001594: 3A202B10
  v_xor_b32     v17, v17, v21                               // 00001598: 3A222B11
  v_sub_i32     v21, vcc, 0, v20                            // 0000159C: 4C2A2880
  v_alignbit_b32  v16, v17, v16, v23                        // 000015A0: D29C0010 045E2111
  v_alignbit_b32  v17, v25, v17, v23                        // 000015A8: D29C0011 045E2319
  v_lshlrev_b32  v23, 2, v18                                // 000015B0: 342E2482
  v_alignbit_b32  v24, v17, v16, 9                          // 000015B4: D29C0018 02262111
  v_lshlrev_b32  v21, 23, v21                               // 000015BC: 342A2A97
  v_and_b32     v23, 0x80000000, v23                        // 000015C0: 362E2EFF 80000000
  v_add_i32     v21, vcc, 0.5, v21                          // 000015C8: 4A2A2AF0
  v_ffbh_u32    v25, v24                                    // 000015CC: 7E327318
  v_cmp_ne_i32  vcc, 0, v24                                 // 000015D0: 7D0A3080
  v_lshrrev_b32  v17, 9, v17                                // 000015D4: 2C222289
  v_or_b32      v21, v23, v21                               // 000015D8: 382A2B17
  v_cndmask_b32  v25, 32, v25, vcc                          // 000015DC: 003232A0
  v_sub_i32     v20, vcc, 0x00000066, v20                   // 000015E0: 4C2828FF 00000066
  v_or_b32      v17, v17, v21                               // 000015E8: 38222B11
  v_sub_i32     v21, vcc, 31, v25                           // 000015EC: 4C2A329F
  v_sub_i32     v20, vcc, v20, v25                          // 000015F0: 4C283314
  v_alignbit_b32  v16, v24, v16, v21                        // 000015F4: D29C0010 04562118
  v_lshlrev_b32  v20, 23, v20                               // 000015FC: 34282897
  v_mul_f32     v21, 0x3fc90fda, v17                        // 00001600: 102A22FF 3FC90FDA
  s_mov_b32     s15, 0x3fc90fda                             // 00001608: BE8F03FF 3FC90FDA
  v_lshrrev_b32  v16, 9, v16                                // 00001610: 2C202089
  v_or_b32      v20, v23, v20                               // 00001614: 38282917
  v_fma_f32     v21, v17, s15, -v21                         // 00001618: D2960015 84541F11
  s_mov_b32     s22, 0x33a22168                             // 00001620: BE9603FF 33A22168
  v_or_b32      v16, v16, v20                               // 00001628: 38202910
  v_fma_f32     v20, v17, s22, v21                          // 0000162C: D2960014 04542D11
  v_fma_f32     v16, v16, s15, v20                          // 00001634: D2960010 04501F10
  v_mad_f32     v61, v17, s15, v16                          // 0000163C: D282003D 04401F11
  v_lshrrev_b32  v18, 30, v18                               // 00001644: 2C24249E
  v_mad_f32     v17, -v17, s15, v61                         // 00001648: D2820011 24F41F11
  v_add_i32     v14, vcc, v19, v18                          // 00001650: 4A1C2513
  v_sub_f32     v15, v16, v17                               // 00001654: 081E2310
label_0596:
  s_andn2_b64   exec, s[20:21], exec                        // 00001658: 8AFE7E14
  s_cbranch_execz  label_05C6                               // 0000165C: BF88002E
  s_mov_b32     s15, 0x3f22f983                             // 00001660: BE8F03FF 3F22F983
  v_mad_f32     v16, v3, s15, 0.5                           // 00001668: D2820010 03C01F03
  v_trunc_f32   v16, v16                                    // 00001670: 7E204310
  v_mul_f32     v17, 0x3fc90fda, v16                        // 00001674: 102220FF 3FC90FDA
  s_mov_b32     s15, 0x3fc90fda                             // 0000167C: BE8F03FF 3FC90FDA
  v_fma_f32     v17, v16, s15, -v17                         // 00001684: D2960011 84441F10
  v_mad_f32     v18, -v16, s15, v3                          // 0000168C: D2820012 240C1F10
  v_sub_f32     v19, v3, v18                                // 00001694: 08262503
  v_mad_f32     v19, -v16, s15, v19                         // 00001698: D2820013 244C1F10
  v_subrev_f32  v17, v17, v19                               // 000016A0: 0A222711
  v_add_f32     v17, v18, v17                               // 000016A4: 06222312
  v_mul_f32     v18, 0x33a22168, v16                        // 000016A8: 102420FF 33A22168
  s_mov_b32     s15, 0x33a22168                             // 000016B0: BE8F03FF 33A22168
  v_fma_f32     v18, v16, s15, -v18                         // 000016B8: D2960012 84481F10
  v_mad_f32     v19, -v16, s15, v17                         // 000016C0: D2820013 24441F10
  v_sub_f32     v17, v17, v19                               // 000016C8: 08222711
  v_mad_f32     v17, -v16, s15, v17                         // 000016CC: D2820011 24441F10
  v_subrev_f32  v17, v18, v17                               // 000016D4: 0A222312
  v_add_f32     v17, v19, v17                               // 000016D8: 06222313
  v_mul_f32     v18, 0x27c234c4, v16                        // 000016DC: 102420FF 27C234C4
  s_mov_b32     s15, 0x27c234c4                             // 000016E4: BE8F03FF 27C234C4
  v_fma_f32     v18, v16, s15, -v18                         // 000016EC: D2960012 84481F10
  v_mad_f32     v19, -v16, s15, v17                         // 000016F4: D2820013 24441F10
  v_sub_f32     v17, v17, v19                               // 000016FC: 08222711
  v_mad_f32     v17, -v16, s15, v17                         // 00001700: D2820011 24441F10
  v_add_f32     v61, v19, v17                               // 00001708: 067A2313
  v_cvt_i32_f32  v14, v16                                   // 0000170C: 7E1C1110
  v_max_f32     v15, -v18, -v18                             // 00001710: D220000F 60022512
label_05C6:
  s_mov_b64     exec, s[20:21]                              // 00001718: BEFE0414
  v_and_b32     v58, 3, v14                                 // 0000171C: 36741C83
  s_mov_b32     s15, 0x4b000000                             // 00001720: BE8F03FF 4B000000
  v_cmp_nlt_f32  s[20:21], v4, s15                          // 00001728: D01C0014 00001F04
  s_and_saveexec_b64  s[20:21], s[20:21]                    // 00001730: BE942414
  v_and_b32     v19, 0x007fffff, v8                         // 00001734: 362610FF 007FFFFF
  s_cbranch_execz  label_06B3                               // 0000173C: BF8800E3
  v_or_b32      v19, 0x00800000, v19                        // 00001740: 382626FF 00800000
  s_mov_b32     s15, 0xfe5163ab                             // 00001748: BE8F03FF FE5163AB
  s_mov_b32     s22, 0x3c439041                             // 00001750: BE9603FF 3C439041
  v_mul_hi_u32  v20, v19, s15                               // 00001758: D2D40014 02001F13
  v_mul_lo_u32  v21, v19, s22                               // 00001760: D2D20015 02002D13
  v_add_i32     v21, vcc, v20, v21                          // 00001768: 4A2A2B14
  s_mov_b32     s15, 0xdb629599                             // 0000176C: BE8F03FF DB629599
  v_cmp_gt_u32  s[24:25], v20, v21                          // 00001774: D1880018 00022B14
  v_mul_hi_u32  v20, v19, s22                               // 0000177C: D2D40014 02002D13
  v_mul_lo_u32  v23, v19, s15                               // 00001784: D2D20017 02001F13
  v_addc_u32    v24, vcc, v20, 0, s[24:25]                  // 0000178C: D2506A18 00610114
  v_addc_u32    v20, vcc, v20, v23, s[24:25]                // 00001794: D2506A14 00622F14
  s_mov_b32     s22, 0xf534ddc0                             // 0000179C: BE9603FF F534DDC0
  v_lshrrev_b32  v23, 23, v4                                // 000017A4: 2C2E0897
  v_cmp_gt_u32  s[24:25], v24, v20                          // 000017A8: D1880018 00022918
  v_mul_hi_u32  v24, v19, s15                               // 000017B0: D2D40018 02001F13
  v_mul_lo_u32  v25, v19, s22                               // 000017B8: D2D20019 02002D13
  v_add_i32     v23, vcc, 0xffffff88, v23                   // 000017C0: 4A2E2EFF FFFFFF88
  v_addc_u32    v29, vcc, v24, 0, s[24:25]                  // 000017C8: D2506A1D 00610118
  v_addc_u32    v24, vcc, v24, v25, s[24:25]                // 000017D0: D2506A18 00623318
  s_mov_b32     s15, 0xfc2757d1                             // 000017D8: BE8F03FF FC2757D1
  v_cmp_gt_u32  s[24:25], v23, 31                           // 000017E0: D1880018 00013F17
  v_mov_b32     v25, 0xffffffe0                             // 000017E8: 7E3202FF FFFFFFE0
  v_cmp_gt_u32  s[26:27], v29, v24                          // 000017F0: D188001A 0002311D
  v_mul_hi_u32  v29, v19, s22                               // 000017F8: D2D4001D 02002D13
  v_mul_lo_u32  v30, v19, s15                               // 00001800: D2D2001E 02001F13
  v_cndmask_b32  v31, 0, v25, s[24:25]                      // 00001808: D200001F 00623280
  v_addc_u32    v32, vcc, v29, 0, s[26:27]                  // 00001810: D2506A20 0069011D
  v_addc_u32    v29, vcc, v29, v30, s[26:27]                // 00001818: D2506A1D 006A3D1D
  s_mov_b32     s22, 0x4e441529                             // 00001820: BE9603FF 4E441529
  v_add_i32     v23, vcc, v23, v31                          // 00001828: 4A2E3F17
  v_cmp_gt_u32  s[26:27], v32, v29                          // 0000182C: D188001A 00023B20
  v_mul_hi_u32  v30, v19, s15                               // 00001834: D2D4001E 02001F13
  v_mul_lo_u32  v31, v19, s22                               // 0000183C: D2D2001F 02002D13
  v_cmp_gt_u32  s[28:29], v23, 31                           // 00001844: D188001C 00013F17
  v_addc_u32    v32, vcc, v30, 0, s[26:27]                  // 0000184C: D2506A20 0069011E
  v_addc_u32    v30, vcc, v30, v31, s[26:27]                // 00001854: D2506A1E 006A3F1E
  s_mov_b32     s15, 0xa2f9836e                             // 0000185C: BE8F03FF A2F9836E
  v_cndmask_b32  v31, 0, v25, s[28:29]                      // 00001864: D200001F 00723280
  v_cmp_gt_u32  s[26:27], v32, v30                          // 0000186C: D188001A 00023D20
  v_mul_hi_u32  v32, v19, s22                               // 00001874: D2D40020 02002D13
  v_mul_lo_u32  v33, v19, s15                               // 0000187C: D2D20021 02001F13
  v_add_i32     v23, vcc, v23, v31                          // 00001884: 4A2E3F17
  v_addc_u32    v31, vcc, v32, 0, s[26:27]                  // 00001888: D2506A1F 00690120
  v_addc_u32    v32, vcc, v32, v33, s[26:27]                // 00001890: D2506A20 006A4320
  v_cmp_gt_u32  s[22:23], v23, 31                           // 00001898: D1880016 00013F17
  v_cmp_gt_u32  s[26:27], v31, v32                          // 000018A0: D188001A 0002411F
  v_mul_hi_u32  v31, v19, s15                               // 000018A8: D2D4001F 02001F13
  v_cndmask_b32  v25, 0, v25, s[22:23]                      // 000018B0: D2000019 005A3280
  v_addc_u32    v31, vcc, v31, 0, s[26:27]                  // 000018B8: D2506A1F 0069011F
  v_add_i32     v23, vcc, v23, v25                          // 000018C0: 4A2E3317
  v_cndmask_b32  v25, v31, v32, s[24:25]                    // 000018C4: D2000019 0062411F
  v_cndmask_b32  v31, v32, v30, s[24:25]                    // 000018CC: D200001F 00623D20
  v_cndmask_b32  v30, v30, v29, s[24:25]                    // 000018D4: D200001E 00623B1E
  v_cndmask_b32  v29, v29, v24, s[24:25]                    // 000018DC: D200001D 0062311D
  v_cmp_gt_u32  s[26:27], v23, 31                           // 000018E4: D188001A 00013F17
  v_cndmask_b32  v24, v24, v20, s[24:25]                    // 000018EC: D2000018 00622918
  v_cndmask_b32  v25, v25, v31, s[28:29]                    // 000018F4: D2000019 00723F19
  v_cndmask_b32  v31, v31, v30, s[28:29]                    // 000018FC: D200001F 00723D1F
  v_cndmask_b32  v30, v30, v29, s[28:29]                    // 00001904: D200001E 00723B1E
  v_cndmask_b32  v29, v29, v24, s[28:29]                    // 0000190C: D200001D 0072311D
  v_cndmask_b32  v32, 0, 32, s[26:27]                       // 00001914: D2000020 00694080
  v_cndmask_b32  v25, v25, v31, s[22:23]                    // 0000191C: D2000019 005A3F19
  v_cndmask_b32  v31, v31, v30, s[22:23]                    // 00001924: D200001F 005A3D1F
  v_cndmask_b32  v20, v20, v21, s[24:25]                    // 0000192C: D2000014 00622B14
  v_cndmask_b32  v30, v30, v29, s[22:23]                    // 00001934: D200001E 005A3B1E
  v_sub_i32     v33, vcc, v32, v23                          // 0000193C: 4C422F20
  v_cndmask_b32  v25, v25, v31, s[26:27]                    // 00001940: D2000019 006A3F19
  v_cndmask_b32  v24, v24, v20, s[28:29]                    // 00001948: D2000018 00722918
  v_cndmask_b32  v31, v31, v30, s[26:27]                    // 00001950: D200001F 006A3D1F
  s_mov_b32     s15, 0xfe5163ab                             // 00001958: BE8F03FF FE5163AB
  v_add_i32     v33, vcc, 32, v33                           // 00001960: 4A4242A0
  v_cndmask_b32  v29, v29, v24, s[22:23]                    // 00001964: D200001D 005A311D
  v_mul_lo_i32  v19, v19, s15                               // 0000196C: D2D60013 02001F13
  v_cmp_ne_i32  vcc, v23, v32                               // 00001974: 7D0A4117
  v_alignbit_b32  v23, v25, v31, v33                        // 00001978: D29C0017 04863F19
  v_cndmask_b32  v30, v30, v29, s[26:27]                    // 00001980: D200001E 006A3B1E
  v_cndmask_b32  v19, v21, v19, s[24:25]                    // 00001988: D2000013 00622715
  v_cndmask_b32  v21, v25, v23, vcc                         // 00001990: 002A2F19
  v_cndmask_b32  v19, v20, v19, s[28:29]                    // 00001994: D2000013 00722714
  v_alignbit_b32  v20, v31, v30, v33                        // 0000199C: D29C0014 04863D1F
  v_bfe_u32     v23, v21, 29, 1                             // 000019A4: D2900017 02053B15
  v_cndmask_b32  v19, v24, v19, s[22:23]                    // 000019AC: D2000013 005A2718
  v_cndmask_b32  v20, v31, v20, vcc                         // 000019B4: 0028291F
  v_cmp_ne_i32  s[22:23], v23, 0                            // 000019B8: D10A0016 00010117
  v_cndmask_b32  v19, v29, v19, s[26:27]                    // 000019C0: D2000013 006A271D
  v_alignbit_b32  v24, v21, v20, 30                         // 000019C8: D29C0018 027A2915
  v_cndmask_b32  v25, 0, -1, s[22:23]                       // 000019D0: D2000019 00598280
  v_alignbit_b32  v29, v30, v19, v33                        // 000019D8: D29C001D 0486271E
  v_xor_b32     v31, v24, v25                               // 000019E0: 3A3E3318
  v_cndmask_b32  v29, v30, v29, vcc                         // 000019E4: 003A3B1E
  v_ffbh_u32    v30, v31                                    // 000019E8: 7E3C731F
  v_cmp_ne_i32  vcc, v24, v25                               // 000019EC: 7D0A3318
  v_alignbit_b32  v20, v20, v29, 30                         // 000019F0: D29C0014 027A3B14
  v_alignbit_b32  v19, v29, v19, 30                         // 000019F8: D29C0013 027A271D
  v_cndmask_b32  v24, 32, v30, vcc                          // 00001A00: 00303CA0
  v_sub_i32     v29, vcc, 31, v24                           // 00001A04: 4C3A309F
  v_xor_b32     v19, v19, v25                               // 00001A08: 3A263313
  v_xor_b32     v20, v20, v25                               // 00001A0C: 3A283314
  v_sub_i32     v25, vcc, 0, v24                            // 00001A10: 4C323080
  v_alignbit_b32  v19, v20, v19, v29                        // 00001A14: D29C0013 04762714
  v_alignbit_b32  v20, v31, v20, v29                        // 00001A1C: D29C0014 0476291F
  v_lshlrev_b32  v29, 2, v21                                // 00001A24: 343A2A82
  v_alignbit_b32  v30, v20, v19, 9                          // 00001A28: D29C001E 02262714
  v_lshlrev_b32  v25, 23, v25                               // 00001A30: 34323297
  v_and_b32     v29, 0x80000000, v29                        // 00001A34: 363A3AFF 80000000
  v_add_i32     v25, vcc, 0.5, v25                          // 00001A3C: 4A3232F0
  v_ffbh_u32    v31, v30                                    // 00001A40: 7E3E731E
  v_cmp_ne_i32  vcc, 0, v30                                 // 00001A44: 7D0A3C80
  v_lshrrev_b32  v20, 9, v20                                // 00001A48: 2C282889
  v_or_b32      v25, v29, v25                               // 00001A4C: 3832331D
  v_cndmask_b32  v31, 32, v31, vcc                          // 00001A50: 003E3EA0
  v_sub_i32     v24, vcc, 0x00000066, v24                   // 00001A54: 4C3030FF 00000066
  v_or_b32      v20, v20, v25                               // 00001A5C: 38283314
  v_sub_i32     v25, vcc, 31, v31                           // 00001A60: 4C323E9F
  v_sub_i32     v24, vcc, v24, v31                          // 00001A64: 4C303F18
  v_alignbit_b32  v19, v30, v19, v25                        // 00001A68: D29C0013 0466271E
  v_lshlrev_b32  v24, 23, v24                               // 00001A70: 34303097
  v_mul_f32     v25, 0x3fc90fda, v20                        // 00001A74: 103228FF 3FC90FDA
  s_mov_b32     s15, 0x3fc90fda                             // 00001A7C: BE8F03FF 3FC90FDA
  v_lshrrev_b32  v19, 9, v19                                // 00001A84: 2C262689
  v_or_b32      v24, v29, v24                               // 00001A88: 3830311D
  v_fma_f32     v25, v20, s15, -v25                         // 00001A8C: D2960019 84641F14
  s_mov_b32     s22, 0x33a22168                             // 00001A94: BE9603FF 33A22168
  v_or_b32      v19, v19, v24                               // 00001A9C: 38263113
  v_fma_f32     v24, v20, s22, v25                          // 00001AA0: D2960018 04642D14
  v_fma_f32     v19, v19, s15, v24                          // 00001AA8: D2960013 04601F13
  v_mad_f32     v62, v20, s15, v19                          // 00001AB0: D282003E 044C1F14
  v_lshrrev_b32  v21, 30, v21                               // 00001AB8: 2C2A2A9E
  v_mad_f32     v20, -v20, s15, v62                         // 00001ABC: D2820014 24F81F14
  v_add_i32     v14, vcc, v23, v21                          // 00001AC4: 4A1C2B17
  v_sub_f32     v17, v19, v20                               // 00001AC8: 08222913
label_06B3:
  s_andn2_b64   exec, s[20:21], exec                        // 00001ACC: 8AFE7E14
  s_cbranch_execz  label_06E3                               // 00001AD0: BF88002E
  s_mov_b32     s15, 0x3f22f983                             // 00001AD4: BE8F03FF 3F22F983
  v_mad_f32     v19, v4, s15, 0.5                           // 00001ADC: D2820013 03C01F04
  v_trunc_f32   v19, v19                                    // 00001AE4: 7E264313
  v_mul_f32     v20, 0x3fc90fda, v19                        // 00001AE8: 102826FF 3FC90FDA
  s_mov_b32     s15, 0x3fc90fda                             // 00001AF0: BE8F03FF 3FC90FDA
  v_fma_f32     v20, v19, s15, -v20                         // 00001AF8: D2960014 84501F13
  v_mad_f32     v21, -v19, s15, v4                          // 00001B00: D2820015 24101F13
  v_sub_f32     v23, v4, v21                                // 00001B08: 082E2B04
  v_mad_f32     v23, -v19, s15, v23                         // 00001B0C: D2820017 245C1F13
  v_subrev_f32  v20, v20, v23                               // 00001B14: 0A282F14
  v_add_f32     v20, v21, v20                               // 00001B18: 06282915
  v_mul_f32     v21, 0x33a22168, v19                        // 00001B1C: 102A26FF 33A22168
  s_mov_b32     s15, 0x33a22168                             // 00001B24: BE8F03FF 33A22168
  v_fma_f32     v21, v19, s15, -v21                         // 00001B2C: D2960015 84541F13
  v_mad_f32     v23, -v19, s15, v20                         // 00001B34: D2820017 24501F13
  v_sub_f32     v20, v20, v23                               // 00001B3C: 08282F14
  v_mad_f32     v20, -v19, s15, v20                         // 00001B40: D2820014 24501F13
  v_subrev_f32  v20, v21, v20                               // 00001B48: 0A282915
  v_add_f32     v20, v23, v20                               // 00001B4C: 06282917
  v_mul_f32     v21, 0x27c234c4, v19                        // 00001B50: 102A26FF 27C234C4
  s_mov_b32     s15, 0x27c234c4                             // 00001B58: BE8F03FF 27C234C4
  v_fma_f32     v21, v19, s15, -v21                         // 00001B60: D2960015 84541F13
  v_mad_f32     v23, -v19, s15, v20                         // 00001B68: D2820017 24501F13
  v_sub_f32     v20, v20, v23                               // 00001B70: 08282F14
  v_mad_f32     v20, -v19, s15, v20                         // 00001B74: D2820014 24501F13
  v_add_f32     v62, v23, v20                               // 00001B7C: 067C2917
  v_cvt_i32_f32  v14, v19                                   // 00001B80: 7E1C1113
  v_max_f32     v17, -v21, -v21                             // 00001B84: D2200011 60022B15
label_06E3:
  s_mov_b64     exec, s[20:21]                              // 00001B8C: BEFE0414
  v_and_b32     v59, 3, v14                                 // 00001B90: 36761C83
  s_mov_b32     s15, 0x4b000000                             // 00001B94: BE8F03FF 4B000000
  v_cmp_nlt_f32  s[20:21], v10, s15                         // 00001B9C: D01C0014 00001F0A
  s_and_saveexec_b64  s[20:21], s[20:21]                    // 00001BA4: BE942414
  v_and_b32     v23, 0x007fffff, v9                         // 00001BA8: 362E12FF 007FFFFF
  s_cbranch_execz  label_07D0                               // 00001BB0: BF8800E3
  v_or_b32      v23, 0x00800000, v23                        // 00001BB4: 382E2EFF 00800000
  s_mov_b32     s15, 0xfe5163ab                             // 00001BBC: BE8F03FF FE5163AB
  s_mov_b32     s22, 0x3c439041                             // 00001BC4: BE9603FF 3C439041
  v_mul_hi_u32  v24, v23, s15                               // 00001BCC: D2D40018 02001F17
  v_mul_lo_u32  v25, v23, s22                               // 00001BD4: D2D20019 02002D17
  v_add_i32     v25, vcc, v24, v25                          // 00001BDC: 4A323318
  s_mov_b32     s15, 0xdb629599                             // 00001BE0: BE8F03FF DB629599
  v_cmp_gt_u32  s[24:25], v24, v25                          // 00001BE8: D1880018 00023318
  v_mul_hi_u32  v24, v23, s22                               // 00001BF0: D2D40018 02002D17
  v_mul_lo_u32  v29, v23, s15                               // 00001BF8: D2D2001D 02001F17
  v_addc_u32    v30, vcc, v24, 0, s[24:25]                  // 00001C00: D2506A1E 00610118
  v_addc_u32    v24, vcc, v24, v29, s[24:25]                // 00001C08: D2506A18 00623B18
  s_mov_b32     s22, 0xf534ddc0                             // 00001C10: BE9603FF F534DDC0
  v_lshrrev_b32  v29, 23, v10                               // 00001C18: 2C3A1497
  v_cmp_gt_u32  s[24:25], v30, v24                          // 00001C1C: D1880018 0002311E
  v_mul_hi_u32  v30, v23, s15                               // 00001C24: D2D4001E 02001F17
  v_mul_lo_u32  v31, v23, s22                               // 00001C2C: D2D2001F 02002D17
  v_add_i32     v29, vcc, 0xffffff88, v29                   // 00001C34: 4A3A3AFF FFFFFF88
  v_addc_u32    v32, vcc, v30, 0, s[24:25]                  // 00001C3C: D2506A20 0061011E
  v_addc_u32    v30, vcc, v30, v31, s[24:25]                // 00001C44: D2506A1E 00623F1E
  s_mov_b32     s15, 0xfc2757d1                             // 00001C4C: BE8F03FF FC2757D1
  v_cmp_gt_u32  s[24:25], v29, 31                           // 00001C54: D1880018 00013F1D
  v_mov_b32     v31, 0xffffffe0                             // 00001C5C: 7E3E02FF FFFFFFE0
  v_cmp_gt_u32  s[26:27], v32, v30                          // 00001C64: D188001A 00023D20
  v_mul_hi_u32  v32, v23, s22                               // 00001C6C: D2D40020 02002D17
  v_mul_lo_u32  v33, v23, s15                               // 00001C74: D2D20021 02001F17
  v_cndmask_b32  v34, 0, v31, s[24:25]                      // 00001C7C: D2000022 00623E80
  v_addc_u32    v35, vcc, v32, 0, s[26:27]                  // 00001C84: D2506A23 00690120
  v_addc_u32    v32, vcc, v32, v33, s[26:27]                // 00001C8C: D2506A20 006A4320
  s_mov_b32     s22, 0x4e441529                             // 00001C94: BE9603FF 4E441529
  v_add_i32     v29, vcc, v29, v34                          // 00001C9C: 4A3A451D
  v_cmp_gt_u32  s[26:27], v35, v32                          // 00001CA0: D188001A 00024123
  v_mul_hi_u32  v33, v23, s15                               // 00001CA8: D2D40021 02001F17
  v_mul_lo_u32  v34, v23, s22                               // 00001CB0: D2D20022 02002D17
  v_cmp_gt_u32  s[28:29], v29, 31                           // 00001CB8: D188001C 00013F1D
  v_addc_u32    v35, vcc, v33, 0, s[26:27]                  // 00001CC0: D2506A23 00690121
  v_addc_u32    v33, vcc, v33, v34, s[26:27]                // 00001CC8: D2506A21 006A4521
  s_mov_b32     s15, 0xa2f9836e                             // 00001CD0: BE8F03FF A2F9836E
  v_cndmask_b32  v34, 0, v31, s[28:29]                      // 00001CD8: D2000022 00723E80
  v_cmp_gt_u32  s[26:27], v35, v33                          // 00001CE0: D188001A 00024323
  v_mul_hi_u32  v35, v23, s22                               // 00001CE8: D2D40023 02002D17
  v_mul_lo_u32  v36, v23, s15                               // 00001CF0: D2D20024 02001F17
  v_add_i32     v29, vcc, v29, v34                          // 00001CF8: 4A3A451D
  v_addc_u32    v34, vcc, v35, 0, s[26:27]                  // 00001CFC: D2506A22 00690123
  v_addc_u32    v35, vcc, v35, v36, s[26:27]                // 00001D04: D2506A23 006A4923
  v_cmp_gt_u32  s[22:23], v29, 31                           // 00001D0C: D1880016 00013F1D
  v_cmp_gt_u32  s[26:27], v34, v35                          // 00001D14: D188001A 00024722
  v_mul_hi_u32  v34, v23, s15                               // 00001D1C: D2D40022 02001F17
  v_cndmask_b32  v31, 0, v31, s[22:23]                      // 00001D24: D200001F 005A3E80
  v_addc_u32    v34, vcc, v34, 0, s[26:27]                  // 00001D2C: D2506A22 00690122
  v_add_i32     v29, vcc, v29, v31                          // 00001D34: 4A3A3F1D
  v_cndmask_b32  v31, v34, v35, s[24:25]                    // 00001D38: D200001F 00624722
  v_cndmask_b32  v34, v35, v33, s[24:25]                    // 00001D40: D2000022 00624323
  v_cndmask_b32  v33, v33, v32, s[24:25]                    // 00001D48: D2000021 00624121
  v_cndmask_b32  v32, v32, v30, s[24:25]                    // 00001D50: D2000020 00623D20
  v_cmp_gt_u32  s[26:27], v29, 31                           // 00001D58: D188001A 00013F1D
  v_cndmask_b32  v30, v30, v24, s[24:25]                    // 00001D60: D200001E 0062311E
  v_cndmask_b32  v31, v31, v34, s[28:29]                    // 00001D68: D200001F 0072451F
  v_cndmask_b32  v34, v34, v33, s[28:29]                    // 00001D70: D2000022 00724322
  v_cndmask_b32  v33, v33, v32, s[28:29]                    // 00001D78: D2000021 00724121
  v_cndmask_b32  v32, v32, v30, s[28:29]                    // 00001D80: D2000020 00723D20
  v_cndmask_b32  v35, 0, 32, s[26:27]                       // 00001D88: D2000023 00694080
  v_cndmask_b32  v31, v31, v34, s[22:23]                    // 00001D90: D200001F 005A451F
  v_cndmask_b32  v34, v34, v33, s[22:23]                    // 00001D98: D2000022 005A4322
  v_cndmask_b32  v24, v24, v25, s[24:25]                    // 00001DA0: D2000018 00623318
  v_cndmask_b32  v33, v33, v32, s[22:23]                    // 00001DA8: D2000021 005A4121
  v_sub_i32     v36, vcc, v35, v29                          // 00001DB0: 4C483B23
  v_cndmask_b32  v31, v31, v34, s[26:27]                    // 00001DB4: D200001F 006A451F
  v_cndmask_b32  v30, v30, v24, s[28:29]                    // 00001DBC: D200001E 0072311E
  v_cndmask_b32  v34, v34, v33, s[26:27]                    // 00001DC4: D2000022 006A4322
  s_mov_b32     s15, 0xfe5163ab                             // 00001DCC: BE8F03FF FE5163AB
  v_add_i32     v36, vcc, 32, v36                           // 00001DD4: 4A4848A0
  v_cndmask_b32  v32, v32, v30, s[22:23]                    // 00001DD8: D2000020 005A3D20
  v_mul_lo_i32  v23, v23, s15                               // 00001DE0: D2D60017 02001F17
  v_cmp_ne_i32  vcc, v29, v35                               // 00001DE8: 7D0A471D
  v_alignbit_b32  v29, v31, v34, v36                        // 00001DEC: D29C001D 0492451F
  v_cndmask_b32  v33, v33, v32, s[26:27]                    // 00001DF4: D2000021 006A4121
  v_cndmask_b32  v23, v25, v23, s[24:25]                    // 00001DFC: D2000017 00622F19
  v_cndmask_b32  v25, v31, v29, vcc                         // 00001E04: 00323B1F
  v_cndmask_b32  v23, v24, v23, s[28:29]                    // 00001E08: D2000017 00722F18
  v_alignbit_b32  v24, v34, v33, v36                        // 00001E10: D29C0018 04924322
  v_bfe_u32     v29, v25, 29, 1                             // 00001E18: D290001D 02053B19
  v_cndmask_b32  v23, v30, v23, s[22:23]                    // 00001E20: D2000017 005A2F1E
  v_cndmask_b32  v24, v34, v24, vcc                         // 00001E28: 00303122
  v_cmp_ne_i32  s[22:23], v29, 0                            // 00001E2C: D10A0016 0001011D
  v_cndmask_b32  v23, v32, v23, s[26:27]                    // 00001E34: D2000017 006A2F20
  v_alignbit_b32  v30, v25, v24, 30                         // 00001E3C: D29C001E 027A3119
  v_cndmask_b32  v31, 0, -1, s[22:23]                       // 00001E44: D200001F 00598280
  v_alignbit_b32  v32, v33, v23, v36                        // 00001E4C: D29C0020 04922F21
  v_xor_b32     v34, v30, v31                               // 00001E54: 3A443F1E
  v_cndmask_b32  v32, v33, v32, vcc                         // 00001E58: 00404121
  v_ffbh_u32    v33, v34                                    // 00001E5C: 7E427322
  v_cmp_ne_i32  vcc, v30, v31                               // 00001E60: 7D0A3F1E
  v_alignbit_b32  v24, v24, v32, 30                         // 00001E64: D29C0018 027A4118
  v_alignbit_b32  v23, v32, v23, 30                         // 00001E6C: D29C0017 027A2F20
  v_cndmask_b32  v30, 32, v33, vcc                          // 00001E74: 003C42A0
  v_sub_i32     v32, vcc, 31, v30                           // 00001E78: 4C403C9F
  v_xor_b32     v23, v23, v31                               // 00001E7C: 3A2E3F17
  v_xor_b32     v24, v24, v31                               // 00001E80: 3A303F18
  v_sub_i32     v31, vcc, 0, v30                            // 00001E84: 4C3E3C80
  v_alignbit_b32  v23, v24, v23, v32                        // 00001E88: D29C0017 04822F18
  v_alignbit_b32  v24, v34, v24, v32                        // 00001E90: D29C0018 04823122
  v_lshlrev_b32  v32, 2, v25                                // 00001E98: 34403282
  v_alignbit_b32  v33, v24, v23, 9                          // 00001E9C: D29C0021 02262F18
  v_lshlrev_b32  v31, 23, v31                               // 00001EA4: 343E3E97
  v_and_b32     v32, 0x80000000, v32                        // 00001EA8: 364040FF 80000000
  v_add_i32     v31, vcc, 0.5, v31                          // 00001EB0: 4A3E3EF0
  v_ffbh_u32    v34, v33                                    // 00001EB4: 7E447321
  v_cmp_ne_i32  vcc, 0, v33                                 // 00001EB8: 7D0A4280
  v_lshrrev_b32  v24, 9, v24                                // 00001EBC: 2C303089
  v_or_b32      v31, v32, v31                               // 00001EC0: 383E3F20
  v_cndmask_b32  v34, 32, v34, vcc                          // 00001EC4: 004444A0
  v_sub_i32     v30, vcc, 0x00000066, v30                   // 00001EC8: 4C3C3CFF 00000066
  v_or_b32      v24, v24, v31                               // 00001ED0: 38303F18
  v_sub_i32     v31, vcc, 31, v34                           // 00001ED4: 4C3E449F
  v_sub_i32     v30, vcc, v30, v34                          // 00001ED8: 4C3C451E
  v_alignbit_b32  v23, v33, v23, v31                        // 00001EDC: D29C0017 047E2F21
  v_lshlrev_b32  v30, 23, v30                               // 00001EE4: 343C3C97
  v_mul_f32     v31, 0x3fc90fda, v24                        // 00001EE8: 103E30FF 3FC90FDA
  s_mov_b32     s15, 0x3fc90fda                             // 00001EF0: BE8F03FF 3FC90FDA
  v_lshrrev_b32  v23, 9, v23                                // 00001EF8: 2C2E2E89
  v_or_b32      v30, v32, v30                               // 00001EFC: 383C3D20
  v_fma_f32     v31, v24, s15, -v31                         // 00001F00: D296001F 847C1F18
  s_mov_b32     s22, 0x33a22168                             // 00001F08: BE9603FF 33A22168
  v_or_b32      v23, v23, v30                               // 00001F10: 382E3D17
  v_fma_f32     v30, v24, s22, v31                          // 00001F14: D296001E 047C2D18
  v_fma_f32     v23, v23, s15, v30                          // 00001F1C: D2960017 04781F17
  v_mad_f32     v63, v24, s15, v23                          // 00001F24: D282003F 045C1F18
  v_lshrrev_b32  v25, 30, v25                               // 00001F2C: 2C32329E
  v_mad_f32     v24, -v24, s15, v63                         // 00001F30: D2820018 24FC1F18
  v_add_i32     v14, vcc, v29, v25                          // 00001F38: 4A1C331D
  v_sub_f32     v25, v23, v24                               // 00001F3C: 08323117
label_07D0:
  s_andn2_b64   exec, s[20:21], exec                        // 00001F40: 8AFE7E14
  s_cbranch_execz  label_0800                               // 00001F44: BF88002E
  s_mov_b32     s15, 0x3f22f983                             // 00001F48: BE8F03FF 3F22F983
  v_mad_f32     v23, v10, s15, 0.5                          // 00001F50: D2820017 03C01F0A
  v_trunc_f32   v23, v23                                    // 00001F58: 7E2E4317
  v_mul_f32     v24, 0x3fc90fda, v23                        // 00001F5C: 10302EFF 3FC90FDA
  s_mov_b32     s15, 0x3fc90fda                             // 00001F64: BE8F03FF 3FC90FDA
  v_fma_f32     v24, v23, s15, -v24                         // 00001F6C: D2960018 84601F17
  v_mad_f32     v25, -v23, s15, v10                         // 00001F74: D2820019 24281F17
  v_sub_f32     v29, v10, v25                               // 00001F7C: 083A330A
  v_mad_f32     v29, -v23, s15, v29                         // 00001F80: D282001D 24741F17
  v_subrev_f32  v24, v24, v29                               // 00001F88: 0A303B18
  v_add_f32     v24, v25, v24                               // 00001F8C: 06303119
  v_mul_f32     v25, 0x33a22168, v23                        // 00001F90: 10322EFF 33A22168
  s_mov_b32     s15, 0x33a22168                             // 00001F98: BE8F03FF 33A22168
  v_fma_f32     v25, v23, s15, -v25                         // 00001FA0: D2960019 84641F17
  v_mad_f32     v29, -v23, s15, v24                         // 00001FA8: D282001D 24601F17
  v_sub_f32     v24, v24, v29                               // 00001FB0: 08303B18
  v_mad_f32     v24, -v23, s15, v24                         // 00001FB4: D2820018 24601F17
  v_subrev_f32  v24, v25, v24                               // 00001FBC: 0A303119
  v_add_f32     v24, v29, v24                               // 00001FC0: 0630311D
  v_mul_f32     v25, 0x27c234c4, v23                        // 00001FC4: 10322EFF 27C234C4
  s_mov_b32     s15, 0x27c234c4                             // 00001FCC: BE8F03FF 27C234C4
  v_fma_f32     v25, v23, s15, -v25                         // 00001FD4: D2960019 84641F17
  v_mad_f32     v29, -v23, s15, v24                         // 00001FDC: D282001D 24601F17
  v_sub_f32     v24, v24, v29                               // 00001FE4: 08303B18
  v_mad_f32     v24, -v23, s15, v24                         // 00001FE8: D2820018 24601F17
  v_add_f32     v63, v29, v24                               // 00001FF0: 067E311D
  v_cvt_i32_f32  v14, v23                                   // 00001FF4: 7E1C1117
  v_max_f32     v25, -v25, -v25                             // 00001FF8: D2200019 60023319
label_0800:
  s_mov_b64     exec, s[20:21]                              // 00002000: BEFE0414
  v_and_b32     v16, 3, v14                                 // 00002004: 36201C83
label_0802:
  s_andn2_b64   exec, s[12:13], exec                        // 00002008: 8AFE7E0C
  v_mov_b32     v13, 0x3f22f983                             // 0000200C: 7E1A02FF 3F22F983
  s_cbranch_execz  label_089C                               // 00002014: BF880096
  v_mad_f32     v14, v2, v13, 0.5                           // 00002018: D282000E 03C21B02
  v_mad_f32     v15, v3, v13, 0.5                           // 00002020: D282000F 03C21B03
  v_mad_f32     v16, v4, v13, 0.5                           // 00002028: D2820010 03C21B04
  v_mad_f32     v13, v10, v13, 0.5                          // 00002030: D282000D 03C21B0A
  v_trunc_f32   v14, v14                                    // 00002038: 7E1C430E
  v_trunc_f32   v15, v15                                    // 0000203C: 7E1E430F
  v_trunc_f32   v16, v16                                    // 00002040: 7E204310
  v_trunc_f32   v13, v13                                    // 00002044: 7E1A430D
  v_mov_b32     v17, 0x3fc90fda                             // 00002048: 7E2202FF 3FC90FDA
  v_mul_f32     v18, v17, v14                               // 00002050: 10241D11
  v_mul_f32     v19, v15, v17                               // 00002054: 1026230F
  v_mul_f32     v20, v16, v17                               // 00002058: 10282310
  v_mul_f32     v21, v13, v17                               // 0000205C: 102A230D
  v_fma_f32     v19, v15, v17, -v19                         // 00002060: D2960013 844E230F
  v_fma_f32     v18, v14, v17, -v18                         // 00002068: D2960012 844A230E
  v_fma_f32     v21, v13, v17, -v21                         // 00002070: D2960015 8456230D
  v_fma_f32     v20, v16, v17, -v20                         // 00002078: D2960014 84522310
  v_mad_f32     v23, -v14, v17, v2                          // 00002080: D2820017 240A230E
  v_mad_f32     v24, -v15, v17, v3                          // 00002088: D2820018 240E230F
  v_mad_f32     v25, -v16, v17, v4                          // 00002090: D2820019 24122310
  v_mad_f32     v29, -v13, v17, v10                         // 00002098: D282001D 242A230D
  v_sub_f32     v30, v2, v23                                // 000020A0: 083C2F02
  v_sub_f32     v31, v3, v24                                // 000020A4: 083E3103
  v_sub_f32     v32, v4, v25                                // 000020A8: 08403304
  v_sub_f32     v33, v10, v29                               // 000020AC: 08423B0A
  v_mad_f32     v30, -v14, v17, v30                         // 000020B0: D282001E 247A230E
  v_mad_f32     v31, -v15, v17, v31                         // 000020B8: D282001F 247E230F
  v_mad_f32     v32, -v16, v17, v32                         // 000020C0: D2820020 24822310
  v_mad_f32     v33, -v13, v17, v33                         // 000020C8: D2820021 2486230D
  v_subrev_f32  v17, v18, v30                               // 000020D0: 0A223D12
  v_subrev_f32  v18, v19, v31                               // 000020D4: 0A243F13
  v_subrev_f32  v19, v20, v32                               // 000020D8: 0A264114
  v_subrev_f32  v20, v21, v33                               // 000020DC: 0A284315
  v_add_f32     v17, v23, v17                               // 000020E0: 06222317
  v_add_f32     v18, v24, v18                               // 000020E4: 06242518
  v_add_f32     v19, v25, v19                               // 000020E8: 06262719
  v_add_f32     v20, v29, v20                               // 000020EC: 0628291D
  v_mov_b32     v21, 0x33a22168                             // 000020F0: 7E2A02FF 33A22168
  v_mul_f32     v23, v21, v14                               // 000020F8: 102E1D15
  v_mul_f32     v24, v15, v21                               // 000020FC: 10302B0F
  v_mul_f32     v25, v16, v21                               // 00002100: 10322B10
  v_mul_f32     v29, v13, v21                               // 00002104: 103A2B0D
  v_fma_f32     v24, v15, v21, -v24                         // 00002108: D2960018 84622B0F
  v_fma_f32     v23, v14, v21, -v23                         // 00002110: D2960017 845E2B0E
  v_fma_f32     v29, v13, v21, -v29                         // 00002118: D296001D 84762B0D
  v_fma_f32     v25, v16, v21, -v25                         // 00002120: D2960019 84662B10
  v_mad_f32     v30, -v14, v21, v17                         // 00002128: D282001E 24462B0E
  v_mad_f32     v31, -v15, v21, v18                         // 00002130: D282001F 244A2B0F
  v_mad_f32     v32, -v16, v21, v19                         // 00002138: D2820020 244E2B10
  v_mad_f32     v33, -v13, v21, v20                         // 00002140: D2820021 24522B0D
  v_sub_f32     v17, v17, v30                               // 00002148: 08223D11
  v_sub_f32     v18, v18, v31                               // 0000214C: 08243F12
  v_sub_f32     v19, v19, v32                               // 00002150: 08264113
  v_sub_f32     v20, v20, v33                               // 00002154: 08284314
  v_mad_f32     v17, -v14, v21, v17                         // 00002158: D2820011 24462B0E
  v_mad_f32     v18, -v15, v21, v18                         // 00002160: D2820012 244A2B0F
  v_mad_f32     v19, -v16, v21, v19                         // 00002168: D2820013 244E2B10
  v_mad_f32     v20, -v13, v21, v20                         // 00002170: D2820014 24522B0D
  v_subrev_f32  v17, v23, v17                               // 00002178: 0A222317
  v_subrev_f32  v18, v24, v18                               // 0000217C: 0A242518
  v_subrev_f32  v19, v25, v19                               // 00002180: 0A262719
  v_subrev_f32  v20, v29, v20                               // 00002184: 0A28291D
  v_add_f32     v17, v30, v17                               // 00002188: 0622231E
  v_add_f32     v18, v31, v18                               // 0000218C: 0624251F
  v_add_f32     v19, v32, v19                               // 00002190: 06262720
  v_add_f32     v20, v33, v20                               // 00002194: 06282921
  v_mov_b32     v21, 0x27c234c4                             // 00002198: 7E2A02FF 27C234C4
  v_mul_f32     v23, v21, v14                               // 000021A0: 102E1D15
  v_mul_f32     v24, v15, v21                               // 000021A4: 10302B0F
  v_mul_f32     v25, v16, v21                               // 000021A8: 10322B10
  v_mul_f32     v29, v13, v21                               // 000021AC: 103A2B0D
  v_fma_f32     v24, v15, v21, -v24                         // 000021B0: D2960018 84622B0F
  v_fma_f32     v23, v14, v21, -v23                         // 000021B8: D2960017 845E2B0E
  v_fma_f32     v29, v13, v21, -v29                         // 000021C0: D296001D 84762B0D
  v_fma_f32     v25, v16, v21, -v25                         // 000021C8: D2960019 84662B10
  v_mad_f32     v30, -v14, v21, v17                         // 000021D0: D282001E 24462B0E
  v_mad_f32     v31, -v15, v21, v18                         // 000021D8: D282001F 244A2B0F
  v_mad_f32     v32, -v16, v21, v19                         // 000021E0: D2820020 244E2B10
  v_mad_f32     v33, -v13, v21, v20                         // 000021E8: D2820021 24522B0D
  v_sub_f32     v17, v17, v30                               // 000021F0: 08223D11
  v_sub_f32     v18, v18, v31                               // 000021F4: 08243F12
  v_sub_f32     v19, v19, v32                               // 000021F8: 08264113
  v_sub_f32     v20, v20, v33                               // 000021FC: 08284314
  v_mad_f32     v17, -v14, v21, v17                         // 00002200: D2820011 24462B0E
  v_mad_f32     v18, -v15, v21, v18                         // 00002208: D2820012 244A2B0F
  v_mad_f32     v19, -v16, v21, v19                         // 00002210: D2820013 244E2B10
  v_mad_f32     v20, -v13, v21, v20                         // 00002218: D2820014 24522B0D
  v_add_f32     v60, v30, v17                               // 00002220: 0678231E
  v_add_f32     v61, v31, v18                               // 00002224: 067A251F
  v_add_f32     v62, v32, v19                               // 00002228: 067C2720
  v_add_f32     v63, v33, v20                               // 0000222C: 067E2921
  v_cvt_i32_f32  v14, v14                                   // 00002230: 7E1C110E
  v_cvt_i32_f32  v15, v15                                   // 00002234: 7E1E110F
  v_cvt_i32_f32  v16, v16                                   // 00002238: 7E201110
  v_cvt_i32_f32  v13, v13                                   // 0000223C: 7E1A110D
  v_and_b32     v57, 3, v14                                 // 00002240: 36721C83
  v_and_b32     v58, 3, v15                                 // 00002244: 36741E83
  v_and_b32     v59, 3, v16                                 // 00002248: 36762083
  v_and_b32     v16, 3, v13                                 // 0000224C: 36201A83
  v_max_f32     v13, -v23, -v23                             // 00002250: D220000D 60022F17
  v_max_f32     v15, -v24, -v24                             // 00002258: D220000F 60023118
  v_max_f32     v17, -v25, -v25                             // 00002260: D2200011 60023319
  v_max_f32     v25, -v29, -v29                             // 00002268: D2200019 60023B1D
label_089C:
  s_mov_b64     exec, s[12:13]                              // 00002270: BEFE040C
  v_mul_f32     v29, v60, v60                               // 00002274: 103A793C
  v_mul_f32     v30, v61, v61                               // 00002278: 103C7B3D
  v_mul_f32     v31, v62, v62                               // 0000227C: 103E7D3E
  v_mul_f32     v32, v63, v63                               // 00002280: 10407F3F
  v_mul_f32     v33, 0xad47d74e, v29                        // 00002284: 10423AFF AD47D74E
  v_mul_f32     v34, 0xad47d74e, v30                        // 0000228C: 10443CFF AD47D74E
  v_mul_f32     v35, 0xad47d74e, v31                        // 00002294: 10463EFF AD47D74E
  v_mul_f32     v36, 0xad47d74e, v32                        // 0000229C: 104840FF AD47D74E
  v_mul_f32     v37, 0x2f2ec9d3, v29                        // 000022A4: 104A3AFF 2F2EC9D3
  v_mul_f32     v38, 0x2f2ec9d3, v30                        // 000022AC: 104C3CFF 2F2EC9D3
  v_mul_f32     v39, 0x2f2ec9d3, v31                        // 000022B4: 104E3EFF 2F2EC9D3
  v_mul_f32     v40, 0x2f2ec9d3, v32                        // 000022BC: 105040FF 2F2EC9D3
  v_mov_b32     v41, 0x7fffffff                             // 000022C4: 7E5202FF 7FFFFFFF
  v_add_f32     v33, 0x310f74f6, v33                        // 000022CC: 064242FF 310F74F6
  v_add_f32     v34, 0x310f74f6, v34                        // 000022D4: 064444FF 310F74F6
  v_add_f32     v35, 0x310f74f6, v35                        // 000022DC: 064646FF 310F74F6
  v_add_f32     v36, 0x310f74f6, v36                        // 000022E4: 064848FF 310F74F6
  v_mov_b32     v42, 0xb492923a                             // 000022EC: 7E5402FF B492923A
  v_add_f32     v37, 0xb2d72f34, v37                        // 000022F4: 064A4AFF B2D72F34
  v_add_f32     v38, 0xb2d72f34, v38                        // 000022FC: 064C4CFF B2D72F34
  v_add_f32     v39, 0xb2d72f34, v39                        // 00002304: 064E4EFF B2D72F34
  v_add_f32     v40, 0xb2d72f34, v40                        // 0000230C: 065050FF B2D72F34
  v_mov_b32     v43, 0x3636df25                             // 00002314: 7E5602FF 3636DF25
  v_and_b32     v44, v41, v60                               // 0000231C: 36587929
  v_and_b32     v45, v41, v61                               // 00002320: 365A7B29
  v_and_b32     v46, v41, v62                               // 00002324: 365C7D29
  v_and_b32     v41, v41, v63                               // 00002328: 36527F29
  v_mov_b32     v47, 0x3f480001                             // 0000232C: 7E5E02FF 3F480001
  v_mov_b32     v48, 0x3e999999                             // 00002334: 7E6002FF 3E999999
  v_mad_f32     v33, v29, v33, v42                          // 0000233C: D2820021 04AA431D
  v_mad_f32     v34, v30, v34, v42                          // 00002344: D2820022 04AA451E
  v_mad_f32     v35, v31, v35, v42                          // 0000234C: D2820023 04AA471F
  v_mac_f32     v42, v32, v36                               // 00002354: 3E544920
  v_mov_b32     v36, 0x37d00ae2                             // 00002358: 7E4802FF 37D00AE2
  v_mad_f32     v37, v29, v37, v43                          // 00002360: D2820025 04AE4B1D
  v_mad_f32     v38, v30, v38, v43                          // 00002368: D2820026 04AE4D1E
  v_mad_f32     v39, v31, v39, v43                          // 00002370: D2820027 04AE4F1F
  v_mac_f32     v43, v32, v40                               // 00002378: 3E565120
  v_mov_b32     v40, 0xb95009d4                             // 0000237C: 7E5002FF B95009D4
  v_cmp_lt_u32  s[12:13], v41, v47                          // 00002384: D182000C 00025F29
  v_cmp_lt_u32  s[20:21], v44, v47                          // 0000238C: D1820014 00025F2C
  v_cmp_lt_u32  s[22:23], v46, v47                          // 00002394: D1820016 00025F2E
  v_cmp_lt_u32  s[24:25], v45, v47                          // 0000239C: D1820018 00025F2D
  v_cmp_gt_u32  s[26:27], v41, v48                          // 000023A4: D188001A 00026129
  v_cmp_gt_u32  s[28:29], v44, v48                          // 000023AC: D188001C 0002612C
  v_cmp_gt_u32  s[30:31], v46, v48                          // 000023B4: D188001E 0002612E
  v_cmp_gt_u32  s[32:33], v45, v48                          // 000023BC: D1880020 0002612D
  v_mov_b32     v47, 0xff000000                             // 000023C4: 7E5E02FF FF000000
  v_mad_f32     v33, v29, v33, v36                          // 000023CC: D2820021 0492431D
  v_mad_f32     v34, v30, v34, v36                          // 000023D4: D2820022 0492451E
  v_mad_f32     v35, v31, v35, v36                          // 000023DC: D2820023 0492471F
  v_mac_f32     v36, v32, v42                               // 000023E4: 3E485520
  v_mov_b32     v42, 0xbab60b60                             // 000023E8: 7E5402FF BAB60B60
  v_mad_f32     v37, v29, v37, v40                          // 000023F0: D2820025 04A24B1D
  v_mad_f32     v38, v30, v38, v40                          // 000023F8: D2820026 04A24D1E
  v_mad_f32     v39, v31, v39, v40                          // 00002400: D2820027 04A24F1F
  v_mac_f32     v40, v32, v43                               // 00002408: 3E505720
  v_mov_b32     v43, 0x3c088887                             // 0000240C: 7E5602FF 3C088887
  s_and_b64     s[20:21], s[20:21], s[28:29]                // 00002414: 87941C14
  s_and_b64     s[24:25], s[24:25], s[32:33]                // 00002418: 87982018
  s_and_b64     s[22:23], s[22:23], s[30:31]                // 0000241C: 87961E16
  s_and_b64     s[12:13], s[12:13], s[26:27]                // 00002420: 878C1A0C
  v_add_i32     v48, vcc, v47, v44                          // 00002424: 4A60592F
  v_add_i32     v49, vcc, v45, v47                          // 00002428: 4A625F2D
  v_add_i32     v50, vcc, v46, v47                          // 0000242C: 4A645F2E
  v_add_i32     v47, vcc, v41, v47                          // 00002430: 4A5E5F29
  v_mov_b32     v51, 0x3f480000                             // 00002434: 7E6602FF 3F480000
  v_mad_f32     v33, v29, v33, v42                          // 0000243C: D2820021 04AA431D
  v_mad_f32     v34, v30, v34, v42                          // 00002444: D2820022 04AA451E
  v_mad_f32     v35, v31, v35, v42                          // 0000244C: D2820023 04AA471F
  v_mac_f32     v42, v32, v36                               // 00002454: 3E544920
  v_mov_b32     v36, 0x3d2aaaab                             // 00002458: 7E4802FF 3D2AAAAB
  v_mad_f32     v37, v29, v37, v43                          // 00002460: D2820025 04AE4B1D
  v_mad_f32     v38, v30, v38, v43                          // 00002468: D2820026 04AE4D1E
  v_mad_f32     v39, v31, v39, v43                          // 00002470: D2820027 04AE4F1F
  v_mac_f32     v43, v32, v40                               // 00002478: 3E565120
  v_mul_f32     v40, v60, v29                               // 0000247C: 10503B3C
  v_mul_f32     v52, v61, v30                               // 00002480: 10683D3D
  v_mul_f32     v53, v62, v31                               // 00002484: 106A3F3E
  v_mul_f32     v54, v63, v32                               // 00002488: 106C413F
  v_cndmask_b32  v48, 0, v48, s[20:21]                      // 0000248C: D2000030 00526080
  v_cndmask_b32  v49, 0, v49, s[24:25]                      // 00002494: D2000031 00626280
  v_cndmask_b32  v50, 0, v50, s[22:23]                      // 0000249C: D2000032 005A6480
  v_cndmask_b32  v47, 0, v47, s[12:13]                      // 000024A4: D200002F 00325E80
  v_cmp_gt_u32  s[12:13], v41, v51                          // 000024AC: D188000C 00026729
  v_cmp_gt_u32  s[20:21], v44, v51                          // 000024B4: D1880014 0002672C
  v_cmp_gt_u32  s[22:23], v46, v51                          // 000024BC: D1880016 0002672E
  v_cmp_gt_u32  vcc, v45, v51                               // 000024C4: 7D88672D
  v_mov_b32     v41, 0x3e900000                             // 000024C8: 7E5202FF 3E900000
  v_mad_f32     v33, v29, v33, v36                          // 000024D0: D2820021 0492431D
  v_mad_f32     v34, v30, v34, v36                          // 000024D8: D2820022 0492451E
  v_mad_f32     v35, v31, v35, v36                          // 000024E0: D2820023 0492471F
  v_mac_f32     v36, v32, v42                               // 000024E8: 3E485520
  v_mul_f32     v37, v37, -v40                              // 000024EC: D2100025 40025125
  v_mul_f32     v38, v38, -v52                              // 000024F4: D2100026 40026926
  v_mul_f32     v39, v39, -v53                              // 000024FC: D2100027 40026B27
  v_mul_f32     v42, v43, -v54                              // 00002504: D210002A 40026D2B
  v_cndmask_b32  v43, v48, v41, s[20:21]                    // 0000250C: D200002B 00525330
  v_cndmask_b32  v44, v49, v41, vcc                         // 00002514: 00585331
  v_cndmask_b32  v45, v50, v41, s[22:23]                    // 00002518: D200002D 005A5332
  v_cndmask_b32  v41, v47, v41, s[12:13]                    // 00002520: D2000029 0032532F
  v_mul_f32     v33, v29, v33                               // 00002528: 1042431D
  v_mul_f32     v34, v30, v34                               // 0000252C: 1044451E
  v_mul_f32     v35, v31, v35                               // 00002530: 1046471F
  v_mul_f32     v36, v32, v36                               // 00002534: 10484920
  v_mul_f32     v46, v13, -v60                              // 00002538: D210002E 4002790D
  v_mul_f32     v47, v15, -v61                              // 00002540: D210002F 40027B0F
  v_mul_f32     v48, v17, -v62                              // 00002548: D2100030 40027D11
  v_mul_f32     v49, v25, -v63                              // 00002550: D2100031 40027F19
  v_mac_f32     v37, 0.5, v13                               // 00002558: 3E4A1AF0
  v_mac_f32     v38, 0.5, v15                               // 0000255C: 3E4C1EF0
  v_mac_f32     v39, 0.5, v17                               // 00002560: 3E4E22F0
  v_mac_f32     v42, 0.5, v25                               // 00002564: 3E5432F0
  v_mad_f32     v50, v29, 0.5, -v43                         // 00002568: D2820032 84ADE11D
  v_mad_f32     v51, v30, 0.5, -v44                         // 00002570: D2820033 84B1E11E
  v_mad_f32     v55, v31, 0.5, -v45                         // 00002578: D2820037 84B5E11F
  v_mad_f32     v56, v32, 0.5, -v41                         // 00002580: D2820038 84A5E120
  v_mac_f32     v46, v29, v33                               // 00002588: 3E5C431D
  v_mac_f32     v47, v30, v34                               // 0000258C: 3E5E451E
  v_mac_f32     v48, v31, v35                               // 00002590: 3E60471F
  v_mac_f32     v49, v32, v36                               // 00002594: 3E624920
  v_mad_f32     v21, v29, v37, -v13                         // 00002598: D2820015 84364B1D
  v_mad_f32     v23, v30, v38, -v15                         // 000025A0: D2820017 843E4D1E
  v_mad_f32     v24, v31, v39, -v17                         // 000025A8: D2820018 84464F1F
  v_mad_f32     v25, v32, v42, -v25                         // 000025B0: D2820019 84665520
  v_mov_b32     v29, 0x3e2aaaab                             // 000025B8: 7E3A02FF 3E2AAAAB
  v_sub_f32     v30, 1.0, v43                               // 000025C0: 083C56F2
  v_sub_f32     v31, 1.0, v44                               // 000025C4: 083E58F2
  v_sub_f32     v32, 1.0, v45                               // 000025C8: 08405AF2
  v_sub_f32     v33, 1.0, v41                               // 000025CC: 084252F2
  v_sub_f32     v34, v50, v46                               // 000025D0: 08445D32
  v_sub_f32     v35, v51, v47                               // 000025D4: 08465F33
  v_sub_f32     v36, v55, v48                               // 000025D8: 08486137
  v_sub_f32     v37, v56, v49                               // 000025DC: 084A6338
  v_and_b32     v38, 1, v57                                 // 000025E0: 364C7281
  v_and_b32     v39, 1, v58                                 // 000025E4: 364E7481
  v_and_b32     v41, 1, v59                                 // 000025E8: 36527681
  v_and_b32     v42, 1, v16                                 // 000025EC: 36542081
  v_mac_f32     v21, v40, v29                               // 000025F0: 3E2A3B28
  v_mac_f32     v23, v52, v29                               // 000025F4: 3E2E3B34
  v_mac_f32     v24, v53, v29                               // 000025F8: 3E303B35
  v_mac_f32     v25, v54, v29                               // 000025FC: 3E323B36
  v_sub_f32     v29, v30, v34                               // 00002600: 083A451E
  v_sub_f32     v30, v31, v35                               // 00002604: 083C471F
  v_sub_f32     v31, v32, v36                               // 00002608: 083E4920
  v_sub_f32     v32, v33, v37                               // 0000260C: 08404B21
  v_cmp_ne_i32  s[12:13], v42, 0                            // 00002610: D10A000C 0001012A
  v_cmp_ne_i32  s[20:21], v38, 0                            // 00002618: D10A0014 00010126
  v_cmp_ne_i32  s[22:23], v41, 0                            // 00002620: D10A0016 00010129
  v_cmp_ne_i32  s[24:25], v39, 0                            // 00002628: D10A0018 00010127
  v_sub_f32     v17, v60, v21                               // 00002630: 08222B3C
  v_sub_f32     v18, v61, v23                               // 00002634: 08242F3D
  v_sub_f32     v19, v62, v24                               // 00002638: 0826313E
  v_sub_f32     v20, v63, v25                               // 0000263C: 0828333F
  v_cmp_gt_i32  s[26:27], v16, 1                            // 00002640: D108001A 00010310
  v_cmp_gt_i32  s[28:29], v57, 1                            // 00002648: D108001C 00010339
  v_cmp_gt_i32  s[30:31], v59, 1                            // 00002650: D108001E 0001033B
  v_cmp_lt_i32  vcc, 1, v58                                 // 00002658: 7D027481
  v_mov_b32     v13, 0x80000000                             // 0000265C: 7E1A02FF 80000000
  v_cndmask_b32  v14, v29, -v17, s[20:21]                   // 00002664: D200000E 4052231D
  v_cndmask_b32  v15, v30, -v18, s[24:25]                   // 0000266C: D200000F 4062251E
  v_cndmask_b32  v16, v31, -v19, s[22:23]                   // 00002674: D2000010 405A271F
  v_cndmask_b32  v17, v32, -v20, s[12:13]                   // 0000267C: D2000011 40322920
  v_cndmask_b32  v18, 0, v13, s[28:29]                      // 00002684: D2000012 00721A80
  v_cndmask_b32  v19, 0, v13, vcc                           // 0000268C: 00261A80
  v_cndmask_b32  v20, 0, v13, s[30:31]                      // 00002690: D2000014 007A1A80
  v_cndmask_b32  v13, 0, v13, s[26:27]                      // 00002698: D200000D 006A1A80
  v_mov_b32     v21, 0x7f7fffff                             // 000026A0: 7E2A02FF 7F7FFFFF
  v_xor_b32     v14, v14, v18                               // 000026A8: 3A1C250E
  v_xor_b32     v15, v15, v19                               // 000026AC: 3A1E270F
  v_xor_b32     v16, v16, v20                               // 000026B0: 3A202910
  v_xor_b32     v13, v17, v13                               // 000026B4: 3A1A1B11
  v_cmp_gt_u32  s[12:13], v10, v21                          // 000026B8: D188000C 00022B0A
  v_cmp_gt_u32  s[20:21], v2, v21                           // 000026C0: D1880014 00022B02
  v_cmp_gt_u32  s[22:23], v4, v21                           // 000026C8: D1880016 00022B04
  v_cmp_gt_u32  s[24:25], v3, v21                           // 000026D0: D1880018 00022B03
  v_mov_b32     v17, 0x7fc00000                             // 000026D8: 7E2202FF 7FC00000
  v_cndmask_b32  v14, v14, v17, s[20:21]                    // 000026E0: D200000E 0052230E
  v_cndmask_b32  v15, v15, v17, s[24:25]                    // 000026E8: D200000F 0062230F
  v_cndmask_b32  v16, v16, v17, s[22:23]                    // 000026F0: D2000010 005A2310
  v_cndmask_b32  v13, v13, v17, s[12:13]                    // 000026F8: D200000D 0032230D
  v_mul_f32     v18, v5, v14                                // 00002700: 10241D05
  v_mul_f32     v19, v11, v15                               // 00002704: 10261F0B
  v_mul_f32     v20, v12, v16                               // 00002708: 1028210C
  v_mul_f32     v21, v1, v13                                // 0000270C: 102A1B01
  v_add_i32     v17, vcc, -16, v0                           // 00002710: 4A2200D0
  tbuffer_store_format_xyzw  v[18:21], v17, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 00002714: EBF71000 80011211
  s_mov_b64     s[26:27], exec                              // 0000271C: BE9A047E
  s_andn2_b64   exec, s[26:27], s[2:3]                      // 00002720: 8AFE021A
  s_cbranch_execz  label_0E41                               // 00002724: BF880477
  s_mov_b32     s2, 0x4b000000                              // 00002728: BE8203FF 4B000000
  v_cmp_nlt_f32  s[2:3], v2, s2                             // 00002730: D01C0002 00000502
  s_and_saveexec_b64  s[2:3], s[2:3]                        // 00002738: BE822402
  v_and_b32     v13, 0x007fffff, v6                         // 0000273C: 361A0CFF 007FFFFF
  s_cbranch_execz  label_0AB6                               // 00002744: BF8800E4
  v_or_b32      v13, 0x00800000, v13                        // 00002748: 381A1AFF 00800000
  s_mov_b32     s15, 0xfe5163ab                             // 00002750: BE8F03FF FE5163AB
  s_mov_b32     s28, 0x3c439041                             // 00002758: BE9C03FF 3C439041
  v_mul_hi_u32  v14, v13, s15                               // 00002760: D2D4000E 02001F0D
  v_mul_lo_u32  v15, v13, s28                               // 00002768: D2D2000F 0200390D
  v_add_i32     v15, vcc, v14, v15                          // 00002770: 4A1E1F0E
  s_mov_b32     s15, 0xdb629599                             // 00002774: BE8F03FF DB629599
  v_cmp_gt_u32  s[30:31], v14, v15                          // 0000277C: D188001E 00021F0E
  v_mul_hi_u32  v14, v13, s28                               // 00002784: D2D4000E 0200390D
  v_mul_lo_u32  v16, v13, s15                               // 0000278C: D2D20010 02001F0D
  v_addc_u32    v17, vcc, v14, 0, s[30:31]                  // 00002794: D2506A11 0079010E
  v_addc_u32    v14, vcc, v14, v16, s[30:31]                // 0000279C: D2506A0E 007A210E
  s_mov_b32     s28, 0xf534ddc0                             // 000027A4: BE9C03FF F534DDC0
  v_lshrrev_b32  v16, 23, v2                                // 000027AC: 2C200497
  v_cmp_gt_u32  s[30:31], v17, v14                          // 000027B0: D188001E 00021D11
  v_mul_hi_u32  v17, v13, s15                               // 000027B8: D2D40011 02001F0D
  s_waitcnt     expcnt(0)                                   // 000027C0: BF8C1F0F
  v_mul_lo_u32  v18, v13, s28                               // 000027C4: D2D20012 0200390D
  v_add_i32     v16, vcc, 0xffffff88, v16                   // 000027CC: 4A2020FF FFFFFF88
  v_addc_u32    v19, vcc, v17, 0, s[30:31]                  // 000027D4: D2506A13 00790111
  v_addc_u32    v17, vcc, v17, v18, s[30:31]                // 000027DC: D2506A11 007A2511
  s_mov_b32     s15, 0xfc2757d1                             // 000027E4: BE8F03FF FC2757D1
  v_cmp_gt_u32  s[30:31], v16, 31                           // 000027EC: D188001E 00013F10
  v_mov_b32     v18, 0xffffffe0                             // 000027F4: 7E2402FF FFFFFFE0
  v_cmp_gt_u32  s[32:33], v19, v17                          // 000027FC: D1880020 00022313
  v_mul_hi_u32  v19, v13, s28                               // 00002804: D2D40013 0200390D
  v_mul_lo_u32  v20, v13, s15                               // 0000280C: D2D20014 02001F0D
  v_cndmask_b32  v21, 0, v18, s[30:31]                      // 00002814: D2000015 007A2480
  v_addc_u32    v23, vcc, v19, 0, s[32:33]                  // 0000281C: D2506A17 00810113
  v_addc_u32    v19, vcc, v19, v20, s[32:33]                // 00002824: D2506A13 00822913
  s_mov_b32     s28, 0x4e441529                             // 0000282C: BE9C03FF 4E441529
  v_add_i32     v16, vcc, v16, v21                          // 00002834: 4A202B10
  v_cmp_gt_u32  s[32:33], v23, v19                          // 00002838: D1880020 00022717
  v_mul_hi_u32  v20, v13, s15                               // 00002840: D2D40014 02001F0D
  v_mul_lo_u32  v21, v13, s28                               // 00002848: D2D20015 0200390D
  v_cmp_gt_u32  s[34:35], v16, 31                           // 00002850: D1880022 00013F10
  v_addc_u32    v23, vcc, v20, 0, s[32:33]                  // 00002858: D2506A17 00810114
  v_addc_u32    v20, vcc, v20, v21, s[32:33]                // 00002860: D2506A14 00822B14
  s_mov_b32     s15, 0xa2f9836e                             // 00002868: BE8F03FF A2F9836E
  v_cndmask_b32  v21, 0, v18, s[34:35]                      // 00002870: D2000015 008A2480
  v_cmp_gt_u32  s[32:33], v23, v20                          // 00002878: D1880020 00022917
  v_mul_hi_u32  v23, v13, s28                               // 00002880: D2D40017 0200390D
  v_mul_lo_u32  v24, v13, s15                               // 00002888: D2D20018 02001F0D
  v_add_i32     v16, vcc, v16, v21                          // 00002890: 4A202B10
  v_addc_u32    v21, vcc, v23, 0, s[32:33]                  // 00002894: D2506A15 00810117
  v_addc_u32    v23, vcc, v23, v24, s[32:33]                // 0000289C: D2506A17 00823117
  v_cmp_gt_u32  s[28:29], v16, 31                           // 000028A4: D188001C 00013F10
  v_cmp_gt_u32  s[32:33], v21, v23                          // 000028AC: D1880020 00022F15
  v_mul_hi_u32  v21, v13, s15                               // 000028B4: D2D40015 02001F0D
  v_cndmask_b32  v18, 0, v18, s[28:29]                      // 000028BC: D2000012 00722480
  v_addc_u32    v21, vcc, v21, 0, s[32:33]                  // 000028C4: D2506A15 00810115
  v_add_i32     v16, vcc, v16, v18                          // 000028CC: 4A202510
  v_cndmask_b32  v18, v21, v23, s[30:31]                    // 000028D0: D2000012 007A2F15
  v_cndmask_b32  v21, v23, v20, s[30:31]                    // 000028D8: D2000015 007A2917
  v_cndmask_b32  v20, v20, v19, s[30:31]                    // 000028E0: D2000014 007A2714
  v_cndmask_b32  v19, v19, v17, s[30:31]                    // 000028E8: D2000013 007A2313
  v_cmp_gt_u32  s[32:33], v16, 31                           // 000028F0: D1880020 00013F10
  v_cndmask_b32  v17, v17, v14, s[30:31]                    // 000028F8: D2000011 007A1D11
  v_cndmask_b32  v18, v18, v21, s[34:35]                    // 00002900: D2000012 008A2B12
  v_cndmask_b32  v21, v21, v20, s[34:35]                    // 00002908: D2000015 008A2915
  v_cndmask_b32  v20, v20, v19, s[34:35]                    // 00002910: D2000014 008A2714
  v_cndmask_b32  v19, v19, v17, s[34:35]                    // 00002918: D2000013 008A2313
  v_cndmask_b32  v23, 0, 32, s[32:33]                       // 00002920: D2000017 00814080
  v_cndmask_b32  v18, v18, v21, s[28:29]                    // 00002928: D2000012 00722B12
  v_cndmask_b32  v21, v21, v20, s[28:29]                    // 00002930: D2000015 00722915
  v_cndmask_b32  v14, v14, v15, s[30:31]                    // 00002938: D200000E 007A1F0E
  v_cndmask_b32  v20, v20, v19, s[28:29]                    // 00002940: D2000014 00722714
  v_sub_i32     v24, vcc, v23, v16                          // 00002948: 4C302117
  v_cndmask_b32  v18, v18, v21, s[32:33]                    // 0000294C: D2000012 00822B12
  v_cndmask_b32  v17, v17, v14, s[34:35]                    // 00002954: D2000011 008A1D11
  v_cndmask_b32  v21, v21, v20, s[32:33]                    // 0000295C: D2000015 00822915
  s_mov_b32     s15, 0xfe5163ab                             // 00002964: BE8F03FF FE5163AB
  v_add_i32     v24, vcc, 32, v24                           // 0000296C: 4A3030A0
  v_cndmask_b32  v19, v19, v17, s[28:29]                    // 00002970: D2000013 00722313
  v_mul_lo_i32  v13, v13, s15                               // 00002978: D2D6000D 02001F0D
  v_cmp_ne_i32  vcc, v16, v23                               // 00002980: 7D0A2F10
  v_alignbit_b32  v16, v18, v21, v24                        // 00002984: D29C0010 04622B12
  v_cndmask_b32  v20, v20, v19, s[32:33]                    // 0000298C: D2000014 00822714
  v_cndmask_b32  v13, v15, v13, s[30:31]                    // 00002994: D200000D 007A1B0F
  v_cndmask_b32  v15, v18, v16, vcc                         // 0000299C: 001E2112
  v_cndmask_b32  v13, v14, v13, s[34:35]                    // 000029A0: D200000D 008A1B0E
  v_alignbit_b32  v14, v21, v20, v24                        // 000029A8: D29C000E 04622915
  v_bfe_u32     v16, v15, 29, 1                             // 000029B0: D2900010 02053B0F
  v_cndmask_b32  v13, v17, v13, s[28:29]                    // 000029B8: D200000D 00721B11
  v_cndmask_b32  v14, v21, v14, vcc                         // 000029C0: 001C1D15
  v_cmp_ne_i32  s[28:29], v16, 0                            // 000029C4: D10A001C 00010110
  v_cndmask_b32  v13, v19, v13, s[32:33]                    // 000029CC: D200000D 00821B13
  v_alignbit_b32  v17, v15, v14, 30                         // 000029D4: D29C0011 027A1D0F
  v_cndmask_b32  v18, 0, -1, s[28:29]                       // 000029DC: D2000012 00718280
  v_alignbit_b32  v19, v20, v13, v24                        // 000029E4: D29C0013 04621B14
  v_xor_b32     v21, v17, v18                               // 000029EC: 3A2A2511
  v_cndmask_b32  v19, v20, v19, vcc                         // 000029F0: 00262714
  v_ffbh_u32    v20, v21                                    // 000029F4: 7E287315
  v_cmp_ne_i32  vcc, v17, v18                               // 000029F8: 7D0A2511
  v_alignbit_b32  v14, v14, v19, 30                         // 000029FC: D29C000E 027A270E
  v_alignbit_b32  v13, v19, v13, 30                         // 00002A04: D29C000D 027A1B13
  v_cndmask_b32  v17, 32, v20, vcc                          // 00002A0C: 002228A0
  v_sub_i32     v19, vcc, 31, v17                           // 00002A10: 4C26229F
  v_xor_b32     v13, v13, v18                               // 00002A14: 3A1A250D
  v_xor_b32     v14, v14, v18                               // 00002A18: 3A1C250E
  v_sub_i32     v18, vcc, 0, v17                            // 00002A1C: 4C242280
  v_alignbit_b32  v13, v14, v13, v19                        // 00002A20: D29C000D 044E1B0E
  v_alignbit_b32  v14, v21, v14, v19                        // 00002A28: D29C000E 044E1D15
  v_lshlrev_b32  v19, 2, v15                                // 00002A30: 34261E82
  v_alignbit_b32  v20, v14, v13, 9                          // 00002A34: D29C0014 02261B0E
  v_lshlrev_b32  v18, 23, v18                               // 00002A3C: 34242497
  v_and_b32     v19, 0x80000000, v19                        // 00002A40: 362626FF 80000000
  v_add_i32     v18, vcc, 0.5, v18                          // 00002A48: 4A2424F0
  v_ffbh_u32    v21, v20                                    // 00002A4C: 7E2A7314
  v_cmp_ne_i32  vcc, 0, v20                                 // 00002A50: 7D0A2880
  v_lshrrev_b32  v14, 9, v14                                // 00002A54: 2C1C1C89
  v_or_b32      v18, v19, v18                               // 00002A58: 38242513
  v_cndmask_b32  v21, 32, v21, vcc                          // 00002A5C: 002A2AA0
  v_sub_i32     v17, vcc, 0x00000066, v17                   // 00002A60: 4C2222FF 00000066
  v_or_b32      v14, v14, v18                               // 00002A68: 381C250E
  v_sub_i32     v18, vcc, 31, v21                           // 00002A6C: 4C242A9F
  v_sub_i32     v17, vcc, v17, v21                          // 00002A70: 4C222B11
  v_alignbit_b32  v13, v20, v13, v18                        // 00002A74: D29C000D 044A1B14
  v_lshlrev_b32  v17, 23, v17                               // 00002A7C: 34222297
  v_mul_f32     v18, 0x3fc90fda, v14                        // 00002A80: 10241CFF 3FC90FDA
  s_mov_b32     s15, 0x3fc90fda                             // 00002A88: BE8F03FF 3FC90FDA
  v_lshrrev_b32  v13, 9, v13                                // 00002A90: 2C1A1A89
  v_or_b32      v17, v19, v17                               // 00002A94: 38222313
  v_fma_f32     v18, v14, s15, -v18                         // 00002A98: D2960012 84481F0E
  s_mov_b32     s28, 0x33a22168                             // 00002AA0: BE9C03FF 33A22168
  v_or_b32      v13, v13, v17                               // 00002AA8: 381A230D
  v_fma_f32     v17, v14, s28, v18                          // 00002AAC: D2960011 0448390E
  v_fma_f32     v13, v13, s15, v17                          // 00002AB4: D296000D 04441F0D
  v_mad_f32     v57, v14, s15, v13                          // 00002ABC: D2820039 04341F0E
  v_lshrrev_b32  v15, 30, v15                               // 00002AC4: 2C1E1E9E
  v_mad_f32     v14, -v14, s15, v57                         // 00002AC8: D282000E 24E41F0E
  v_add_i32     v16, vcc, v16, v15                          // 00002AD0: 4A201F10
  v_sub_f32     v14, v13, v14                               // 00002AD4: 081C1D0D
label_0AB6:
  s_andn2_b64   exec, s[2:3], exec                          // 00002AD8: 8AFE7E02
  s_cbranch_execz  label_0AE6                               // 00002ADC: BF88002E
  s_mov_b32     s15, 0x3f22f983                             // 00002AE0: BE8F03FF 3F22F983
  v_mad_f32     v13, v2, s15, 0.5                           // 00002AE8: D282000D 03C01F02
  v_trunc_f32   v13, v13                                    // 00002AF0: 7E1A430D
  v_mul_f32     v14, 0x3fc90fda, v13                        // 00002AF4: 101C1AFF 3FC90FDA
  s_mov_b32     s15, 0x3fc90fda                             // 00002AFC: BE8F03FF 3FC90FDA
  v_fma_f32     v14, v13, s15, -v14                         // 00002B04: D296000E 84381F0D
  v_mad_f32     v15, -v13, s15, v2                          // 00002B0C: D282000F 24081F0D
  v_sub_f32     v16, v2, v15                                // 00002B14: 08201F02
  v_mad_f32     v16, -v13, s15, v16                         // 00002B18: D2820010 24401F0D
  v_subrev_f32  v14, v14, v16                               // 00002B20: 0A1C210E
  v_add_f32     v14, v15, v14                               // 00002B24: 061C1D0F
  v_mul_f32     v15, 0x33a22168, v13                        // 00002B28: 101E1AFF 33A22168
  s_mov_b32     s15, 0x33a22168                             // 00002B30: BE8F03FF 33A22168
  v_fma_f32     v15, v13, s15, -v15                         // 00002B38: D296000F 843C1F0D
  v_mad_f32     v16, -v13, s15, v14                         // 00002B40: D2820010 24381F0D
  v_sub_f32     v14, v14, v16                               // 00002B48: 081C210E
  v_mad_f32     v14, -v13, s15, v14                         // 00002B4C: D282000E 24381F0D
  v_subrev_f32  v14, v15, v14                               // 00002B54: 0A1C1D0F
  v_add_f32     v14, v16, v14                               // 00002B58: 061C1D10
  v_mul_f32     v15, 0x27c234c4, v13                        // 00002B5C: 101E1AFF 27C234C4
  s_mov_b32     s15, 0x27c234c4                             // 00002B64: BE8F03FF 27C234C4
  v_fma_f32     v15, v13, s15, -v15                         // 00002B6C: D296000F 843C1F0D
  v_mad_f32     v16, -v13, s15, v14                         // 00002B74: D2820010 24381F0D
  v_sub_f32     v14, v14, v16                               // 00002B7C: 081C210E
  v_mad_f32     v14, -v13, s15, v14                         // 00002B80: D282000E 24381F0D
  v_add_f32     v57, v16, v14                               // 00002B88: 06721D10
  v_cvt_i32_f32  v16, v13                                   // 00002B8C: 7E20110D
  v_max_f32     v14, -v15, -v15                             // 00002B90: D220000E 60021F0F
label_0AE6:
  s_mov_b64     exec, s[2:3]                                // 00002B98: BEFE0402
  s_mov_b32     s2, 0x4b000000                              // 00002B9C: BE8203FF 4B000000
  v_cmp_nlt_f32  s[2:3], v3, s2                             // 00002BA4: D01C0002 00000503
  v_and_b32     v61, 3, v16                                 // 00002BAC: 367A2083
  s_and_saveexec_b64  s[2:3], s[2:3]                        // 00002BB0: BE822402
  v_and_b32     v16, 0x007fffff, v7                         // 00002BB4: 36200EFF 007FFFFF
  s_cbranch_execz  label_0BD4                               // 00002BBC: BF8800E4
  v_or_b32      v16, 0x00800000, v16                        // 00002BC0: 382020FF 00800000
  s_mov_b32     s15, 0xfe5163ab                             // 00002BC8: BE8F03FF FE5163AB
  s_mov_b32     s28, 0x3c439041                             // 00002BD0: BE9C03FF 3C439041
  v_mul_hi_u32  v17, v16, s15                               // 00002BD8: D2D40011 02001F10
  s_waitcnt     expcnt(0)                                   // 00002BE0: BF8C1F0F
  v_mul_lo_u32  v18, v16, s28                               // 00002BE4: D2D20012 02003910
  v_add_i32     v18, vcc, v17, v18                          // 00002BEC: 4A242511
  s_mov_b32     s15, 0xdb629599                             // 00002BF0: BE8F03FF DB629599
  v_cmp_gt_u32  s[30:31], v17, v18                          // 00002BF8: D188001E 00022511
  v_mul_hi_u32  v17, v16, s28                               // 00002C00: D2D40011 02003910
  v_mul_lo_u32  v19, v16, s15                               // 00002C08: D2D20013 02001F10
  v_addc_u32    v20, vcc, v17, 0, s[30:31]                  // 00002C10: D2506A14 00790111
  v_addc_u32    v17, vcc, v17, v19, s[30:31]                // 00002C18: D2506A11 007A2711
  s_mov_b32     s28, 0xf534ddc0                             // 00002C20: BE9C03FF F534DDC0
  v_lshrrev_b32  v19, 23, v3                                // 00002C28: 2C260697
  v_cmp_gt_u32  s[30:31], v20, v17                          // 00002C2C: D188001E 00022314
  v_mul_hi_u32  v20, v16, s15                               // 00002C34: D2D40014 02001F10
  v_mul_lo_u32  v21, v16, s28                               // 00002C3C: D2D20015 02003910
  v_add_i32     v19, vcc, 0xffffff88, v19                   // 00002C44: 4A2626FF FFFFFF88
  v_addc_u32    v23, vcc, v20, 0, s[30:31]                  // 00002C4C: D2506A17 00790114
  v_addc_u32    v20, vcc, v20, v21, s[30:31]                // 00002C54: D2506A14 007A2B14
  s_mov_b32     s15, 0xfc2757d1                             // 00002C5C: BE8F03FF FC2757D1
  v_cmp_gt_u32  s[30:31], v19, 31                           // 00002C64: D188001E 00013F13
  v_mov_b32     v21, 0xffffffe0                             // 00002C6C: 7E2A02FF FFFFFFE0
  v_cmp_gt_u32  s[32:33], v23, v20                          // 00002C74: D1880020 00022917
  v_mul_hi_u32  v23, v16, s28                               // 00002C7C: D2D40017 02003910
  v_mul_lo_u32  v24, v16, s15                               // 00002C84: D2D20018 02001F10
  v_cndmask_b32  v25, 0, v21, s[30:31]                      // 00002C8C: D2000019 007A2A80
  v_addc_u32    v29, vcc, v23, 0, s[32:33]                  // 00002C94: D2506A1D 00810117
  v_addc_u32    v23, vcc, v23, v24, s[32:33]                // 00002C9C: D2506A17 00823117
  s_mov_b32     s28, 0x4e441529                             // 00002CA4: BE9C03FF 4E441529
  v_add_i32     v19, vcc, v19, v25                          // 00002CAC: 4A263313
  v_cmp_gt_u32  s[32:33], v29, v23                          // 00002CB0: D1880020 00022F1D
  v_mul_hi_u32  v24, v16, s15                               // 00002CB8: D2D40018 02001F10
  v_mul_lo_u32  v25, v16, s28                               // 00002CC0: D2D20019 02003910
  v_cmp_gt_u32  s[34:35], v19, 31                           // 00002CC8: D1880022 00013F13
  v_addc_u32    v29, vcc, v24, 0, s[32:33]                  // 00002CD0: D2506A1D 00810118
  v_addc_u32    v24, vcc, v24, v25, s[32:33]                // 00002CD8: D2506A18 00823318
  s_mov_b32     s15, 0xa2f9836e                             // 00002CE0: BE8F03FF A2F9836E
  v_cndmask_b32  v25, 0, v21, s[34:35]                      // 00002CE8: D2000019 008A2A80
  v_cmp_gt_u32  s[32:33], v29, v24                          // 00002CF0: D1880020 0002311D
  v_mul_hi_u32  v29, v16, s28                               // 00002CF8: D2D4001D 02003910
  v_mul_lo_u32  v30, v16, s15                               // 00002D00: D2D2001E 02001F10
  v_add_i32     v19, vcc, v19, v25                          // 00002D08: 4A263313
  v_addc_u32    v25, vcc, v29, 0, s[32:33]                  // 00002D0C: D2506A19 0081011D
  v_addc_u32    v29, vcc, v29, v30, s[32:33]                // 00002D14: D2506A1D 00823D1D
  v_cmp_gt_u32  s[28:29], v19, 31                           // 00002D1C: D188001C 00013F13
  v_cmp_gt_u32  s[32:33], v25, v29                          // 00002D24: D1880020 00023B19
  v_mul_hi_u32  v25, v16, s15                               // 00002D2C: D2D40019 02001F10
  v_cndmask_b32  v21, 0, v21, s[28:29]                      // 00002D34: D2000015 00722A80
  v_addc_u32    v25, vcc, v25, 0, s[32:33]                  // 00002D3C: D2506A19 00810119
  v_add_i32     v19, vcc, v19, v21                          // 00002D44: 4A262B13
  v_cndmask_b32  v21, v25, v29, s[30:31]                    // 00002D48: D2000015 007A3B19
  v_cndmask_b32  v25, v29, v24, s[30:31]                    // 00002D50: D2000019 007A311D
  v_cndmask_b32  v24, v24, v23, s[30:31]                    // 00002D58: D2000018 007A2F18
  v_cndmask_b32  v23, v23, v20, s[30:31]                    // 00002D60: D2000017 007A2917
  v_cmp_gt_u32  s[32:33], v19, 31                           // 00002D68: D1880020 00013F13
  v_cndmask_b32  v20, v20, v17, s[30:31]                    // 00002D70: D2000014 007A2314
  v_cndmask_b32  v21, v21, v25, s[34:35]                    // 00002D78: D2000015 008A3315
  v_cndmask_b32  v25, v25, v24, s[34:35]                    // 00002D80: D2000019 008A3119
  v_cndmask_b32  v24, v24, v23, s[34:35]                    // 00002D88: D2000018 008A2F18
  v_cndmask_b32  v23, v23, v20, s[34:35]                    // 00002D90: D2000017 008A2917
  v_cndmask_b32  v29, 0, 32, s[32:33]                       // 00002D98: D200001D 00814080
  v_cndmask_b32  v21, v21, v25, s[28:29]                    // 00002DA0: D2000015 00723315
  v_cndmask_b32  v25, v25, v24, s[28:29]                    // 00002DA8: D2000019 00723119
  v_cndmask_b32  v17, v17, v18, s[30:31]                    // 00002DB0: D2000011 007A2511
  v_cndmask_b32  v24, v24, v23, s[28:29]                    // 00002DB8: D2000018 00722F18
  v_sub_i32     v30, vcc, v29, v19                          // 00002DC0: 4C3C271D
  v_cndmask_b32  v21, v21, v25, s[32:33]                    // 00002DC4: D2000015 00823315
  v_cndmask_b32  v20, v20, v17, s[34:35]                    // 00002DCC: D2000014 008A2314
  v_cndmask_b32  v25, v25, v24, s[32:33]                    // 00002DD4: D2000019 00823119
  s_mov_b32     s15, 0xfe5163ab                             // 00002DDC: BE8F03FF FE5163AB
  v_add_i32     v30, vcc, 32, v30                           // 00002DE4: 4A3C3CA0
  v_cndmask_b32  v23, v23, v20, s[28:29]                    // 00002DE8: D2000017 00722917
  v_mul_lo_i32  v16, v16, s15                               // 00002DF0: D2D60010 02001F10
  v_cmp_ne_i32  vcc, v19, v29                               // 00002DF8: 7D0A3B13
  v_alignbit_b32  v19, v21, v25, v30                        // 00002DFC: D29C0013 047A3315
  v_cndmask_b32  v24, v24, v23, s[32:33]                    // 00002E04: D2000018 00822F18
  v_cndmask_b32  v16, v18, v16, s[30:31]                    // 00002E0C: D2000010 007A2112
  v_cndmask_b32  v18, v21, v19, vcc                         // 00002E14: 00242715
  v_cndmask_b32  v16, v17, v16, s[34:35]                    // 00002E18: D2000010 008A2111
  v_alignbit_b32  v17, v25, v24, v30                        // 00002E20: D29C0011 047A3119
  v_bfe_u32     v19, v18, 29, 1                             // 00002E28: D2900013 02053B12
  v_cndmask_b32  v16, v20, v16, s[28:29]                    // 00002E30: D2000010 00722114
  v_cndmask_b32  v17, v25, v17, vcc                         // 00002E38: 00222319
  v_cmp_ne_i32  s[28:29], v19, 0                            // 00002E3C: D10A001C 00010113
  v_cndmask_b32  v16, v23, v16, s[32:33]                    // 00002E44: D2000010 00822117
  v_alignbit_b32  v20, v18, v17, 30                         // 00002E4C: D29C0014 027A2312
  v_cndmask_b32  v21, 0, -1, s[28:29]                       // 00002E54: D2000015 00718280
  v_alignbit_b32  v23, v24, v16, v30                        // 00002E5C: D29C0017 047A2118
  v_xor_b32     v25, v20, v21                               // 00002E64: 3A322B14
  v_cndmask_b32  v23, v24, v23, vcc                         // 00002E68: 002E2F18
  v_ffbh_u32    v24, v25                                    // 00002E6C: 7E307319
  v_cmp_ne_i32  vcc, v20, v21                               // 00002E70: 7D0A2B14
  v_alignbit_b32  v17, v17, v23, 30                         // 00002E74: D29C0011 027A2F11
  v_alignbit_b32  v16, v23, v16, 30                         // 00002E7C: D29C0010 027A2117
  v_cndmask_b32  v20, 32, v24, vcc                          // 00002E84: 002830A0
  v_sub_i32     v23, vcc, 31, v20                           // 00002E88: 4C2E289F
  v_xor_b32     v16, v16, v21                               // 00002E8C: 3A202B10
  v_xor_b32     v17, v17, v21                               // 00002E90: 3A222B11
  v_sub_i32     v21, vcc, 0, v20                            // 00002E94: 4C2A2880
  v_alignbit_b32  v16, v17, v16, v23                        // 00002E98: D29C0010 045E2111
  v_alignbit_b32  v17, v25, v17, v23                        // 00002EA0: D29C0011 045E2319
  v_lshlrev_b32  v23, 2, v18                                // 00002EA8: 342E2482
  v_alignbit_b32  v24, v17, v16, 9                          // 00002EAC: D29C0018 02262111
  v_lshlrev_b32  v21, 23, v21                               // 00002EB4: 342A2A97
  v_and_b32     v23, 0x80000000, v23                        // 00002EB8: 362E2EFF 80000000
  v_add_i32     v21, vcc, 0.5, v21                          // 00002EC0: 4A2A2AF0
  v_ffbh_u32    v25, v24                                    // 00002EC4: 7E327318
  v_cmp_ne_i32  vcc, 0, v24                                 // 00002EC8: 7D0A3080
  v_lshrrev_b32  v17, 9, v17                                // 00002ECC: 2C222289
  v_or_b32      v21, v23, v21                               // 00002ED0: 382A2B17
  v_cndmask_b32  v25, 32, v25, vcc                          // 00002ED4: 003232A0
  v_sub_i32     v20, vcc, 0x00000066, v20                   // 00002ED8: 4C2828FF 00000066
  v_or_b32      v17, v17, v21                               // 00002EE0: 38222B11
  v_sub_i32     v21, vcc, 31, v25                           // 00002EE4: 4C2A329F
  v_sub_i32     v20, vcc, v20, v25                          // 00002EE8: 4C283314
  v_alignbit_b32  v16, v24, v16, v21                        // 00002EEC: D29C0010 04562118
  v_lshlrev_b32  v20, 23, v20                               // 00002EF4: 34282897
  v_mul_f32     v21, 0x3fc90fda, v17                        // 00002EF8: 102A22FF 3FC90FDA
  s_mov_b32     s15, 0x3fc90fda                             // 00002F00: BE8F03FF 3FC90FDA
  v_lshrrev_b32  v16, 9, v16                                // 00002F08: 2C202089
  v_or_b32      v20, v23, v20                               // 00002F0C: 38282917
  v_fma_f32     v21, v17, s15, -v21                         // 00002F10: D2960015 84541F11
  s_mov_b32     s28, 0x33a22168                             // 00002F18: BE9C03FF 33A22168
  v_or_b32      v16, v16, v20                               // 00002F20: 38202910
  v_fma_f32     v20, v17, s28, v21                          // 00002F24: D2960014 04543911
  v_fma_f32     v16, v16, s15, v20                          // 00002F2C: D2960010 04501F10
  v_mad_f32     v58, v17, s15, v16                          // 00002F34: D282003A 04401F11
  v_lshrrev_b32  v18, 30, v18                               // 00002F3C: 2C24249E
  v_mad_f32     v17, -v17, s15, v58                         // 00002F40: D2820011 24E81F11
  v_add_i32     v19, vcc, v19, v18                          // 00002F48: 4A262513
  v_sub_f32     v13, v16, v17                               // 00002F4C: 081A2310
label_0BD4:
  s_andn2_b64   exec, s[2:3], exec                          // 00002F50: 8AFE7E02
  s_cbranch_execz  label_0C05                               // 00002F54: BF88002F
  s_mov_b32     s15, 0x3f22f983                             // 00002F58: BE8F03FF 3F22F983
  v_mad_f32     v16, v3, s15, 0.5                           // 00002F60: D2820010 03C01F03
  v_trunc_f32   v16, v16                                    // 00002F68: 7E204310
  v_mul_f32     v17, 0x3fc90fda, v16                        // 00002F6C: 102220FF 3FC90FDA
  s_mov_b32     s15, 0x3fc90fda                             // 00002F74: BE8F03FF 3FC90FDA
  v_fma_f32     v17, v16, s15, -v17                         // 00002F7C: D2960011 84441F10
  s_waitcnt     expcnt(0)                                   // 00002F84: BF8C1F0F
  v_mad_f32     v18, -v16, s15, v3                          // 00002F88: D2820012 240C1F10
  v_sub_f32     v19, v3, v18                                // 00002F90: 08262503
  v_mad_f32     v19, -v16, s15, v19                         // 00002F94: D2820013 244C1F10
  v_subrev_f32  v17, v17, v19                               // 00002F9C: 0A222711
  v_add_f32     v17, v18, v17                               // 00002FA0: 06222312
  v_mul_f32     v18, 0x33a22168, v16                        // 00002FA4: 102420FF 33A22168
  s_mov_b32     s15, 0x33a22168                             // 00002FAC: BE8F03FF 33A22168
  v_fma_f32     v18, v16, s15, -v18                         // 00002FB4: D2960012 84481F10
  v_mad_f32     v19, -v16, s15, v17                         // 00002FBC: D2820013 24441F10
  v_sub_f32     v17, v17, v19                               // 00002FC4: 08222711
  v_mad_f32     v17, -v16, s15, v17                         // 00002FC8: D2820011 24441F10
  v_subrev_f32  v17, v18, v17                               // 00002FD0: 0A222312
  v_add_f32     v17, v19, v17                               // 00002FD4: 06222313
  v_mul_f32     v18, 0x27c234c4, v16                        // 00002FD8: 102420FF 27C234C4
  s_mov_b32     s15, 0x27c234c4                             // 00002FE0: BE8F03FF 27C234C4
  v_fma_f32     v18, v16, s15, -v18                         // 00002FE8: D2960012 84481F10
  v_mad_f32     v19, -v16, s15, v17                         // 00002FF0: D2820013 24441F10
  v_sub_f32     v17, v17, v19                               // 00002FF8: 08222711
  v_mad_f32     v17, -v16, s15, v17                         // 00002FFC: D2820011 24441F10
  v_add_f32     v58, v19, v17                               // 00003004: 06742313
  v_cvt_i32_f32  v19, v16                                   // 00003008: 7E261110
  v_max_f32     v13, -v18, -v18                             // 0000300C: D220000D 60022512
label_0C05:
  s_mov_b64     exec, s[2:3]                                // 00003014: BEFE0402
  v_and_b32     v18, 3, v19                                 // 00003018: 36242683
  s_mov_b32     s2, 0x4b000000                              // 0000301C: BE8203FF 4B000000
  v_cmp_nlt_f32  s[2:3], v4, s2                             // 00003024: D01C0002 00000504
  s_and_saveexec_b64  s[2:3], s[2:3]                        // 0000302C: BE822402
  v_and_b32     v19, 0x007fffff, v8                         // 00003030: 362610FF 007FFFFF
  s_cbranch_execz  label_0CF2                               // 00003038: BF8800E3
  v_or_b32      v19, 0x00800000, v19                        // 0000303C: 382626FF 00800000
  s_mov_b32     s15, 0xfe5163ab                             // 00003044: BE8F03FF FE5163AB
  s_mov_b32     s28, 0x3c439041                             // 0000304C: BE9C03FF 3C439041
  v_mul_hi_u32  v20, v19, s15                               // 00003054: D2D40014 02001F13
  v_mul_lo_u32  v21, v19, s28                               // 0000305C: D2D20015 02003913
  v_add_i32     v21, vcc, v20, v21                          // 00003064: 4A2A2B14
  s_mov_b32     s15, 0xdb629599                             // 00003068: BE8F03FF DB629599
  v_cmp_gt_u32  s[30:31], v20, v21                          // 00003070: D188001E 00022B14
  v_mul_hi_u32  v20, v19, s28                               // 00003078: D2D40014 02003913
  v_mul_lo_u32  v23, v19, s15                               // 00003080: D2D20017 02001F13
  v_addc_u32    v24, vcc, v20, 0, s[30:31]                  // 00003088: D2506A18 00790114
  v_addc_u32    v20, vcc, v20, v23, s[30:31]                // 00003090: D2506A14 007A2F14
  s_mov_b32     s28, 0xf534ddc0                             // 00003098: BE9C03FF F534DDC0
  v_lshrrev_b32  v23, 23, v4                                // 000030A0: 2C2E0897
  v_cmp_gt_u32  s[30:31], v24, v20                          // 000030A4: D188001E 00022918
  v_mul_hi_u32  v24, v19, s15                               // 000030AC: D2D40018 02001F13
  v_mul_lo_u32  v25, v19, s28                               // 000030B4: D2D20019 02003913
  v_add_i32     v23, vcc, 0xffffff88, v23                   // 000030BC: 4A2E2EFF FFFFFF88
  v_addc_u32    v29, vcc, v24, 0, s[30:31]                  // 000030C4: D2506A1D 00790118
  v_addc_u32    v24, vcc, v24, v25, s[30:31]                // 000030CC: D2506A18 007A3318
  s_mov_b32     s15, 0xfc2757d1                             // 000030D4: BE8F03FF FC2757D1
  v_cmp_gt_u32  s[30:31], v23, 31                           // 000030DC: D188001E 00013F17
  v_mov_b32     v25, 0xffffffe0                             // 000030E4: 7E3202FF FFFFFFE0
  v_cmp_gt_u32  s[32:33], v29, v24                          // 000030EC: D1880020 0002311D
  v_mul_hi_u32  v29, v19, s28                               // 000030F4: D2D4001D 02003913
  v_mul_lo_u32  v30, v19, s15                               // 000030FC: D2D2001E 02001F13
  v_cndmask_b32  v31, 0, v25, s[30:31]                      // 00003104: D200001F 007A3280
  v_addc_u32    v32, vcc, v29, 0, s[32:33]                  // 0000310C: D2506A20 0081011D
  v_addc_u32    v29, vcc, v29, v30, s[32:33]                // 00003114: D2506A1D 00823D1D
  s_mov_b32     s28, 0x4e441529                             // 0000311C: BE9C03FF 4E441529
  v_add_i32     v23, vcc, v23, v31                          // 00003124: 4A2E3F17
  v_cmp_gt_u32  s[32:33], v32, v29                          // 00003128: D1880020 00023B20
  v_mul_hi_u32  v30, v19, s15                               // 00003130: D2D4001E 02001F13
  v_mul_lo_u32  v31, v19, s28                               // 00003138: D2D2001F 02003913
  v_cmp_gt_u32  s[34:35], v23, 31                           // 00003140: D1880022 00013F17
  v_addc_u32    v32, vcc, v30, 0, s[32:33]                  // 00003148: D2506A20 0081011E
  v_addc_u32    v30, vcc, v30, v31, s[32:33]                // 00003150: D2506A1E 00823F1E
  s_mov_b32     s15, 0xa2f9836e                             // 00003158: BE8F03FF A2F9836E
  v_cndmask_b32  v31, 0, v25, s[34:35]                      // 00003160: D200001F 008A3280
  v_cmp_gt_u32  s[32:33], v32, v30                          // 00003168: D1880020 00023D20
  v_mul_hi_u32  v32, v19, s28                               // 00003170: D2D40020 02003913
  v_mul_lo_u32  v33, v19, s15                               // 00003178: D2D20021 02001F13
  v_add_i32     v23, vcc, v23, v31                          // 00003180: 4A2E3F17
  v_addc_u32    v31, vcc, v32, 0, s[32:33]                  // 00003184: D2506A1F 00810120
  v_addc_u32    v32, vcc, v32, v33, s[32:33]                // 0000318C: D2506A20 00824320
  v_cmp_gt_u32  s[28:29], v23, 31                           // 00003194: D188001C 00013F17
  v_cmp_gt_u32  s[32:33], v31, v32                          // 0000319C: D1880020 0002411F
  v_mul_hi_u32  v31, v19, s15                               // 000031A4: D2D4001F 02001F13
  v_cndmask_b32  v25, 0, v25, s[28:29]                      // 000031AC: D2000019 00723280
  v_addc_u32    v31, vcc, v31, 0, s[32:33]                  // 000031B4: D2506A1F 0081011F
  v_add_i32     v23, vcc, v23, v25                          // 000031BC: 4A2E3317
  v_cndmask_b32  v25, v31, v32, s[30:31]                    // 000031C0: D2000019 007A411F
  v_cndmask_b32  v31, v32, v30, s[30:31]                    // 000031C8: D200001F 007A3D20
  v_cndmask_b32  v30, v30, v29, s[30:31]                    // 000031D0: D200001E 007A3B1E
  v_cndmask_b32  v29, v29, v24, s[30:31]                    // 000031D8: D200001D 007A311D
  v_cmp_gt_u32  s[32:33], v23, 31                           // 000031E0: D1880020 00013F17
  v_cndmask_b32  v24, v24, v20, s[30:31]                    // 000031E8: D2000018 007A2918
  v_cndmask_b32  v25, v25, v31, s[34:35]                    // 000031F0: D2000019 008A3F19
  v_cndmask_b32  v31, v31, v30, s[34:35]                    // 000031F8: D200001F 008A3D1F
  v_cndmask_b32  v30, v30, v29, s[34:35]                    // 00003200: D200001E 008A3B1E
  v_cndmask_b32  v29, v29, v24, s[34:35]                    // 00003208: D200001D 008A311D
  v_cndmask_b32  v32, 0, 32, s[32:33]                       // 00003210: D2000020 00814080
  v_cndmask_b32  v25, v25, v31, s[28:29]                    // 00003218: D2000019 00723F19
  v_cndmask_b32  v31, v31, v30, s[28:29]                    // 00003220: D200001F 00723D1F
  v_cndmask_b32  v20, v20, v21, s[30:31]                    // 00003228: D2000014 007A2B14
  v_cndmask_b32  v30, v30, v29, s[28:29]                    // 00003230: D200001E 00723B1E
  v_sub_i32     v33, vcc, v32, v23                          // 00003238: 4C422F20
  v_cndmask_b32  v25, v25, v31, s[32:33]                    // 0000323C: D2000019 00823F19
  v_cndmask_b32  v24, v24, v20, s[34:35]                    // 00003244: D2000018 008A2918
  v_cndmask_b32  v31, v31, v30, s[32:33]                    // 0000324C: D200001F 00823D1F
  s_mov_b32     s15, 0xfe5163ab                             // 00003254: BE8F03FF FE5163AB
  v_add_i32     v33, vcc, 32, v33                           // 0000325C: 4A4242A0
  v_cndmask_b32  v29, v29, v24, s[28:29]                    // 00003260: D200001D 0072311D
  v_mul_lo_i32  v19, v19, s15                               // 00003268: D2D60013 02001F13
  v_cmp_ne_i32  vcc, v23, v32                               // 00003270: 7D0A4117
  v_alignbit_b32  v23, v25, v31, v33                        // 00003274: D29C0017 04863F19
  v_cndmask_b32  v30, v30, v29, s[32:33]                    // 0000327C: D200001E 00823B1E
  v_cndmask_b32  v19, v21, v19, s[30:31]                    // 00003284: D2000013 007A2715
  v_cndmask_b32  v21, v25, v23, vcc                         // 0000328C: 002A2F19
  v_cndmask_b32  v19, v20, v19, s[34:35]                    // 00003290: D2000013 008A2714
  v_alignbit_b32  v20, v31, v30, v33                        // 00003298: D29C0014 04863D1F
  v_bfe_u32     v23, v21, 29, 1                             // 000032A0: D2900017 02053B15
  v_cndmask_b32  v19, v24, v19, s[28:29]                    // 000032A8: D2000013 00722718
  v_cndmask_b32  v20, v31, v20, vcc                         // 000032B0: 0028291F
  v_cmp_ne_i32  s[28:29], v23, 0                            // 000032B4: D10A001C 00010117
  v_cndmask_b32  v19, v29, v19, s[32:33]                    // 000032BC: D2000013 0082271D
  v_alignbit_b32  v24, v21, v20, 30                         // 000032C4: D29C0018 027A2915
  v_cndmask_b32  v25, 0, -1, s[28:29]                       // 000032CC: D2000019 00718280
  v_alignbit_b32  v29, v30, v19, v33                        // 000032D4: D29C001D 0486271E
  v_xor_b32     v31, v24, v25                               // 000032DC: 3A3E3318
  v_cndmask_b32  v29, v30, v29, vcc                         // 000032E0: 003A3B1E
  v_ffbh_u32    v30, v31                                    // 000032E4: 7E3C731F
  v_cmp_ne_i32  vcc, v24, v25                               // 000032E8: 7D0A3318
  v_alignbit_b32  v20, v20, v29, 30                         // 000032EC: D29C0014 027A3B14
  v_alignbit_b32  v19, v29, v19, 30                         // 000032F4: D29C0013 027A271D
  v_cndmask_b32  v24, 32, v30, vcc                          // 000032FC: 00303CA0
  v_sub_i32     v29, vcc, 31, v24                           // 00003300: 4C3A309F
  v_xor_b32     v19, v19, v25                               // 00003304: 3A263313
  v_xor_b32     v20, v20, v25                               // 00003308: 3A283314
  v_sub_i32     v25, vcc, 0, v24                            // 0000330C: 4C323080
  v_alignbit_b32  v19, v20, v19, v29                        // 00003310: D29C0013 04762714
  v_alignbit_b32  v20, v31, v20, v29                        // 00003318: D29C0014 0476291F
  v_lshlrev_b32  v29, 2, v21                                // 00003320: 343A2A82
  v_alignbit_b32  v30, v20, v19, 9                          // 00003324: D29C001E 02262714
  v_lshlrev_b32  v25, 23, v25                               // 0000332C: 34323297
  v_and_b32     v29, 0x80000000, v29                        // 00003330: 363A3AFF 80000000
  v_add_i32     v25, vcc, 0.5, v25                          // 00003338: 4A3232F0
  v_ffbh_u32    v31, v30                                    // 0000333C: 7E3E731E
  v_cmp_ne_i32  vcc, 0, v30                                 // 00003340: 7D0A3C80
  v_lshrrev_b32  v20, 9, v20                                // 00003344: 2C282889
  v_or_b32      v25, v29, v25                               // 00003348: 3832331D
  v_cndmask_b32  v31, 32, v31, vcc                          // 0000334C: 003E3EA0
  v_sub_i32     v24, vcc, 0x00000066, v24                   // 00003350: 4C3030FF 00000066
  v_or_b32      v20, v20, v25                               // 00003358: 38283314
  v_sub_i32     v25, vcc, 31, v31                           // 0000335C: 4C323E9F
  v_sub_i32     v24, vcc, v24, v31                          // 00003360: 4C303F18
  v_alignbit_b32  v19, v30, v19, v25                        // 00003364: D29C0013 0466271E
  v_lshlrev_b32  v24, 23, v24                               // 0000336C: 34303097
  v_mul_f32     v25, 0x3fc90fda, v20                        // 00003370: 103228FF 3FC90FDA
  s_mov_b32     s15, 0x3fc90fda                             // 00003378: BE8F03FF 3FC90FDA
  v_lshrrev_b32  v19, 9, v19                                // 00003380: 2C262689
  v_or_b32      v24, v29, v24                               // 00003384: 3830311D
  v_fma_f32     v25, v20, s15, -v25                         // 00003388: D2960019 84641F14
  s_mov_b32     s28, 0x33a22168                             // 00003390: BE9C03FF 33A22168
  v_or_b32      v19, v19, v24                               // 00003398: 38263113
  v_fma_f32     v24, v20, s28, v25                          // 0000339C: D2960018 04643914
  v_fma_f32     v19, v19, s15, v24                          // 000033A4: D2960013 04601F13
  v_mad_f32     v59, v20, s15, v19                          // 000033AC: D282003B 044C1F14
  v_lshrrev_b32  v21, 30, v21                               // 000033B4: 2C2A2A9E
  v_mad_f32     v20, -v20, s15, v59                         // 000033B8: D2820014 24EC1F14
  v_add_i32     v23, vcc, v23, v21                          // 000033C0: 4A2E2B17
  v_sub_f32     v15, v19, v20                               // 000033C4: 081E2913
label_0CF2:
  s_andn2_b64   exec, s[2:3], exec                          // 000033C8: 8AFE7E02
  s_cbranch_execz  label_0D22                               // 000033CC: BF88002E
  s_mov_b32     s15, 0x3f22f983                             // 000033D0: BE8F03FF 3F22F983
  v_mad_f32     v19, v4, s15, 0.5                           // 000033D8: D2820013 03C01F04
  v_trunc_f32   v19, v19                                    // 000033E0: 7E264313
  v_mul_f32     v20, 0x3fc90fda, v19                        // 000033E4: 102826FF 3FC90FDA
  s_mov_b32     s15, 0x3fc90fda                             // 000033EC: BE8F03FF 3FC90FDA
  v_fma_f32     v20, v19, s15, -v20                         // 000033F4: D2960014 84501F13
  v_mad_f32     v21, -v19, s15, v4                          // 000033FC: D2820015 24101F13
  v_sub_f32     v23, v4, v21                                // 00003404: 082E2B04
  v_mad_f32     v23, -v19, s15, v23                         // 00003408: D2820017 245C1F13
  v_subrev_f32  v20, v20, v23                               // 00003410: 0A282F14
  v_add_f32     v20, v21, v20                               // 00003414: 06282915
  v_mul_f32     v21, 0x33a22168, v19                        // 00003418: 102A26FF 33A22168
  s_mov_b32     s15, 0x33a22168                             // 00003420: BE8F03FF 33A22168
  v_fma_f32     v21, v19, s15, -v21                         // 00003428: D2960015 84541F13
  v_mad_f32     v23, -v19, s15, v20                         // 00003430: D2820017 24501F13
  v_sub_f32     v20, v20, v23                               // 00003438: 08282F14
  v_mad_f32     v20, -v19, s15, v20                         // 0000343C: D2820014 24501F13
  v_subrev_f32  v20, v21, v20                               // 00003444: 0A282915
  v_add_f32     v20, v23, v20                               // 00003448: 06282917
  v_mul_f32     v21, 0x27c234c4, v19                        // 0000344C: 102A26FF 27C234C4
  s_mov_b32     s15, 0x27c234c4                             // 00003454: BE8F03FF 27C234C4
  v_fma_f32     v21, v19, s15, -v21                         // 0000345C: D2960015 84541F13
  v_mad_f32     v23, -v19, s15, v20                         // 00003464: D2820017 24501F13
  v_sub_f32     v20, v20, v23                               // 0000346C: 08282F14
  v_mad_f32     v20, -v19, s15, v20                         // 00003470: D2820014 24501F13
  v_add_f32     v59, v23, v20                               // 00003478: 06762917
  v_cvt_i32_f32  v23, v19                                   // 0000347C: 7E2E1113
  v_max_f32     v15, -v21, -v21                             // 00003480: D220000F 60022B15
label_0D22:
  s_mov_b64     exec, s[2:3]                                // 00003488: BEFE0402
  v_and_b32     v19, 3, v23                                 // 0000348C: 36262E83
  s_mov_b32     s2, 0x4b000000                              // 00003490: BE8203FF 4B000000
  v_cmp_nlt_f32  s[2:3], v10, s2                            // 00003498: D01C0002 0000050A
  s_and_saveexec_b64  s[2:3], s[2:3]                        // 000034A0: BE822402
  v_and_b32     v23, 0x007fffff, v9                         // 000034A4: 362E12FF 007FFFFF
  s_cbranch_execz  label_0E0F                               // 000034AC: BF8800E3
  v_or_b32      v23, 0x00800000, v23                        // 000034B0: 382E2EFF 00800000
  s_mov_b32     s15, 0xfe5163ab                             // 000034B8: BE8F03FF FE5163AB
  s_mov_b32     s28, 0x3c439041                             // 000034C0: BE9C03FF 3C439041
  v_mul_hi_u32  v24, v23, s15                               // 000034C8: D2D40018 02001F17
  v_mul_lo_u32  v25, v23, s28                               // 000034D0: D2D20019 02003917
  v_add_i32     v25, vcc, v24, v25                          // 000034D8: 4A323318
  s_mov_b32     s15, 0xdb629599                             // 000034DC: BE8F03FF DB629599
  v_cmp_gt_u32  s[30:31], v24, v25                          // 000034E4: D188001E 00023318
  v_mul_hi_u32  v24, v23, s28                               // 000034EC: D2D40018 02003917
  v_mul_lo_u32  v29, v23, s15                               // 000034F4: D2D2001D 02001F17
  v_addc_u32    v30, vcc, v24, 0, s[30:31]                  // 000034FC: D2506A1E 00790118
  v_addc_u32    v24, vcc, v24, v29, s[30:31]                // 00003504: D2506A18 007A3B18
  s_mov_b32     s28, 0xf534ddc0                             // 0000350C: BE9C03FF F534DDC0
  v_lshrrev_b32  v29, 23, v10                               // 00003514: 2C3A1497
  v_cmp_gt_u32  s[30:31], v30, v24                          // 00003518: D188001E 0002311E
  v_mul_hi_u32  v30, v23, s15                               // 00003520: D2D4001E 02001F17
  v_mul_lo_u32  v31, v23, s28                               // 00003528: D2D2001F 02003917
  v_add_i32     v29, vcc, 0xffffff88, v29                   // 00003530: 4A3A3AFF FFFFFF88
  v_addc_u32    v32, vcc, v30, 0, s[30:31]                  // 00003538: D2506A20 0079011E
  v_addc_u32    v30, vcc, v30, v31, s[30:31]                // 00003540: D2506A1E 007A3F1E
  s_mov_b32     s15, 0xfc2757d1                             // 00003548: BE8F03FF FC2757D1
  v_cmp_gt_u32  s[30:31], v29, 31                           // 00003550: D188001E 00013F1D
  v_mov_b32     v31, 0xffffffe0                             // 00003558: 7E3E02FF FFFFFFE0
  v_cmp_gt_u32  s[32:33], v32, v30                          // 00003560: D1880020 00023D20
  v_mul_hi_u32  v32, v23, s28                               // 00003568: D2D40020 02003917
  v_mul_lo_u32  v33, v23, s15                               // 00003570: D2D20021 02001F17
  v_cndmask_b32  v34, 0, v31, s[30:31]                      // 00003578: D2000022 007A3E80
  v_addc_u32    v35, vcc, v32, 0, s[32:33]                  // 00003580: D2506A23 00810120
  v_addc_u32    v32, vcc, v32, v33, s[32:33]                // 00003588: D2506A20 00824320
  s_mov_b32     s28, 0x4e441529                             // 00003590: BE9C03FF 4E441529
  v_add_i32     v29, vcc, v29, v34                          // 00003598: 4A3A451D
  v_cmp_gt_u32  s[32:33], v35, v32                          // 0000359C: D1880020 00024123
  v_mul_hi_u32  v33, v23, s15                               // 000035A4: D2D40021 02001F17
  v_mul_lo_u32  v34, v23, s28                               // 000035AC: D2D20022 02003917
  v_cmp_gt_u32  s[34:35], v29, 31                           // 000035B4: D1880022 00013F1D
  v_addc_u32    v35, vcc, v33, 0, s[32:33]                  // 000035BC: D2506A23 00810121
  v_addc_u32    v33, vcc, v33, v34, s[32:33]                // 000035C4: D2506A21 00824521
  s_mov_b32     s15, 0xa2f9836e                             // 000035CC: BE8F03FF A2F9836E
  v_cndmask_b32  v34, 0, v31, s[34:35]                      // 000035D4: D2000022 008A3E80
  v_cmp_gt_u32  s[32:33], v35, v33                          // 000035DC: D1880020 00024323
  v_mul_hi_u32  v35, v23, s28                               // 000035E4: D2D40023 02003917
  v_mul_lo_u32  v36, v23, s15                               // 000035EC: D2D20024 02001F17
  v_add_i32     v29, vcc, v29, v34                          // 000035F4: 4A3A451D
  v_addc_u32    v34, vcc, v35, 0, s[32:33]                  // 000035F8: D2506A22 00810123
  v_addc_u32    v35, vcc, v35, v36, s[32:33]                // 00003600: D2506A23 00824923
  v_cmp_gt_u32  s[28:29], v29, 31                           // 00003608: D188001C 00013F1D
  v_cmp_gt_u32  s[32:33], v34, v35                          // 00003610: D1880020 00024722
  v_mul_hi_u32  v34, v23, s15                               // 00003618: D2D40022 02001F17
  v_cndmask_b32  v31, 0, v31, s[28:29]                      // 00003620: D200001F 00723E80
  v_addc_u32    v34, vcc, v34, 0, s[32:33]                  // 00003628: D2506A22 00810122
  v_add_i32     v29, vcc, v29, v31                          // 00003630: 4A3A3F1D
  v_cndmask_b32  v31, v34, v35, s[30:31]                    // 00003634: D200001F 007A4722
  v_cndmask_b32  v34, v35, v33, s[30:31]                    // 0000363C: D2000022 007A4323
  v_cndmask_b32  v33, v33, v32, s[30:31]                    // 00003644: D2000021 007A4121
  v_cndmask_b32  v32, v32, v30, s[30:31]                    // 0000364C: D2000020 007A3D20
  v_cmp_gt_u32  s[32:33], v29, 31                           // 00003654: D1880020 00013F1D
  v_cndmask_b32  v30, v30, v24, s[30:31]                    // 0000365C: D200001E 007A311E
  v_cndmask_b32  v31, v31, v34, s[34:35]                    // 00003664: D200001F 008A451F
  v_cndmask_b32  v34, v34, v33, s[34:35]                    // 0000366C: D2000022 008A4322
  v_cndmask_b32  v33, v33, v32, s[34:35]                    // 00003674: D2000021 008A4121
  v_cndmask_b32  v32, v32, v30, s[34:35]                    // 0000367C: D2000020 008A3D20
  v_cndmask_b32  v35, 0, 32, s[32:33]                       // 00003684: D2000023 00814080
  v_cndmask_b32  v31, v31, v34, s[28:29]                    // 0000368C: D200001F 0072451F
  v_cndmask_b32  v34, v34, v33, s[28:29]                    // 00003694: D2000022 00724322
  v_cndmask_b32  v24, v24, v25, s[30:31]                    // 0000369C: D2000018 007A3318
  v_cndmask_b32  v33, v33, v32, s[28:29]                    // 000036A4: D2000021 00724121
  v_sub_i32     v36, vcc, v35, v29                          // 000036AC: 4C483B23
  v_cndmask_b32  v31, v31, v34, s[32:33]                    // 000036B0: D200001F 0082451F
  v_cndmask_b32  v30, v30, v24, s[34:35]                    // 000036B8: D200001E 008A311E
  v_cndmask_b32  v34, v34, v33, s[32:33]                    // 000036C0: D2000022 00824322
  s_mov_b32     s15, 0xfe5163ab                             // 000036C8: BE8F03FF FE5163AB
  v_add_i32     v36, vcc, 32, v36                           // 000036D0: 4A4848A0
  v_cndmask_b32  v32, v32, v30, s[28:29]                    // 000036D4: D2000020 00723D20
  v_mul_lo_i32  v23, v23, s15                               // 000036DC: D2D60017 02001F17
  v_cmp_ne_i32  vcc, v29, v35                               // 000036E4: 7D0A471D
  v_alignbit_b32  v29, v31, v34, v36                        // 000036E8: D29C001D 0492451F
  v_cndmask_b32  v33, v33, v32, s[32:33]                    // 000036F0: D2000021 00824121
  v_cndmask_b32  v23, v25, v23, s[30:31]                    // 000036F8: D2000017 007A2F19
  v_cndmask_b32  v25, v31, v29, vcc                         // 00003700: 00323B1F
  v_cndmask_b32  v23, v24, v23, s[34:35]                    // 00003704: D2000017 008A2F18
  v_alignbit_b32  v24, v34, v33, v36                        // 0000370C: D29C0018 04924322
  v_bfe_u32     v29, v25, 29, 1                             // 00003714: D290001D 02053B19
  v_cndmask_b32  v23, v30, v23, s[28:29]                    // 0000371C: D2000017 00722F1E
  v_cndmask_b32  v24, v34, v24, vcc                         // 00003724: 00303122
  v_cmp_ne_i32  s[28:29], v29, 0                            // 00003728: D10A001C 0001011D
  v_cndmask_b32  v23, v32, v23, s[32:33]                    // 00003730: D2000017 00822F20
  v_alignbit_b32  v30, v25, v24, 30                         // 00003738: D29C001E 027A3119
  v_cndmask_b32  v31, 0, -1, s[28:29]                       // 00003740: D200001F 00718280
  v_alignbit_b32  v32, v33, v23, v36                        // 00003748: D29C0020 04922F21
  v_xor_b32     v34, v30, v31                               // 00003750: 3A443F1E
  v_cndmask_b32  v32, v33, v32, vcc                         // 00003754: 00404121
  v_ffbh_u32    v33, v34                                    // 00003758: 7E427322
  v_cmp_ne_i32  vcc, v30, v31                               // 0000375C: 7D0A3F1E
  v_alignbit_b32  v24, v24, v32, 30                         // 00003760: D29C0018 027A4118
  v_alignbit_b32  v23, v32, v23, 30                         // 00003768: D29C0017 027A2F20
  v_cndmask_b32  v30, 32, v33, vcc                          // 00003770: 003C42A0
  v_sub_i32     v32, vcc, 31, v30                           // 00003774: 4C403C9F
  v_xor_b32     v23, v23, v31                               // 00003778: 3A2E3F17
  v_xor_b32     v24, v24, v31                               // 0000377C: 3A303F18
  v_sub_i32     v31, vcc, 0, v30                            // 00003780: 4C3E3C80
  v_alignbit_b32  v23, v24, v23, v32                        // 00003784: D29C0017 04822F18
  v_alignbit_b32  v24, v34, v24, v32                        // 0000378C: D29C0018 04823122
  v_lshlrev_b32  v32, 2, v25                                // 00003794: 34403282
  v_alignbit_b32  v33, v24, v23, 9                          // 00003798: D29C0021 02262F18
  v_lshlrev_b32  v31, 23, v31                               // 000037A0: 343E3E97
  v_and_b32     v32, 0x80000000, v32                        // 000037A4: 364040FF 80000000
  v_add_i32     v31, vcc, 0.5, v31                          // 000037AC: 4A3E3EF0
  v_ffbh_u32    v34, v33                                    // 000037B0: 7E447321
  v_cmp_ne_i32  vcc, 0, v33                                 // 000037B4: 7D0A4280
  v_lshrrev_b32  v24, 9, v24                                // 000037B8: 2C303089
  v_or_b32      v31, v32, v31                               // 000037BC: 383E3F20
  v_cndmask_b32  v34, 32, v34, vcc                          // 000037C0: 004444A0
  v_sub_i32     v30, vcc, 0x00000066, v30                   // 000037C4: 4C3C3CFF 00000066
  v_or_b32      v24, v24, v31                               // 000037CC: 38303F18
  v_sub_i32     v31, vcc, 31, v34                           // 000037D0: 4C3E449F
  v_sub_i32     v30, vcc, v30, v34                          // 000037D4: 4C3C451E
  v_alignbit_b32  v23, v33, v23, v31                        // 000037D8: D29C0017 047E2F21
  v_lshlrev_b32  v30, 23, v30                               // 000037E0: 343C3C97
  v_mul_f32     v31, 0x3fc90fda, v24                        // 000037E4: 103E30FF 3FC90FDA
  s_mov_b32     s15, 0x3fc90fda                             // 000037EC: BE8F03FF 3FC90FDA
  v_lshrrev_b32  v23, 9, v23                                // 000037F4: 2C2E2E89
  v_or_b32      v30, v32, v30                               // 000037F8: 383C3D20
  v_fma_f32     v31, v24, s15, -v31                         // 000037FC: D296001F 847C1F18
  s_mov_b32     s28, 0x33a22168                             // 00003804: BE9C03FF 33A22168
  v_or_b32      v23, v23, v30                               // 0000380C: 382E3D17
  v_fma_f32     v30, v24, s28, v31                          // 00003810: D296001E 047C3918
  v_fma_f32     v23, v23, s15, v30                          // 00003818: D2960017 04781F17
  v_mad_f32     v60, v24, s15, v23                          // 00003820: D282003C 045C1F18
  v_lshrrev_b32  v25, 30, v25                               // 00003828: 2C32329E
  v_mad_f32     v24, -v24, s15, v60                         // 0000382C: D2820018 24F01F18
  v_add_i32     v20, vcc, v29, v25                          // 00003834: 4A28331D
  v_sub_f32     v25, v23, v24                               // 00003838: 08323117
label_0E0F:
  s_andn2_b64   exec, s[2:3], exec                          // 0000383C: 8AFE7E02
  s_cbranch_execz  label_0E3F                               // 00003840: BF88002E
  s_mov_b32     s15, 0x3f22f983                             // 00003844: BE8F03FF 3F22F983
  v_mad_f32     v23, v10, s15, 0.5                          // 0000384C: D2820017 03C01F0A
  v_trunc_f32   v23, v23                                    // 00003854: 7E2E4317
  v_mul_f32     v24, 0x3fc90fda, v23                        // 00003858: 10302EFF 3FC90FDA
  s_mov_b32     s15, 0x3fc90fda                             // 00003860: BE8F03FF 3FC90FDA
  v_fma_f32     v24, v23, s15, -v24                         // 00003868: D2960018 84601F17
  v_mad_f32     v25, -v23, s15, v10                         // 00003870: D2820019 24281F17
  v_sub_f32     v29, v10, v25                               // 00003878: 083A330A
  v_mad_f32     v29, -v23, s15, v29                         // 0000387C: D282001D 24741F17
  v_subrev_f32  v24, v24, v29                               // 00003884: 0A303B18
  v_add_f32     v24, v25, v24                               // 00003888: 06303119
  v_mul_f32     v25, 0x33a22168, v23                        // 0000388C: 10322EFF 33A22168
  s_mov_b32     s15, 0x33a22168                             // 00003894: BE8F03FF 33A22168
  v_fma_f32     v25, v23, s15, -v25                         // 0000389C: D2960019 84641F17
  v_mad_f32     v29, -v23, s15, v24                         // 000038A4: D282001D 24601F17
  v_sub_f32     v24, v24, v29                               // 000038AC: 08303B18
  v_mad_f32     v24, -v23, s15, v24                         // 000038B0: D2820018 24601F17
  v_subrev_f32  v24, v25, v24                               // 000038B8: 0A303119
  v_add_f32     v24, v29, v24                               // 000038BC: 0630311D
  v_mul_f32     v25, 0x27c234c4, v23                        // 000038C0: 10322EFF 27C234C4
  s_mov_b32     s15, 0x27c234c4                             // 000038C8: BE8F03FF 27C234C4
  v_fma_f32     v25, v23, s15, -v25                         // 000038D0: D2960019 84641F17
  v_mad_f32     v29, -v23, s15, v24                         // 000038D8: D282001D 24601F17
  v_sub_f32     v24, v24, v29                               // 000038E0: 08303B18
  v_mad_f32     v24, -v23, s15, v24                         // 000038E4: D2820018 24601F17
  v_add_f32     v60, v29, v24                               // 000038EC: 0678311D
  v_cvt_i32_f32  v20, v23                                   // 000038F0: 7E281117
  v_max_f32     v25, -v25, -v25                             // 000038F4: D2200019 60023319
label_0E3F:
  s_mov_b64     exec, s[2:3]                                // 000038FC: BEFE0402
  v_and_b32     v20, 3, v20                                 // 00003900: 36282883
label_0E41:
  s_andn2_b64   exec, s[26:27], exec                        // 00003904: 8AFE7E1A
  v_mov_b32     v13, 0x3f22f983                             // 00003908: 7E1A02FF 3F22F983
  s_cbranch_execz  label_0EDC                               // 00003910: BF880097
  v_mad_f32     v14, v2, v13, 0.5                           // 00003914: D282000E 03C21B02
  v_mad_f32     v15, v3, v13, 0.5                           // 0000391C: D282000F 03C21B03
  v_mad_f32     v16, v4, v13, 0.5                           // 00003924: D2820010 03C21B04
  v_mad_f32     v13, v10, v13, 0.5                          // 0000392C: D282000D 03C21B0A
  v_trunc_f32   v14, v14                                    // 00003934: 7E1C430E
  v_trunc_f32   v15, v15                                    // 00003938: 7E1E430F
  v_trunc_f32   v16, v16                                    // 0000393C: 7E204310
  v_trunc_f32   v13, v13                                    // 00003940: 7E1A430D
  v_mov_b32     v17, 0x3fc90fda                             // 00003944: 7E2202FF 3FC90FDA
  s_waitcnt     expcnt(0)                                   // 0000394C: BF8C1F0F
  v_mul_f32     v18, v17, v14                               // 00003950: 10241D11
  v_mul_f32     v19, v15, v17                               // 00003954: 1026230F
  v_mul_f32     v20, v16, v17                               // 00003958: 10282310
  v_mul_f32     v21, v13, v17                               // 0000395C: 102A230D
  v_fma_f32     v19, v15, v17, -v19                         // 00003960: D2960013 844E230F
  v_fma_f32     v18, v14, v17, -v18                         // 00003968: D2960012 844A230E
  v_fma_f32     v21, v13, v17, -v21                         // 00003970: D2960015 8456230D
  v_fma_f32     v20, v16, v17, -v20                         // 00003978: D2960014 84522310
  v_mad_f32     v23, -v14, v17, v2                          // 00003980: D2820017 240A230E
  v_mad_f32     v24, -v15, v17, v3                          // 00003988: D2820018 240E230F
  v_mad_f32     v25, -v16, v17, v4                          // 00003990: D2820019 24122310
  v_mad_f32     v29, -v13, v17, v10                         // 00003998: D282001D 242A230D
  v_sub_f32     v30, v2, v23                                // 000039A0: 083C2F02
  v_sub_f32     v31, v3, v24                                // 000039A4: 083E3103
  v_sub_f32     v32, v4, v25                                // 000039A8: 08403304
  v_sub_f32     v33, v10, v29                               // 000039AC: 08423B0A
  v_mad_f32     v30, -v14, v17, v30                         // 000039B0: D282001E 247A230E
  v_mad_f32     v31, -v15, v17, v31                         // 000039B8: D282001F 247E230F
  v_mad_f32     v32, -v16, v17, v32                         // 000039C0: D2820020 24822310
  v_mad_f32     v33, -v13, v17, v33                         // 000039C8: D2820021 2486230D
  v_subrev_f32  v17, v18, v30                               // 000039D0: 0A223D12
  v_subrev_f32  v18, v19, v31                               // 000039D4: 0A243F13
  v_subrev_f32  v19, v20, v32                               // 000039D8: 0A264114
  v_subrev_f32  v20, v21, v33                               // 000039DC: 0A284315
  v_add_f32     v17, v23, v17                               // 000039E0: 06222317
  v_add_f32     v18, v24, v18                               // 000039E4: 06242518
  v_add_f32     v19, v25, v19                               // 000039E8: 06262719
  v_add_f32     v20, v29, v20                               // 000039EC: 0628291D
  v_mov_b32     v21, 0x33a22168                             // 000039F0: 7E2A02FF 33A22168
  v_mul_f32     v23, v21, v14                               // 000039F8: 102E1D15
  v_mul_f32     v24, v15, v21                               // 000039FC: 10302B0F
  v_mul_f32     v25, v16, v21                               // 00003A00: 10322B10
  v_mul_f32     v29, v13, v21                               // 00003A04: 103A2B0D
  v_fma_f32     v24, v15, v21, -v24                         // 00003A08: D2960018 84622B0F
  v_fma_f32     v23, v14, v21, -v23                         // 00003A10: D2960017 845E2B0E
  v_fma_f32     v29, v13, v21, -v29                         // 00003A18: D296001D 84762B0D
  v_fma_f32     v25, v16, v21, -v25                         // 00003A20: D2960019 84662B10
  v_mad_f32     v30, -v14, v21, v17                         // 00003A28: D282001E 24462B0E
  v_mad_f32     v31, -v15, v21, v18                         // 00003A30: D282001F 244A2B0F
  v_mad_f32     v32, -v16, v21, v19                         // 00003A38: D2820020 244E2B10
  v_mad_f32     v33, -v13, v21, v20                         // 00003A40: D2820021 24522B0D
  v_sub_f32     v17, v17, v30                               // 00003A48: 08223D11
  v_sub_f32     v18, v18, v31                               // 00003A4C: 08243F12
  v_sub_f32     v19, v19, v32                               // 00003A50: 08264113
  v_sub_f32     v20, v20, v33                               // 00003A54: 08284314
  v_mad_f32     v17, -v14, v21, v17                         // 00003A58: D2820011 24462B0E
  v_mad_f32     v18, -v15, v21, v18                         // 00003A60: D2820012 244A2B0F
  v_mad_f32     v19, -v16, v21, v19                         // 00003A68: D2820013 244E2B10
  v_mad_f32     v20, -v13, v21, v20                         // 00003A70: D2820014 24522B0D
  v_subrev_f32  v17, v23, v17                               // 00003A78: 0A222317
  v_subrev_f32  v18, v24, v18                               // 00003A7C: 0A242518
  v_subrev_f32  v19, v25, v19                               // 00003A80: 0A262719
  v_subrev_f32  v20, v29, v20                               // 00003A84: 0A28291D
  v_add_f32     v17, v30, v17                               // 00003A88: 0622231E
  v_add_f32     v18, v31, v18                               // 00003A8C: 0624251F
  v_add_f32     v19, v32, v19                               // 00003A90: 06262720
  v_add_f32     v20, v33, v20                               // 00003A94: 06282921
  v_mov_b32     v21, 0x27c234c4                             // 00003A98: 7E2A02FF 27C234C4
  v_mul_f32     v23, v21, v14                               // 00003AA0: 102E1D15
  v_mul_f32     v24, v15, v21                               // 00003AA4: 10302B0F
  v_mul_f32     v25, v16, v21                               // 00003AA8: 10322B10
  v_mul_f32     v29, v13, v21                               // 00003AAC: 103A2B0D
  v_fma_f32     v24, v15, v21, -v24                         // 00003AB0: D2960018 84622B0F
  v_fma_f32     v23, v14, v21, -v23                         // 00003AB8: D2960017 845E2B0E
  v_fma_f32     v29, v13, v21, -v29                         // 00003AC0: D296001D 84762B0D
  v_fma_f32     v25, v16, v21, -v25                         // 00003AC8: D2960019 84662B10
  v_mad_f32     v30, -v14, v21, v17                         // 00003AD0: D282001E 24462B0E
  v_mad_f32     v31, -v15, v21, v18                         // 00003AD8: D282001F 244A2B0F
  v_mad_f32     v32, -v16, v21, v19                         // 00003AE0: D2820020 244E2B10
  v_mad_f32     v33, -v13, v21, v20                         // 00003AE8: D2820021 24522B0D
  v_sub_f32     v17, v17, v30                               // 00003AF0: 08223D11
  v_sub_f32     v18, v18, v31                               // 00003AF4: 08243F12
  v_sub_f32     v19, v19, v32                               // 00003AF8: 08264113
  v_sub_f32     v20, v20, v33                               // 00003AFC: 08284314
  v_mad_f32     v17, -v14, v21, v17                         // 00003B00: D2820011 24462B0E
  v_mad_f32     v18, -v15, v21, v18                         // 00003B08: D2820012 244A2B0F
  v_mad_f32     v19, -v16, v21, v19                         // 00003B10: D2820013 244E2B10
  v_mad_f32     v20, -v13, v21, v20                         // 00003B18: D2820014 24522B0D
  v_add_f32     v57, v30, v17                               // 00003B20: 0672231E
  v_add_f32     v58, v31, v18                               // 00003B24: 0674251F
  v_add_f32     v59, v32, v19                               // 00003B28: 06762720
  v_add_f32     v60, v33, v20                               // 00003B2C: 06782921
  v_cvt_i32_f32  v14, v14                                   // 00003B30: 7E1C110E
  v_cvt_i32_f32  v15, v15                                   // 00003B34: 7E1E110F
  v_cvt_i32_f32  v16, v16                                   // 00003B38: 7E201110
  v_cvt_i32_f32  v13, v13                                   // 00003B3C: 7E1A110D
  v_and_b32     v61, 3, v14                                 // 00003B40: 367A1C83
  v_and_b32     v18, 3, v15                                 // 00003B44: 36241E83
  v_and_b32     v19, 3, v16                                 // 00003B48: 36262083
  v_and_b32     v20, 3, v13                                 // 00003B4C: 36281A83
  v_max_f32     v14, -v23, -v23                             // 00003B50: D220000E 60022F17
  v_max_f32     v13, -v24, -v24                             // 00003B58: D220000D 60023118
  v_max_f32     v15, -v25, -v25                             // 00003B60: D220000F 60023319
  v_max_f32     v25, -v29, -v29                             // 00003B68: D2200019 60023B1D
label_0EDC:
  s_mov_b64     exec, s[26:27]                              // 00003B70: BEFE041A
  v_mul_f32     v29, v57, v57                               // 00003B74: 103A7339
  v_mul_f32     v30, v58, v58                               // 00003B78: 103C753A
  v_mul_f32     v31, v59, v59                               // 00003B7C: 103E773B
  v_mul_f32     v32, v60, v60                               // 00003B80: 1040793C
  v_mul_f32     v33, 0xad47d74e, v29                        // 00003B84: 10423AFF AD47D74E
  v_mul_f32     v34, 0xad47d74e, v30                        // 00003B8C: 10443CFF AD47D74E
  v_mul_f32     v35, 0xad47d74e, v31                        // 00003B94: 10463EFF AD47D74E
  v_mul_f32     v36, 0xad47d74e, v32                        // 00003B9C: 104840FF AD47D74E
  v_mul_f32     v37, 0x2f2ec9d3, v29                        // 00003BA4: 104A3AFF 2F2EC9D3
  v_mul_f32     v38, 0x2f2ec9d3, v30                        // 00003BAC: 104C3CFF 2F2EC9D3
  v_mul_f32     v39, 0x2f2ec9d3, v31                        // 00003BB4: 104E3EFF 2F2EC9D3
  v_mul_f32     v40, 0x2f2ec9d3, v32                        // 00003BBC: 105040FF 2F2EC9D3
  v_mov_b32     v41, 0x7fffffff                             // 00003BC4: 7E5202FF 7FFFFFFF
  v_add_f32     v33, 0x310f74f6, v33                        // 00003BCC: 064242FF 310F74F6
  v_add_f32     v34, 0x310f74f6, v34                        // 00003BD4: 064444FF 310F74F6
  v_add_f32     v35, 0x310f74f6, v35                        // 00003BDC: 064646FF 310F74F6
  v_add_f32     v36, 0x310f74f6, v36                        // 00003BE4: 064848FF 310F74F6
  v_mov_b32     v42, 0xb492923a                             // 00003BEC: 7E5402FF B492923A
  v_add_f32     v37, 0xb2d72f34, v37                        // 00003BF4: 064A4AFF B2D72F34
  v_add_f32     v38, 0xb2d72f34, v38                        // 00003BFC: 064C4CFF B2D72F34
  v_add_f32     v39, 0xb2d72f34, v39                        // 00003C04: 064E4EFF B2D72F34
  v_add_f32     v40, 0xb2d72f34, v40                        // 00003C0C: 065050FF B2D72F34
  v_mov_b32     v43, 0x3636df25                             // 00003C14: 7E5602FF 3636DF25
  v_and_b32     v44, v41, v57                               // 00003C1C: 36587329
  v_and_b32     v45, v41, v58                               // 00003C20: 365A7529
  v_and_b32     v46, v41, v59                               // 00003C24: 365C7729
  v_and_b32     v41, v41, v60                               // 00003C28: 36527929
  v_mov_b32     v47, 0x3f480001                             // 00003C2C: 7E5E02FF 3F480001
  v_mov_b32     v48, 0x3e999999                             // 00003C34: 7E6002FF 3E999999
  v_mad_f32     v33, v29, v33, v42                          // 00003C3C: D2820021 04AA431D
  v_mad_f32     v34, v30, v34, v42                          // 00003C44: D2820022 04AA451E
  v_mad_f32     v35, v31, v35, v42                          // 00003C4C: D2820023 04AA471F
  v_mac_f32     v42, v32, v36                               // 00003C54: 3E544920
  v_mov_b32     v36, 0x37d00ae2                             // 00003C58: 7E4802FF 37D00AE2
  v_mad_f32     v37, v29, v37, v43                          // 00003C60: D2820025 04AE4B1D
  v_mad_f32     v38, v30, v38, v43                          // 00003C68: D2820026 04AE4D1E
  v_mad_f32     v39, v31, v39, v43                          // 00003C70: D2820027 04AE4F1F
  v_mac_f32     v43, v32, v40                               // 00003C78: 3E565120
  v_mov_b32     v40, 0xb95009d4                             // 00003C7C: 7E5002FF B95009D4
  v_cmp_lt_u32  s[2:3], v41, v47                            // 00003C84: D1820002 00025F29
  v_cmp_lt_u32  s[26:27], v44, v47                          // 00003C8C: D182001A 00025F2C
  v_cmp_lt_u32  s[28:29], v46, v47                          // 00003C94: D182001C 00025F2E
  v_cmp_lt_u32  s[30:31], v45, v47                          // 00003C9C: D182001E 00025F2D
  v_cmp_gt_u32  s[32:33], v41, v48                          // 00003CA4: D1880020 00026129
  v_cmp_gt_u32  s[34:35], v44, v48                          // 00003CAC: D1880022 0002612C
  v_cmp_gt_u32  s[36:37], v46, v48                          // 00003CB4: D1880024 0002612E
  v_cmp_gt_u32  s[38:39], v45, v48                          // 00003CBC: D1880026 0002612D
  v_mov_b32     v47, 0xff000000                             // 00003CC4: 7E5E02FF FF000000
  v_mad_f32     v33, v29, v33, v36                          // 00003CCC: D2820021 0492431D
  v_mad_f32     v34, v30, v34, v36                          // 00003CD4: D2820022 0492451E
  v_mad_f32     v35, v31, v35, v36                          // 00003CDC: D2820023 0492471F
  v_mac_f32     v36, v32, v42                               // 00003CE4: 3E485520
  v_mov_b32     v42, 0xbab60b60                             // 00003CE8: 7E5402FF BAB60B60
  v_mad_f32     v37, v29, v37, v40                          // 00003CF0: D2820025 04A24B1D
  v_mad_f32     v38, v30, v38, v40                          // 00003CF8: D2820026 04A24D1E
  v_mad_f32     v39, v31, v39, v40                          // 00003D00: D2820027 04A24F1F
  v_mac_f32     v40, v32, v43                               // 00003D08: 3E505720
  v_mov_b32     v43, 0x3c088887                             // 00003D0C: 7E5602FF 3C088887
  s_and_b64     s[26:27], s[26:27], s[34:35]                // 00003D14: 879A221A
  s_and_b64     s[30:31], s[30:31], s[38:39]                // 00003D18: 879E261E
  s_and_b64     s[28:29], s[28:29], s[36:37]                // 00003D1C: 879C241C
  s_and_b64     s[2:3], s[2:3], s[32:33]                    // 00003D20: 87822002
  v_add_i32     v48, vcc, v47, v44                          // 00003D24: 4A60592F
  v_add_i32     v49, vcc, v45, v47                          // 00003D28: 4A625F2D
  v_add_i32     v50, vcc, v46, v47                          // 00003D2C: 4A645F2E
  v_add_i32     v47, vcc, v41, v47                          // 00003D30: 4A5E5F29
  v_mov_b32     v51, 0x3f480000                             // 00003D34: 7E6602FF 3F480000
  v_mad_f32     v33, v29, v33, v42                          // 00003D3C: D2820021 04AA431D
  v_mad_f32     v34, v30, v34, v42                          // 00003D44: D2820022 04AA451E
  v_mad_f32     v35, v31, v35, v42                          // 00003D4C: D2820023 04AA471F
  v_mac_f32     v42, v32, v36                               // 00003D54: 3E544920
  v_mov_b32     v36, 0x3d2aaaab                             // 00003D58: 7E4802FF 3D2AAAAB
  v_mad_f32     v37, v29, v37, v43                          // 00003D60: D2820025 04AE4B1D
  v_mad_f32     v38, v30, v38, v43                          // 00003D68: D2820026 04AE4D1E
  v_mad_f32     v39, v31, v39, v43                          // 00003D70: D2820027 04AE4F1F
  v_mac_f32     v43, v32, v40                               // 00003D78: 3E565120
  v_mul_f32     v40, v57, v29                               // 00003D7C: 10503B39
  v_mul_f32     v52, v58, v30                               // 00003D80: 10683D3A
  v_mul_f32     v53, v59, v31                               // 00003D84: 106A3F3B
  v_mul_f32     v54, v60, v32                               // 00003D88: 106C413C
  v_cndmask_b32  v48, 0, v48, s[26:27]                      // 00003D8C: D2000030 006A6080
  v_cndmask_b32  v49, 0, v49, s[30:31]                      // 00003D94: D2000031 007A6280
  v_cndmask_b32  v50, 0, v50, s[28:29]                      // 00003D9C: D2000032 00726480
  v_cndmask_b32  v47, 0, v47, s[2:3]                        // 00003DA4: D200002F 000A5E80
  v_cmp_gt_u32  s[2:3], v41, v51                            // 00003DAC: D1880002 00026729
  v_cmp_gt_u32  s[26:27], v44, v51                          // 00003DB4: D188001A 0002672C
  v_cmp_gt_u32  s[28:29], v46, v51                          // 00003DBC: D188001C 0002672E
  v_cmp_gt_u32  vcc, v45, v51                               // 00003DC4: 7D88672D
  v_mov_b32     v41, 0x3e900000                             // 00003DC8: 7E5202FF 3E900000
  v_mad_f32     v33, v29, v33, v36                          // 00003DD0: D2820021 0492431D
  v_mad_f32     v34, v30, v34, v36                          // 00003DD8: D2820022 0492451E
  v_mad_f32     v35, v31, v35, v36                          // 00003DE0: D2820023 0492471F
  v_mac_f32     v36, v32, v42                               // 00003DE8: 3E485520
  v_mul_f32     v37, v37, -v40                              // 00003DEC: D2100025 40025125
  v_mul_f32     v38, v38, -v52                              // 00003DF4: D2100026 40026926
  v_mul_f32     v39, v39, -v53                              // 00003DFC: D2100027 40026B27
  v_mul_f32     v42, v43, -v54                              // 00003E04: D210002A 40026D2B
  v_cndmask_b32  v43, v48, v41, s[26:27]                    // 00003E0C: D200002B 006A5330
  v_cndmask_b32  v44, v49, v41, vcc                         // 00003E14: 00585331
  v_cndmask_b32  v45, v50, v41, s[28:29]                    // 00003E18: D200002D 00725332
  v_cndmask_b32  v41, v47, v41, s[2:3]                      // 00003E20: D2000029 000A532F
  v_mul_f32     v33, v29, v33                               // 00003E28: 1042431D
  v_mul_f32     v34, v30, v34                               // 00003E2C: 1044451E
  v_mul_f32     v35, v31, v35                               // 00003E30: 1046471F
  v_mul_f32     v36, v32, v36                               // 00003E34: 10484920
  v_mul_f32     v46, v14, -v57                              // 00003E38: D210002E 4002730E
  v_mul_f32     v47, v13, -v58                              // 00003E40: D210002F 4002750D
  v_mul_f32     v48, v15, -v59                              // 00003E48: D2100030 4002770F
  v_mul_f32     v49, v25, -v60                              // 00003E50: D2100031 40027919
  v_mac_f32     v37, 0.5, v14                               // 00003E58: 3E4A1CF0
  v_mac_f32     v38, 0.5, v13                               // 00003E5C: 3E4C1AF0
  v_mac_f32     v39, 0.5, v15                               // 00003E60: 3E4E1EF0
  v_mac_f32     v42, 0.5, v25                               // 00003E64: 3E5432F0
  v_mad_f32     v50, v29, 0.5, -v43                         // 00003E68: D2820032 84ADE11D
  v_mad_f32     v51, v30, 0.5, -v44                         // 00003E70: D2820033 84B1E11E
  v_mad_f32     v55, v31, 0.5, -v45                         // 00003E78: D2820037 84B5E11F
  v_mad_f32     v56, v32, 0.5, -v41                         // 00003E80: D2820038 84A5E120
  v_mac_f32     v46, v29, v33                               // 00003E88: 3E5C431D
  v_mac_f32     v47, v30, v34                               // 00003E8C: 3E5E451E
  v_mac_f32     v48, v31, v35                               // 00003E90: 3E60471F
  v_mac_f32     v49, v32, v36                               // 00003E94: 3E624920
  v_mad_f32     v21, v29, v37, -v14                         // 00003E98: D2820015 843A4B1D
  v_mad_f32     v23, v30, v38, -v13                         // 00003EA0: D2820017 84364D1E
  v_mad_f32     v24, v31, v39, -v15                         // 00003EA8: D2820018 843E4F1F
  v_mad_f32     v25, v32, v42, -v25                         // 00003EB0: D2820019 84665520
  v_mov_b32     v29, 0x3e2aaaab                             // 00003EB8: 7E3A02FF 3E2AAAAB
  v_sub_f32     v30, 1.0, v43                               // 00003EC0: 083C56F2
  v_sub_f32     v31, 1.0, v44                               // 00003EC4: 083E58F2
  v_sub_f32     v32, 1.0, v45                               // 00003EC8: 08405AF2
  v_sub_f32     v33, 1.0, v41                               // 00003ECC: 084252F2
  v_sub_f32     v34, v50, v46                               // 00003ED0: 08445D32
  v_sub_f32     v35, v51, v47                               // 00003ED4: 08465F33
  v_sub_f32     v36, v55, v48                               // 00003ED8: 08486137
  v_sub_f32     v37, v56, v49                               // 00003EDC: 084A6338
  v_and_b32     v38, 1, v61                                 // 00003EE0: 364C7A81
  v_and_b32     v39, 1, v18                                 // 00003EE4: 364E2481
  v_and_b32     v41, 1, v19                                 // 00003EE8: 36522681
  v_and_b32     v42, 1, v20                                 // 00003EEC: 36542881
  v_mac_f32     v21, v40, v29                               // 00003EF0: 3E2A3B28
  v_mac_f32     v23, v52, v29                               // 00003EF4: 3E2E3B34
  v_mac_f32     v24, v53, v29                               // 00003EF8: 3E303B35
  v_mac_f32     v25, v54, v29                               // 00003EFC: 3E323B36
  v_sub_f32     v29, v30, v34                               // 00003F00: 083A451E
  v_sub_f32     v30, v31, v35                               // 00003F04: 083C471F
  v_sub_f32     v31, v32, v36                               // 00003F08: 083E4920
  v_sub_f32     v32, v33, v37                               // 00003F0C: 08404B21
  v_cmp_ne_i32  s[2:3], v42, 0                              // 00003F10: D10A0002 0001012A
  v_cmp_ne_i32  s[26:27], v38, 0                            // 00003F18: D10A001A 00010126
  v_cmp_ne_i32  s[28:29], v41, 0                            // 00003F20: D10A001C 00010129
  v_cmp_ne_i32  s[30:31], v39, 0                            // 00003F28: D10A001E 00010127
  v_sub_f32     v13, v57, v21                               // 00003F30: 081A2B39
  v_sub_f32     v14, v58, v23                               // 00003F34: 081C2F3A
  v_sub_f32     v15, v59, v24                               // 00003F38: 081E313B
  v_sub_f32     v16, v60, v25                               // 00003F3C: 0820333C
  v_cmp_gt_i32  s[32:33], v20, 1                            // 00003F40: D1080020 00010314
  v_cmp_gt_i32  s[34:35], v61, 1                            // 00003F48: D1080022 0001033D
  v_cmp_gt_i32  s[36:37], v19, 1                            // 00003F50: D1080024 00010313
  v_cmp_lt_i32  vcc, 1, v18                                 // 00003F58: 7D022481
  v_mov_b32     v17, 0x80000000                             // 00003F5C: 7E2202FF 80000000
  v_cndmask_b32  v13, v13, v29, s[26:27]                    // 00003F64: D200000D 006A3B0D
  v_cndmask_b32  v14, v14, v30, s[30:31]                    // 00003F6C: D200000E 007A3D0E
  v_cndmask_b32  v15, v15, v31, s[28:29]                    // 00003F74: D200000F 00723F0F
  v_cndmask_b32  v16, v16, v32, s[2:3]                      // 00003F7C: D2000010 000A4110
  v_cndmask_b32  v18, 0, v17, s[34:35]                      // 00003F84: D2000012 008A2280
  v_cndmask_b32  v19, 0, v17, vcc                           // 00003F8C: 00262280
  v_cndmask_b32  v20, 0, v17, s[36:37]                      // 00003F90: D2000014 00922280
  v_cndmask_b32  v17, 0, v17, s[32:33]                      // 00003F98: D2000011 00822280
  v_xor_b32     v13, v13, v18                               // 00003FA0: 3A1A250D
  v_xor_b32     v14, v14, v19                               // 00003FA4: 3A1C270E
  v_xor_b32     v15, v15, v20                               // 00003FA8: 3A1E290F
  v_xor_b32     v16, v16, v17                               // 00003FAC: 3A202310
  v_xor_b32     v2, v6, v2                                  // 00003FB0: 3A040506
  v_xor_b32     v3, v7, v3                                  // 00003FB4: 3A060707
  v_xor_b32     v4, v8, v4                                  // 00003FB8: 3A080908
  v_xor_b32     v6, v9, v10                                 // 00003FBC: 3A0C1509
  v_xor_b32     v2, v13, v2                                 // 00003FC0: 3A04050D
  v_xor_b32     v3, v14, v3                                 // 00003FC4: 3A06070E
  v_xor_b32     v4, v15, v4                                 // 00003FC8: 3A08090F
  v_xor_b32     v6, v16, v6                                 // 00003FCC: 3A0C0D10
  v_mov_b32     v7, 0x7fc00000                              // 00003FD0: 7E0E02FF 7FC00000
  v_cndmask_b32  v2, v2, v7, s[20:21]                       // 00003FD8: D2000002 00520F02
  v_cndmask_b32  v3, v3, v7, s[24:25]                       // 00003FE0: D2000003 00620F03
  v_cndmask_b32  v4, v4, v7, s[22:23]                       // 00003FE8: D2000004 005A0F04
  v_cndmask_b32  v6, v6, v7, s[12:13]                       // 00003FF0: D2000006 00320F06
  v_mul_f32     v7, v5, v2                                  // 00003FF8: 100E0505
  v_mul_f32     v8, v11, v3                                 // 00003FFC: 1010070B
  v_mul_f32     v9, v12, v4                                 // 00004000: 1012090C
  v_mul_f32     v10, v1, v6                                 // 00004004: 10140D01
  tbuffer_store_format_xyzw  v[7:10], v0, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32_32_32_32,BUF_NUM_FORMAT_FLOAT] // 00004008: EBF71000 80010700
  s_addk_i32    s0, 0x0010                                  // 00004010: B7800010
  v_add_i32     v0, vcc, 32, v0                             // 00004014: 4A0000A0
  s_add_i32     s2, -1, s1                                  // 00004018: 810201C1
  s_cmp_eq_i32  s1, 1                                       // 0000401C: BF008101
  s_cbranch_scc1  label_100B                                // 00004020: BF850002
  s_mov_b32     s1, s2                                      // 00004024: BE810302
  s_branch      label_01B1                                  // 00004028: BF82F1A6
label_100B:
  s_endpgm                                                  // 0000402C: BF810000