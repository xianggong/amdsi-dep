label_0000:
  s_mov_b32     m0, 0x00008000                              // 00000000: BEFC03FF 00008000
  s_buffer_load_dwordx2  s[0:1], s[4:7], 0x04               // 00000008: C2400504
  s_buffer_load_dwordx2  s[14:15], s[4:7], 0x18             // 0000000C: C2470518
  s_buffer_load_dwordx2  s[4:5], s[4:7], 0x1c               // 00000010: C242051C
  s_buffer_load_dword  s6, s[8:11], 0x00                    // 00000014: C2030900
  s_buffer_load_dword  s7, s[8:11], 0x04                    // 00000018: C2038904
  s_buffer_load_dword  s16, s[8:11], 0x08                   // 0000001C: C2080908
  s_buffer_load_dword  s17, s[8:11], 0x0c                   // 00000020: C208890C
  s_buffer_load_dword  s18, s[8:11], 0x10                   // 00000024: C2090910
  s_buffer_load_dword  s19, s[8:11], 0x14                   // 00000028: C2098914
  s_buffer_load_dword  s8, s[8:11], 0x18                    // 0000002C: C2040918
  s_waitcnt     lgkmcnt(0)                                  // 00000030: BF8C007F
  s_min_u32     s0, s0, 0x0000ffff                          // 00000034: 8380FF00 0000FFFF
  s_min_u32     s1, s1, 0x0000ffff                          // 0000003C: 8381FF01 0000FFFF
  v_mov_b32     v2, s0                                      // 00000044: 7E040200
  v_mul_i32_i24  v2, s12, v2                                // 00000048: 1204040C
  v_mov_b32     v3, s1                                      // 0000004C: 7E060201
  v_mul_i32_i24  v3, s13, v3                                // 00000050: 1206060D
  v_add_i32     v2, vcc, v0, v2                             // 00000054: 4A040500
  v_add_i32     v3, vcc, v1, v3                             // 00000058: 4A060701
  v_add_i32     v2, vcc, s14, v2                            // 0000005C: 4A04040E
  v_add_i32     v3, vcc, s15, v3                            // 00000060: 4A06060F
  s_add_i32     s0, s12, s4                                 // 00000064: 8100040C
  s_add_i32     s1, s13, s5                                 // 00000068: 8101050D
  s_load_dwordx4  s[12:15], s[2:3], 0x50                    // 0000006C: C0860350
  s_cmp_eq_i32  s19, 0                                      // 00000070: BF008013
  s_cbranch_scc1  label_0040                                // 00000074: BF850022
  s_mul_i32     s1, s1, s18                                 // 00000078: 93011201
  s_add_i32     s0, s0, s1                                  // 0000007C: 81000100
  s_mul_i32     s0, s19, s0                                 // 00000080: 93000013
  v_add_i32     v4, vcc, s0, v1                             // 00000084: 4A080200
  v_lshlrev_b32  v4, 2, v4                                  // 00000088: 34080882
  v_mul_lo_i32  v10, v0, s19                                // 0000008C: D2D6000A 02002700
  s_lshl_b32    s0, s18, 2                                  // 00000094: 8F008212
  v_add_i32     v6, vcc, s7, v4                             // 00000098: 4A0C0807
  s_load_dwordx4  s[20:23], s[2:3], 0x58                    // 0000009C: C08A0358
  v_mov_b32     v4, 0                                       // 000000A0: 7E080280
  s_mov_b32     s1, s19                                     // 000000A4: BE810313
  v_mov_b32     v7, v0                                      // 000000A8: 7E0E0300
label_002B:
  v_cmp_eq_i32  vcc, s8, 0                                  // 000000AC: D104006A 00010008
  v_cndmask_b32  v8, v10, v7, vcc                           // 000000B4: 00100F0A
  v_lshlrev_b32  v8, 2, v8                                  // 000000B8: 34101082
  v_add_i32     v8, vcc, s16, v8                            // 000000BC: 4A101010
  s_waitcnt     lgkmcnt(0)                                  // 000000C0: BF8C007F
  tbuffer_load_format_x  v8, v8, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000000C4: EBA01000 80030808
  tbuffer_load_format_x  v9, v6, s[20:23], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000000CC: EBA01000 80050906
  v_add_i32     v10, vcc, 1, v10                            // 000000D4: 4A141481
  v_add_i32     v7, vcc, s19, v7                            // 000000D8: 4A0E0E13
  v_add_i32     v6, vcc, s0, v6                             // 000000DC: 4A0C0C00
  s_add_i32     s4, -1, s1                                  // 000000E0: 810401C1
  s_waitcnt     vmcnt(0)                                    // 000000E4: BF8C1F70
  v_mac_f32     v4, v8, v9                                  // 000000E8: 3E081308
  s_cmp_eq_i32  s1, 1                                       // 000000EC: BF008101
  s_cbranch_scc1  label_003F                                // 000000F0: BF850002
  s_mov_b32     s1, s4                                      // 000000F4: BE810304
  s_branch      label_002B                                  // 000000F8: BF82FFEC
label_003F:
  s_branch      label_0041                                  // 000000FC: BF820001
label_0040:
  v_mov_b32     v4, 0                                       // 00000100: 7E080280
label_0041:
  v_mul_lo_i32  v5, v1, s19                                 // 00000104: D2D60005 02002701
  v_add_i32     v6, vcc, v0, v5                             // 0000010C: 4A0C0B00
  v_lshlrev_b32  v6, 2, v6                                  // 00000110: 340C0C82
  v_add_i32     v6, vcc, s17, v6                            // 00000114: 4A0C0C11
  ds_write_b32  v6, v4                                      // 00000118: D8340000 00000406
  s_waitcnt     lgkmcnt(0)                                  // 00000120: BF8C007F
  s_barrier                                                 // 00000124: BF8A0000
  s_cmp_eq_i32  s19, 0                                      // 00000128: BF008013
  s_cbranch_scc1  label_0066                                // 0000012C: BF85001A
  v_mul_lo_i32  v0, v0, s19                                 // 00000130: D2D60000 02002700
  v_lshlrev_b32  v0, 2, v0                                  // 00000138: 34000082
  v_add_i32     v0, vcc, s17, v0                            // 0000013C: 4A000011
  s_mov_b32     s0, s19                                     // 00000140: BE800313
  v_mov_b32     v4, 0                                       // 00000144: 7E080280
label_0052:
  v_cmp_eq_i32  vcc, s8, 0                                  // 00000148: D104006A 00010008
  v_cndmask_b32  v6, v5, v1, vcc                            // 00000150: 000C0305
  v_lshlrev_b32  v6, 2, v6                                  // 00000154: 340C0C82
  v_add_i32     v6, vcc, s16, v6                            // 00000158: 4A0C0C10
  tbuffer_load_format_x  v6, v6, s[12:15], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000015C: EBA01000 80030606
  ds_read_b32   v7, v0                                      // 00000164: D8D80000 07000000
  v_add_i32     v0, vcc, 4, v0                              // 0000016C: 4A000084
  v_add_i32     v5, vcc, 1, v5                              // 00000170: 4A0A0A81
  v_add_i32     v1, vcc, s19, v1                            // 00000174: 4A020213
  s_add_i32     s1, -1, s0                                  // 00000178: 810100C1
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 0000017C: BF8C0070
  v_mac_f32     v4, v6, v7                                  // 00000180: 3E080F06
  s_cmp_eq_i32  s0, 1                                       // 00000184: BF008100
  s_cbranch_scc1  label_0065                                // 00000188: BF850002
  s_mov_b32     s0, s1                                      // 0000018C: BE800301
  s_branch      label_0052                                  // 00000190: BF82FFED
label_0065:
  s_branch      label_0067                                  // 00000194: BF820001
label_0066:
  v_mov_b32     v4, 0                                       // 00000198: 7E080280
label_0067:
  s_load_dwordx4  s[0:3], s[2:3], 0x60                      // 0000019C: C0800360
  v_mul_lo_i32  v1, v3, s18                                 // 000001A0: D2D60001 02002503
  v_add_i32     v1, vcc, v2, v1                             // 000001A8: 4A020302
  v_lshlrev_b32  v1, 2, v1                                  // 000001AC: 34020282
  v_add_i32     v1, vcc, s6, v1                             // 000001B0: 4A020206
  s_waitcnt     lgkmcnt(0)                                  // 000001B4: BF8C007F
  tbuffer_store_format_x  v4, v1, s[0:3], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000001B8: EBA41000 80000401
  s_endpgm                                                  // 000001C0: BF810000