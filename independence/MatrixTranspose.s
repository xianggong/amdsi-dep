Independant instructions:
  s_buffer_load_dword  s16, s[8:11], 0x0c                   // 0000001C: C208090C
  s_buffer_load_dword  s0, s[8:11], 0x04                    // 0000003C: C2000904
  s_load_dwordx4  s[16:19], s[2:3], 0x50                    // 00000064: C0880350
  s_buffer_load_dword  s0, s[8:11], 0x14                    // 00000074: C2000914
  s_buffer_load_dword  s1, s[8:11], 0x08                    // 00000078: C2008908
  s_buffer_load_dwordx2  s[4:5], s[4:7], 0x1c               // 0000007C: C242051C
  s_buffer_load_dword  s5, s[8:11], 0x00                    // 000000A0: C2028900
  s_buffer_load_dword  s6, s[8:11], 0x10                    // 000000A4: C2030910
  s_barrier                                                 // 000000B8: BF8A0000
  s_mul_i32     s1, s1, s0                                  // 000000BC: 93010001
  s_mul_i32     s0, s4, s0                                  // 000000C0: 93000004
  v_add_i32     v0, vcc, s1, v0                             // 000000C4: 4A000001
  s_load_dwordx4  s[8:11], s[2:3], 0x58                     // 000000D0: C0840358
  v_add_i32     v1, vcc, s0, v1                             // 000000D4: 4A020200
Independant instruction count = 14/53 = 26.4 %
