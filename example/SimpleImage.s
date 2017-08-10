**
** Disassembly for '__kernel image2dCopy'
**

  s_buffer_load_dwordx2  s[0:1], s[8:11], 0x04              // 00000000: C2400904
  s_buffer_load_dwordx2  s[8:9], s[8:11], 0x18              // 00000004: C2440918
  s_waitcnt     lgkmcnt(0)                                  // 00000008: BF8C007F
  s_min_u32     s0, s0, 0x0000ffff                          // 0000000C: 8380FF00 0000FFFF
  s_min_u32     s1, s1, 0x0000ffff                          // 00000014: 8381FF01 0000FFFF
  v_mov_b32     v2, s0                                      // 0000001C: 7E040200
  v_mov_b32     v3, s1                                      // 00000020: 7E060201
  v_mul_i32_i24  v2, s14, v2                                // 00000024: 1204040E
  v_mul_i32_i24  v3, s15, v3                                // 00000028: 1206060F
  v_add_i32     v0, vcc, v0, v2                             // 0000002C: 4A000500
  v_add_i32     v1, vcc, v1, v3                             // 00000030: 4A020701
  s_load_dwordx8  s[16:23], s[2:3], 0x00                    // 00000034: C0C80300
  v_add_i32     v0, vcc, s8, v0                             // 00000038: 4A000008
  v_add_i32     v1, vcc, s9, v1                             // 0000003C: 4A020209
  v_cvt_f32_i32  v2, v0                                     // 00000040: 7E040B00
  v_cvt_f32_i32  v3, v1                                     // 00000044: 7E060B01
  v_floor_f32   v2, v2                                      // 00000048: 7E044902
  v_floor_f32   v3, v3                                      // 0000004C: 7E064903
  s_waitcnt     lgkmcnt(0)                                  // 00000050: BF8C007F
  image_sample  v[2:5], v[2:5], s[16:23], s[4:7] dmask:0xf unorm // 00000054: F0801F00 00240202
  s_load_dwordx8  s[0:7], s[12:13], 0x00                    // 0000005C: C0C00D00
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00000060: BF8C0070
  image_store   v[2:5], v[0:3], s[0:7] dmask:0xf unorm glc  // 00000064: F0203F00 00000200
  s_endpgm                                                  // 0000006C: BF810000



**
** Disassembly for '__kernel image3dCopy'
**

  s_buffer_load_dwordx2  s[0:1], s[8:11], 0x04              // 00000000: C2400904
  s_buffer_load_dwordx2  s[16:17], s[8:11], 0x18            // 00000004: C2480918
  s_buffer_load_dword  s8, s[8:11], 0x01                    // 00000008: C2040901
  s_waitcnt     lgkmcnt(0)                                  // 0000000C: BF8C007F
  s_min_u32     s1, s1, 0x0000ffff                          // 00000010: 8381FF01 0000FFFF
  s_min_u32     s0, s0, 0x0000ffff                          // 00000018: 8380FF00 0000FFFF
  v_mov_b32     v2, s1                                      // 00000020: 7E040201
  v_mov_b32     v3, s0                                      // 00000024: 7E060200
  v_mul_i32_i24  v2, s15, v2                                // 00000028: 1204040F
  v_mul_i32_i24  v3, s14, v3                                // 0000002C: 1206060E
  v_add_i32     v1, vcc, v1, v2                             // 00000030: 4A020501
  v_add_i32     v0, vcc, v0, v3                             // 00000034: 4A000700
  v_add_i32     v1, vcc, s17, v1                            // 00000038: 4A020211
  s_load_dwordx8  s[20:27], s[2:3], 0x00                    // 0000003C: C0CA0300
  s_lshr_b32    s0, s8, 1                                   // 00000040: 90008108
  v_add_i32     v0, vcc, s16, v0                            // 00000044: 4A000010
  v_subrev_i32  v2, vcc, s0, v1                             // 00000048: 4E040200
  v_cvt_f32_i32  v3, v0                                     // 0000004C: 7E060B00
  v_cvt_f32_i32  v4, v1                                     // 00000050: 7E080B01
  v_cvt_f32_i32  v2, v2                                     // 00000054: 7E040B02
  v_floor_f32   v8, v3                                      // 00000058: 7E104903
  v_floor_f32   v9, v4                                      // 0000005C: 7E124904
  v_floor_f32   v2, v2                                      // 00000060: 7E044902
  v_mov_b32     v10, 0                                      // 00000064: 7E140280
  s_waitcnt     lgkmcnt(0)                                  // 00000068: BF8C007F
  image_sample  v[4:7], v[8:11], s[20:27], s[4:7] dmask:0xf unorm // 0000006C: F0801F00 00250408
  v_mov_b32     v9, v2                                      // 00000074: 7E120302
  v_mov_b32     v10, 1.0                                    // 00000078: 7E1402F2
  image_sample  v[8:11], v[8:11], s[20:27], s[4:7] dmask:0xf unorm // 0000007C: F0801F00 00250808
  s_load_dwordx8  s[0:7], s[12:13], 0x00                    // 00000084: C0C00D00
  s_waitcnt     vmcnt(0)                                    // 00000088: BF8C1F70
  v_add_i32     v2, vcc, v4, v8                             // 0000008C: 4A041104
  v_add_i32     v3, vcc, v5, v9                             // 00000090: 4A061305
  v_add_i32     v4, vcc, v6, v10                            // 00000094: 4A081506
  v_add_i32     v5, vcc, v7, v11                            // 00000098: 4A0A1707
  s_waitcnt     lgkmcnt(0)                                  // 0000009C: BF8C007F
  image_store   v[2:5], v[0:3], s[0:7] dmask:0xf unorm glc  // 000000A0: F0203F00 00000200
  s_endpgm                                                  // 000000A8: BF810000



