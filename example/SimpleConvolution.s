label_0000:
  s_buffer_load_dwordx2  s[0:1], s[8:11], 0x0c              // 00000000: C240090C
  s_buffer_load_dword  s13, s[4:7], 0x04                    // 00000004: C2068504
  s_waitcnt     lgkmcnt(0)                                  // 00000008: BF8C007F
  v_cvt_f32_u32  v1, s0                                     // 0000000C: 7E020C00
  v_rcp_f32     v1, v1                                      // 00000010: 7E025501
  v_mul_f32     v1, 0x4f800000, v1                          // 00000014: 100202FF 4F800000
  v_cvt_u32_f32  v1, v1                                     // 0000001C: 7E020F01
  s_buffer_load_dword  s4, s[4:7], 0x18                     // 00000020: C2020518
  v_mul_lo_u32  v2, s0, v1                                  // 00000024: D2D20002 02020200
  v_mul_hi_u32  v3, s0, v1                                  // 0000002C: D2D40003 02020200
  s_min_u32     s5, s13, 0x0000ffff                         // 00000034: 8385FF0D 0000FFFF
  v_sub_i32     v4, vcc, 0, v2                              // 0000003C: 4C080480
  v_cmp_ne_i32  s[6:7], v3, 0                               // 00000040: D10A0006 00010103
  v_mov_b32     v3, s5                                      // 00000048: 7E060205
  v_cndmask_b32  v2, v4, v2, s[6:7]                         // 0000004C: D2000002 001A0504
  v_mul_i32_i24  v3, s12, v3                                // 00000054: 1206060C
  v_mul_hi_u32  v2, v2, v1                                  // 00000058: D2D40002 02020302
  v_add_i32     v0, vcc, v0, v3                             // 00000060: 4A000700
  v_sub_i32     v3, vcc, v1, v2                             // 00000064: 4C060501
  v_add_i32     v1, vcc, v1, v2                             // 00000068: 4A020501
  s_waitcnt     lgkmcnt(0)                                  // 0000006C: BF8C007F
  v_add_i32     v0, vcc, s4, v0                             // 00000070: 4A000004
  v_cndmask_b32  v1, v1, v3, s[6:7]                         // 00000074: D2000001 001A0701
  v_mul_hi_u32  v1, v1, v0                                  // 0000007C: D2D40001 02020101
  v_mul_lo_u32  v2, v1, s0                                  // 00000084: D2D20002 02000101
  s_buffer_load_dwordx2  s[4:5], s[8:11], 0x10              // 0000008C: C2420910
  v_sub_i32     v3, vcc, v0, v2                             // 00000090: 4C060500
  v_cmp_ge_u32  s[6:7], v0, v2                              // 00000094: D18C0006 00020500
  v_cmp_ge_u32  s[12:13], v3, s0                            // 0000009C: D18C000C 00000103
  s_and_b64     s[12:13], s[6:7], s[12:13]                  // 000000A4: 878C0C06
  v_addc_u32    v1, vcc, v1, 0, s[12:13]                    // 000000A8: D2506A01 00310101
  v_addc_u32    v1, vcc, v1, -1, s[6:7]                     // 000000B0: D2506A01 00198301
  v_mul_lo_i32  v2, s0, v1                                  // 000000B8: D2D60002 02020200
  s_waitcnt     lgkmcnt(0)                                  // 000000C0: BF8C007F
  s_add_i32     s6, -1, s4                                  // 000000C4: 810604C1
  v_sub_i32     v2, vcc, v0, v2                             // 000000C8: 4C040500
  s_lshr_b32    s6, s6, 1                                   // 000000CC: 90068106
  v_cmp_ne_i32  s[12:13], s0, 0                             // 000000D0: D10A000C 00010000
  v_add_i32     v3, vcc, s6, v2                             // 000000D8: 4A060406
  s_add_i32     s7, -1, s0                                  // 000000DC: 810700C1
  s_add_i32     s5, -1, s5                                  // 000000E0: 810505C1
  v_cndmask_b32  v1, -1, v1, s[12:13]                       // 000000E4: D2000001 003202C1
  v_subrev_i32  v4, vcc, s6, v2                             // 000000EC: 4E080406
  v_cmp_le_u32  s[12:13], s6, v2                            // 000000F0: D186000C 00020406
  v_cmp_gt_u32  vcc, s0, v3                                 // 000000F8: 7D880600
  v_mov_b32     v5, s7                                      // 000000FC: 7E0A0207
  s_lshr_b32    s5, s5, 1                                   // 00000100: 90058105
  v_cndmask_b32  v4, 0, v4, s[12:13]                        // 00000104: D2000004 00320880
  v_cndmask_b32  v3, v5, v3, vcc                            // 0000010C: 00060705
  v_add_i32     v5, vcc, s5, v1                             // 00000110: 4A0A0205
  s_buffer_load_dword  s7, s[8:11], 0x00                    // 00000114: C2038900
  s_buffer_load_dword  s12, s[8:11], 0x04                   // 00000118: C2060904
  s_buffer_load_dword  s8, s[8:11], 0x08                    // 0000011C: C2040908
  v_cmp_gt_u32  s[10:11], v4, v3                            // 00000120: D188000A 00020704
  v_cmp_gt_u32  s[14:15], s1, v5                            // 00000128: D188000E 00020A01
  s_mov_b64     s[16:17], exec                              // 00000130: BE90047E
  s_andn2_b64   exec, s[16:17], s[10:11]                    // 00000134: 8AFE0A10
  v_max_u32     v4, s5, v1                                  // 00000138: 28080205
  s_cbranch_execz  label_009A                               // 0000013C: BF88004A
  v_subrev_i32  v6, vcc, s5, v4                             // 00000140: 4E0C0805
  v_sub_i32     v4, vcc, v4, v1                             // 00000144: 4C080304
  v_max_u32     v7, s6, v2                                  // 00000148: 280E0406
  v_mul_lo_i32  v8, s0, v6                                  // 0000014C: D2D60008 02020C00
  v_mul_lo_i32  v4, s4, v4                                  // 00000154: D2D60004 02020804
  v_add_i32     v8, vcc, v7, v8                             // 0000015C: 4A101107
  v_add_i32     v4, vcc, v7, v4                             // 00000160: 4A080907
  s_add_i32     s1, -1, s1                                  // 00000164: 810101C1
  v_subrev_i32  v8, vcc, s6, v8                             // 00000168: 4E101006
  v_sub_i32     v2, vcc, v4, v2                             // 0000016C: 4C040504
  v_mov_b32     v4, s1                                      // 00000170: 7E080201
  v_lshlrev_b32  v8, 2, v8                                  // 00000174: 34101082
  v_lshlrev_b32  v2, 2, v2                                  // 00000178: 34040482
  v_subrev_i32  v9, vcc, s5, v1                             // 0000017C: 4E120205
  v_cmp_le_u32  s[10:11], s5, v1                            // 00000180: D186000A 00020205
  v_cndmask_b32  v1, v4, v5, s[14:15]                       // 00000188: D2000001 003A0B04
  s_waitcnt     lgkmcnt(0)                                  // 00000190: BF8C007F
  v_add_i32     v8, vcc, s12, v8                            // 00000194: 4A10100C
  v_add_i32     v2, vcc, s8, v2                             // 00000198: 4A040408
  v_cndmask_b32  v5, 0, v9, s[10:11]                        // 0000019C: D2000005 002A1280
  v_subrev_i32  v14, vcc, s6, v7                            // 000001A4: 4E1C0E06
  s_lshl_b32    s0, s0, 2                                   // 000001A8: 8F008200
  s_lshl_b32    s1, s4, 2                                   // 000001AC: 8F018204
  s_load_dwordx4  s[8:11], s[2:3], 0x58                     // 000001B0: C0840358
  s_load_dwordx4  s[12:15], s[2:3], 0x50                    // 000001B4: C0860350
  s_mov_b64     s[4:5], exec                                // 000001B8: BE84047E
  s_mov_b64     s[18:19], exec                              // 000001BC: BE92047E
  v_mov_b32     v4, 0                                       // 000001C0: 7E080280
label_0071:
  v_cmp_gt_u32  s[20:21], v5, v1                            // 000001C4: D1880014 00020305
  s_and_saveexec_b64  s[20:21], s[20:21]                    // 000001CC: BE942414
  s_andn2_b64   exec, s[20:21], exec                        // 000001D0: 8AFE7E14
  s_cbranch_execz  label_008C                               // 000001D4: BF880016
  s_mov_b64     s[22:23], exec                              // 000001D8: BE96047E
  v_mov_b32     v7, v6                                      // 000001DC: 7E0E0306
  v_mov_b32     v9, v8                                      // 000001E0: 7E120308
  v_mov_b32     v11, v2                                     // 000001E4: 7E160302
label_007A:
  s_waitcnt     lgkmcnt(0)                                  // 000001E8: BF8C007F
  tbuffer_load_format_x  v12, v9, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000001EC: EBA01000 80030C09
  tbuffer_load_format_x  v13, v11, s[8:11], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000001F4: EBA01000 80020D0B
  v_add_i32     v7, vcc, 1, v7                              // 000001FC: 4A0E0E81
  s_waitcnt     vmcnt(1)                                    // 00000200: BF8C1F71
  v_cvt_f32_u32  v12, v12                                   // 00000204: 7E180D0C
  v_add_i32     v9, vcc, s0, v9                             // 00000208: 4A121200
  v_add_i32     v11, vcc, s1, v11                           // 0000020C: 4A161601
  v_cmp_gt_u32  s[24:25], v7, v1                            // 00000210: D1880018 00020307
  s_waitcnt     vmcnt(0)                                    // 00000218: BF8C1F70
  v_mac_f32     v4, v13, v12                                // 0000021C: 3E08190D
  s_andn2_b64   exec, exec, s[24:25]                        // 00000220: 8AFE187E
  s_cbranch_execz  label_008B                               // 00000224: BF880001
  s_branch      label_007A                                  // 00000228: BF82FFEF
label_008B:
  s_mov_b64     exec, s[22:23]                              // 0000022C: BEFE0416
label_008C:
  s_mov_b64     exec, s[20:21]                              // 00000230: BEFE0414
  v_add_i32     v14, vcc, 1, v14                            // 00000234: 4A1C1C81
  v_add_i32     v8, vcc, 4, v8                              // 00000238: 4A101084
  v_add_i32     v2, vcc, 4, v2                              // 0000023C: 4A040484
  v_cmp_gt_u32  s[20:21], v14, v3                           // 00000240: D1880014 0002070E
  s_and_saveexec_b64  s[20:21], s[20:21]                    // 00000248: BE942414
  s_andn2_b64   s[18:19], s[18:19], exec                    // 0000024C: 8A927E12
  s_cbranch_scc0  label_0099                                // 00000250: BF840004
  s_andn2_b64   exec, s[20:21], exec                        // 00000254: 8AFE7E14
  s_mov_b64     exec, s[20:21]                              // 00000258: BEFE0414
  s_and_b64     exec, exec, s[18:19]                        // 0000025C: 87FE127E
  s_branch      label_0071                                  // 00000260: BF82FFD8
label_0099:
  s_mov_b64     exec, s[4:5]                                // 00000264: BEFE0404
label_009A:
  s_andn2_b64   exec, s[16:17], exec                        // 00000268: 8AFE7E10
  v_mov_b32     v4, 0                                       // 0000026C: 7E080280
  s_mov_b64     exec, s[16:17]                              // 00000270: BEFE0410
  s_load_dwordx4  s[0:3], s[2:3], 0x60                      // 00000274: C0800360
  v_lshlrev_b32  v0, 2, v0                                  // 00000278: 34000082
  s_waitcnt     lgkmcnt(0)                                  // 0000027C: BF8C007F
  v_add_i32     v0, vcc, s7, v0                             // 00000280: 4A000007
  v_add_f32     v1, 0.5, v4                                 // 00000284: 060208F0
  v_cvt_u32_f32  v1, v1                                     // 00000288: 7E020F01
  tbuffer_store_format_x  v1, v0, s[0:3], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000028C: EBA41000 80000100
  s_endpgm                                                  // 00000294: BF810000