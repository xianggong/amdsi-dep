**
** Disassembly for '__kernel histogram'
**

  s_mov_b32     m0, 0x00008000                              // 00000000: BEFC03FF 00008000
  s_buffer_load_dword  s0, s[8:11], 0x0c                    // 00000008: C200090C
  v_lshlrev_b32  v1, 9, v0                                  // 0000000C: 34020089
  v_or_b32      v2, 16, v1                                  // 00000010: 38040290
  s_waitcnt     lgkmcnt(0)                                  // 00000014: BF8C007F
  v_add_i32     v2, vcc, s0, v2                             // 00000018: 4A040400
  v_add_i32     v3, vcc, -16, v2                            // 0000001C: 4A0604D0
  v_mov_b32     v4, 0                                       // 00000020: 7E080280
  ds_write_b16  v3, v4                                      // 00000024: D87C0000 00000403
  v_add_i32     v3, vcc, -14, v2                            // 0000002C: 4A0604CE
  ds_write_b16  v3, v4                                      // 00000030: D87C0000 00000403
  v_add_i32     v3, vcc, -12, v2                            // 00000038: 4A0604CC
  ds_write_b16  v3, v4                                      // 0000003C: D87C0000 00000403
  v_add_i32     v3, vcc, -10, v2                            // 00000044: 4A0604CA
  ds_write_b16  v3, v4                                      // 00000048: D87C0000 00000403
  v_add_i32     v3, vcc, -8, v2                             // 00000050: 4A0604C8
  ds_write_b16  v3, v4                                      // 00000054: D87C0000 00000403
  v_add_i32     v3, vcc, -6, v2                             // 0000005C: 4A0604C6
  ds_write_b16  v3, v4                                      // 00000060: D87C0000 00000403
  v_add_i32     v3, vcc, -4, v2                             // 00000068: 4A0604C4
  ds_write_b16  v3, v4                                      // 0000006C: D87C0000 00000403
  v_add_i32     v3, vcc, -2, v2                             // 00000074: 4A0604C2
  ds_write_b16  v3, v4                                      // 00000078: D87C0000 00000403
  ds_write_b16  v2, v4                                      // 00000080: D87C0000 00000402
  v_add_i32     v3, vcc, 2, v2                              // 00000088: 4A060482
  ds_write_b16  v3, v4                                      // 0000008C: D87C0000 00000403
  v_add_i32     v3, vcc, 4, v2                              // 00000094: 4A060484
  ds_write_b16  v3, v4                                      // 00000098: D87C0000 00000403
  v_add_i32     v3, vcc, 6, v2                              // 000000A0: 4A060486
  ds_write_b16  v3, v4                                      // 000000A4: D87C0000 00000403
  v_add_i32     v3, vcc, 8, v2                              // 000000AC: 4A060488
  ds_write_b16  v3, v4                                      // 000000B0: D87C0000 00000403
  v_add_i32     v3, vcc, 10, v2                             // 000000B8: 4A06048A
  ds_write_b16  v3, v4                                      // 000000BC: D87C0000 00000403
  v_add_i32     v3, vcc, 12, v2                             // 000000C4: 4A06048C
  ds_write_b16  v3, v4                                      // 000000C8: D87C0000 00000403
  v_add_i32     v3, vcc, 14, v2                             // 000000D0: 4A06048E
  ds_write_b16  v3, v4                                      // 000000D4: D87C0000 00000403
  v_add_i32     v3, vcc, 16, v2                             // 000000DC: 4A060490
  ds_write_b16  v3, v4                                      // 000000E0: D87C0000 00000403
  v_add_i32     v3, vcc, 18, v2                             // 000000E8: 4A060492
  ds_write_b16  v3, v4                                      // 000000EC: D87C0000 00000403
  v_add_i32     v3, vcc, 20, v2                             // 000000F4: 4A060494
  ds_write_b16  v3, v4                                      // 000000F8: D87C0000 00000403
  v_add_i32     v3, vcc, 22, v2                             // 00000100: 4A060496
  ds_write_b16  v3, v4                                      // 00000104: D87C0000 00000403
  v_add_i32     v3, vcc, 24, v2                             // 0000010C: 4A060498
  ds_write_b16  v3, v4                                      // 00000110: D87C0000 00000403
  v_add_i32     v3, vcc, 26, v2                             // 00000118: 4A06049A
  ds_write_b16  v3, v4                                      // 0000011C: D87C0000 00000403
  v_add_i32     v3, vcc, 28, v2                             // 00000124: 4A06049C
  ds_write_b16  v3, v4                                      // 00000128: D87C0000 00000403
  v_add_i32     v3, vcc, 30, v2                             // 00000130: 4A06049E
  v_add_i32     v5, vcc, 32, v2                             // 00000134: 4A0A04A0
  ds_write_b16  v3, v4                                      // 00000138: D87C0000 00000403
  ds_write_b16  v5, v4                                      // 00000140: D87C0000 00000405
  v_add_i32     v3, vcc, 34, v2                             // 00000148: 4A0604A2
  ds_write_b16  v3, v4                                      // 0000014C: D87C0000 00000403
  v_add_i32     v3, vcc, 36, v2                             // 00000154: 4A0604A4
  ds_write_b16  v3, v4                                      // 00000158: D87C0000 00000403
  v_add_i32     v3, vcc, 38, v2                             // 00000160: 4A0604A6
  ds_write_b16  v3, v4                                      // 00000164: D87C0000 00000403
  v_add_i32     v3, vcc, 40, v2                             // 0000016C: 4A0604A8
  ds_write_b16  v3, v4                                      // 00000170: D87C0000 00000403
  v_add_i32     v3, vcc, 42, v2                             // 00000178: 4A0604AA
  ds_write_b16  v3, v4                                      // 0000017C: D87C0000 00000403
  v_add_i32     v3, vcc, 44, v2                             // 00000184: 4A0604AC
  ds_write_b16  v3, v4                                      // 00000188: D87C0000 00000403
  v_add_i32     v3, vcc, 46, v2                             // 00000190: 4A0604AE
  ds_write_b16  v3, v4                                      // 00000194: D87C0000 00000403
  v_add_i32     v3, vcc, 48, v2                             // 0000019C: 4A0604B0
  ds_write_b16  v3, v4                                      // 000001A0: D87C0000 00000403
  v_add_i32     v3, vcc, 50, v2                             // 000001A8: 4A0604B2
  ds_write_b16  v3, v4                                      // 000001AC: D87C0000 00000403
  v_add_i32     v3, vcc, 52, v2                             // 000001B4: 4A0604B4
  ds_write_b16  v3, v4                                      // 000001B8: D87C0000 00000403
  v_add_i32     v3, vcc, 54, v2                             // 000001C0: 4A0604B6
  ds_write_b16  v3, v4                                      // 000001C4: D87C0000 00000403
  v_add_i32     v3, vcc, 56, v2                             // 000001CC: 4A0604B8
  ds_write_b16  v3, v4                                      // 000001D0: D87C0000 00000403
  v_add_i32     v3, vcc, 58, v2                             // 000001D8: 4A0604BA
  ds_write_b16  v3, v4                                      // 000001DC: D87C0000 00000403
  v_add_i32     v3, vcc, 60, v2                             // 000001E4: 4A0604BC
  ds_write_b16  v3, v4                                      // 000001E8: D87C0000 00000403
  v_add_i32     v3, vcc, 62, v2                             // 000001F0: 4A0604BE
  v_add_i32     v5, vcc, 64, v2                             // 000001F4: 4A0A04C0
  ds_write_b16  v3, v4                                      // 000001F8: D87C0000 00000403
  ds_write_b16  v5, v4                                      // 00000200: D87C0000 00000405
  v_add_i32     v3, vcc, 0x00000042, v2                     // 00000208: 4A0604FF 00000042
  ds_write_b16  v3, v4                                      // 00000210: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000044, v2                     // 00000218: 4A0604FF 00000044
  ds_write_b16  v3, v4                                      // 00000220: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000046, v2                     // 00000228: 4A0604FF 00000046
  ds_write_b16  v3, v4                                      // 00000230: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000048, v2                     // 00000238: 4A0604FF 00000048
  ds_write_b16  v3, v4                                      // 00000240: D87C0000 00000403
  v_add_i32     v3, vcc, 0x0000004a, v2                     // 00000248: 4A0604FF 0000004A
  ds_write_b16  v3, v4                                      // 00000250: D87C0000 00000403
  v_add_i32     v3, vcc, 0x0000004c, v2                     // 00000258: 4A0604FF 0000004C
  ds_write_b16  v3, v4                                      // 00000260: D87C0000 00000403
  v_add_i32     v3, vcc, 0x0000004e, v2                     // 00000268: 4A0604FF 0000004E
  ds_write_b16  v3, v4                                      // 00000270: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000050, v2                     // 00000278: 4A0604FF 00000050
  ds_write_b16  v3, v4                                      // 00000280: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000052, v2                     // 00000288: 4A0604FF 00000052
  ds_write_b16  v3, v4                                      // 00000290: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000054, v2                     // 00000298: 4A0604FF 00000054
  ds_write_b16  v3, v4                                      // 000002A0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000056, v2                     // 000002A8: 4A0604FF 00000056
  ds_write_b16  v3, v4                                      // 000002B0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000058, v2                     // 000002B8: 4A0604FF 00000058
  ds_write_b16  v3, v4                                      // 000002C0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x0000005a, v2                     // 000002C8: 4A0604FF 0000005A
  ds_write_b16  v3, v4                                      // 000002D0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x0000005c, v2                     // 000002D8: 4A0604FF 0000005C
  ds_write_b16  v3, v4                                      // 000002E0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x0000005e, v2                     // 000002E8: 4A0604FF 0000005E
  v_add_i32     v5, vcc, 0x00000060, v2                     // 000002F0: 4A0A04FF 00000060
  ds_write_b16  v3, v4                                      // 000002F8: D87C0000 00000403
  ds_write_b16  v5, v4                                      // 00000300: D87C0000 00000405
  v_add_i32     v3, vcc, 0x00000062, v2                     // 00000308: 4A0604FF 00000062
  ds_write_b16  v3, v4                                      // 00000310: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000064, v2                     // 00000318: 4A0604FF 00000064
  ds_write_b16  v3, v4                                      // 00000320: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000066, v2                     // 00000328: 4A0604FF 00000066
  ds_write_b16  v3, v4                                      // 00000330: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000068, v2                     // 00000338: 4A0604FF 00000068
  ds_write_b16  v3, v4                                      // 00000340: D87C0000 00000403
  v_add_i32     v3, vcc, 0x0000006a, v2                     // 00000348: 4A0604FF 0000006A
  ds_write_b16  v3, v4                                      // 00000350: D87C0000 00000403
  v_add_i32     v3, vcc, 0x0000006c, v2                     // 00000358: 4A0604FF 0000006C
  ds_write_b16  v3, v4                                      // 00000360: D87C0000 00000403
  v_add_i32     v3, vcc, 0x0000006e, v2                     // 00000368: 4A0604FF 0000006E
  ds_write_b16  v3, v4                                      // 00000370: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000070, v2                     // 00000378: 4A0604FF 00000070
  ds_write_b16  v3, v4                                      // 00000380: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000072, v2                     // 00000388: 4A0604FF 00000072
  ds_write_b16  v3, v4                                      // 00000390: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000074, v2                     // 00000398: 4A0604FF 00000074
  ds_write_b16  v3, v4                                      // 000003A0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000076, v2                     // 000003A8: 4A0604FF 00000076
  ds_write_b16  v3, v4                                      // 000003B0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000078, v2                     // 000003B8: 4A0604FF 00000078
  ds_write_b16  v3, v4                                      // 000003C0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x0000007a, v2                     // 000003C8: 4A0604FF 0000007A
  ds_write_b16  v3, v4                                      // 000003D0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x0000007c, v2                     // 000003D8: 4A0604FF 0000007C
  ds_write_b16  v3, v4                                      // 000003E0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x0000007e, v2                     // 000003E8: 4A0604FF 0000007E
  v_add_i32     v5, vcc, 0x00000080, v2                     // 000003F0: 4A0A04FF 00000080
  ds_write_b16  v3, v4                                      // 000003F8: D87C0000 00000403
  ds_write_b16  v5, v4                                      // 00000400: D87C0000 00000405
  v_add_i32     v3, vcc, 0x00000082, v2                     // 00000408: 4A0604FF 00000082
  ds_write_b16  v3, v4                                      // 00000410: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000084, v2                     // 00000418: 4A0604FF 00000084
  ds_write_b16  v3, v4                                      // 00000420: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000086, v2                     // 00000428: 4A0604FF 00000086
  ds_write_b16  v3, v4                                      // 00000430: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000088, v2                     // 00000438: 4A0604FF 00000088
  ds_write_b16  v3, v4                                      // 00000440: D87C0000 00000403
  v_add_i32     v3, vcc, 0x0000008a, v2                     // 00000448: 4A0604FF 0000008A
  ds_write_b16  v3, v4                                      // 00000450: D87C0000 00000403
  v_add_i32     v3, vcc, 0x0000008c, v2                     // 00000458: 4A0604FF 0000008C
  ds_write_b16  v3, v4                                      // 00000460: D87C0000 00000403
  v_add_i32     v3, vcc, 0x0000008e, v2                     // 00000468: 4A0604FF 0000008E
  ds_write_b16  v3, v4                                      // 00000470: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000090, v2                     // 00000478: 4A0604FF 00000090
  ds_write_b16  v3, v4                                      // 00000480: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000092, v2                     // 00000488: 4A0604FF 00000092
  ds_write_b16  v3, v4                                      // 00000490: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000094, v2                     // 00000498: 4A0604FF 00000094
  ds_write_b16  v3, v4                                      // 000004A0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000096, v2                     // 000004A8: 4A0604FF 00000096
  ds_write_b16  v3, v4                                      // 000004B0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000098, v2                     // 000004B8: 4A0604FF 00000098
  ds_write_b16  v3, v4                                      // 000004C0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x0000009a, v2                     // 000004C8: 4A0604FF 0000009A
  ds_write_b16  v3, v4                                      // 000004D0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x0000009c, v2                     // 000004D8: 4A0604FF 0000009C
  ds_write_b16  v3, v4                                      // 000004E0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x0000009e, v2                     // 000004E8: 4A0604FF 0000009E
  v_add_i32     v5, vcc, 0x000000a0, v2                     // 000004F0: 4A0A04FF 000000A0
  ds_write_b16  v3, v4                                      // 000004F8: D87C0000 00000403
  ds_write_b16  v5, v4                                      // 00000500: D87C0000 00000405
  v_add_i32     v3, vcc, 0x000000a2, v2                     // 00000508: 4A0604FF 000000A2
  ds_write_b16  v3, v4                                      // 00000510: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000a4, v2                     // 00000518: 4A0604FF 000000A4
  ds_write_b16  v3, v4                                      // 00000520: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000a6, v2                     // 00000528: 4A0604FF 000000A6
  ds_write_b16  v3, v4                                      // 00000530: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000a8, v2                     // 00000538: 4A0604FF 000000A8
  ds_write_b16  v3, v4                                      // 00000540: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000aa, v2                     // 00000548: 4A0604FF 000000AA
  ds_write_b16  v3, v4                                      // 00000550: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000ac, v2                     // 00000558: 4A0604FF 000000AC
  ds_write_b16  v3, v4                                      // 00000560: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000ae, v2                     // 00000568: 4A0604FF 000000AE
  ds_write_b16  v3, v4                                      // 00000570: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000b0, v2                     // 00000578: 4A0604FF 000000B0
  ds_write_b16  v3, v4                                      // 00000580: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000b2, v2                     // 00000588: 4A0604FF 000000B2
  ds_write_b16  v3, v4                                      // 00000590: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000b4, v2                     // 00000598: 4A0604FF 000000B4
  ds_write_b16  v3, v4                                      // 000005A0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000b6, v2                     // 000005A8: 4A0604FF 000000B6
  ds_write_b16  v3, v4                                      // 000005B0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000b8, v2                     // 000005B8: 4A0604FF 000000B8
  ds_write_b16  v3, v4                                      // 000005C0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000ba, v2                     // 000005C8: 4A0604FF 000000BA
  ds_write_b16  v3, v4                                      // 000005D0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000bc, v2                     // 000005D8: 4A0604FF 000000BC
  ds_write_b16  v3, v4                                      // 000005E0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000be, v2                     // 000005E8: 4A0604FF 000000BE
  v_add_i32     v5, vcc, 0x000000c0, v2                     // 000005F0: 4A0A04FF 000000C0
  ds_write_b16  v3, v4                                      // 000005F8: D87C0000 00000403
  ds_write_b16  v5, v4                                      // 00000600: D87C0000 00000405
  v_add_i32     v3, vcc, 0x000000c2, v2                     // 00000608: 4A0604FF 000000C2
  ds_write_b16  v3, v4                                      // 00000610: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000c4, v2                     // 00000618: 4A0604FF 000000C4
  ds_write_b16  v3, v4                                      // 00000620: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000c6, v2                     // 00000628: 4A0604FF 000000C6
  ds_write_b16  v3, v4                                      // 00000630: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000c8, v2                     // 00000638: 4A0604FF 000000C8
  ds_write_b16  v3, v4                                      // 00000640: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000ca, v2                     // 00000648: 4A0604FF 000000CA
  ds_write_b16  v3, v4                                      // 00000650: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000cc, v2                     // 00000658: 4A0604FF 000000CC
  ds_write_b16  v3, v4                                      // 00000660: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000ce, v2                     // 00000668: 4A0604FF 000000CE
  ds_write_b16  v3, v4                                      // 00000670: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000d0, v2                     // 00000678: 4A0604FF 000000D0
  ds_write_b16  v3, v4                                      // 00000680: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000d2, v2                     // 00000688: 4A0604FF 000000D2
  ds_write_b16  v3, v4                                      // 00000690: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000d4, v2                     // 00000698: 4A0604FF 000000D4
  ds_write_b16  v3, v4                                      // 000006A0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000d6, v2                     // 000006A8: 4A0604FF 000000D6
  ds_write_b16  v3, v4                                      // 000006B0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000d8, v2                     // 000006B8: 4A0604FF 000000D8
  ds_write_b16  v3, v4                                      // 000006C0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000da, v2                     // 000006C8: 4A0604FF 000000DA
  ds_write_b16  v3, v4                                      // 000006D0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000dc, v2                     // 000006D8: 4A0604FF 000000DC
  ds_write_b16  v3, v4                                      // 000006E0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000de, v2                     // 000006E8: 4A0604FF 000000DE
  v_add_i32     v5, vcc, 0x000000e0, v2                     // 000006F0: 4A0A04FF 000000E0
  ds_write_b16  v3, v4                                      // 000006F8: D87C0000 00000403
  ds_write_b16  v5, v4                                      // 00000700: D87C0000 00000405
  v_add_i32     v3, vcc, 0x000000e2, v2                     // 00000708: 4A0604FF 000000E2
  ds_write_b16  v3, v4                                      // 00000710: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000e4, v2                     // 00000718: 4A0604FF 000000E4
  ds_write_b16  v3, v4                                      // 00000720: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000e6, v2                     // 00000728: 4A0604FF 000000E6
  ds_write_b16  v3, v4                                      // 00000730: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000e8, v2                     // 00000738: 4A0604FF 000000E8
  ds_write_b16  v3, v4                                      // 00000740: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000ea, v2                     // 00000748: 4A0604FF 000000EA
  ds_write_b16  v3, v4                                      // 00000750: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000ec, v2                     // 00000758: 4A0604FF 000000EC
  ds_write_b16  v3, v4                                      // 00000760: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000ee, v2                     // 00000768: 4A0604FF 000000EE
  ds_write_b16  v3, v4                                      // 00000770: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000f0, v2                     // 00000778: 4A0604FF 000000F0
  ds_write_b16  v3, v4                                      // 00000780: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000f2, v2                     // 00000788: 4A0604FF 000000F2
  ds_write_b16  v3, v4                                      // 00000790: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000f4, v2                     // 00000798: 4A0604FF 000000F4
  ds_write_b16  v3, v4                                      // 000007A0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000f6, v2                     // 000007A8: 4A0604FF 000000F6
  ds_write_b16  v3, v4                                      // 000007B0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000f8, v2                     // 000007B8: 4A0604FF 000000F8
  ds_write_b16  v3, v4                                      // 000007C0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000fa, v2                     // 000007C8: 4A0604FF 000000FA
  ds_write_b16  v3, v4                                      // 000007D0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000fc, v2                     // 000007D8: 4A0604FF 000000FC
  ds_write_b16  v3, v4                                      // 000007E0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x000000fe, v2                     // 000007E8: 4A0604FF 000000FE
  v_add_i32     v5, vcc, 0x00000100, v2                     // 000007F0: 4A0A04FF 00000100
  ds_write_b16  v3, v4                                      // 000007F8: D87C0000 00000403
  ds_write_b16  v5, v4                                      // 00000800: D87C0000 00000405
  v_add_i32     v3, vcc, 0x00000102, v2                     // 00000808: 4A0604FF 00000102
  ds_write_b16  v3, v4                                      // 00000810: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000104, v2                     // 00000818: 4A0604FF 00000104
  ds_write_b16  v3, v4                                      // 00000820: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000106, v2                     // 00000828: 4A0604FF 00000106
  ds_write_b16  v3, v4                                      // 00000830: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000108, v2                     // 00000838: 4A0604FF 00000108
  ds_write_b16  v3, v4                                      // 00000840: D87C0000 00000403
  v_add_i32     v3, vcc, 0x0000010a, v2                     // 00000848: 4A0604FF 0000010A
  ds_write_b16  v3, v4                                      // 00000850: D87C0000 00000403
  v_add_i32     v3, vcc, 0x0000010c, v2                     // 00000858: 4A0604FF 0000010C
  ds_write_b16  v3, v4                                      // 00000860: D87C0000 00000403
  v_add_i32     v3, vcc, 0x0000010e, v2                     // 00000868: 4A0604FF 0000010E
  ds_write_b16  v3, v4                                      // 00000870: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000110, v2                     // 00000878: 4A0604FF 00000110
  ds_write_b16  v3, v4                                      // 00000880: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000112, v2                     // 00000888: 4A0604FF 00000112
  ds_write_b16  v3, v4                                      // 00000890: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000114, v2                     // 00000898: 4A0604FF 00000114
  ds_write_b16  v3, v4                                      // 000008A0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000116, v2                     // 000008A8: 4A0604FF 00000116
  ds_write_b16  v3, v4                                      // 000008B0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000118, v2                     // 000008B8: 4A0604FF 00000118
  ds_write_b16  v3, v4                                      // 000008C0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x0000011a, v2                     // 000008C8: 4A0604FF 0000011A
  ds_write_b16  v3, v4                                      // 000008D0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x0000011c, v2                     // 000008D8: 4A0604FF 0000011C
  ds_write_b16  v3, v4                                      // 000008E0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x0000011e, v2                     // 000008E8: 4A0604FF 0000011E
  v_add_i32     v5, vcc, 0x00000120, v2                     // 000008F0: 4A0A04FF 00000120
  ds_write_b16  v3, v4                                      // 000008F8: D87C0000 00000403
  ds_write_b16  v5, v4                                      // 00000900: D87C0000 00000405
  v_add_i32     v3, vcc, 0x00000122, v2                     // 00000908: 4A0604FF 00000122
  s_buffer_load_dwordx2  s[14:15], s[4:7], 0x04             // 00000910: C2470504
  ds_write_b16  v3, v4                                      // 00000914: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000124, v2                     // 0000091C: 4A0604FF 00000124
  ds_write_b16  v3, v4                                      // 00000924: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000126, v2                     // 0000092C: 4A0604FF 00000126
  ds_write_b16  v3, v4                                      // 00000934: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000128, v2                     // 0000093C: 4A0604FF 00000128
  ds_write_b16  v3, v4                                      // 00000944: D87C0000 00000403
  v_add_i32     v3, vcc, 0x0000012a, v2                     // 0000094C: 4A0604FF 0000012A
  s_buffer_load_dword  s1, s[4:7], 0x18                     // 00000954: C2008518
  s_waitcnt     lgkmcnt(0)                                  // 00000958: BF8C007F
  ds_write_b16  v3, v4                                      // 0000095C: D87C0000 00000403
  v_add_i32     v3, vcc, 0x0000012c, v2                     // 00000964: 4A0604FF 0000012C
  s_min_u32     s13, s14, 0x0000ffff                        // 0000096C: 838DFF0E 0000FFFF
  ds_write_b16  v3, v4                                      // 00000974: D87C0000 00000403
  v_add_i32     v3, vcc, 0x0000012e, v2                     // 0000097C: 4A0604FF 0000012E
  v_mov_b32     v5, s13                                     // 00000984: 7E0A020D
  s_buffer_load_dword  s13, s[8:11], 0x00                   // 00000988: C2068900
  ds_write_b16  v3, v4                                      // 0000098C: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000130, v2                     // 00000994: 4A0604FF 00000130
  v_mul_i32_i24  v5, s12, v5                                // 0000099C: 120A0A0C
  ds_write_b16  v3, v4                                      // 000009A0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000132, v2                     // 000009A8: 4A0604FF 00000132
  v_add_i32     v5, vcc, v0, v5                             // 000009B0: 4A0A0B00
  ds_write_b16  v3, v4                                      // 000009B4: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000134, v2                     // 000009BC: 4A0604FF 00000134
  v_add_i32     v5, vcc, s1, v5                             // 000009C4: 4A0A0A01
  ds_write_b16  v3, v4                                      // 000009C8: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000136, v2                     // 000009D0: 4A0604FF 00000136
  ds_write_b16  v3, v4                                      // 000009D8: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000138, v2                     // 000009E0: 4A0604FF 00000138
  v_lshlrev_b32  v5, 10, v5                                 // 000009E8: 340A0A8A
  ds_write_b16  v3, v4                                      // 000009EC: D87C0000 00000403
  v_add_i32     v3, vcc, 0x0000013a, v2                     // 000009F4: 4A0604FF 0000013A
  s_waitcnt     lgkmcnt(0)                                  // 000009FC: BF8C007F
  v_add_i32     v5, vcc, s13, v5                            // 00000A00: 4A0A0A0D
  s_load_dwordx4  s[16:19], s[2:3], 0x58                    // 00000A04: C0880358
  ds_write_b16  v3, v4                                      // 00000A08: D87C0000 00000403
  v_add_i32     v3, vcc, 0x0000013c, v2                     // 00000A10: 4A0604FF 0000013C
  ds_write_b16  v3, v4                                      // 00000A18: D87C0000 00000403
  v_add_i32     v3, vcc, 0x0000013e, v2                     // 00000A20: 4A0604FF 0000013E
  v_add_i32     v6, vcc, 0x00000140, v2                     // 00000A28: 4A0C04FF 00000140
  ds_write_b16  v3, v4                                      // 00000A30: D87C0000 00000403
  ds_write_b16  v6, v4                                      // 00000A38: D87C0000 00000406
  v_add_i32     v3, vcc, 0x00000142, v2                     // 00000A40: 4A0604FF 00000142
  ds_write_b16  v3, v4                                      // 00000A48: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000144, v2                     // 00000A50: 4A0604FF 00000144
  s_waitcnt     lgkmcnt(0)                                  // 00000A58: BF8C007F
  tbuffer_load_format_x  v6, v5, s[16:19], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000A5C: EBA01000 80040605
  s_waitcnt     vmcnt(0)                                    // 00000A64: BF8C1F70
  ds_write_b16  v3, v4                                      // 00000A68: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000146, v2                     // 00000A70: 4A0604FF 00000146
  ds_write_b16  v3, v4                                      // 00000A78: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000148, v2                     // 00000A80: 4A0604FF 00000148
  ds_write_b16  v3, v4                                      // 00000A88: D87C0000 00000403
  v_add_i32     v3, vcc, 0x0000014a, v2                     // 00000A90: 4A0604FF 0000014A
  ds_write_b16  v3, v4                                      // 00000A98: D87C0000 00000403
  v_add_i32     v3, vcc, 0x0000014c, v2                     // 00000AA0: 4A0604FF 0000014C
  ds_write_b16  v3, v4                                      // 00000AA8: D87C0000 00000403
  v_add_i32     v3, vcc, 0x0000014e, v2                     // 00000AB0: 4A0604FF 0000014E
  ds_write_b16  v3, v4                                      // 00000AB8: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000150, v2                     // 00000AC0: 4A0604FF 00000150
  ds_write_b16  v3, v4                                      // 00000AC8: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000152, v2                     // 00000AD0: 4A0604FF 00000152
  tbuffer_load_format_x  v7, v5, s[16:19], 0 offen offset:4 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000AD8: EBA01004 80040705
  ds_write_b16  v3, v4                                      // 00000AE0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000154, v2                     // 00000AE8: 4A0604FF 00000154
  ds_write_b16  v3, v4                                      // 00000AF0: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000156, v2                     // 00000AF8: 4A0604FF 00000156
  ds_write_b16  v3, v4                                      // 00000B00: D87C0000 00000403
  v_add_i32     v3, vcc, 0x00000158, v2                     // 00000B08: 4A0604FF 00000158
  ds_write_b16  v3, v4                                      // 00000B10: D87C0000 00000403
  v_add_i32     v3, vcc, 0x0000015a, v2                     // 00000B18: 4A0604FF 0000015A
  ds_write_b16  v3, v4                                      // 00000B20: D87C0000 00000403
  v_add_i32     v3, vcc, 0x0000015c, v2                     // 00000B28: 4A0604FF 0000015C
  ds_write_b16  v3, v4                                      // 00000B30: D87C0000 00000403
  v_add_i32     v3, vcc, 0x0000015e, v2                     // 00000B38: 4A0604FF 0000015E
  v_add_i32     v8, vcc, 0x00000160, v2                     // 00000B40: 4A1004FF 00000160
  ds_write_b16  v3, v4                                      // 00000B48: D87C0000 00000403
  tbuffer_load_format_x  v3, v5, s[16:19], 0 offen offset:8 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000B50: EBA01008 80040305
  ds_write_b16  v8, v4                                      // 00000B58: D87C0000 00000408
  v_add_i32     v8, vcc, 0x00000162, v2                     // 00000B60: 4A1004FF 00000162
  ds_write_b16  v8, v4                                      // 00000B68: D87C0000 00000408
  v_add_i32     v8, vcc, 0x00000164, v2                     // 00000B70: 4A1004FF 00000164
  ds_write_b16  v8, v4                                      // 00000B78: D87C0000 00000408
  v_add_i32     v8, vcc, 0x00000166, v2                     // 00000B80: 4A1004FF 00000166
  ds_write_b16  v8, v4                                      // 00000B88: D87C0000 00000408
  v_add_i32     v8, vcc, 0x00000168, v2                     // 00000B90: 4A1004FF 00000168
  ds_write_b16  v8, v4                                      // 00000B98: D87C0000 00000408
  v_add_i32     v8, vcc, 0x0000016a, v2                     // 00000BA0: 4A1004FF 0000016A
  ds_write_b16  v8, v4                                      // 00000BA8: D87C0000 00000408
  v_add_i32     v8, vcc, 0x0000016c, v2                     // 00000BB0: 4A1004FF 0000016C
  ds_write_b16  v8, v4                                      // 00000BB8: D87C0000 00000408
  v_add_i32     v8, vcc, 0x0000016e, v2                     // 00000BC0: 4A1004FF 0000016E
  tbuffer_load_format_x  v9, v5, s[16:19], 0 offen offset:12 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000BC8: EBA0100C 80040905
  ds_write_b16  v8, v4                                      // 00000BD0: D87C0000 00000408
  v_add_i32     v8, vcc, 0x00000170, v2                     // 00000BD8: 4A1004FF 00000170
  ds_write_b16  v8, v4                                      // 00000BE0: D87C0000 00000408
  v_add_i32     v8, vcc, 0x00000172, v2                     // 00000BE8: 4A1004FF 00000172
  ds_write_b16  v8, v4                                      // 00000BF0: D87C0000 00000408
  v_add_i32     v8, vcc, 0x00000174, v2                     // 00000BF8: 4A1004FF 00000174
  ds_write_b16  v8, v4                                      // 00000C00: D87C0000 00000408
  v_add_i32     v8, vcc, 0x00000176, v2                     // 00000C08: 4A1004FF 00000176
  ds_write_b16  v8, v4                                      // 00000C10: D87C0000 00000408
  v_add_i32     v8, vcc, 0x00000178, v2                     // 00000C18: 4A1004FF 00000178
  ds_write_b16  v8, v4                                      // 00000C20: D87C0000 00000408
  v_add_i32     v8, vcc, 0x0000017a, v2                     // 00000C28: 4A1004FF 0000017A
  ds_write_b16  v8, v4                                      // 00000C30: D87C0000 00000408
  v_add_i32     v8, vcc, 0x0000017c, v2                     // 00000C38: 4A1004FF 0000017C
  tbuffer_load_format_x  v10, v5, s[16:19], 0 offen offset:16 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000C40: EBA01010 80040A05
  ds_write_b16  v8, v4                                      // 00000C48: D87C0000 00000408
  v_add_i32     v8, vcc, 0x0000017e, v2                     // 00000C50: 4A1004FF 0000017E
  v_add_i32     v11, vcc, 0x00000180, v2                    // 00000C58: 4A1604FF 00000180
  ds_write_b16  v8, v4                                      // 00000C60: D87C0000 00000408
  ds_write_b16  v11, v4                                     // 00000C68: D87C0000 0000040B
  v_add_i32     v8, vcc, 0x00000182, v2                     // 00000C70: 4A1004FF 00000182
  ds_write_b16  v8, v4                                      // 00000C78: D87C0000 00000408
  v_add_i32     v8, vcc, 0x00000184, v2                     // 00000C80: 4A1004FF 00000184
  ds_write_b16  v8, v4                                      // 00000C88: D87C0000 00000408
  v_add_i32     v8, vcc, 0x00000186, v2                     // 00000C90: 4A1004FF 00000186
  ds_write_b16  v8, v4                                      // 00000C98: D87C0000 00000408
  v_add_i32     v8, vcc, 0x00000188, v2                     // 00000CA0: 4A1004FF 00000188
  ds_write_b16  v8, v4                                      // 00000CA8: D87C0000 00000408
  v_add_i32     v8, vcc, 0x0000018a, v2                     // 00000CB0: 4A1004FF 0000018A
  tbuffer_load_format_x  v11, v5, s[16:19], 0 offen offset:20 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000CB8: EBA01014 80040B05
  ds_write_b16  v8, v4                                      // 00000CC0: D87C0000 00000408
  v_add_i32     v8, vcc, 0x0000018c, v2                     // 00000CC8: 4A1004FF 0000018C
  ds_write_b16  v8, v4                                      // 00000CD0: D87C0000 00000408
  v_add_i32     v8, vcc, 0x0000018e, v2                     // 00000CD8: 4A1004FF 0000018E
  ds_write_b16  v8, v4                                      // 00000CE0: D87C0000 00000408
  v_add_i32     v8, vcc, 0x00000190, v2                     // 00000CE8: 4A1004FF 00000190
  ds_write_b16  v8, v4                                      // 00000CF0: D87C0000 00000408
  v_add_i32     v8, vcc, 0x00000192, v2                     // 00000CF8: 4A1004FF 00000192
  ds_write_b16  v8, v4                                      // 00000D00: D87C0000 00000408
  v_add_i32     v8, vcc, 0x00000194, v2                     // 00000D08: 4A1004FF 00000194
  ds_write_b16  v8, v4                                      // 00000D10: D87C0000 00000408
  v_add_i32     v8, vcc, 0x00000196, v2                     // 00000D18: 4A1004FF 00000196
  ds_write_b16  v8, v4                                      // 00000D20: D87C0000 00000408
  v_add_i32     v8, vcc, 0x00000198, v2                     // 00000D28: 4A1004FF 00000198
  tbuffer_load_format_x  v12, v5, s[16:19], 0 offen offset:24 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000D30: EBA01018 80040C05
  ds_write_b16  v8, v4                                      // 00000D38: D87C0000 00000408
  v_add_i32     v8, vcc, 0x0000019a, v2                     // 00000D40: 4A1004FF 0000019A
  ds_write_b16  v8, v4                                      // 00000D48: D87C0000 00000408
  v_add_i32     v8, vcc, 0x0000019c, v2                     // 00000D50: 4A1004FF 0000019C
  ds_write_b16  v8, v4                                      // 00000D58: D87C0000 00000408
  v_add_i32     v8, vcc, 0x0000019e, v2                     // 00000D60: 4A1004FF 0000019E
  v_add_i32     v13, vcc, 0x000001a0, v2                    // 00000D68: 4A1A04FF 000001A0
  ds_write_b16  v8, v4                                      // 00000D70: D87C0000 00000408
  ds_write_b16  v13, v4                                     // 00000D78: D87C0000 0000040D
  v_add_i32     v8, vcc, 0x000001a2, v2                     // 00000D80: 4A1004FF 000001A2
  ds_write_b16  v8, v4                                      // 00000D88: D87C0000 00000408
  v_add_i32     v8, vcc, 0x000001a4, v2                     // 00000D90: 4A1004FF 000001A4
  ds_write_b16  v8, v4                                      // 00000D98: D87C0000 00000408
  v_add_i32     v8, vcc, 0x000001a6, v2                     // 00000DA0: 4A1004FF 000001A6
  tbuffer_load_format_x  v13, v5, s[16:19], 0 offen offset:28 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000DA8: EBA0101C 80040D05
  ds_write_b16  v8, v4                                      // 00000DB0: D87C0000 00000408
  v_add_i32     v8, vcc, 0x000001a8, v2                     // 00000DB8: 4A1004FF 000001A8
  ds_write_b16  v8, v4                                      // 00000DC0: D87C0000 00000408
  v_add_i32     v8, vcc, 0x000001aa, v2                     // 00000DC8: 4A1004FF 000001AA
  ds_write_b16  v8, v4                                      // 00000DD0: D87C0000 00000408
  v_add_i32     v8, vcc, 0x000001ac, v2                     // 00000DD8: 4A1004FF 000001AC
  ds_write_b16  v8, v4                                      // 00000DE0: D87C0000 00000408
  v_add_i32     v8, vcc, 0x000001ae, v2                     // 00000DE8: 4A1004FF 000001AE
  ds_write_b16  v8, v4                                      // 00000DF0: D87C0000 00000408
  v_add_i32     v8, vcc, 0x000001b0, v2                     // 00000DF8: 4A1004FF 000001B0
  ds_write_b16  v8, v4                                      // 00000E00: D87C0000 00000408
  v_add_i32     v8, vcc, 0x000001b2, v2                     // 00000E08: 4A1004FF 000001B2
  ds_write_b16  v8, v4                                      // 00000E10: D87C0000 00000408
  v_add_i32     v8, vcc, 0x000001b4, v2                     // 00000E18: 4A1004FF 000001B4
  tbuffer_load_format_x  v14, v5, s[16:19], 0 offen offset:32 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000E20: EBA01020 80040E05
  ds_write_b16  v8, v4                                      // 00000E28: D87C0000 00000408
  v_add_i32     v8, vcc, 0x000001b6, v2                     // 00000E30: 4A1004FF 000001B6
  ds_write_b16  v8, v4                                      // 00000E38: D87C0000 00000408
  v_add_i32     v8, vcc, 0x000001b8, v2                     // 00000E40: 4A1004FF 000001B8
  ds_write_b16  v8, v4                                      // 00000E48: D87C0000 00000408
  v_add_i32     v8, vcc, 0x000001ba, v2                     // 00000E50: 4A1004FF 000001BA
  ds_write_b16  v8, v4                                      // 00000E58: D87C0000 00000408
  v_add_i32     v8, vcc, 0x000001bc, v2                     // 00000E60: 4A1004FF 000001BC
  ds_write_b16  v8, v4                                      // 00000E68: D87C0000 00000408
  v_add_i32     v8, vcc, 0x000001be, v2                     // 00000E70: 4A1004FF 000001BE
  v_add_i32     v15, vcc, 0x000001c0, v2                    // 00000E78: 4A1E04FF 000001C0
  ds_write_b16  v8, v4                                      // 00000E80: D87C0000 00000408
  ds_write_b16  v15, v4                                     // 00000E88: D87C0000 0000040F
  v_add_i32     v8, vcc, 0x000001c2, v2                     // 00000E90: 4A1004FF 000001C2
  tbuffer_load_format_x  v15, v5, s[16:19], 0 offen offset:36 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000E98: EBA01024 80040F05
  ds_write_b16  v8, v4                                      // 00000EA0: D87C0000 00000408
  v_add_i32     v8, vcc, 0x000001c4, v2                     // 00000EA8: 4A1004FF 000001C4
  ds_write_b16  v8, v4                                      // 00000EB0: D87C0000 00000408
  v_add_i32     v8, vcc, 0x000001c6, v2                     // 00000EB8: 4A1004FF 000001C6
  ds_write_b16  v8, v4                                      // 00000EC0: D87C0000 00000408
  v_add_i32     v8, vcc, 0x000001c8, v2                     // 00000EC8: 4A1004FF 000001C8
  ds_write_b16  v8, v4                                      // 00000ED0: D87C0000 00000408
  v_add_i32     v8, vcc, 0x000001ca, v2                     // 00000ED8: 4A1004FF 000001CA
  ds_write_b16  v8, v4                                      // 00000EE0: D87C0000 00000408
  v_add_i32     v8, vcc, 0x000001cc, v2                     // 00000EE8: 4A1004FF 000001CC
  ds_write_b16  v8, v4                                      // 00000EF0: D87C0000 00000408
  v_add_i32     v8, vcc, 0x000001ce, v2                     // 00000EF8: 4A1004FF 000001CE
  ds_write_b16  v8, v4                                      // 00000F00: D87C0000 00000408
  v_add_i32     v8, vcc, 0x000001d0, v2                     // 00000F08: 4A1004FF 000001D0
  tbuffer_load_format_x  v16, v5, s[16:19], 0 offen offset:40 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000F10: EBA01028 80041005
  ds_write_b16  v8, v4                                      // 00000F18: D87C0000 00000408
  v_add_i32     v8, vcc, 0x000001d2, v2                     // 00000F20: 4A1004FF 000001D2
  ds_write_b16  v8, v4                                      // 00000F28: D87C0000 00000408
  v_add_i32     v8, vcc, 0x000001d4, v2                     // 00000F30: 4A1004FF 000001D4
  ds_write_b16  v8, v4                                      // 00000F38: D87C0000 00000408
  v_add_i32     v8, vcc, 0x000001d6, v2                     // 00000F40: 4A1004FF 000001D6
  ds_write_b16  v8, v4                                      // 00000F48: D87C0000 00000408
  v_add_i32     v8, vcc, 0x000001d8, v2                     // 00000F50: 4A1004FF 000001D8
  s_buffer_load_dword  s1, s[8:11], 0x08                    // 00000F58: C2008908
  s_waitcnt     lgkmcnt(0)                                  // 00000F5C: BF8C007F
  ds_write_b16  v8, v4                                      // 00000F60: D87C0000 00000408
  v_add_i32     v8, vcc, 0x000001da, v2                     // 00000F68: 4A1004FF 000001DA
  ds_write_b16  v8, v4                                      // 00000F70: D87C0000 00000408
  v_add_i32     v8, vcc, 0x000001dc, v2                     // 00000F78: 4A1004FF 000001DC
  ds_write_b16  v8, v4                                      // 00000F80: D87C0000 00000408
  v_add_i32     v8, vcc, 0x000001de, v2                     // 00000F88: 4A1004FF 000001DE
  tbuffer_load_format_x  v17, v5, s[16:19], 0 offen offset:44 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000F90: EBA0102C 80041105
  v_add_i32     v18, vcc, 0x000001e0, v2                    // 00000F98: 4A2404FF 000001E0
  ds_write_b16  v8, v4                                      // 00000FA0: D87C0000 00000408
  ds_write_b16  v18, v4                                     // 00000FA8: D87C0000 00000412
  v_add_i32     v8, vcc, 0x000001e2, v2                     // 00000FB0: 4A1004FF 000001E2
  ds_write_b16  v8, v4                                      // 00000FB8: D87C0000 00000408
  v_add_i32     v8, vcc, 0x000001e4, v2                     // 00000FC0: 4A1004FF 000001E4
  v_lshrrev_b32  v6, s1, v6                                 // 00000FC8: 2C0C0C01
  v_lshlrev_b32  v0, 8, v0                                  // 00000FCC: 34000088
  s_movk_i32    s13, 0xff00                                 // 00000FD0: B00DFF00
  ds_write_b16  v8, v4                                      // 00000FD4: D87C0000 00000408
  v_add_i32     v8, vcc, 0x000001e6, v2                     // 00000FDC: 4A1004FF 000001E6
  v_bfi_b32     v6, s13, v0, v6                             // 00000FE4: D2940006 041A000D
  ds_write_b16  v8, v4                                      // 00000FEC: D87C0000 00000408
  v_add_i32     v8, vcc, 0x000001e8, v2                     // 00000FF4: 4A1004FF 000001E8
  v_lshlrev_b32  v6, 1, v6                                  // 00000FFC: 340C0C81
  ds_write_b16  v8, v4                                      // 00001000: D87C0000 00000408
  v_add_i32     v8, vcc, 0x000001ea, v2                     // 00001008: 4A1004FF 000001EA
  v_add_i32     v6, vcc, s0, v6                             // 00001010: 4A0C0C00
  ds_write_b16  v8, v4                                      // 00001014: D87C0000 00000408
  v_add_i32     v8, vcc, 0x000001ec, v2                     // 0000101C: 4A1004FF 000001EC
  tbuffer_load_format_x  v18, v5, s[16:19], 0 offen offset:48 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001024: EBA01030 80041205
  ds_write_b16  v8, v4                                      // 0000102C: D87C0000 00000408
  v_add_i32     v2, vcc, 0x000001ee, v2                     // 00001034: 4A0404FF 000001EE
  ds_write_b16  v2, v4                                      // 0000103C: D87C0000 00000402
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00001044: BF8C0070
  s_barrier                                                 // 00001048: BF8A0000
  v_lshrrev_b32  v2, s1, v7                                 // 0000104C: 2C040E01
  ds_read_i16   v4, v6                                      // 00001050: D8EC0000 04000006
  v_bfi_b32     v2, s13, v0, v2                             // 00001058: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00001060: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00001064: 4A040400
  tbuffer_load_format_x  v7, v5, s[16:19], 0 offen offset:52 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001068: EBA01034 80040705
  s_waitcnt     lgkmcnt(0)                                  // 00001070: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001074: 4A080881
  ds_write_b16  v6, v4                                      // 00001078: D87C0000 00000406
  v_lshrrev_b32  v3, s1, v3                                 // 00001080: 2C060601
  ds_read_i16   v4, v2                                      // 00001084: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 0000108C: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00001094: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00001098: 4A060600
  tbuffer_load_format_x  v6, v5, s[16:19], 0 offen offset:56 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000109C: EBA01038 80040605
  s_waitcnt     lgkmcnt(0)                                  // 000010A4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000010A8: 4A080881
  ds_write_b16  v2, v4                                      // 000010AC: D87C0000 00000402
  v_lshrrev_b32  v2, s1, v9                                 // 000010B4: 2C041201
  ds_read_i16   v4, v3                                      // 000010B8: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 000010C0: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 000010C8: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 000010CC: 4A040400
  tbuffer_load_format_x  v8, v5, s[16:19], 0 offen offset:60 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000010D0: EBA0103C 80040805
  s_waitcnt     lgkmcnt(0)                                  // 000010D8: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000010DC: 4A080881
  ds_write_b16  v3, v4                                      // 000010E0: D87C0000 00000403
  v_lshrrev_b32  v3, s1, v10                                // 000010E8: 2C061401
  ds_read_i16   v4, v2                                      // 000010EC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 000010F4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 000010FC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00001100: 4A060600
  tbuffer_load_format_x  v9, v5, s[16:19], 0 offen offset:64 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001104: EBA01040 80040905
  s_waitcnt     lgkmcnt(0)                                  // 0000110C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001110: 4A080881
  ds_write_b16  v2, v4                                      // 00001114: D87C0000 00000402
  v_lshrrev_b32  v2, s1, v11                                // 0000111C: 2C041601
  ds_read_i16   v4, v3                                      // 00001120: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00001128: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00001130: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00001134: 4A040400
  tbuffer_load_format_x  v10, v5, s[16:19], 0 offen offset:68 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001138: EBA01044 80040A05
  s_waitcnt     lgkmcnt(0)                                  // 00001140: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001144: 4A080881
  ds_write_b16  v3, v4                                      // 00001148: D87C0000 00000403
  v_lshrrev_b32  v3, s1, v12                                // 00001150: 2C061801
  ds_read_i16   v4, v2                                      // 00001154: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 0000115C: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00001164: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00001168: 4A060600
  tbuffer_load_format_x  v11, v5, s[16:19], 0 offen offset:72 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000116C: EBA01048 80040B05
  s_waitcnt     lgkmcnt(0)                                  // 00001174: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001178: 4A080881
  ds_write_b16  v2, v4                                      // 0000117C: D87C0000 00000402
  v_lshrrev_b32  v2, s1, v13                                // 00001184: 2C041A01
  ds_read_i16   v4, v3                                      // 00001188: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00001190: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00001198: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 0000119C: 4A040400
  tbuffer_load_format_x  v12, v5, s[16:19], 0 offen offset:76 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000011A0: EBA0104C 80040C05
  s_waitcnt     lgkmcnt(0)                                  // 000011A8: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000011AC: 4A080881
  ds_write_b16  v3, v4                                      // 000011B0: D87C0000 00000403
  v_lshrrev_b32  v3, s1, v14                                // 000011B8: 2C061C01
  ds_read_i16   v4, v2                                      // 000011BC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 000011C4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 000011CC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 000011D0: 4A060600
  tbuffer_load_format_x  v13, v5, s[16:19], 0 offen offset:80 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000011D4: EBA01050 80040D05
  s_waitcnt     lgkmcnt(0)                                  // 000011DC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000011E0: 4A080881
  ds_write_b16  v2, v4                                      // 000011E4: D87C0000 00000402
  v_lshrrev_b32  v2, s1, v15                                // 000011EC: 2C041E01
  ds_read_i16   v4, v3                                      // 000011F0: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 000011F8: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00001200: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00001204: 4A040400
  tbuffer_load_format_x  v14, v5, s[16:19], 0 offen offset:84 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001208: EBA01054 80040E05
  s_waitcnt     lgkmcnt(0)                                  // 00001210: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001214: 4A080881
  ds_write_b16  v3, v4                                      // 00001218: D87C0000 00000403
  v_lshrrev_b32  v3, s1, v16                                // 00001220: 2C062001
  ds_read_i16   v4, v2                                      // 00001224: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 0000122C: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00001234: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00001238: 4A060600
  tbuffer_load_format_x  v15, v5, s[16:19], 0 offen offset:88 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000123C: EBA01058 80040F05
  s_waitcnt     lgkmcnt(0)                                  // 00001244: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001248: 4A080881
  ds_write_b16  v2, v4                                      // 0000124C: D87C0000 00000402
  v_lshrrev_b32  v2, s1, v17                                // 00001254: 2C042201
  ds_read_i16   v4, v3                                      // 00001258: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00001260: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00001268: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 0000126C: 4A040400
  tbuffer_load_format_x  v16, v5, s[16:19], 0 offen offset:92 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001270: EBA0105C 80041005
  s_waitcnt     lgkmcnt(0)                                  // 00001278: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 0000127C: 4A080881
  ds_write_b16  v3, v4                                      // 00001280: D87C0000 00000403
  v_lshrrev_b32  v3, s1, v18                                // 00001288: 2C062401
  ds_read_i16   v4, v2                                      // 0000128C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00001294: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000129C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 000012A0: 4A060600
  tbuffer_load_format_x  v17, v5, s[16:19], 0 offen offset:96 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000012A4: EBA01060 80041105
  s_waitcnt     lgkmcnt(0)                                  // 000012AC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000012B0: 4A080881
  ds_write_b16  v2, v4                                      // 000012B4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 000012BC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v7                                 // 000012C0: 2C040E01
  ds_read_i16   v4, v3                                      // 000012C4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 000012CC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 000012D4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 000012D8: 4A040400
  tbuffer_load_format_x  v7, v5, s[16:19], 0 offen offset:100 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000012DC: EBA01064 80040705
  s_waitcnt     lgkmcnt(0)                                  // 000012E4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000012E8: 4A080881
  ds_write_b16  v3, v4                                      // 000012EC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 000012F4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v6                                 // 000012F8: 2C060C01
  ds_read_i16   v4, v2                                      // 000012FC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00001304: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000130C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00001310: 4A060600
  tbuffer_load_format_x  v6, v5, s[16:19], 0 offen offset:104 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001314: EBA01068 80040605
  s_waitcnt     lgkmcnt(0)                                  // 0000131C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001320: 4A080881
  ds_write_b16  v2, v4                                      // 00001324: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000132C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v8                                 // 00001330: 2C041001
  ds_read_i16   v4, v3                                      // 00001334: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000133C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00001344: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00001348: 4A040400
  tbuffer_load_format_x  v8, v5, s[16:19], 0 offen offset:108 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000134C: EBA0106C 80040805
  s_waitcnt     lgkmcnt(0)                                  // 00001354: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001358: 4A080881
  ds_write_b16  v3, v4                                      // 0000135C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00001364: BF8C1F7B
  v_lshrrev_b32  v3, s1, v9                                 // 00001368: 2C061201
  ds_read_i16   v4, v2                                      // 0000136C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00001374: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000137C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00001380: 4A060600
  tbuffer_load_format_x  v9, v5, s[16:19], 0 offen offset:112 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001384: EBA01070 80040905
  s_waitcnt     lgkmcnt(0)                                  // 0000138C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001390: 4A080881
  ds_write_b16  v2, v4                                      // 00001394: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000139C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v10                                // 000013A0: 2C041401
  ds_read_i16   v4, v3                                      // 000013A4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 000013AC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 000013B4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 000013B8: 4A040400
  tbuffer_load_format_x  v10, v5, s[16:19], 0 offen offset:116 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000013BC: EBA01074 80040A05
  s_waitcnt     lgkmcnt(0)                                  // 000013C4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000013C8: 4A080881
  ds_write_b16  v3, v4                                      // 000013CC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 000013D4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v11                                // 000013D8: 2C061601
  ds_read_i16   v4, v2                                      // 000013DC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 000013E4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 000013EC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 000013F0: 4A060600
  tbuffer_load_format_x  v11, v5, s[16:19], 0 offen offset:120 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000013F4: EBA01078 80040B05
  s_waitcnt     lgkmcnt(0)                                  // 000013FC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001400: 4A080881
  ds_write_b16  v2, v4                                      // 00001404: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000140C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v12                                // 00001410: 2C041801
  ds_read_i16   v4, v3                                      // 00001414: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000141C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00001424: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00001428: 4A040400
  tbuffer_load_format_x  v12, v5, s[16:19], 0 offen offset:124 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000142C: EBA0107C 80040C05
  s_waitcnt     lgkmcnt(0)                                  // 00001434: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001438: 4A080881
  ds_write_b16  v3, v4                                      // 0000143C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00001444: BF8C1F7B
  v_lshrrev_b32  v3, s1, v13                                // 00001448: 2C061A01
  ds_read_i16   v4, v2                                      // 0000144C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00001454: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000145C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00001460: 4A060600
  tbuffer_load_format_x  v13, v5, s[16:19], 0 offen offset:128 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001464: EBA01080 80040D05
  s_waitcnt     lgkmcnt(0)                                  // 0000146C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001470: 4A080881
  ds_write_b16  v2, v4                                      // 00001474: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000147C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v14                                // 00001480: 2C041C01
  ds_read_i16   v4, v3                                      // 00001484: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000148C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00001494: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00001498: 4A040400
  tbuffer_load_format_x  v14, v5, s[16:19], 0 offen offset:132 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000149C: EBA01084 80040E05
  s_waitcnt     lgkmcnt(0)                                  // 000014A4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000014A8: 4A080881
  ds_write_b16  v3, v4                                      // 000014AC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 000014B4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v15                                // 000014B8: 2C061E01
  ds_read_i16   v4, v2                                      // 000014BC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 000014C4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 000014CC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 000014D0: 4A060600
  tbuffer_load_format_x  v15, v5, s[16:19], 0 offen offset:136 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000014D4: EBA01088 80040F05
  s_waitcnt     lgkmcnt(0)                                  // 000014DC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000014E0: 4A080881
  ds_write_b16  v2, v4                                      // 000014E4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 000014EC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v16                                // 000014F0: 2C042001
  ds_read_i16   v4, v3                                      // 000014F4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 000014FC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00001504: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00001508: 4A040400
  tbuffer_load_format_x  v16, v5, s[16:19], 0 offen offset:140 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000150C: EBA0108C 80041005
  s_waitcnt     lgkmcnt(0)                                  // 00001514: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001518: 4A080881
  ds_write_b16  v3, v4                                      // 0000151C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00001524: BF8C1F7B
  v_lshrrev_b32  v3, s1, v17                                // 00001528: 2C062201
  ds_read_i16   v4, v2                                      // 0000152C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00001534: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000153C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00001540: 4A060600
  tbuffer_load_format_x  v17, v5, s[16:19], 0 offen offset:144 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001544: EBA01090 80041105
  s_waitcnt     lgkmcnt(0)                                  // 0000154C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001550: 4A080881
  ds_write_b16  v2, v4                                      // 00001554: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000155C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v7                                 // 00001560: 2C040E01
  ds_read_i16   v4, v3                                      // 00001564: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000156C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00001574: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00001578: 4A040400
  tbuffer_load_format_x  v7, v5, s[16:19], 0 offen offset:148 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000157C: EBA01094 80040705
  s_waitcnt     lgkmcnt(0)                                  // 00001584: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001588: 4A080881
  ds_write_b16  v3, v4                                      // 0000158C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00001594: BF8C1F7B
  v_lshrrev_b32  v3, s1, v6                                 // 00001598: 2C060C01
  ds_read_i16   v4, v2                                      // 0000159C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 000015A4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 000015AC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 000015B0: 4A060600
  tbuffer_load_format_x  v6, v5, s[16:19], 0 offen offset:152 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000015B4: EBA01098 80040605
  s_waitcnt     lgkmcnt(0)                                  // 000015BC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000015C0: 4A080881
  ds_write_b16  v2, v4                                      // 000015C4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 000015CC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v8                                 // 000015D0: 2C041001
  ds_read_i16   v4, v3                                      // 000015D4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 000015DC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 000015E4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 000015E8: 4A040400
  tbuffer_load_format_x  v8, v5, s[16:19], 0 offen offset:156 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000015EC: EBA0109C 80040805
  s_waitcnt     lgkmcnt(0)                                  // 000015F4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000015F8: 4A080881
  ds_write_b16  v3, v4                                      // 000015FC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00001604: BF8C1F7B
  v_lshrrev_b32  v3, s1, v9                                 // 00001608: 2C061201
  ds_read_i16   v4, v2                                      // 0000160C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00001614: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000161C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00001620: 4A060600
  tbuffer_load_format_x  v9, v5, s[16:19], 0 offen offset:160 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001624: EBA010A0 80040905
  s_waitcnt     lgkmcnt(0)                                  // 0000162C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001630: 4A080881
  ds_write_b16  v2, v4                                      // 00001634: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000163C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v10                                // 00001640: 2C041401
  ds_read_i16   v4, v3                                      // 00001644: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000164C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00001654: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00001658: 4A040400
  tbuffer_load_format_x  v10, v5, s[16:19], 0 offen offset:164 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000165C: EBA010A4 80040A05
  s_waitcnt     lgkmcnt(0)                                  // 00001664: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001668: 4A080881
  ds_write_b16  v3, v4                                      // 0000166C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00001674: BF8C1F7B
  v_lshrrev_b32  v3, s1, v11                                // 00001678: 2C061601
  ds_read_i16   v4, v2                                      // 0000167C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00001684: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000168C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00001690: 4A060600
  tbuffer_load_format_x  v11, v5, s[16:19], 0 offen offset:168 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001694: EBA010A8 80040B05
  s_waitcnt     lgkmcnt(0)                                  // 0000169C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000016A0: 4A080881
  ds_write_b16  v2, v4                                      // 000016A4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 000016AC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v12                                // 000016B0: 2C041801
  ds_read_i16   v4, v3                                      // 000016B4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 000016BC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 000016C4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 000016C8: 4A040400
  tbuffer_load_format_x  v12, v5, s[16:19], 0 offen offset:172 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000016CC: EBA010AC 80040C05
  s_waitcnt     lgkmcnt(0)                                  // 000016D4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000016D8: 4A080881
  ds_write_b16  v3, v4                                      // 000016DC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 000016E4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v13                                // 000016E8: 2C061A01
  ds_read_i16   v4, v2                                      // 000016EC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 000016F4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 000016FC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00001700: 4A060600
  tbuffer_load_format_x  v13, v5, s[16:19], 0 offen offset:176 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001704: EBA010B0 80040D05
  s_waitcnt     lgkmcnt(0)                                  // 0000170C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001710: 4A080881
  ds_write_b16  v2, v4                                      // 00001714: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000171C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v14                                // 00001720: 2C041C01
  ds_read_i16   v4, v3                                      // 00001724: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000172C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00001734: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00001738: 4A040400
  tbuffer_load_format_x  v14, v5, s[16:19], 0 offen offset:180 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000173C: EBA010B4 80040E05
  s_waitcnt     lgkmcnt(0)                                  // 00001744: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001748: 4A080881
  ds_write_b16  v3, v4                                      // 0000174C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00001754: BF8C1F7B
  v_lshrrev_b32  v3, s1, v15                                // 00001758: 2C061E01
  ds_read_i16   v4, v2                                      // 0000175C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00001764: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000176C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00001770: 4A060600
  tbuffer_load_format_x  v15, v5, s[16:19], 0 offen offset:184 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001774: EBA010B8 80040F05
  s_waitcnt     lgkmcnt(0)                                  // 0000177C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001780: 4A080881
  ds_write_b16  v2, v4                                      // 00001784: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000178C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v16                                // 00001790: 2C042001
  ds_read_i16   v4, v3                                      // 00001794: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000179C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 000017A4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 000017A8: 4A040400
  tbuffer_load_format_x  v16, v5, s[16:19], 0 offen offset:188 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000017AC: EBA010BC 80041005
  s_waitcnt     lgkmcnt(0)                                  // 000017B4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000017B8: 4A080881
  ds_write_b16  v3, v4                                      // 000017BC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 000017C4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v17                                // 000017C8: 2C062201
  ds_read_i16   v4, v2                                      // 000017CC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 000017D4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 000017DC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 000017E0: 4A060600
  tbuffer_load_format_x  v17, v5, s[16:19], 0 offen offset:192 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000017E4: EBA010C0 80041105
  s_waitcnt     lgkmcnt(0)                                  // 000017EC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000017F0: 4A080881
  ds_write_b16  v2, v4                                      // 000017F4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 000017FC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v7                                 // 00001800: 2C040E01
  ds_read_i16   v4, v3                                      // 00001804: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000180C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00001814: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00001818: 4A040400
  tbuffer_load_format_x  v7, v5, s[16:19], 0 offen offset:196 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000181C: EBA010C4 80040705
  s_waitcnt     lgkmcnt(0)                                  // 00001824: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001828: 4A080881
  ds_write_b16  v3, v4                                      // 0000182C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00001834: BF8C1F7B
  v_lshrrev_b32  v3, s1, v6                                 // 00001838: 2C060C01
  ds_read_i16   v4, v2                                      // 0000183C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00001844: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000184C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00001850: 4A060600
  tbuffer_load_format_x  v6, v5, s[16:19], 0 offen offset:200 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001854: EBA010C8 80040605
  s_waitcnt     lgkmcnt(0)                                  // 0000185C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001860: 4A080881
  ds_write_b16  v2, v4                                      // 00001864: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000186C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v8                                 // 00001870: 2C041001
  ds_read_i16   v4, v3                                      // 00001874: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000187C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00001884: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00001888: 4A040400
  tbuffer_load_format_x  v8, v5, s[16:19], 0 offen offset:204 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000188C: EBA010CC 80040805
  s_waitcnt     lgkmcnt(0)                                  // 00001894: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001898: 4A080881
  ds_write_b16  v3, v4                                      // 0000189C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 000018A4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v9                                 // 000018A8: 2C061201
  ds_read_i16   v4, v2                                      // 000018AC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 000018B4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 000018BC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 000018C0: 4A060600
  tbuffer_load_format_x  v9, v5, s[16:19], 0 offen offset:208 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000018C4: EBA010D0 80040905
  s_waitcnt     lgkmcnt(0)                                  // 000018CC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000018D0: 4A080881
  ds_write_b16  v2, v4                                      // 000018D4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 000018DC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v10                                // 000018E0: 2C041401
  ds_read_i16   v4, v3                                      // 000018E4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 000018EC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 000018F4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 000018F8: 4A040400
  tbuffer_load_format_x  v10, v5, s[16:19], 0 offen offset:212 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000018FC: EBA010D4 80040A05
  s_waitcnt     lgkmcnt(0)                                  // 00001904: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001908: 4A080881
  ds_write_b16  v3, v4                                      // 0000190C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00001914: BF8C1F7B
  v_lshrrev_b32  v3, s1, v11                                // 00001918: 2C061601
  ds_read_i16   v4, v2                                      // 0000191C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00001924: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000192C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00001930: 4A060600
  tbuffer_load_format_x  v11, v5, s[16:19], 0 offen offset:216 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001934: EBA010D8 80040B05
  s_waitcnt     lgkmcnt(0)                                  // 0000193C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001940: 4A080881
  ds_write_b16  v2, v4                                      // 00001944: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000194C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v12                                // 00001950: 2C041801
  ds_read_i16   v4, v3                                      // 00001954: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000195C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00001964: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00001968: 4A040400
  tbuffer_load_format_x  v12, v5, s[16:19], 0 offen offset:220 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000196C: EBA010DC 80040C05
  s_waitcnt     lgkmcnt(0)                                  // 00001974: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001978: 4A080881
  ds_write_b16  v3, v4                                      // 0000197C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00001984: BF8C1F7B
  v_lshrrev_b32  v3, s1, v13                                // 00001988: 2C061A01
  ds_read_i16   v4, v2                                      // 0000198C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00001994: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000199C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 000019A0: 4A060600
  tbuffer_load_format_x  v13, v5, s[16:19], 0 offen offset:224 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000019A4: EBA010E0 80040D05
  s_waitcnt     lgkmcnt(0)                                  // 000019AC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000019B0: 4A080881
  ds_write_b16  v2, v4                                      // 000019B4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 000019BC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v14                                // 000019C0: 2C041C01
  ds_read_i16   v4, v3                                      // 000019C4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 000019CC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 000019D4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 000019D8: 4A040400
  tbuffer_load_format_x  v14, v5, s[16:19], 0 offen offset:228 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000019DC: EBA010E4 80040E05
  s_waitcnt     lgkmcnt(0)                                  // 000019E4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000019E8: 4A080881
  ds_write_b16  v3, v4                                      // 000019EC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 000019F4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v15                                // 000019F8: 2C061E01
  ds_read_i16   v4, v2                                      // 000019FC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00001A04: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00001A0C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00001A10: 4A060600
  tbuffer_load_format_x  v15, v5, s[16:19], 0 offen offset:232 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001A14: EBA010E8 80040F05
  s_waitcnt     lgkmcnt(0)                                  // 00001A1C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001A20: 4A080881
  ds_write_b16  v2, v4                                      // 00001A24: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00001A2C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v16                                // 00001A30: 2C042001
  ds_read_i16   v4, v3                                      // 00001A34: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00001A3C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00001A44: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00001A48: 4A040400
  tbuffer_load_format_x  v16, v5, s[16:19], 0 offen offset:236 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001A4C: EBA010EC 80041005
  s_waitcnt     lgkmcnt(0)                                  // 00001A54: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001A58: 4A080881
  ds_write_b16  v3, v4                                      // 00001A5C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00001A64: BF8C1F7B
  v_lshrrev_b32  v3, s1, v17                                // 00001A68: 2C062201
  ds_read_i16   v4, v2                                      // 00001A6C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00001A74: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00001A7C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00001A80: 4A060600
  tbuffer_load_format_x  v17, v5, s[16:19], 0 offen offset:240 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001A84: EBA010F0 80041105
  s_waitcnt     lgkmcnt(0)                                  // 00001A8C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001A90: 4A080881
  ds_write_b16  v2, v4                                      // 00001A94: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00001A9C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v7                                 // 00001AA0: 2C040E01
  ds_read_i16   v4, v3                                      // 00001AA4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00001AAC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00001AB4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00001AB8: 4A040400
  tbuffer_load_format_x  v7, v5, s[16:19], 0 offen offset:244 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001ABC: EBA010F4 80040705
  s_waitcnt     lgkmcnt(0)                                  // 00001AC4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001AC8: 4A080881
  ds_write_b16  v3, v4                                      // 00001ACC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00001AD4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v6                                 // 00001AD8: 2C060C01
  ds_read_i16   v4, v2                                      // 00001ADC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00001AE4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00001AEC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00001AF0: 4A060600
  tbuffer_load_format_x  v6, v5, s[16:19], 0 offen offset:248 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001AF4: EBA010F8 80040605
  s_waitcnt     lgkmcnt(0)                                  // 00001AFC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001B00: 4A080881
  ds_write_b16  v2, v4                                      // 00001B04: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00001B0C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v8                                 // 00001B10: 2C041001
  ds_read_i16   v4, v3                                      // 00001B14: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00001B1C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00001B24: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00001B28: 4A040400
  tbuffer_load_format_x  v8, v5, s[16:19], 0 offen offset:252 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001B2C: EBA010FC 80040805
  s_waitcnt     lgkmcnt(0)                                  // 00001B34: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001B38: 4A080881
  ds_write_b16  v3, v4                                      // 00001B3C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00001B44: BF8C1F7B
  v_lshrrev_b32  v3, s1, v9                                 // 00001B48: 2C061201
  ds_read_i16   v4, v2                                      // 00001B4C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00001B54: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00001B5C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00001B60: 4A060600
  tbuffer_load_format_x  v9, v5, s[16:19], 0 offen offset:256 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001B64: EBA01100 80040905
  s_waitcnt     lgkmcnt(0)                                  // 00001B6C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001B70: 4A080881
  ds_write_b16  v2, v4                                      // 00001B74: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00001B7C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v10                                // 00001B80: 2C041401
  ds_read_i16   v4, v3                                      // 00001B84: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00001B8C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00001B94: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00001B98: 4A040400
  tbuffer_load_format_x  v10, v5, s[16:19], 0 offen offset:260 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001B9C: EBA01104 80040A05
  s_waitcnt     lgkmcnt(0)                                  // 00001BA4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001BA8: 4A080881
  ds_write_b16  v3, v4                                      // 00001BAC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00001BB4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v11                                // 00001BB8: 2C061601
  ds_read_i16   v4, v2                                      // 00001BBC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00001BC4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00001BCC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00001BD0: 4A060600
  tbuffer_load_format_x  v11, v5, s[16:19], 0 offen offset:264 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001BD4: EBA01108 80040B05
  s_waitcnt     lgkmcnt(0)                                  // 00001BDC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001BE0: 4A080881
  ds_write_b16  v2, v4                                      // 00001BE4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00001BEC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v12                                // 00001BF0: 2C041801
  ds_read_i16   v4, v3                                      // 00001BF4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00001BFC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00001C04: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00001C08: 4A040400
  tbuffer_load_format_x  v12, v5, s[16:19], 0 offen offset:268 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001C0C: EBA0110C 80040C05
  s_waitcnt     lgkmcnt(0)                                  // 00001C14: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001C18: 4A080881
  ds_write_b16  v3, v4                                      // 00001C1C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00001C24: BF8C1F7B
  v_lshrrev_b32  v3, s1, v13                                // 00001C28: 2C061A01
  ds_read_i16   v4, v2                                      // 00001C2C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00001C34: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00001C3C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00001C40: 4A060600
  tbuffer_load_format_x  v13, v5, s[16:19], 0 offen offset:272 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001C44: EBA01110 80040D05
  s_waitcnt     lgkmcnt(0)                                  // 00001C4C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001C50: 4A080881
  ds_write_b16  v2, v4                                      // 00001C54: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00001C5C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v14                                // 00001C60: 2C041C01
  ds_read_i16   v4, v3                                      // 00001C64: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00001C6C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00001C74: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00001C78: 4A040400
  tbuffer_load_format_x  v14, v5, s[16:19], 0 offen offset:276 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001C7C: EBA01114 80040E05
  s_waitcnt     lgkmcnt(0)                                  // 00001C84: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001C88: 4A080881
  ds_write_b16  v3, v4                                      // 00001C8C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00001C94: BF8C1F7B
  v_lshrrev_b32  v3, s1, v15                                // 00001C98: 2C061E01
  ds_read_i16   v4, v2                                      // 00001C9C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00001CA4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00001CAC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00001CB0: 4A060600
  tbuffer_load_format_x  v15, v5, s[16:19], 0 offen offset:280 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001CB4: EBA01118 80040F05
  s_waitcnt     lgkmcnt(0)                                  // 00001CBC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001CC0: 4A080881
  ds_write_b16  v2, v4                                      // 00001CC4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00001CCC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v16                                // 00001CD0: 2C042001
  ds_read_i16   v4, v3                                      // 00001CD4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00001CDC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00001CE4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00001CE8: 4A040400
  tbuffer_load_format_x  v16, v5, s[16:19], 0 offen offset:284 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001CEC: EBA0111C 80041005
  s_waitcnt     lgkmcnt(0)                                  // 00001CF4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001CF8: 4A080881
  ds_write_b16  v3, v4                                      // 00001CFC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00001D04: BF8C1F7B
  v_lshrrev_b32  v3, s1, v17                                // 00001D08: 2C062201
  ds_read_i16   v4, v2                                      // 00001D0C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00001D14: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00001D1C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00001D20: 4A060600
  tbuffer_load_format_x  v17, v5, s[16:19], 0 offen offset:288 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001D24: EBA01120 80041105
  s_waitcnt     lgkmcnt(0)                                  // 00001D2C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001D30: 4A080881
  ds_write_b16  v2, v4                                      // 00001D34: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00001D3C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v7                                 // 00001D40: 2C040E01
  ds_read_i16   v4, v3                                      // 00001D44: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00001D4C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00001D54: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00001D58: 4A040400
  tbuffer_load_format_x  v7, v5, s[16:19], 0 offen offset:292 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001D5C: EBA01124 80040705
  s_waitcnt     lgkmcnt(0)                                  // 00001D64: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001D68: 4A080881
  ds_write_b16  v3, v4                                      // 00001D6C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00001D74: BF8C1F7B
  v_lshrrev_b32  v3, s1, v6                                 // 00001D78: 2C060C01
  ds_read_i16   v4, v2                                      // 00001D7C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00001D84: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00001D8C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00001D90: 4A060600
  tbuffer_load_format_x  v6, v5, s[16:19], 0 offen offset:296 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001D94: EBA01128 80040605
  s_waitcnt     lgkmcnt(0)                                  // 00001D9C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001DA0: 4A080881
  ds_write_b16  v2, v4                                      // 00001DA4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00001DAC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v8                                 // 00001DB0: 2C041001
  ds_read_i16   v4, v3                                      // 00001DB4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00001DBC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00001DC4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00001DC8: 4A040400
  tbuffer_load_format_x  v8, v5, s[16:19], 0 offen offset:300 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001DCC: EBA0112C 80040805
  s_waitcnt     lgkmcnt(0)                                  // 00001DD4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001DD8: 4A080881
  ds_write_b16  v3, v4                                      // 00001DDC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00001DE4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v9                                 // 00001DE8: 2C061201
  ds_read_i16   v4, v2                                      // 00001DEC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00001DF4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00001DFC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00001E00: 4A060600
  tbuffer_load_format_x  v9, v5, s[16:19], 0 offen offset:304 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001E04: EBA01130 80040905
  s_waitcnt     lgkmcnt(0)                                  // 00001E0C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001E10: 4A080881
  ds_write_b16  v2, v4                                      // 00001E14: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00001E1C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v10                                // 00001E20: 2C041401
  ds_read_i16   v4, v3                                      // 00001E24: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00001E2C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00001E34: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00001E38: 4A040400
  tbuffer_load_format_x  v10, v5, s[16:19], 0 offen offset:308 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001E3C: EBA01134 80040A05
  s_waitcnt     lgkmcnt(0)                                  // 00001E44: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001E48: 4A080881
  ds_write_b16  v3, v4                                      // 00001E4C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00001E54: BF8C1F7B
  v_lshrrev_b32  v3, s1, v11                                // 00001E58: 2C061601
  ds_read_i16   v4, v2                                      // 00001E5C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00001E64: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00001E6C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00001E70: 4A060600
  tbuffer_load_format_x  v11, v5, s[16:19], 0 offen offset:312 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001E74: EBA01138 80040B05
  s_waitcnt     lgkmcnt(0)                                  // 00001E7C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001E80: 4A080881
  ds_write_b16  v2, v4                                      // 00001E84: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00001E8C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v12                                // 00001E90: 2C041801
  ds_read_i16   v4, v3                                      // 00001E94: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00001E9C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00001EA4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00001EA8: 4A040400
  tbuffer_load_format_x  v12, v5, s[16:19], 0 offen offset:316 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001EAC: EBA0113C 80040C05
  s_waitcnt     lgkmcnt(0)                                  // 00001EB4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001EB8: 4A080881
  ds_write_b16  v3, v4                                      // 00001EBC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00001EC4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v13                                // 00001EC8: 2C061A01
  ds_read_i16   v4, v2                                      // 00001ECC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00001ED4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00001EDC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00001EE0: 4A060600
  tbuffer_load_format_x  v13, v5, s[16:19], 0 offen offset:320 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001EE4: EBA01140 80040D05
  s_waitcnt     lgkmcnt(0)                                  // 00001EEC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001EF0: 4A080881
  ds_write_b16  v2, v4                                      // 00001EF4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00001EFC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v14                                // 00001F00: 2C041C01
  ds_read_i16   v4, v3                                      // 00001F04: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00001F0C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00001F14: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00001F18: 4A040400
  tbuffer_load_format_x  v14, v5, s[16:19], 0 offen offset:324 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001F1C: EBA01144 80040E05
  s_waitcnt     lgkmcnt(0)                                  // 00001F24: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001F28: 4A080881
  ds_write_b16  v3, v4                                      // 00001F2C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00001F34: BF8C1F7B
  v_lshrrev_b32  v3, s1, v15                                // 00001F38: 2C061E01
  ds_read_i16   v4, v2                                      // 00001F3C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00001F44: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00001F4C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00001F50: 4A060600
  tbuffer_load_format_x  v15, v5, s[16:19], 0 offen offset:328 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001F54: EBA01148 80040F05
  s_waitcnt     lgkmcnt(0)                                  // 00001F5C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001F60: 4A080881
  ds_write_b16  v2, v4                                      // 00001F64: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00001F6C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v16                                // 00001F70: 2C042001
  ds_read_i16   v4, v3                                      // 00001F74: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00001F7C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00001F84: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00001F88: 4A040400
  tbuffer_load_format_x  v16, v5, s[16:19], 0 offen offset:332 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001F8C: EBA0114C 80041005
  s_waitcnt     lgkmcnt(0)                                  // 00001F94: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001F98: 4A080881
  ds_write_b16  v3, v4                                      // 00001F9C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00001FA4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v17                                // 00001FA8: 2C062201
  ds_read_i16   v4, v2                                      // 00001FAC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00001FB4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00001FBC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00001FC0: 4A060600
  tbuffer_load_format_x  v17, v5, s[16:19], 0 offen offset:336 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001FC4: EBA01150 80041105
  s_waitcnt     lgkmcnt(0)                                  // 00001FCC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00001FD0: 4A080881
  ds_write_b16  v2, v4                                      // 00001FD4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00001FDC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v7                                 // 00001FE0: 2C040E01
  ds_read_i16   v4, v3                                      // 00001FE4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00001FEC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00001FF4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00001FF8: 4A040400
  tbuffer_load_format_x  v7, v5, s[16:19], 0 offen offset:340 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001FFC: EBA01154 80040705
  s_waitcnt     lgkmcnt(0)                                  // 00002004: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002008: 4A080881
  ds_write_b16  v3, v4                                      // 0000200C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00002014: BF8C1F7B
  v_lshrrev_b32  v3, s1, v6                                 // 00002018: 2C060C01
  ds_read_i16   v4, v2                                      // 0000201C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00002024: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000202C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00002030: 4A060600
  tbuffer_load_format_x  v6, v5, s[16:19], 0 offen offset:344 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002034: EBA01158 80040605
  s_waitcnt     lgkmcnt(0)                                  // 0000203C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002040: 4A080881
  ds_write_b16  v2, v4                                      // 00002044: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000204C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v8                                 // 00002050: 2C041001
  ds_read_i16   v4, v3                                      // 00002054: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000205C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00002064: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00002068: 4A040400
  tbuffer_load_format_x  v8, v5, s[16:19], 0 offen offset:348 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000206C: EBA0115C 80040805
  s_waitcnt     lgkmcnt(0)                                  // 00002074: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002078: 4A080881
  ds_write_b16  v3, v4                                      // 0000207C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00002084: BF8C1F7B
  v_lshrrev_b32  v3, s1, v9                                 // 00002088: 2C061201
  ds_read_i16   v4, v2                                      // 0000208C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00002094: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000209C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 000020A0: 4A060600
  tbuffer_load_format_x  v9, v5, s[16:19], 0 offen offset:352 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000020A4: EBA01160 80040905
  s_waitcnt     lgkmcnt(0)                                  // 000020AC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000020B0: 4A080881
  ds_write_b16  v2, v4                                      // 000020B4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 000020BC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v10                                // 000020C0: 2C041401
  ds_read_i16   v4, v3                                      // 000020C4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 000020CC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 000020D4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 000020D8: 4A040400
  tbuffer_load_format_x  v10, v5, s[16:19], 0 offen offset:356 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000020DC: EBA01164 80040A05
  s_waitcnt     lgkmcnt(0)                                  // 000020E4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000020E8: 4A080881
  ds_write_b16  v3, v4                                      // 000020EC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 000020F4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v11                                // 000020F8: 2C061601
  ds_read_i16   v4, v2                                      // 000020FC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00002104: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000210C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00002110: 4A060600
  tbuffer_load_format_x  v11, v5, s[16:19], 0 offen offset:360 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002114: EBA01168 80040B05
  s_waitcnt     lgkmcnt(0)                                  // 0000211C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002120: 4A080881
  ds_write_b16  v2, v4                                      // 00002124: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000212C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v12                                // 00002130: 2C041801
  ds_read_i16   v4, v3                                      // 00002134: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000213C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00002144: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00002148: 4A040400
  tbuffer_load_format_x  v12, v5, s[16:19], 0 offen offset:364 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000214C: EBA0116C 80040C05
  s_waitcnt     lgkmcnt(0)                                  // 00002154: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002158: 4A080881
  ds_write_b16  v3, v4                                      // 0000215C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00002164: BF8C1F7B
  v_lshrrev_b32  v3, s1, v13                                // 00002168: 2C061A01
  ds_read_i16   v4, v2                                      // 0000216C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00002174: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000217C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00002180: 4A060600
  tbuffer_load_format_x  v13, v5, s[16:19], 0 offen offset:368 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002184: EBA01170 80040D05
  s_waitcnt     lgkmcnt(0)                                  // 0000218C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002190: 4A080881
  ds_write_b16  v2, v4                                      // 00002194: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000219C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v14                                // 000021A0: 2C041C01
  ds_read_i16   v4, v3                                      // 000021A4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 000021AC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 000021B4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 000021B8: 4A040400
  tbuffer_load_format_x  v14, v5, s[16:19], 0 offen offset:372 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000021BC: EBA01174 80040E05
  s_waitcnt     lgkmcnt(0)                                  // 000021C4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000021C8: 4A080881
  ds_write_b16  v3, v4                                      // 000021CC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 000021D4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v15                                // 000021D8: 2C061E01
  ds_read_i16   v4, v2                                      // 000021DC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 000021E4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 000021EC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 000021F0: 4A060600
  tbuffer_load_format_x  v15, v5, s[16:19], 0 offen offset:376 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000021F4: EBA01178 80040F05
  s_waitcnt     lgkmcnt(0)                                  // 000021FC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002200: 4A080881
  ds_write_b16  v2, v4                                      // 00002204: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000220C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v16                                // 00002210: 2C042001
  ds_read_i16   v4, v3                                      // 00002214: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000221C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00002224: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00002228: 4A040400
  tbuffer_load_format_x  v16, v5, s[16:19], 0 offen offset:380 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000222C: EBA0117C 80041005
  s_waitcnt     lgkmcnt(0)                                  // 00002234: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002238: 4A080881
  ds_write_b16  v3, v4                                      // 0000223C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00002244: BF8C1F7B
  v_lshrrev_b32  v3, s1, v17                                // 00002248: 2C062201
  ds_read_i16   v4, v2                                      // 0000224C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00002254: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000225C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00002260: 4A060600
  tbuffer_load_format_x  v17, v5, s[16:19], 0 offen offset:384 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002264: EBA01180 80041105
  s_waitcnt     lgkmcnt(0)                                  // 0000226C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002270: 4A080881
  ds_write_b16  v2, v4                                      // 00002274: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000227C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v7                                 // 00002280: 2C040E01
  ds_read_i16   v4, v3                                      // 00002284: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000228C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00002294: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00002298: 4A040400
  tbuffer_load_format_x  v7, v5, s[16:19], 0 offen offset:388 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000229C: EBA01184 80040705
  s_waitcnt     lgkmcnt(0)                                  // 000022A4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000022A8: 4A080881
  ds_write_b16  v3, v4                                      // 000022AC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 000022B4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v6                                 // 000022B8: 2C060C01
  ds_read_i16   v4, v2                                      // 000022BC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 000022C4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 000022CC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 000022D0: 4A060600
  tbuffer_load_format_x  v6, v5, s[16:19], 0 offen offset:392 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000022D4: EBA01188 80040605
  s_waitcnt     lgkmcnt(0)                                  // 000022DC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000022E0: 4A080881
  ds_write_b16  v2, v4                                      // 000022E4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 000022EC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v8                                 // 000022F0: 2C041001
  ds_read_i16   v4, v3                                      // 000022F4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 000022FC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00002304: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00002308: 4A040400
  tbuffer_load_format_x  v8, v5, s[16:19], 0 offen offset:396 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000230C: EBA0118C 80040805
  s_waitcnt     lgkmcnt(0)                                  // 00002314: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002318: 4A080881
  ds_write_b16  v3, v4                                      // 0000231C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00002324: BF8C1F7B
  v_lshrrev_b32  v3, s1, v9                                 // 00002328: 2C061201
  ds_read_i16   v4, v2                                      // 0000232C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00002334: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000233C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00002340: 4A060600
  tbuffer_load_format_x  v9, v5, s[16:19], 0 offen offset:400 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002344: EBA01190 80040905
  s_waitcnt     lgkmcnt(0)                                  // 0000234C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002350: 4A080881
  ds_write_b16  v2, v4                                      // 00002354: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000235C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v10                                // 00002360: 2C041401
  ds_read_i16   v4, v3                                      // 00002364: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000236C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00002374: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00002378: 4A040400
  tbuffer_load_format_x  v10, v5, s[16:19], 0 offen offset:404 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000237C: EBA01194 80040A05
  s_waitcnt     lgkmcnt(0)                                  // 00002384: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002388: 4A080881
  ds_write_b16  v3, v4                                      // 0000238C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00002394: BF8C1F7B
  v_lshrrev_b32  v3, s1, v11                                // 00002398: 2C061601
  ds_read_i16   v4, v2                                      // 0000239C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 000023A4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 000023AC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 000023B0: 4A060600
  tbuffer_load_format_x  v11, v5, s[16:19], 0 offen offset:408 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000023B4: EBA01198 80040B05
  s_waitcnt     lgkmcnt(0)                                  // 000023BC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000023C0: 4A080881
  ds_write_b16  v2, v4                                      // 000023C4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 000023CC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v12                                // 000023D0: 2C041801
  ds_read_i16   v4, v3                                      // 000023D4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 000023DC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 000023E4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 000023E8: 4A040400
  tbuffer_load_format_x  v12, v5, s[16:19], 0 offen offset:412 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000023EC: EBA0119C 80040C05
  s_waitcnt     lgkmcnt(0)                                  // 000023F4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000023F8: 4A080881
  ds_write_b16  v3, v4                                      // 000023FC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00002404: BF8C1F7B
  v_lshrrev_b32  v3, s1, v13                                // 00002408: 2C061A01
  ds_read_i16   v4, v2                                      // 0000240C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00002414: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000241C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00002420: 4A060600
  tbuffer_load_format_x  v13, v5, s[16:19], 0 offen offset:416 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002424: EBA011A0 80040D05
  s_waitcnt     lgkmcnt(0)                                  // 0000242C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002430: 4A080881
  ds_write_b16  v2, v4                                      // 00002434: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000243C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v14                                // 00002440: 2C041C01
  ds_read_i16   v4, v3                                      // 00002444: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000244C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00002454: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00002458: 4A040400
  tbuffer_load_format_x  v14, v5, s[16:19], 0 offen offset:420 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000245C: EBA011A4 80040E05
  s_waitcnt     lgkmcnt(0)                                  // 00002464: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002468: 4A080881
  ds_write_b16  v3, v4                                      // 0000246C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00002474: BF8C1F7B
  v_lshrrev_b32  v3, s1, v15                                // 00002478: 2C061E01
  ds_read_i16   v4, v2                                      // 0000247C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00002484: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000248C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00002490: 4A060600
  tbuffer_load_format_x  v15, v5, s[16:19], 0 offen offset:424 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002494: EBA011A8 80040F05
  s_waitcnt     lgkmcnt(0)                                  // 0000249C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000024A0: 4A080881
  ds_write_b16  v2, v4                                      // 000024A4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 000024AC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v16                                // 000024B0: 2C042001
  ds_read_i16   v4, v3                                      // 000024B4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 000024BC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 000024C4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 000024C8: 4A040400
  tbuffer_load_format_x  v16, v5, s[16:19], 0 offen offset:428 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000024CC: EBA011AC 80041005
  s_waitcnt     lgkmcnt(0)                                  // 000024D4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000024D8: 4A080881
  ds_write_b16  v3, v4                                      // 000024DC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 000024E4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v17                                // 000024E8: 2C062201
  ds_read_i16   v4, v2                                      // 000024EC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 000024F4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 000024FC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00002500: 4A060600
  tbuffer_load_format_x  v17, v5, s[16:19], 0 offen offset:432 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002504: EBA011B0 80041105
  s_waitcnt     lgkmcnt(0)                                  // 0000250C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002510: 4A080881
  ds_write_b16  v2, v4                                      // 00002514: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000251C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v7                                 // 00002520: 2C040E01
  ds_read_i16   v4, v3                                      // 00002524: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000252C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00002534: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00002538: 4A040400
  tbuffer_load_format_x  v7, v5, s[16:19], 0 offen offset:436 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000253C: EBA011B4 80040705
  s_waitcnt     lgkmcnt(0)                                  // 00002544: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002548: 4A080881
  ds_write_b16  v3, v4                                      // 0000254C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00002554: BF8C1F7B
  v_lshrrev_b32  v3, s1, v6                                 // 00002558: 2C060C01
  ds_read_i16   v4, v2                                      // 0000255C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00002564: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000256C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00002570: 4A060600
  tbuffer_load_format_x  v6, v5, s[16:19], 0 offen offset:440 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002574: EBA011B8 80040605
  s_waitcnt     lgkmcnt(0)                                  // 0000257C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002580: 4A080881
  ds_write_b16  v2, v4                                      // 00002584: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000258C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v8                                 // 00002590: 2C041001
  ds_read_i16   v4, v3                                      // 00002594: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000259C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 000025A4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 000025A8: 4A040400
  tbuffer_load_format_x  v8, v5, s[16:19], 0 offen offset:444 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000025AC: EBA011BC 80040805
  s_waitcnt     lgkmcnt(0)                                  // 000025B4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000025B8: 4A080881
  ds_write_b16  v3, v4                                      // 000025BC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 000025C4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v9                                 // 000025C8: 2C061201
  ds_read_i16   v4, v2                                      // 000025CC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 000025D4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 000025DC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 000025E0: 4A060600
  tbuffer_load_format_x  v9, v5, s[16:19], 0 offen offset:448 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000025E4: EBA011C0 80040905
  s_waitcnt     lgkmcnt(0)                                  // 000025EC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000025F0: 4A080881
  ds_write_b16  v2, v4                                      // 000025F4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 000025FC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v10                                // 00002600: 2C041401
  ds_read_i16   v4, v3                                      // 00002604: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000260C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00002614: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00002618: 4A040400
  tbuffer_load_format_x  v10, v5, s[16:19], 0 offen offset:452 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000261C: EBA011C4 80040A05
  s_waitcnt     lgkmcnt(0)                                  // 00002624: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002628: 4A080881
  ds_write_b16  v3, v4                                      // 0000262C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00002634: BF8C1F7B
  v_lshrrev_b32  v3, s1, v11                                // 00002638: 2C061601
  ds_read_i16   v4, v2                                      // 0000263C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00002644: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000264C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00002650: 4A060600
  tbuffer_load_format_x  v11, v5, s[16:19], 0 offen offset:456 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002654: EBA011C8 80040B05
  s_waitcnt     lgkmcnt(0)                                  // 0000265C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002660: 4A080881
  ds_write_b16  v2, v4                                      // 00002664: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000266C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v12                                // 00002670: 2C041801
  ds_read_i16   v4, v3                                      // 00002674: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000267C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00002684: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00002688: 4A040400
  tbuffer_load_format_x  v12, v5, s[16:19], 0 offen offset:460 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000268C: EBA011CC 80040C05
  s_waitcnt     lgkmcnt(0)                                  // 00002694: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002698: 4A080881
  ds_write_b16  v3, v4                                      // 0000269C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 000026A4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v13                                // 000026A8: 2C061A01
  ds_read_i16   v4, v2                                      // 000026AC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 000026B4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 000026BC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 000026C0: 4A060600
  tbuffer_load_format_x  v13, v5, s[16:19], 0 offen offset:464 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000026C4: EBA011D0 80040D05
  s_waitcnt     lgkmcnt(0)                                  // 000026CC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000026D0: 4A080881
  ds_write_b16  v2, v4                                      // 000026D4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 000026DC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v14                                // 000026E0: 2C041C01
  ds_read_i16   v4, v3                                      // 000026E4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 000026EC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 000026F4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 000026F8: 4A040400
  tbuffer_load_format_x  v14, v5, s[16:19], 0 offen offset:468 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000026FC: EBA011D4 80040E05
  s_waitcnt     lgkmcnt(0)                                  // 00002704: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002708: 4A080881
  ds_write_b16  v3, v4                                      // 0000270C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00002714: BF8C1F7B
  v_lshrrev_b32  v3, s1, v15                                // 00002718: 2C061E01
  ds_read_i16   v4, v2                                      // 0000271C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00002724: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000272C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00002730: 4A060600
  tbuffer_load_format_x  v15, v5, s[16:19], 0 offen offset:472 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002734: EBA011D8 80040F05
  s_waitcnt     lgkmcnt(0)                                  // 0000273C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002740: 4A080881
  ds_write_b16  v2, v4                                      // 00002744: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000274C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v16                                // 00002750: 2C042001
  ds_read_i16   v4, v3                                      // 00002754: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000275C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00002764: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00002768: 4A040400
  tbuffer_load_format_x  v16, v5, s[16:19], 0 offen offset:476 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000276C: EBA011DC 80041005
  s_waitcnt     lgkmcnt(0)                                  // 00002774: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002778: 4A080881
  ds_write_b16  v3, v4                                      // 0000277C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00002784: BF8C1F7B
  v_lshrrev_b32  v3, s1, v17                                // 00002788: 2C062201
  ds_read_i16   v4, v2                                      // 0000278C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00002794: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000279C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 000027A0: 4A060600
  tbuffer_load_format_x  v17, v5, s[16:19], 0 offen offset:480 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000027A4: EBA011E0 80041105
  s_waitcnt     lgkmcnt(0)                                  // 000027AC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000027B0: 4A080881
  ds_write_b16  v2, v4                                      // 000027B4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 000027BC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v7                                 // 000027C0: 2C040E01
  ds_read_i16   v4, v3                                      // 000027C4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 000027CC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 000027D4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 000027D8: 4A040400
  tbuffer_load_format_x  v7, v5, s[16:19], 0 offen offset:484 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000027DC: EBA011E4 80040705
  s_waitcnt     lgkmcnt(0)                                  // 000027E4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000027E8: 4A080881
  ds_write_b16  v3, v4                                      // 000027EC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 000027F4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v6                                 // 000027F8: 2C060C01
  ds_read_i16   v4, v2                                      // 000027FC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00002804: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000280C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00002810: 4A060600
  tbuffer_load_format_x  v6, v5, s[16:19], 0 offen offset:488 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002814: EBA011E8 80040605
  s_waitcnt     lgkmcnt(0)                                  // 0000281C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002820: 4A080881
  ds_write_b16  v2, v4                                      // 00002824: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000282C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v8                                 // 00002830: 2C041001
  ds_read_i16   v4, v3                                      // 00002834: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000283C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00002844: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00002848: 4A040400
  tbuffer_load_format_x  v8, v5, s[16:19], 0 offen offset:492 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000284C: EBA011EC 80040805
  s_waitcnt     lgkmcnt(0)                                  // 00002854: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002858: 4A080881
  ds_write_b16  v3, v4                                      // 0000285C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00002864: BF8C1F7B
  v_lshrrev_b32  v3, s1, v9                                 // 00002868: 2C061201
  ds_read_i16   v4, v2                                      // 0000286C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00002874: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000287C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00002880: 4A060600
  tbuffer_load_format_x  v9, v5, s[16:19], 0 offen offset:496 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002884: EBA011F0 80040905
  s_waitcnt     lgkmcnt(0)                                  // 0000288C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002890: 4A080881
  ds_write_b16  v2, v4                                      // 00002894: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000289C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v10                                // 000028A0: 2C041401
  ds_read_i16   v4, v3                                      // 000028A4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 000028AC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 000028B4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 000028B8: 4A040400
  tbuffer_load_format_x  v10, v5, s[16:19], 0 offen offset:500 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000028BC: EBA011F4 80040A05
  s_waitcnt     lgkmcnt(0)                                  // 000028C4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000028C8: 4A080881
  ds_write_b16  v3, v4                                      // 000028CC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 000028D4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v11                                // 000028D8: 2C061601
  ds_read_i16   v4, v2                                      // 000028DC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 000028E4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 000028EC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 000028F0: 4A060600
  tbuffer_load_format_x  v11, v5, s[16:19], 0 offen offset:504 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000028F4: EBA011F8 80040B05
  s_waitcnt     lgkmcnt(0)                                  // 000028FC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002900: 4A080881
  ds_write_b16  v2, v4                                      // 00002904: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000290C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v12                                // 00002910: 2C041801
  ds_read_i16   v4, v3                                      // 00002914: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000291C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00002924: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00002928: 4A040400
  tbuffer_load_format_x  v12, v5, s[16:19], 0 offen offset:508 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000292C: EBA011FC 80040C05
  s_waitcnt     lgkmcnt(0)                                  // 00002934: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002938: 4A080881
  ds_write_b16  v3, v4                                      // 0000293C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00002944: BF8C1F7B
  v_lshrrev_b32  v3, s1, v13                                // 00002948: 2C061A01
  ds_read_i16   v4, v2                                      // 0000294C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00002954: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000295C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00002960: 4A060600
  tbuffer_load_format_x  v13, v5, s[16:19], 0 offen offset:512 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002964: EBA01200 80040D05
  s_waitcnt     lgkmcnt(0)                                  // 0000296C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002970: 4A080881
  ds_write_b16  v2, v4                                      // 00002974: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000297C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v14                                // 00002980: 2C041C01
  ds_read_i16   v4, v3                                      // 00002984: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000298C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00002994: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00002998: 4A040400
  tbuffer_load_format_x  v14, v5, s[16:19], 0 offen offset:516 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000299C: EBA01204 80040E05
  s_waitcnt     lgkmcnt(0)                                  // 000029A4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000029A8: 4A080881
  ds_write_b16  v3, v4                                      // 000029AC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 000029B4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v15                                // 000029B8: 2C061E01
  ds_read_i16   v4, v2                                      // 000029BC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 000029C4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 000029CC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 000029D0: 4A060600
  tbuffer_load_format_x  v15, v5, s[16:19], 0 offen offset:520 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000029D4: EBA01208 80040F05
  s_waitcnt     lgkmcnt(0)                                  // 000029DC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000029E0: 4A080881
  ds_write_b16  v2, v4                                      // 000029E4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 000029EC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v16                                // 000029F0: 2C042001
  ds_read_i16   v4, v3                                      // 000029F4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 000029FC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00002A04: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00002A08: 4A040400
  tbuffer_load_format_x  v16, v5, s[16:19], 0 offen offset:524 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002A0C: EBA0120C 80041005
  s_waitcnt     lgkmcnt(0)                                  // 00002A14: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002A18: 4A080881
  ds_write_b16  v3, v4                                      // 00002A1C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00002A24: BF8C1F7B
  v_lshrrev_b32  v3, s1, v17                                // 00002A28: 2C062201
  ds_read_i16   v4, v2                                      // 00002A2C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00002A34: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00002A3C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00002A40: 4A060600
  tbuffer_load_format_x  v17, v5, s[16:19], 0 offen offset:528 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002A44: EBA01210 80041105
  s_waitcnt     lgkmcnt(0)                                  // 00002A4C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002A50: 4A080881
  ds_write_b16  v2, v4                                      // 00002A54: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00002A5C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v7                                 // 00002A60: 2C040E01
  ds_read_i16   v4, v3                                      // 00002A64: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00002A6C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00002A74: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00002A78: 4A040400
  tbuffer_load_format_x  v7, v5, s[16:19], 0 offen offset:532 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002A7C: EBA01214 80040705
  s_waitcnt     lgkmcnt(0)                                  // 00002A84: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002A88: 4A080881
  ds_write_b16  v3, v4                                      // 00002A8C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00002A94: BF8C1F7B
  v_lshrrev_b32  v3, s1, v6                                 // 00002A98: 2C060C01
  ds_read_i16   v4, v2                                      // 00002A9C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00002AA4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00002AAC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00002AB0: 4A060600
  tbuffer_load_format_x  v6, v5, s[16:19], 0 offen offset:536 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002AB4: EBA01218 80040605
  s_waitcnt     lgkmcnt(0)                                  // 00002ABC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002AC0: 4A080881
  ds_write_b16  v2, v4                                      // 00002AC4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00002ACC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v8                                 // 00002AD0: 2C041001
  ds_read_i16   v4, v3                                      // 00002AD4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00002ADC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00002AE4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00002AE8: 4A040400
  tbuffer_load_format_x  v8, v5, s[16:19], 0 offen offset:540 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002AEC: EBA0121C 80040805
  s_waitcnt     lgkmcnt(0)                                  // 00002AF4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002AF8: 4A080881
  ds_write_b16  v3, v4                                      // 00002AFC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00002B04: BF8C1F7B
  v_lshrrev_b32  v3, s1, v9                                 // 00002B08: 2C061201
  ds_read_i16   v4, v2                                      // 00002B0C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00002B14: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00002B1C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00002B20: 4A060600
  tbuffer_load_format_x  v9, v5, s[16:19], 0 offen offset:544 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002B24: EBA01220 80040905
  s_waitcnt     lgkmcnt(0)                                  // 00002B2C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002B30: 4A080881
  ds_write_b16  v2, v4                                      // 00002B34: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00002B3C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v10                                // 00002B40: 2C041401
  ds_read_i16   v4, v3                                      // 00002B44: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00002B4C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00002B54: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00002B58: 4A040400
  tbuffer_load_format_x  v10, v5, s[16:19], 0 offen offset:548 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002B5C: EBA01224 80040A05
  s_waitcnt     lgkmcnt(0)                                  // 00002B64: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002B68: 4A080881
  ds_write_b16  v3, v4                                      // 00002B6C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00002B74: BF8C1F7B
  v_lshrrev_b32  v3, s1, v11                                // 00002B78: 2C061601
  ds_read_i16   v4, v2                                      // 00002B7C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00002B84: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00002B8C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00002B90: 4A060600
  tbuffer_load_format_x  v11, v5, s[16:19], 0 offen offset:552 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002B94: EBA01228 80040B05
  s_waitcnt     lgkmcnt(0)                                  // 00002B9C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002BA0: 4A080881
  ds_write_b16  v2, v4                                      // 00002BA4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00002BAC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v12                                // 00002BB0: 2C041801
  ds_read_i16   v4, v3                                      // 00002BB4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00002BBC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00002BC4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00002BC8: 4A040400
  tbuffer_load_format_x  v12, v5, s[16:19], 0 offen offset:556 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002BCC: EBA0122C 80040C05
  s_waitcnt     lgkmcnt(0)                                  // 00002BD4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002BD8: 4A080881
  ds_write_b16  v3, v4                                      // 00002BDC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00002BE4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v13                                // 00002BE8: 2C061A01
  ds_read_i16   v4, v2                                      // 00002BEC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00002BF4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00002BFC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00002C00: 4A060600
  tbuffer_load_format_x  v13, v5, s[16:19], 0 offen offset:560 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002C04: EBA01230 80040D05
  s_waitcnt     lgkmcnt(0)                                  // 00002C0C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002C10: 4A080881
  ds_write_b16  v2, v4                                      // 00002C14: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00002C1C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v14                                // 00002C20: 2C041C01
  ds_read_i16   v4, v3                                      // 00002C24: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00002C2C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00002C34: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00002C38: 4A040400
  tbuffer_load_format_x  v14, v5, s[16:19], 0 offen offset:564 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002C3C: EBA01234 80040E05
  s_waitcnt     lgkmcnt(0)                                  // 00002C44: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002C48: 4A080881
  ds_write_b16  v3, v4                                      // 00002C4C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00002C54: BF8C1F7B
  v_lshrrev_b32  v3, s1, v15                                // 00002C58: 2C061E01
  ds_read_i16   v4, v2                                      // 00002C5C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00002C64: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00002C6C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00002C70: 4A060600
  tbuffer_load_format_x  v15, v5, s[16:19], 0 offen offset:568 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002C74: EBA01238 80040F05
  s_waitcnt     lgkmcnt(0)                                  // 00002C7C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002C80: 4A080881
  ds_write_b16  v2, v4                                      // 00002C84: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00002C8C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v16                                // 00002C90: 2C042001
  ds_read_i16   v4, v3                                      // 00002C94: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00002C9C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00002CA4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00002CA8: 4A040400
  tbuffer_load_format_x  v16, v5, s[16:19], 0 offen offset:572 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002CAC: EBA0123C 80041005
  s_waitcnt     lgkmcnt(0)                                  // 00002CB4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002CB8: 4A080881
  ds_write_b16  v3, v4                                      // 00002CBC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00002CC4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v17                                // 00002CC8: 2C062201
  ds_read_i16   v4, v2                                      // 00002CCC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00002CD4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00002CDC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00002CE0: 4A060600
  tbuffer_load_format_x  v17, v5, s[16:19], 0 offen offset:576 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002CE4: EBA01240 80041105
  s_waitcnt     lgkmcnt(0)                                  // 00002CEC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002CF0: 4A080881
  ds_write_b16  v2, v4                                      // 00002CF4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00002CFC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v7                                 // 00002D00: 2C040E01
  ds_read_i16   v4, v3                                      // 00002D04: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00002D0C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00002D14: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00002D18: 4A040400
  tbuffer_load_format_x  v7, v5, s[16:19], 0 offen offset:580 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002D1C: EBA01244 80040705
  s_waitcnt     lgkmcnt(0)                                  // 00002D24: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002D28: 4A080881
  ds_write_b16  v3, v4                                      // 00002D2C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00002D34: BF8C1F7B
  v_lshrrev_b32  v3, s1, v6                                 // 00002D38: 2C060C01
  ds_read_i16   v4, v2                                      // 00002D3C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00002D44: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00002D4C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00002D50: 4A060600
  tbuffer_load_format_x  v6, v5, s[16:19], 0 offen offset:584 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002D54: EBA01248 80040605
  s_waitcnt     lgkmcnt(0)                                  // 00002D5C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002D60: 4A080881
  ds_write_b16  v2, v4                                      // 00002D64: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00002D6C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v8                                 // 00002D70: 2C041001
  ds_read_i16   v4, v3                                      // 00002D74: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00002D7C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00002D84: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00002D88: 4A040400
  tbuffer_load_format_x  v8, v5, s[16:19], 0 offen offset:588 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002D8C: EBA0124C 80040805
  s_waitcnt     lgkmcnt(0)                                  // 00002D94: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002D98: 4A080881
  ds_write_b16  v3, v4                                      // 00002D9C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00002DA4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v9                                 // 00002DA8: 2C061201
  ds_read_i16   v4, v2                                      // 00002DAC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00002DB4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00002DBC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00002DC0: 4A060600
  tbuffer_load_format_x  v9, v5, s[16:19], 0 offen offset:592 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002DC4: EBA01250 80040905
  s_waitcnt     lgkmcnt(0)                                  // 00002DCC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002DD0: 4A080881
  ds_write_b16  v2, v4                                      // 00002DD4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00002DDC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v10                                // 00002DE0: 2C041401
  ds_read_i16   v4, v3                                      // 00002DE4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00002DEC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00002DF4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00002DF8: 4A040400
  tbuffer_load_format_x  v10, v5, s[16:19], 0 offen offset:596 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002DFC: EBA01254 80040A05
  s_waitcnt     lgkmcnt(0)                                  // 00002E04: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002E08: 4A080881
  ds_write_b16  v3, v4                                      // 00002E0C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00002E14: BF8C1F7B
  v_lshrrev_b32  v3, s1, v11                                // 00002E18: 2C061601
  ds_read_i16   v4, v2                                      // 00002E1C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00002E24: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00002E2C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00002E30: 4A060600
  tbuffer_load_format_x  v11, v5, s[16:19], 0 offen offset:600 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002E34: EBA01258 80040B05
  s_waitcnt     lgkmcnt(0)                                  // 00002E3C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002E40: 4A080881
  ds_write_b16  v2, v4                                      // 00002E44: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00002E4C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v12                                // 00002E50: 2C041801
  ds_read_i16   v4, v3                                      // 00002E54: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00002E5C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00002E64: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00002E68: 4A040400
  tbuffer_load_format_x  v12, v5, s[16:19], 0 offen offset:604 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002E6C: EBA0125C 80040C05
  s_waitcnt     lgkmcnt(0)                                  // 00002E74: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002E78: 4A080881
  ds_write_b16  v3, v4                                      // 00002E7C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00002E84: BF8C1F7B
  v_lshrrev_b32  v3, s1, v13                                // 00002E88: 2C061A01
  ds_read_i16   v4, v2                                      // 00002E8C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00002E94: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00002E9C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00002EA0: 4A060600
  tbuffer_load_format_x  v13, v5, s[16:19], 0 offen offset:608 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002EA4: EBA01260 80040D05
  s_waitcnt     lgkmcnt(0)                                  // 00002EAC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002EB0: 4A080881
  ds_write_b16  v2, v4                                      // 00002EB4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00002EBC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v14                                // 00002EC0: 2C041C01
  ds_read_i16   v4, v3                                      // 00002EC4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00002ECC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00002ED4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00002ED8: 4A040400
  tbuffer_load_format_x  v14, v5, s[16:19], 0 offen offset:612 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002EDC: EBA01264 80040E05
  s_waitcnt     lgkmcnt(0)                                  // 00002EE4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002EE8: 4A080881
  ds_write_b16  v3, v4                                      // 00002EEC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00002EF4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v15                                // 00002EF8: 2C061E01
  ds_read_i16   v4, v2                                      // 00002EFC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00002F04: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00002F0C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00002F10: 4A060600
  tbuffer_load_format_x  v15, v5, s[16:19], 0 offen offset:616 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002F14: EBA01268 80040F05
  s_waitcnt     lgkmcnt(0)                                  // 00002F1C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002F20: 4A080881
  ds_write_b16  v2, v4                                      // 00002F24: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00002F2C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v16                                // 00002F30: 2C042001
  ds_read_i16   v4, v3                                      // 00002F34: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00002F3C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00002F44: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00002F48: 4A040400
  tbuffer_load_format_x  v16, v5, s[16:19], 0 offen offset:620 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002F4C: EBA0126C 80041005
  s_waitcnt     lgkmcnt(0)                                  // 00002F54: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002F58: 4A080881
  ds_write_b16  v3, v4                                      // 00002F5C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00002F64: BF8C1F7B
  v_lshrrev_b32  v3, s1, v17                                // 00002F68: 2C062201
  ds_read_i16   v4, v2                                      // 00002F6C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00002F74: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00002F7C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00002F80: 4A060600
  tbuffer_load_format_x  v17, v5, s[16:19], 0 offen offset:624 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002F84: EBA01270 80041105
  s_waitcnt     lgkmcnt(0)                                  // 00002F8C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002F90: 4A080881
  ds_write_b16  v2, v4                                      // 00002F94: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00002F9C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v7                                 // 00002FA0: 2C040E01
  ds_read_i16   v4, v3                                      // 00002FA4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00002FAC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00002FB4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00002FB8: 4A040400
  tbuffer_load_format_x  v7, v5, s[16:19], 0 offen offset:628 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002FBC: EBA01274 80040705
  s_waitcnt     lgkmcnt(0)                                  // 00002FC4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00002FC8: 4A080881
  ds_write_b16  v3, v4                                      // 00002FCC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00002FD4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v6                                 // 00002FD8: 2C060C01
  ds_read_i16   v4, v2                                      // 00002FDC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00002FE4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00002FEC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00002FF0: 4A060600
  tbuffer_load_format_x  v6, v5, s[16:19], 0 offen offset:632 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002FF4: EBA01278 80040605
  s_waitcnt     lgkmcnt(0)                                  // 00002FFC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003000: 4A080881
  ds_write_b16  v2, v4                                      // 00003004: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000300C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v8                                 // 00003010: 2C041001
  ds_read_i16   v4, v3                                      // 00003014: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000301C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00003024: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00003028: 4A040400
  tbuffer_load_format_x  v8, v5, s[16:19], 0 offen offset:636 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000302C: EBA0127C 80040805
  s_waitcnt     lgkmcnt(0)                                  // 00003034: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003038: 4A080881
  ds_write_b16  v3, v4                                      // 0000303C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00003044: BF8C1F7B
  v_lshrrev_b32  v3, s1, v9                                 // 00003048: 2C061201
  ds_read_i16   v4, v2                                      // 0000304C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00003054: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000305C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00003060: 4A060600
  tbuffer_load_format_x  v9, v5, s[16:19], 0 offen offset:640 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003064: EBA01280 80040905
  s_waitcnt     lgkmcnt(0)                                  // 0000306C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003070: 4A080881
  ds_write_b16  v2, v4                                      // 00003074: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000307C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v10                                // 00003080: 2C041401
  ds_read_i16   v4, v3                                      // 00003084: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000308C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00003094: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00003098: 4A040400
  tbuffer_load_format_x  v10, v5, s[16:19], 0 offen offset:644 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000309C: EBA01284 80040A05
  s_waitcnt     lgkmcnt(0)                                  // 000030A4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000030A8: 4A080881
  ds_write_b16  v3, v4                                      // 000030AC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 000030B4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v11                                // 000030B8: 2C061601
  ds_read_i16   v4, v2                                      // 000030BC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 000030C4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 000030CC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 000030D0: 4A060600
  tbuffer_load_format_x  v11, v5, s[16:19], 0 offen offset:648 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000030D4: EBA01288 80040B05
  s_waitcnt     lgkmcnt(0)                                  // 000030DC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000030E0: 4A080881
  ds_write_b16  v2, v4                                      // 000030E4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 000030EC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v12                                // 000030F0: 2C041801
  ds_read_i16   v4, v3                                      // 000030F4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 000030FC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00003104: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00003108: 4A040400
  tbuffer_load_format_x  v12, v5, s[16:19], 0 offen offset:652 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000310C: EBA0128C 80040C05
  s_waitcnt     lgkmcnt(0)                                  // 00003114: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003118: 4A080881
  ds_write_b16  v3, v4                                      // 0000311C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00003124: BF8C1F7B
  v_lshrrev_b32  v3, s1, v13                                // 00003128: 2C061A01
  ds_read_i16   v4, v2                                      // 0000312C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00003134: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000313C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00003140: 4A060600
  tbuffer_load_format_x  v13, v5, s[16:19], 0 offen offset:656 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003144: EBA01290 80040D05
  s_waitcnt     lgkmcnt(0)                                  // 0000314C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003150: 4A080881
  ds_write_b16  v2, v4                                      // 00003154: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000315C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v14                                // 00003160: 2C041C01
  ds_read_i16   v4, v3                                      // 00003164: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000316C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00003174: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00003178: 4A040400
  tbuffer_load_format_x  v14, v5, s[16:19], 0 offen offset:660 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000317C: EBA01294 80040E05
  s_waitcnt     lgkmcnt(0)                                  // 00003184: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003188: 4A080881
  ds_write_b16  v3, v4                                      // 0000318C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00003194: BF8C1F7B
  v_lshrrev_b32  v3, s1, v15                                // 00003198: 2C061E01
  ds_read_i16   v4, v2                                      // 0000319C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 000031A4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 000031AC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 000031B0: 4A060600
  tbuffer_load_format_x  v15, v5, s[16:19], 0 offen offset:664 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000031B4: EBA01298 80040F05
  s_waitcnt     lgkmcnt(0)                                  // 000031BC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000031C0: 4A080881
  ds_write_b16  v2, v4                                      // 000031C4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 000031CC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v16                                // 000031D0: 2C042001
  ds_read_i16   v4, v3                                      // 000031D4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 000031DC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 000031E4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 000031E8: 4A040400
  tbuffer_load_format_x  v16, v5, s[16:19], 0 offen offset:668 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000031EC: EBA0129C 80041005
  s_waitcnt     lgkmcnt(0)                                  // 000031F4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000031F8: 4A080881
  ds_write_b16  v3, v4                                      // 000031FC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00003204: BF8C1F7B
  v_lshrrev_b32  v3, s1, v17                                // 00003208: 2C062201
  ds_read_i16   v4, v2                                      // 0000320C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00003214: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000321C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00003220: 4A060600
  tbuffer_load_format_x  v17, v5, s[16:19], 0 offen offset:672 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003224: EBA012A0 80041105
  s_waitcnt     lgkmcnt(0)                                  // 0000322C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003230: 4A080881
  ds_write_b16  v2, v4                                      // 00003234: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000323C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v7                                 // 00003240: 2C040E01
  ds_read_i16   v4, v3                                      // 00003244: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000324C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00003254: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00003258: 4A040400
  tbuffer_load_format_x  v7, v5, s[16:19], 0 offen offset:676 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000325C: EBA012A4 80040705
  s_waitcnt     lgkmcnt(0)                                  // 00003264: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003268: 4A080881
  ds_write_b16  v3, v4                                      // 0000326C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00003274: BF8C1F7B
  v_lshrrev_b32  v3, s1, v6                                 // 00003278: 2C060C01
  ds_read_i16   v4, v2                                      // 0000327C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00003284: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000328C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00003290: 4A060600
  tbuffer_load_format_x  v6, v5, s[16:19], 0 offen offset:680 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003294: EBA012A8 80040605
  s_waitcnt     lgkmcnt(0)                                  // 0000329C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000032A0: 4A080881
  ds_write_b16  v2, v4                                      // 000032A4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 000032AC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v8                                 // 000032B0: 2C041001
  ds_read_i16   v4, v3                                      // 000032B4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 000032BC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 000032C4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 000032C8: 4A040400
  tbuffer_load_format_x  v8, v5, s[16:19], 0 offen offset:684 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000032CC: EBA012AC 80040805
  s_waitcnt     lgkmcnt(0)                                  // 000032D4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000032D8: 4A080881
  ds_write_b16  v3, v4                                      // 000032DC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 000032E4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v9                                 // 000032E8: 2C061201
  ds_read_i16   v4, v2                                      // 000032EC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 000032F4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 000032FC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00003300: 4A060600
  tbuffer_load_format_x  v9, v5, s[16:19], 0 offen offset:688 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003304: EBA012B0 80040905
  s_waitcnt     lgkmcnt(0)                                  // 0000330C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003310: 4A080881
  ds_write_b16  v2, v4                                      // 00003314: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000331C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v10                                // 00003320: 2C041401
  ds_read_i16   v4, v3                                      // 00003324: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000332C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00003334: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00003338: 4A040400
  tbuffer_load_format_x  v10, v5, s[16:19], 0 offen offset:692 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000333C: EBA012B4 80040A05
  s_waitcnt     lgkmcnt(0)                                  // 00003344: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003348: 4A080881
  ds_write_b16  v3, v4                                      // 0000334C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00003354: BF8C1F7B
  v_lshrrev_b32  v3, s1, v11                                // 00003358: 2C061601
  ds_read_i16   v4, v2                                      // 0000335C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00003364: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000336C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00003370: 4A060600
  tbuffer_load_format_x  v11, v5, s[16:19], 0 offen offset:696 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003374: EBA012B8 80040B05
  s_waitcnt     lgkmcnt(0)                                  // 0000337C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003380: 4A080881
  ds_write_b16  v2, v4                                      // 00003384: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000338C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v12                                // 00003390: 2C041801
  ds_read_i16   v4, v3                                      // 00003394: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000339C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 000033A4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 000033A8: 4A040400
  tbuffer_load_format_x  v12, v5, s[16:19], 0 offen offset:700 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000033AC: EBA012BC 80040C05
  s_waitcnt     lgkmcnt(0)                                  // 000033B4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000033B8: 4A080881
  ds_write_b16  v3, v4                                      // 000033BC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 000033C4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v13                                // 000033C8: 2C061A01
  ds_read_i16   v4, v2                                      // 000033CC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 000033D4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 000033DC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 000033E0: 4A060600
  tbuffer_load_format_x  v13, v5, s[16:19], 0 offen offset:704 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000033E4: EBA012C0 80040D05
  s_waitcnt     lgkmcnt(0)                                  // 000033EC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000033F0: 4A080881
  ds_write_b16  v2, v4                                      // 000033F4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 000033FC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v14                                // 00003400: 2C041C01
  ds_read_i16   v4, v3                                      // 00003404: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000340C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00003414: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00003418: 4A040400
  tbuffer_load_format_x  v14, v5, s[16:19], 0 offen offset:708 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000341C: EBA012C4 80040E05
  s_waitcnt     lgkmcnt(0)                                  // 00003424: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003428: 4A080881
  ds_write_b16  v3, v4                                      // 0000342C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00003434: BF8C1F7B
  v_lshrrev_b32  v3, s1, v15                                // 00003438: 2C061E01
  ds_read_i16   v4, v2                                      // 0000343C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00003444: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000344C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00003450: 4A060600
  tbuffer_load_format_x  v15, v5, s[16:19], 0 offen offset:712 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003454: EBA012C8 80040F05
  s_waitcnt     lgkmcnt(0)                                  // 0000345C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003460: 4A080881
  ds_write_b16  v2, v4                                      // 00003464: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000346C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v16                                // 00003470: 2C042001
  ds_read_i16   v4, v3                                      // 00003474: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000347C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00003484: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00003488: 4A040400
  tbuffer_load_format_x  v16, v5, s[16:19], 0 offen offset:716 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000348C: EBA012CC 80041005
  s_waitcnt     lgkmcnt(0)                                  // 00003494: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003498: 4A080881
  ds_write_b16  v3, v4                                      // 0000349C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 000034A4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v17                                // 000034A8: 2C062201
  ds_read_i16   v4, v2                                      // 000034AC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 000034B4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 000034BC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 000034C0: 4A060600
  tbuffer_load_format_x  v17, v5, s[16:19], 0 offen offset:720 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000034C4: EBA012D0 80041105
  s_waitcnt     lgkmcnt(0)                                  // 000034CC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000034D0: 4A080881
  ds_write_b16  v2, v4                                      // 000034D4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 000034DC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v7                                 // 000034E0: 2C040E01
  ds_read_i16   v4, v3                                      // 000034E4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 000034EC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 000034F4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 000034F8: 4A040400
  tbuffer_load_format_x  v7, v5, s[16:19], 0 offen offset:724 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000034FC: EBA012D4 80040705
  s_waitcnt     lgkmcnt(0)                                  // 00003504: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003508: 4A080881
  ds_write_b16  v3, v4                                      // 0000350C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00003514: BF8C1F7B
  v_lshrrev_b32  v3, s1, v6                                 // 00003518: 2C060C01
  ds_read_i16   v4, v2                                      // 0000351C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00003524: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000352C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00003530: 4A060600
  tbuffer_load_format_x  v6, v5, s[16:19], 0 offen offset:728 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003534: EBA012D8 80040605
  s_waitcnt     lgkmcnt(0)                                  // 0000353C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003540: 4A080881
  ds_write_b16  v2, v4                                      // 00003544: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000354C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v8                                 // 00003550: 2C041001
  ds_read_i16   v4, v3                                      // 00003554: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000355C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00003564: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00003568: 4A040400
  tbuffer_load_format_x  v8, v5, s[16:19], 0 offen offset:732 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000356C: EBA012DC 80040805
  s_waitcnt     lgkmcnt(0)                                  // 00003574: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003578: 4A080881
  ds_write_b16  v3, v4                                      // 0000357C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00003584: BF8C1F7B
  v_lshrrev_b32  v3, s1, v9                                 // 00003588: 2C061201
  ds_read_i16   v4, v2                                      // 0000358C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00003594: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000359C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 000035A0: 4A060600
  tbuffer_load_format_x  v9, v5, s[16:19], 0 offen offset:736 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000035A4: EBA012E0 80040905
  s_waitcnt     lgkmcnt(0)                                  // 000035AC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000035B0: 4A080881
  ds_write_b16  v2, v4                                      // 000035B4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 000035BC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v10                                // 000035C0: 2C041401
  ds_read_i16   v4, v3                                      // 000035C4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 000035CC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 000035D4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 000035D8: 4A040400
  tbuffer_load_format_x  v10, v5, s[16:19], 0 offen offset:740 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000035DC: EBA012E4 80040A05
  s_waitcnt     lgkmcnt(0)                                  // 000035E4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000035E8: 4A080881
  ds_write_b16  v3, v4                                      // 000035EC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 000035F4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v11                                // 000035F8: 2C061601
  ds_read_i16   v4, v2                                      // 000035FC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00003604: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000360C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00003610: 4A060600
  tbuffer_load_format_x  v11, v5, s[16:19], 0 offen offset:744 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003614: EBA012E8 80040B05
  s_waitcnt     lgkmcnt(0)                                  // 0000361C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003620: 4A080881
  ds_write_b16  v2, v4                                      // 00003624: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000362C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v12                                // 00003630: 2C041801
  ds_read_i16   v4, v3                                      // 00003634: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000363C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00003644: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00003648: 4A040400
  tbuffer_load_format_x  v12, v5, s[16:19], 0 offen offset:748 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000364C: EBA012EC 80040C05
  s_waitcnt     lgkmcnt(0)                                  // 00003654: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003658: 4A080881
  ds_write_b16  v3, v4                                      // 0000365C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00003664: BF8C1F7B
  v_lshrrev_b32  v3, s1, v13                                // 00003668: 2C061A01
  ds_read_i16   v4, v2                                      // 0000366C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00003674: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000367C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00003680: 4A060600
  tbuffer_load_format_x  v13, v5, s[16:19], 0 offen offset:752 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003684: EBA012F0 80040D05
  s_waitcnt     lgkmcnt(0)                                  // 0000368C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003690: 4A080881
  ds_write_b16  v2, v4                                      // 00003694: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000369C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v14                                // 000036A0: 2C041C01
  ds_read_i16   v4, v3                                      // 000036A4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 000036AC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 000036B4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 000036B8: 4A040400
  tbuffer_load_format_x  v14, v5, s[16:19], 0 offen offset:756 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000036BC: EBA012F4 80040E05
  s_waitcnt     lgkmcnt(0)                                  // 000036C4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000036C8: 4A080881
  ds_write_b16  v3, v4                                      // 000036CC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 000036D4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v15                                // 000036D8: 2C061E01
  ds_read_i16   v4, v2                                      // 000036DC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 000036E4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 000036EC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 000036F0: 4A060600
  tbuffer_load_format_x  v15, v5, s[16:19], 0 offen offset:760 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000036F4: EBA012F8 80040F05
  s_waitcnt     lgkmcnt(0)                                  // 000036FC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003700: 4A080881
  ds_write_b16  v2, v4                                      // 00003704: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000370C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v16                                // 00003710: 2C042001
  ds_read_i16   v4, v3                                      // 00003714: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000371C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00003724: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00003728: 4A040400
  tbuffer_load_format_x  v16, v5, s[16:19], 0 offen offset:764 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000372C: EBA012FC 80041005
  s_waitcnt     lgkmcnt(0)                                  // 00003734: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003738: 4A080881
  ds_write_b16  v3, v4                                      // 0000373C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00003744: BF8C1F7B
  v_lshrrev_b32  v3, s1, v17                                // 00003748: 2C062201
  ds_read_i16   v4, v2                                      // 0000374C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00003754: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000375C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00003760: 4A060600
  tbuffer_load_format_x  v17, v5, s[16:19], 0 offen offset:768 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003764: EBA01300 80041105
  s_waitcnt     lgkmcnt(0)                                  // 0000376C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003770: 4A080881
  ds_write_b16  v2, v4                                      // 00003774: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000377C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v7                                 // 00003780: 2C040E01
  ds_read_i16   v4, v3                                      // 00003784: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000378C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00003794: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00003798: 4A040400
  tbuffer_load_format_x  v7, v5, s[16:19], 0 offen offset:772 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000379C: EBA01304 80040705
  s_waitcnt     lgkmcnt(0)                                  // 000037A4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000037A8: 4A080881
  ds_write_b16  v3, v4                                      // 000037AC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 000037B4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v6                                 // 000037B8: 2C060C01
  ds_read_i16   v4, v2                                      // 000037BC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 000037C4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 000037CC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 000037D0: 4A060600
  tbuffer_load_format_x  v6, v5, s[16:19], 0 offen offset:776 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000037D4: EBA01308 80040605
  s_waitcnt     lgkmcnt(0)                                  // 000037DC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000037E0: 4A080881
  ds_write_b16  v2, v4                                      // 000037E4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 000037EC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v8                                 // 000037F0: 2C041001
  ds_read_i16   v4, v3                                      // 000037F4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 000037FC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00003804: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00003808: 4A040400
  tbuffer_load_format_x  v8, v5, s[16:19], 0 offen offset:780 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000380C: EBA0130C 80040805
  s_waitcnt     lgkmcnt(0)                                  // 00003814: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003818: 4A080881
  ds_write_b16  v3, v4                                      // 0000381C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00003824: BF8C1F7B
  v_lshrrev_b32  v3, s1, v9                                 // 00003828: 2C061201
  ds_read_i16   v4, v2                                      // 0000382C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00003834: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000383C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00003840: 4A060600
  tbuffer_load_format_x  v9, v5, s[16:19], 0 offen offset:784 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003844: EBA01310 80040905
  s_waitcnt     lgkmcnt(0)                                  // 0000384C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003850: 4A080881
  ds_write_b16  v2, v4                                      // 00003854: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000385C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v10                                // 00003860: 2C041401
  ds_read_i16   v4, v3                                      // 00003864: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000386C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00003874: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00003878: 4A040400
  tbuffer_load_format_x  v10, v5, s[16:19], 0 offen offset:788 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000387C: EBA01314 80040A05
  s_waitcnt     lgkmcnt(0)                                  // 00003884: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003888: 4A080881
  ds_write_b16  v3, v4                                      // 0000388C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00003894: BF8C1F7B
  v_lshrrev_b32  v3, s1, v11                                // 00003898: 2C061601
  ds_read_i16   v4, v2                                      // 0000389C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 000038A4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 000038AC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 000038B0: 4A060600
  tbuffer_load_format_x  v11, v5, s[16:19], 0 offen offset:792 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000038B4: EBA01318 80040B05
  s_waitcnt     lgkmcnt(0)                                  // 000038BC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000038C0: 4A080881
  ds_write_b16  v2, v4                                      // 000038C4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 000038CC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v12                                // 000038D0: 2C041801
  ds_read_i16   v4, v3                                      // 000038D4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 000038DC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 000038E4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 000038E8: 4A040400
  tbuffer_load_format_x  v12, v5, s[16:19], 0 offen offset:796 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000038EC: EBA0131C 80040C05
  s_waitcnt     lgkmcnt(0)                                  // 000038F4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000038F8: 4A080881
  ds_write_b16  v3, v4                                      // 000038FC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00003904: BF8C1F7B
  v_lshrrev_b32  v3, s1, v13                                // 00003908: 2C061A01
  ds_read_i16   v4, v2                                      // 0000390C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00003914: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000391C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00003920: 4A060600
  tbuffer_load_format_x  v13, v5, s[16:19], 0 offen offset:800 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003924: EBA01320 80040D05
  s_waitcnt     lgkmcnt(0)                                  // 0000392C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003930: 4A080881
  ds_write_b16  v2, v4                                      // 00003934: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000393C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v14                                // 00003940: 2C041C01
  ds_read_i16   v4, v3                                      // 00003944: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000394C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00003954: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00003958: 4A040400
  tbuffer_load_format_x  v14, v5, s[16:19], 0 offen offset:804 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000395C: EBA01324 80040E05
  s_waitcnt     lgkmcnt(0)                                  // 00003964: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003968: 4A080881
  ds_write_b16  v3, v4                                      // 0000396C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00003974: BF8C1F7B
  v_lshrrev_b32  v3, s1, v15                                // 00003978: 2C061E01
  ds_read_i16   v4, v2                                      // 0000397C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00003984: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000398C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00003990: 4A060600
  tbuffer_load_format_x  v15, v5, s[16:19], 0 offen offset:808 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003994: EBA01328 80040F05
  s_waitcnt     lgkmcnt(0)                                  // 0000399C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000039A0: 4A080881
  ds_write_b16  v2, v4                                      // 000039A4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 000039AC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v16                                // 000039B0: 2C042001
  ds_read_i16   v4, v3                                      // 000039B4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 000039BC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 000039C4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 000039C8: 4A040400
  tbuffer_load_format_x  v16, v5, s[16:19], 0 offen offset:812 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000039CC: EBA0132C 80041005
  s_waitcnt     lgkmcnt(0)                                  // 000039D4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000039D8: 4A080881
  ds_write_b16  v3, v4                                      // 000039DC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 000039E4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v17                                // 000039E8: 2C062201
  ds_read_i16   v4, v2                                      // 000039EC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 000039F4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 000039FC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00003A00: 4A060600
  tbuffer_load_format_x  v17, v5, s[16:19], 0 offen offset:816 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003A04: EBA01330 80041105
  s_waitcnt     lgkmcnt(0)                                  // 00003A0C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003A10: 4A080881
  ds_write_b16  v2, v4                                      // 00003A14: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00003A1C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v7                                 // 00003A20: 2C040E01
  ds_read_i16   v4, v3                                      // 00003A24: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00003A2C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00003A34: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00003A38: 4A040400
  tbuffer_load_format_x  v7, v5, s[16:19], 0 offen offset:820 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003A3C: EBA01334 80040705
  s_waitcnt     lgkmcnt(0)                                  // 00003A44: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003A48: 4A080881
  ds_write_b16  v3, v4                                      // 00003A4C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00003A54: BF8C1F7B
  v_lshrrev_b32  v3, s1, v6                                 // 00003A58: 2C060C01
  ds_read_i16   v4, v2                                      // 00003A5C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00003A64: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00003A6C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00003A70: 4A060600
  tbuffer_load_format_x  v6, v5, s[16:19], 0 offen offset:824 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003A74: EBA01338 80040605
  s_waitcnt     lgkmcnt(0)                                  // 00003A7C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003A80: 4A080881
  ds_write_b16  v2, v4                                      // 00003A84: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00003A8C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v8                                 // 00003A90: 2C041001
  ds_read_i16   v4, v3                                      // 00003A94: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00003A9C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00003AA4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00003AA8: 4A040400
  tbuffer_load_format_x  v8, v5, s[16:19], 0 offen offset:828 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003AAC: EBA0133C 80040805
  s_waitcnt     lgkmcnt(0)                                  // 00003AB4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003AB8: 4A080881
  ds_write_b16  v3, v4                                      // 00003ABC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00003AC4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v9                                 // 00003AC8: 2C061201
  ds_read_i16   v4, v2                                      // 00003ACC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00003AD4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00003ADC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00003AE0: 4A060600
  tbuffer_load_format_x  v9, v5, s[16:19], 0 offen offset:832 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003AE4: EBA01340 80040905
  s_waitcnt     lgkmcnt(0)                                  // 00003AEC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003AF0: 4A080881
  ds_write_b16  v2, v4                                      // 00003AF4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00003AFC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v10                                // 00003B00: 2C041401
  ds_read_i16   v4, v3                                      // 00003B04: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00003B0C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00003B14: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00003B18: 4A040400
  tbuffer_load_format_x  v10, v5, s[16:19], 0 offen offset:836 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003B1C: EBA01344 80040A05
  s_waitcnt     lgkmcnt(0)                                  // 00003B24: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003B28: 4A080881
  ds_write_b16  v3, v4                                      // 00003B2C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00003B34: BF8C1F7B
  v_lshrrev_b32  v3, s1, v11                                // 00003B38: 2C061601
  ds_read_i16   v4, v2                                      // 00003B3C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00003B44: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00003B4C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00003B50: 4A060600
  tbuffer_load_format_x  v11, v5, s[16:19], 0 offen offset:840 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003B54: EBA01348 80040B05
  s_waitcnt     lgkmcnt(0)                                  // 00003B5C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003B60: 4A080881
  ds_write_b16  v2, v4                                      // 00003B64: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00003B6C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v12                                // 00003B70: 2C041801
  ds_read_i16   v4, v3                                      // 00003B74: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00003B7C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00003B84: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00003B88: 4A040400
  tbuffer_load_format_x  v12, v5, s[16:19], 0 offen offset:844 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003B8C: EBA0134C 80040C05
  s_waitcnt     lgkmcnt(0)                                  // 00003B94: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003B98: 4A080881
  ds_write_b16  v3, v4                                      // 00003B9C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00003BA4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v13                                // 00003BA8: 2C061A01
  ds_read_i16   v4, v2                                      // 00003BAC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00003BB4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00003BBC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00003BC0: 4A060600
  tbuffer_load_format_x  v13, v5, s[16:19], 0 offen offset:848 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003BC4: EBA01350 80040D05
  s_waitcnt     lgkmcnt(0)                                  // 00003BCC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003BD0: 4A080881
  ds_write_b16  v2, v4                                      // 00003BD4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00003BDC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v14                                // 00003BE0: 2C041C01
  ds_read_i16   v4, v3                                      // 00003BE4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00003BEC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00003BF4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00003BF8: 4A040400
  tbuffer_load_format_x  v14, v5, s[16:19], 0 offen offset:852 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003BFC: EBA01354 80040E05
  s_waitcnt     lgkmcnt(0)                                  // 00003C04: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003C08: 4A080881
  ds_write_b16  v3, v4                                      // 00003C0C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00003C14: BF8C1F7B
  v_lshrrev_b32  v3, s1, v15                                // 00003C18: 2C061E01
  ds_read_i16   v4, v2                                      // 00003C1C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00003C24: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00003C2C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00003C30: 4A060600
  tbuffer_load_format_x  v15, v5, s[16:19], 0 offen offset:856 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003C34: EBA01358 80040F05
  s_waitcnt     lgkmcnt(0)                                  // 00003C3C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003C40: 4A080881
  ds_write_b16  v2, v4                                      // 00003C44: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00003C4C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v16                                // 00003C50: 2C042001
  ds_read_i16   v4, v3                                      // 00003C54: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00003C5C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00003C64: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00003C68: 4A040400
  tbuffer_load_format_x  v16, v5, s[16:19], 0 offen offset:860 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003C6C: EBA0135C 80041005
  s_waitcnt     lgkmcnt(0)                                  // 00003C74: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003C78: 4A080881
  ds_write_b16  v3, v4                                      // 00003C7C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00003C84: BF8C1F7B
  v_lshrrev_b32  v3, s1, v17                                // 00003C88: 2C062201
  ds_read_i16   v4, v2                                      // 00003C8C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00003C94: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00003C9C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00003CA0: 4A060600
  tbuffer_load_format_x  v17, v5, s[16:19], 0 offen offset:864 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003CA4: EBA01360 80041105
  s_waitcnt     lgkmcnt(0)                                  // 00003CAC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003CB0: 4A080881
  ds_write_b16  v2, v4                                      // 00003CB4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00003CBC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v7                                 // 00003CC0: 2C040E01
  ds_read_i16   v4, v3                                      // 00003CC4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00003CCC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00003CD4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00003CD8: 4A040400
  tbuffer_load_format_x  v7, v5, s[16:19], 0 offen offset:868 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003CDC: EBA01364 80040705
  s_waitcnt     lgkmcnt(0)                                  // 00003CE4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003CE8: 4A080881
  ds_write_b16  v3, v4                                      // 00003CEC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00003CF4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v6                                 // 00003CF8: 2C060C01
  ds_read_i16   v4, v2                                      // 00003CFC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00003D04: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00003D0C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00003D10: 4A060600
  tbuffer_load_format_x  v6, v5, s[16:19], 0 offen offset:872 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003D14: EBA01368 80040605
  s_waitcnt     lgkmcnt(0)                                  // 00003D1C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003D20: 4A080881
  ds_write_b16  v2, v4                                      // 00003D24: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00003D2C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v8                                 // 00003D30: 2C041001
  ds_read_i16   v4, v3                                      // 00003D34: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00003D3C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00003D44: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00003D48: 4A040400
  tbuffer_load_format_x  v8, v5, s[16:19], 0 offen offset:876 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003D4C: EBA0136C 80040805
  s_waitcnt     lgkmcnt(0)                                  // 00003D54: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003D58: 4A080881
  ds_write_b16  v3, v4                                      // 00003D5C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00003D64: BF8C1F7B
  v_lshrrev_b32  v3, s1, v9                                 // 00003D68: 2C061201
  ds_read_i16   v4, v2                                      // 00003D6C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00003D74: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00003D7C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00003D80: 4A060600
  tbuffer_load_format_x  v9, v5, s[16:19], 0 offen offset:880 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003D84: EBA01370 80040905
  s_waitcnt     lgkmcnt(0)                                  // 00003D8C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003D90: 4A080881
  ds_write_b16  v2, v4                                      // 00003D94: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00003D9C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v10                                // 00003DA0: 2C041401
  ds_read_i16   v4, v3                                      // 00003DA4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00003DAC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00003DB4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00003DB8: 4A040400
  tbuffer_load_format_x  v10, v5, s[16:19], 0 offen offset:884 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003DBC: EBA01374 80040A05
  s_waitcnt     lgkmcnt(0)                                  // 00003DC4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003DC8: 4A080881
  ds_write_b16  v3, v4                                      // 00003DCC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00003DD4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v11                                // 00003DD8: 2C061601
  ds_read_i16   v4, v2                                      // 00003DDC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00003DE4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00003DEC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00003DF0: 4A060600
  tbuffer_load_format_x  v11, v5, s[16:19], 0 offen offset:888 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003DF4: EBA01378 80040B05
  s_waitcnt     lgkmcnt(0)                                  // 00003DFC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003E00: 4A080881
  ds_write_b16  v2, v4                                      // 00003E04: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00003E0C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v12                                // 00003E10: 2C041801
  ds_read_i16   v4, v3                                      // 00003E14: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00003E1C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00003E24: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00003E28: 4A040400
  tbuffer_load_format_x  v12, v5, s[16:19], 0 offen offset:892 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003E2C: EBA0137C 80040C05
  s_waitcnt     lgkmcnt(0)                                  // 00003E34: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003E38: 4A080881
  ds_write_b16  v3, v4                                      // 00003E3C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00003E44: BF8C1F7B
  v_lshrrev_b32  v3, s1, v13                                // 00003E48: 2C061A01
  ds_read_i16   v4, v2                                      // 00003E4C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00003E54: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00003E5C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00003E60: 4A060600
  tbuffer_load_format_x  v13, v5, s[16:19], 0 offen offset:896 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003E64: EBA01380 80040D05
  s_waitcnt     lgkmcnt(0)                                  // 00003E6C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003E70: 4A080881
  ds_write_b16  v2, v4                                      // 00003E74: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00003E7C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v14                                // 00003E80: 2C041C01
  ds_read_i16   v4, v3                                      // 00003E84: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00003E8C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00003E94: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00003E98: 4A040400
  tbuffer_load_format_x  v14, v5, s[16:19], 0 offen offset:900 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003E9C: EBA01384 80040E05
  s_waitcnt     lgkmcnt(0)                                  // 00003EA4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003EA8: 4A080881
  ds_write_b16  v3, v4                                      // 00003EAC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00003EB4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v15                                // 00003EB8: 2C061E01
  ds_read_i16   v4, v2                                      // 00003EBC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00003EC4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00003ECC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00003ED0: 4A060600
  tbuffer_load_format_x  v15, v5, s[16:19], 0 offen offset:904 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003ED4: EBA01388 80040F05
  s_waitcnt     lgkmcnt(0)                                  // 00003EDC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003EE0: 4A080881
  ds_write_b16  v2, v4                                      // 00003EE4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00003EEC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v16                                // 00003EF0: 2C042001
  ds_read_i16   v4, v3                                      // 00003EF4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00003EFC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00003F04: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00003F08: 4A040400
  tbuffer_load_format_x  v16, v5, s[16:19], 0 offen offset:908 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003F0C: EBA0138C 80041005
  s_waitcnt     lgkmcnt(0)                                  // 00003F14: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003F18: 4A080881
  ds_write_b16  v3, v4                                      // 00003F1C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00003F24: BF8C1F7B
  v_lshrrev_b32  v3, s1, v17                                // 00003F28: 2C062201
  ds_read_i16   v4, v2                                      // 00003F2C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00003F34: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00003F3C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00003F40: 4A060600
  tbuffer_load_format_x  v17, v5, s[16:19], 0 offen offset:912 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003F44: EBA01390 80041105
  s_waitcnt     lgkmcnt(0)                                  // 00003F4C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003F50: 4A080881
  ds_write_b16  v2, v4                                      // 00003F54: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00003F5C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v7                                 // 00003F60: 2C040E01
  ds_read_i16   v4, v3                                      // 00003F64: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00003F6C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00003F74: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00003F78: 4A040400
  tbuffer_load_format_x  v7, v5, s[16:19], 0 offen offset:916 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003F7C: EBA01394 80040705
  s_waitcnt     lgkmcnt(0)                                  // 00003F84: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003F88: 4A080881
  ds_write_b16  v3, v4                                      // 00003F8C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00003F94: BF8C1F7B
  v_lshrrev_b32  v3, s1, v6                                 // 00003F98: 2C060C01
  ds_read_i16   v4, v2                                      // 00003F9C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00003FA4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00003FAC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00003FB0: 4A060600
  tbuffer_load_format_x  v6, v5, s[16:19], 0 offen offset:920 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003FB4: EBA01398 80040605
  s_waitcnt     lgkmcnt(0)                                  // 00003FBC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003FC0: 4A080881
  ds_write_b16  v2, v4                                      // 00003FC4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 00003FCC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v8                                 // 00003FD0: 2C041001
  ds_read_i16   v4, v3                                      // 00003FD4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00003FDC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00003FE4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00003FE8: 4A040400
  tbuffer_load_format_x  v8, v5, s[16:19], 0 offen offset:924 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003FEC: EBA0139C 80040805
  s_waitcnt     lgkmcnt(0)                                  // 00003FF4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00003FF8: 4A080881
  ds_write_b16  v3, v4                                      // 00003FFC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00004004: BF8C1F7B
  v_lshrrev_b32  v3, s1, v9                                 // 00004008: 2C061201
  ds_read_i16   v4, v2                                      // 0000400C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00004014: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000401C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00004020: 4A060600
  tbuffer_load_format_x  v9, v5, s[16:19], 0 offen offset:928 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004024: EBA013A0 80040905
  s_waitcnt     lgkmcnt(0)                                  // 0000402C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00004030: 4A080881
  ds_write_b16  v2, v4                                      // 00004034: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000403C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v10                                // 00004040: 2C041401
  ds_read_i16   v4, v3                                      // 00004044: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000404C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00004054: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00004058: 4A040400
  tbuffer_load_format_x  v10, v5, s[16:19], 0 offen offset:932 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000405C: EBA013A4 80040A05
  s_waitcnt     lgkmcnt(0)                                  // 00004064: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00004068: 4A080881
  ds_write_b16  v3, v4                                      // 0000406C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00004074: BF8C1F7B
  v_lshrrev_b32  v3, s1, v11                                // 00004078: 2C061601
  ds_read_i16   v4, v2                                      // 0000407C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00004084: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000408C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00004090: 4A060600
  tbuffer_load_format_x  v11, v5, s[16:19], 0 offen offset:936 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004094: EBA013A8 80040B05
  s_waitcnt     lgkmcnt(0)                                  // 0000409C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000040A0: 4A080881
  ds_write_b16  v2, v4                                      // 000040A4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 000040AC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v12                                // 000040B0: 2C041801
  ds_read_i16   v4, v3                                      // 000040B4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 000040BC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 000040C4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 000040C8: 4A040400
  tbuffer_load_format_x  v12, v5, s[16:19], 0 offen offset:940 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000040CC: EBA013AC 80040C05
  s_waitcnt     lgkmcnt(0)                                  // 000040D4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000040D8: 4A080881
  ds_write_b16  v3, v4                                      // 000040DC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 000040E4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v13                                // 000040E8: 2C061A01
  ds_read_i16   v4, v2                                      // 000040EC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 000040F4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 000040FC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00004100: 4A060600
  tbuffer_load_format_x  v13, v5, s[16:19], 0 offen offset:944 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004104: EBA013B0 80040D05
  s_waitcnt     lgkmcnt(0)                                  // 0000410C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00004110: 4A080881
  ds_write_b16  v2, v4                                      // 00004114: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000411C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v14                                // 00004120: 2C041C01
  ds_read_i16   v4, v3                                      // 00004124: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000412C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00004134: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00004138: 4A040400
  tbuffer_load_format_x  v14, v5, s[16:19], 0 offen offset:948 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000413C: EBA013B4 80040E05
  s_waitcnt     lgkmcnt(0)                                  // 00004144: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00004148: 4A080881
  ds_write_b16  v3, v4                                      // 0000414C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00004154: BF8C1F7B
  v_lshrrev_b32  v3, s1, v15                                // 00004158: 2C061E01
  ds_read_i16   v4, v2                                      // 0000415C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00004164: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000416C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00004170: 4A060600
  tbuffer_load_format_x  v15, v5, s[16:19], 0 offen offset:952 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004174: EBA013B8 80040F05
  s_waitcnt     lgkmcnt(0)                                  // 0000417C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00004180: 4A080881
  ds_write_b16  v2, v4                                      // 00004184: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000418C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v16                                // 00004190: 2C042001
  ds_read_i16   v4, v3                                      // 00004194: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000419C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 000041A4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 000041A8: 4A040400
  tbuffer_load_format_x  v16, v5, s[16:19], 0 offen offset:956 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000041AC: EBA013BC 80041005
  s_waitcnt     lgkmcnt(0)                                  // 000041B4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000041B8: 4A080881
  ds_write_b16  v3, v4                                      // 000041BC: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 000041C4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v17                                // 000041C8: 2C062201
  ds_read_i16   v4, v2                                      // 000041CC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 000041D4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 000041DC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 000041E0: 4A060600
  tbuffer_load_format_x  v17, v5, s[16:19], 0 offen offset:960 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000041E4: EBA013C0 80041105
  s_waitcnt     lgkmcnt(0)                                  // 000041EC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000041F0: 4A080881
  ds_write_b16  v2, v4                                      // 000041F4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 000041FC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v7                                 // 00004200: 2C040E01
  ds_read_i16   v4, v3                                      // 00004204: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000420C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00004214: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00004218: 4A040400
  tbuffer_load_format_x  v7, v5, s[16:19], 0 offen offset:964 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000421C: EBA013C4 80040705
  s_waitcnt     lgkmcnt(0)                                  // 00004224: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00004228: 4A080881
  ds_write_b16  v3, v4                                      // 0000422C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00004234: BF8C1F7B
  v_lshrrev_b32  v3, s1, v6                                 // 00004238: 2C060C01
  ds_read_i16   v4, v2                                      // 0000423C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00004244: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000424C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00004250: 4A060600
  tbuffer_load_format_x  v6, v5, s[16:19], 0 offen offset:968 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004254: EBA013C8 80040605
  s_waitcnt     lgkmcnt(0)                                  // 0000425C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00004260: 4A080881
  ds_write_b16  v2, v4                                      // 00004264: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000426C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v8                                 // 00004270: 2C041001
  ds_read_i16   v4, v3                                      // 00004274: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000427C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00004284: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00004288: 4A040400
  tbuffer_load_format_x  v8, v5, s[16:19], 0 offen offset:972 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000428C: EBA013CC 80040805
  s_waitcnt     lgkmcnt(0)                                  // 00004294: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00004298: 4A080881
  ds_write_b16  v3, v4                                      // 0000429C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 000042A4: BF8C1F7B
  v_lshrrev_b32  v3, s1, v9                                 // 000042A8: 2C061201
  ds_read_i16   v4, v2                                      // 000042AC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 000042B4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 000042BC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 000042C0: 4A060600
  tbuffer_load_format_x  v9, v5, s[16:19], 0 offen offset:976 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000042C4: EBA013D0 80040905
  s_waitcnt     lgkmcnt(0)                                  // 000042CC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000042D0: 4A080881
  ds_write_b16  v2, v4                                      // 000042D4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 000042DC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v10                                // 000042E0: 2C041401
  ds_read_i16   v4, v3                                      // 000042E4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 000042EC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 000042F4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 000042F8: 4A040400
  tbuffer_load_format_x  v10, v5, s[16:19], 0 offen offset:980 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000042FC: EBA013D4 80040A05
  s_waitcnt     lgkmcnt(0)                                  // 00004304: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00004308: 4A080881
  ds_write_b16  v3, v4                                      // 0000430C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00004314: BF8C1F7B
  v_lshrrev_b32  v3, s1, v11                                // 00004318: 2C061601
  ds_read_i16   v4, v2                                      // 0000431C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00004324: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000432C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00004330: 4A060600
  tbuffer_load_format_x  v11, v5, s[16:19], 0 offen offset:984 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004334: EBA013D8 80040B05
  s_waitcnt     lgkmcnt(0)                                  // 0000433C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00004340: 4A080881
  ds_write_b16  v2, v4                                      // 00004344: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 0000434C: BF8C1F7B
  v_lshrrev_b32  v2, s1, v12                                // 00004350: 2C041801
  ds_read_i16   v4, v3                                      // 00004354: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 0000435C: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00004364: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00004368: 4A040400
  tbuffer_load_format_x  v12, v5, s[16:19], 0 offen offset:988 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000436C: EBA013DC 80040C05
  s_waitcnt     lgkmcnt(0)                                  // 00004374: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00004378: 4A080881
  ds_write_b16  v3, v4                                      // 0000437C: D87C0000 00000403
  s_waitcnt     vmcnt(11)                                   // 00004384: BF8C1F7B
  v_lshrrev_b32  v3, s1, v13                                // 00004388: 2C061A01
  ds_read_i16   v4, v2                                      // 0000438C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00004394: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000439C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 000043A0: 4A060600
  tbuffer_load_format_x  v13, v5, s[16:19], 0 offen offset:992 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000043A4: EBA013E0 80040D05
  s_waitcnt     lgkmcnt(0)                                  // 000043AC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000043B0: 4A080881
  ds_write_b16  v2, v4                                      // 000043B4: D87C0000 00000402
  s_waitcnt     vmcnt(11)                                   // 000043BC: BF8C1F7B
  v_lshrrev_b32  v2, s1, v14                                // 000043C0: 2C041C01
  ds_read_i16   v4, v3                                      // 000043C4: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 000043CC: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 000043D4: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 000043D8: 4A040400
  tbuffer_load_format_x  v14, v5, s[16:19], 0 offen offset:996 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000043DC: EBA013E4 80040E05
  s_waitcnt     lgkmcnt(0)                                  // 000043E4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000043E8: 4A080881
  s_waitcnt     vmcnt(0)                                    // 000043EC: BF8C1F70
  ds_write_b16  v3, v4                                      // 000043F0: D87C0000 00000403
  v_lshrrev_b32  v3, s1, v15                                // 000043F8: 2C061E01
  ds_read_i16   v4, v2                                      // 000043FC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00004404: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000440C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00004410: 4A060600
  tbuffer_load_format_x  v15, v5, s[16:19], 0 offen offset:1000 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004414: EBA013E8 80040F05
  s_waitcnt     lgkmcnt(0)                                  // 0000441C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00004420: 4A080881
  ds_write_b16  v2, v4                                      // 00004424: D87C0000 00000402
  v_lshrrev_b32  v2, s1, v16                                // 0000442C: 2C042001
  ds_read_i16   v4, v3                                      // 00004430: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00004438: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00004440: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00004444: 4A040400
  tbuffer_load_format_x  v16, v5, s[16:19], 0 offen offset:1004 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004448: EBA013EC 80041005
  s_waitcnt     lgkmcnt(0)                                  // 00004450: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00004454: 4A080881
  ds_write_b16  v3, v4                                      // 00004458: D87C0000 00000403
  v_lshrrev_b32  v3, s1, v17                                // 00004460: 2C062201
  ds_read_i16   v4, v2                                      // 00004464: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 0000446C: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00004474: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00004478: 4A060600
  tbuffer_load_format_x  v17, v5, s[16:19], 0 offen offset:1008 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000447C: EBA013F0 80041105
  s_waitcnt     lgkmcnt(0)                                  // 00004484: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00004488: 4A080881
  ds_write_b16  v2, v4                                      // 0000448C: D87C0000 00000402
  v_lshrrev_b32  v2, s1, v7                                 // 00004494: 2C040E01
  ds_read_i16   v4, v3                                      // 00004498: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 000044A0: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 000044A8: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 000044AC: 4A040400
  tbuffer_load_format_x  v7, v5, s[16:19], 0 offen offset:1012 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000044B0: EBA013F4 80040705
  s_waitcnt     lgkmcnt(0)                                  // 000044B8: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000044BC: 4A080881
  ds_write_b16  v3, v4                                      // 000044C0: D87C0000 00000403
  v_lshrrev_b32  v3, s1, v6                                 // 000044C8: 2C060C01
  ds_read_i16   v4, v2                                      // 000044CC: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 000044D4: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 000044DC: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 000044E0: 4A060600
  tbuffer_load_format_x  v6, v5, s[16:19], 0 offen offset:1016 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000044E4: EBA013F8 80040605
  s_waitcnt     lgkmcnt(0)                                  // 000044EC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000044F0: 4A080881
  ds_write_b16  v2, v4                                      // 000044F4: D87C0000 00000402
  v_lshrrev_b32  v2, s1, v8                                 // 000044FC: 2C041001
  ds_read_i16   v4, v3                                      // 00004500: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00004508: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00004510: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00004514: 4A040400
  tbuffer_load_format_x  v5, v5, s[16:19], 0 offen offset:1020 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004518: EBA013FC 80040505
  s_waitcnt     lgkmcnt(0)                                  // 00004520: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00004524: 4A080881
  ds_write_b16  v3, v4                                      // 00004528: D87C0000 00000403
  v_lshrrev_b32  v3, s1, v9                                 // 00004530: 2C061201
  ds_read_i16   v4, v2                                      // 00004534: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 0000453C: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00004544: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00004548: 4A060600
  s_waitcnt     lgkmcnt(0)                                  // 0000454C: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00004550: 4A080881
  ds_write_b16  v2, v4                                      // 00004554: D87C0000 00000402
  v_lshrrev_b32  v2, s1, v10                                // 0000455C: 2C041401
  ds_read_i16   v4, v3                                      // 00004560: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00004568: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00004570: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00004574: 4A040400
  s_waitcnt     lgkmcnt(0)                                  // 00004578: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 0000457C: 4A080881
  ds_write_b16  v3, v4                                      // 00004580: D87C0000 00000403
  v_lshrrev_b32  v3, s1, v11                                // 00004588: 2C061601
  ds_read_i16   v4, v2                                      // 0000458C: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00004594: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 0000459C: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 000045A0: 4A060600
  s_waitcnt     lgkmcnt(0)                                  // 000045A4: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000045A8: 4A080881
  ds_write_b16  v2, v4                                      // 000045AC: D87C0000 00000402
  v_lshrrev_b32  v2, s1, v12                                // 000045B4: 2C041801
  ds_read_i16   v4, v3                                      // 000045B8: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 000045C0: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 000045C8: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 000045CC: 4A040400
  s_waitcnt     lgkmcnt(0)                                  // 000045D0: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000045D4: 4A080881
  ds_write_b16  v3, v4                                      // 000045D8: D87C0000 00000403
  v_lshrrev_b32  v3, s1, v13                                // 000045E0: 2C061A01
  ds_read_i16   v4, v2                                      // 000045E4: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 000045EC: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 000045F4: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 000045F8: 4A060600
  s_waitcnt     lgkmcnt(0)                                  // 000045FC: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 00004600: 4A080881
  ds_write_b16  v2, v4                                      // 00004604: D87C0000 00000402
  v_lshrrev_b32  v2, s1, v14                                // 0000460C: 2C041C01
  ds_read_i16   v4, v3                                      // 00004610: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00004618: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00004620: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00004624: 4A040400
  s_waitcnt     lgkmcnt(0)                                  // 00004628: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 0000462C: 4A080881
  ds_write_b16  v3, v4                                      // 00004630: D87C0000 00000403
  s_waitcnt     vmcnt(5)                                    // 00004638: BF8C1F75
  v_lshrrev_b32  v3, s1, v15                                // 0000463C: 2C061E01
  ds_read_i16   v4, v2                                      // 00004640: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00004648: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00004650: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00004654: 4A060600
  s_waitcnt     lgkmcnt(0)                                  // 00004658: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 0000465C: 4A080881
  ds_write_b16  v2, v4                                      // 00004660: D87C0000 00000402
  s_waitcnt     vmcnt(4)                                    // 00004668: BF8C1F74
  v_lshrrev_b32  v2, s1, v16                                // 0000466C: 2C042001
  ds_read_i16   v4, v3                                      // 00004670: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00004678: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00004680: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00004684: 4A040400
  s_waitcnt     lgkmcnt(0)                                  // 00004688: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 0000468C: 4A080881
  ds_write_b16  v3, v4                                      // 00004690: D87C0000 00000403
  s_waitcnt     vmcnt(3)                                    // 00004698: BF8C1F73
  v_lshrrev_b32  v3, s1, v17                                // 0000469C: 2C062201
  ds_read_i16   v4, v2                                      // 000046A0: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 000046A8: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 000046B0: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 000046B4: 4A060600
  s_waitcnt     lgkmcnt(0)                                  // 000046B8: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000046BC: 4A080881
  ds_write_b16  v2, v4                                      // 000046C0: D87C0000 00000402
  s_waitcnt     vmcnt(2)                                    // 000046C8: BF8C1F72
  v_lshrrev_b32  v2, s1, v7                                 // 000046CC: 2C040E01
  ds_read_i16   v4, v3                                      // 000046D0: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 000046D8: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 000046E0: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 000046E4: 4A040400
  s_waitcnt     lgkmcnt(0)                                  // 000046E8: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 000046EC: 4A080881
  ds_write_b16  v3, v4                                      // 000046F0: D87C0000 00000403
  s_waitcnt     vmcnt(1)                                    // 000046F8: BF8C1F71
  v_lshrrev_b32  v3, s1, v6                                 // 000046FC: 2C060C01
  ds_read_i16   v4, v2                                      // 00004700: D8EC0000 04000002
  v_bfi_b32     v3, s13, v0, v3                             // 00004708: D2940003 040E000D
  v_lshlrev_b32  v3, 1, v3                                  // 00004710: 34060681
  v_add_i32     v3, vcc, s0, v3                             // 00004714: 4A060600
  s_waitcnt     lgkmcnt(0)                                  // 00004718: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 0000471C: 4A080881
  ds_write_b16  v2, v4                                      // 00004720: D87C0000 00000402
  s_waitcnt     vmcnt(0)                                    // 00004728: BF8C1F70
  v_lshrrev_b32  v2, s1, v5                                 // 0000472C: 2C040A01
  ds_read_i16   v4, v3                                      // 00004730: D8EC0000 04000003
  v_bfi_b32     v2, s13, v0, v2                             // 00004738: D2940002 040A000D
  v_lshlrev_b32  v2, 1, v2                                  // 00004740: 34040481
  v_add_i32     v2, vcc, s0, v2                             // 00004744: 4A040400
  s_waitcnt     lgkmcnt(0)                                  // 00004748: BF8C007F
  v_add_i32     v4, vcc, 1, v4                              // 0000474C: 4A080881
  ds_write_b16  v3, v4                                      // 00004750: D87C0000 00000403
  ds_read_i16   v3, v2                                      // 00004758: D8EC0000 03000002
  v_or_b32      v1, 8, v1                                   // 00004760: 38020288
  v_add_i32     v1, vcc, s0, v1                             // 00004764: 4A020200
  s_buffer_load_dword  s0, s[4:7], 0x1c                     // 00004768: C200051C
  v_add_i32     v4, vcc, -8, v1                             // 0000476C: 4A0802C8
  v_add_i32     v5, vcc, -6, v1                             // 00004770: 4A0A02C6
  s_waitcnt     lgkmcnt(0)                                  // 00004774: BF8C007F
  v_add_i32     v3, vcc, 1, v3                              // 00004778: 4A060681
  v_add_i32     v6, vcc, -4, v1                             // 0000477C: 4A0C02C4
  ds_write_b16  v2, v3                                      // 00004780: D87C0000 00000302
  v_add_i32     v2, vcc, -2, v1                             // 00004788: 4A0402C2
  s_waitcnt     lgkmcnt(0)                                  // 0000478C: BF8C007F
  s_barrier                                                 // 00004790: BF8A0000
  s_add_i32     s0, s12, s0                                 // 00004794: 8100000C
  s_buffer_load_dword  s1, s[8:11], 0x04                    // 00004798: C2008904
  ds_read_u16   v3, v4                                      // 0000479C: D8F00000 03000004
  v_add_i32     v4, vcc, 2, v1                              // 000047A4: 4A080282
  s_mul_i32     s0, s0, s14                                 // 000047A8: 93000E00
  s_load_dwordx4  s[4:7], s[2:3], 0x50                      // 000047AC: C0820350
  ds_read_u16   v5, v5                                      // 000047B0: D8F00000 05000005
  v_add_i32     v7, vcc, 4, v1                              // 000047B8: 4A0E0284
  s_lshl_b32    s0, s0, 8                                   // 000047BC: 8F008800
  ds_read_u16   v6, v6                                      // 000047C0: D8F00000 06000006
  v_add_i32     v8, vcc, 6, v1                              // 000047C8: 4A100286
  v_add_i32     v0, vcc, s0, v0                             // 000047CC: 4A000000
  ds_read_u16   v2, v2                                      // 000047D0: D8F00000 02000002
  v_add_i32     v9, vcc, 8, v1                              // 000047D8: 4A120288
  v_lshlrev_b32  v0, 2, v0                                  // 000047DC: 34000082
  ds_read_u16   v10, v1                                     // 000047E0: D8F00000 0A000001
  v_add_i32     v11, vcc, 10, v1                            // 000047E8: 4A16028A
  s_waitcnt     lgkmcnt(0)                                  // 000047EC: BF8C007F
  v_add_i32     v0, vcc, s1, v0                             // 000047F0: 4A000001
  v_and_b32     v3, 0x0000ffff, v3                          // 000047F4: 360606FF 0000FFFF
  ds_read_u16   v4, v4                                      // 000047FC: D8F00000 04000004
  v_add_i32     v12, vcc, 12, v1                            // 00004804: 4A18028C
  tbuffer_store_format_x  v3, v0, s[4:7], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004808: EBA41000 80010300
  s_waitcnt     expcnt(0)                                   // 00004810: BF8C1F0F
  v_and_b32     v3, 0x0000ffff, v5                          // 00004814: 36060AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 0000481C: D8F00000 05000007
  v_add_i32     v7, vcc, 14, v1                             // 00004824: 4A0E028E
  tbuffer_store_format_x  v3, v0, s[4:7], 0 offen offset:4 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004828: EBA41004 80010300
  s_waitcnt     expcnt(0)                                   // 00004830: BF8C1F0F
  v_and_b32     v3, 0x0000ffff, v6                          // 00004834: 36060CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 0000483C: D8F00000 06000008
  v_add_i32     v8, vcc, 16, v1                             // 00004844: 4A100290
  tbuffer_store_format_x  v3, v0, s[4:7], 0 offen offset:8 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004848: EBA41008 80010300
  v_and_b32     v2, 0x0000ffff, v2                          // 00004850: 360404FF 0000FFFF
  s_waitcnt     expcnt(0)                                   // 00004858: BF8C1F0F
  ds_read_u16   v3, v9                                      // 0000485C: D8F00000 03000009
  v_add_i32     v9, vcc, 18, v1                             // 00004864: 4A120292
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:12 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004868: EBA4100C 80010200
  s_waitcnt     expcnt(0)                                   // 00004870: BF8C1F0F
  v_and_b32     v2, 0x0000ffff, v10                         // 00004874: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 0000487C: D8F00000 0A00000B
  v_add_i32     v11, vcc, 20, v1                            // 00004884: 4A160294
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:16 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004888: EBA41010 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004890: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 00004894: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 0000489C: D8F00000 0400000C
  v_add_i32     v12, vcc, 22, v1                            // 000048A4: 4A180296
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:20 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000048A8: EBA41014 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000048B0: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 000048B4: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 000048BC: D8F00000 05000007
  v_add_i32     v7, vcc, 24, v1                             // 000048C4: 4A0E0298
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:24 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000048C8: EBA41018 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000048D0: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 000048D4: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 000048DC: D8F00000 06000008
  v_add_i32     v8, vcc, 26, v1                             // 000048E4: 4A10029A
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:28 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000048E8: EBA4101C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000048F0: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 000048F4: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 000048FC: D8F00000 03000009
  v_add_i32     v9, vcc, 28, v1                             // 00004904: 4A12029C
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:32 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004908: EBA41020 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004910: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 00004914: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 0000491C: D8F00000 0A00000B
  v_add_i32     v11, vcc, 30, v1                            // 00004924: 4A16029E
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:36 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004928: EBA41024 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004930: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 00004934: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 0000493C: D8F00000 0400000C
  v_add_i32     v12, vcc, 32, v1                            // 00004944: 4A1802A0
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:40 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004948: EBA41028 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004950: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 00004954: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 0000495C: D8F00000 05000007
  v_add_i32     v7, vcc, 34, v1                             // 00004964: 4A0E02A2
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:44 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004968: EBA4102C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004970: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 00004974: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 0000497C: D8F00000 06000008
  v_add_i32     v8, vcc, 36, v1                             // 00004984: 4A1002A4
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:48 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004988: EBA41030 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004990: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 00004994: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 0000499C: D8F00000 03000009
  v_add_i32     v9, vcc, 38, v1                             // 000049A4: 4A1202A6
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:52 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000049A8: EBA41034 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000049B0: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 000049B4: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 000049BC: D8F00000 0A00000B
  v_add_i32     v11, vcc, 40, v1                            // 000049C4: 4A1602A8
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:56 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000049C8: EBA41038 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000049D0: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 000049D4: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 000049DC: D8F00000 0400000C
  v_add_i32     v12, vcc, 42, v1                            // 000049E4: 4A1802AA
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:60 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000049E8: EBA4103C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000049F0: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 000049F4: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 000049FC: D8F00000 05000007
  v_add_i32     v7, vcc, 44, v1                             // 00004A04: 4A0E02AC
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:64 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004A08: EBA41040 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004A10: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 00004A14: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 00004A1C: D8F00000 06000008
  v_add_i32     v8, vcc, 46, v1                             // 00004A24: 4A1002AE
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:68 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004A28: EBA41044 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004A30: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 00004A34: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 00004A3C: D8F00000 03000009
  v_add_i32     v9, vcc, 48, v1                             // 00004A44: 4A1202B0
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:72 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004A48: EBA41048 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004A50: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 00004A54: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 00004A5C: D8F00000 0A00000B
  v_add_i32     v11, vcc, 50, v1                            // 00004A64: 4A1602B2
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:76 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004A68: EBA4104C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004A70: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 00004A74: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 00004A7C: D8F00000 0400000C
  v_add_i32     v12, vcc, 52, v1                            // 00004A84: 4A1802B4
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:80 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004A88: EBA41050 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004A90: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 00004A94: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 00004A9C: D8F00000 05000007
  v_add_i32     v7, vcc, 54, v1                             // 00004AA4: 4A0E02B6
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:84 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004AA8: EBA41054 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004AB0: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 00004AB4: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 00004ABC: D8F00000 06000008
  v_add_i32     v8, vcc, 56, v1                             // 00004AC4: 4A1002B8
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:88 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004AC8: EBA41058 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004AD0: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 00004AD4: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 00004ADC: D8F00000 03000009
  v_add_i32     v9, vcc, 58, v1                             // 00004AE4: 4A1202BA
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:92 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004AE8: EBA4105C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004AF0: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 00004AF4: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 00004AFC: D8F00000 0A00000B
  v_add_i32     v11, vcc, 60, v1                            // 00004B04: 4A1602BC
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:96 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004B08: EBA41060 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004B10: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 00004B14: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 00004B1C: D8F00000 0400000C
  v_add_i32     v12, vcc, 62, v1                            // 00004B24: 4A1802BE
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:100 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004B28: EBA41064 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004B30: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 00004B34: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 00004B3C: D8F00000 05000007
  v_add_i32     v7, vcc, 64, v1                             // 00004B44: 4A0E02C0
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:104 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004B48: EBA41068 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004B50: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 00004B54: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 00004B5C: D8F00000 06000008
  v_add_i32     v8, vcc, 0x00000042, v1                     // 00004B64: 4A1002FF 00000042
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:108 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004B6C: EBA4106C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004B74: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 00004B78: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 00004B80: D8F00000 03000009
  v_add_i32     v9, vcc, 0x00000044, v1                     // 00004B88: 4A1202FF 00000044
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:112 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004B90: EBA41070 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004B98: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 00004B9C: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 00004BA4: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x00000046, v1                    // 00004BAC: 4A1602FF 00000046
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:116 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004BB4: EBA41074 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004BBC: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 00004BC0: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 00004BC8: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x00000048, v1                    // 00004BD0: 4A1802FF 00000048
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:120 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004BD8: EBA41078 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004BE0: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 00004BE4: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 00004BEC: D8F00000 05000007
  v_add_i32     v7, vcc, 0x0000004a, v1                     // 00004BF4: 4A0E02FF 0000004A
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:124 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004BFC: EBA4107C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004C04: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 00004C08: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 00004C10: D8F00000 06000008
  v_add_i32     v8, vcc, 0x0000004c, v1                     // 00004C18: 4A1002FF 0000004C
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:128 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004C20: EBA41080 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004C28: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 00004C2C: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 00004C34: D8F00000 03000009
  v_add_i32     v9, vcc, 0x0000004e, v1                     // 00004C3C: 4A1202FF 0000004E
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:132 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004C44: EBA41084 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004C4C: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 00004C50: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 00004C58: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x00000050, v1                    // 00004C60: 4A1602FF 00000050
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:136 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004C68: EBA41088 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004C70: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 00004C74: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 00004C7C: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x00000052, v1                    // 00004C84: 4A1802FF 00000052
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:140 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004C8C: EBA4108C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004C94: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 00004C98: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 00004CA0: D8F00000 05000007
  v_add_i32     v7, vcc, 0x00000054, v1                     // 00004CA8: 4A0E02FF 00000054
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:144 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004CB0: EBA41090 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004CB8: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 00004CBC: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 00004CC4: D8F00000 06000008
  v_add_i32     v8, vcc, 0x00000056, v1                     // 00004CCC: 4A1002FF 00000056
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:148 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004CD4: EBA41094 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004CDC: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 00004CE0: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 00004CE8: D8F00000 03000009
  v_add_i32     v9, vcc, 0x00000058, v1                     // 00004CF0: 4A1202FF 00000058
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:152 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004CF8: EBA41098 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004D00: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 00004D04: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 00004D0C: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x0000005a, v1                    // 00004D14: 4A1602FF 0000005A
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:156 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004D1C: EBA4109C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004D24: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 00004D28: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 00004D30: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x0000005c, v1                    // 00004D38: 4A1802FF 0000005C
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:160 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004D40: EBA410A0 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004D48: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 00004D4C: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 00004D54: D8F00000 05000007
  v_add_i32     v7, vcc, 0x0000005e, v1                     // 00004D5C: 4A0E02FF 0000005E
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:164 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004D64: EBA410A4 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004D6C: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 00004D70: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 00004D78: D8F00000 06000008
  v_add_i32     v8, vcc, 0x00000060, v1                     // 00004D80: 4A1002FF 00000060
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:168 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004D88: EBA410A8 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004D90: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 00004D94: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 00004D9C: D8F00000 03000009
  v_add_i32     v9, vcc, 0x00000062, v1                     // 00004DA4: 4A1202FF 00000062
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:172 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004DAC: EBA410AC 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004DB4: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 00004DB8: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 00004DC0: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x00000064, v1                    // 00004DC8: 4A1602FF 00000064
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:176 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004DD0: EBA410B0 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004DD8: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 00004DDC: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 00004DE4: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x00000066, v1                    // 00004DEC: 4A1802FF 00000066
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:180 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004DF4: EBA410B4 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004DFC: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 00004E00: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 00004E08: D8F00000 05000007
  v_add_i32     v7, vcc, 0x00000068, v1                     // 00004E10: 4A0E02FF 00000068
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:184 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004E18: EBA410B8 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004E20: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 00004E24: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 00004E2C: D8F00000 06000008
  v_add_i32     v8, vcc, 0x0000006a, v1                     // 00004E34: 4A1002FF 0000006A
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:188 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004E3C: EBA410BC 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004E44: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 00004E48: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 00004E50: D8F00000 03000009
  v_add_i32     v9, vcc, 0x0000006c, v1                     // 00004E58: 4A1202FF 0000006C
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:192 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004E60: EBA410C0 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004E68: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 00004E6C: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 00004E74: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x0000006e, v1                    // 00004E7C: 4A1602FF 0000006E
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:196 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004E84: EBA410C4 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004E8C: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 00004E90: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 00004E98: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x00000070, v1                    // 00004EA0: 4A1802FF 00000070
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:200 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004EA8: EBA410C8 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004EB0: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 00004EB4: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 00004EBC: D8F00000 05000007
  v_add_i32     v7, vcc, 0x00000072, v1                     // 00004EC4: 4A0E02FF 00000072
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:204 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004ECC: EBA410CC 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004ED4: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 00004ED8: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 00004EE0: D8F00000 06000008
  v_add_i32     v8, vcc, 0x00000074, v1                     // 00004EE8: 4A1002FF 00000074
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:208 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004EF0: EBA410D0 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004EF8: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 00004EFC: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 00004F04: D8F00000 03000009
  v_add_i32     v9, vcc, 0x00000076, v1                     // 00004F0C: 4A1202FF 00000076
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:212 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004F14: EBA410D4 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004F1C: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 00004F20: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 00004F28: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x00000078, v1                    // 00004F30: 4A1602FF 00000078
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:216 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004F38: EBA410D8 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004F40: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 00004F44: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 00004F4C: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x0000007a, v1                    // 00004F54: 4A1802FF 0000007A
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:220 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004F5C: EBA410DC 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004F64: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 00004F68: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 00004F70: D8F00000 05000007
  v_add_i32     v7, vcc, 0x0000007c, v1                     // 00004F78: 4A0E02FF 0000007C
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:224 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004F80: EBA410E0 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004F88: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 00004F8C: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 00004F94: D8F00000 06000008
  v_add_i32     v8, vcc, 0x0000007e, v1                     // 00004F9C: 4A1002FF 0000007E
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:228 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004FA4: EBA410E4 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004FAC: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 00004FB0: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 00004FB8: D8F00000 03000009
  v_add_i32     v9, vcc, 0x00000080, v1                     // 00004FC0: 4A1202FF 00000080
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:232 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004FC8: EBA410E8 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004FD0: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 00004FD4: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 00004FDC: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x00000082, v1                    // 00004FE4: 4A1602FF 00000082
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:236 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004FEC: EBA410EC 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00004FF4: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 00004FF8: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 00005000: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x00000084, v1                    // 00005008: 4A1802FF 00000084
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:240 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005010: EBA410F0 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005018: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 0000501C: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 00005024: D8F00000 05000007
  v_add_i32     v7, vcc, 0x00000086, v1                     // 0000502C: 4A0E02FF 00000086
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:244 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005034: EBA410F4 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 0000503C: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 00005040: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 00005048: D8F00000 06000008
  v_add_i32     v8, vcc, 0x00000088, v1                     // 00005050: 4A1002FF 00000088
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:248 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005058: EBA410F8 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005060: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 00005064: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 0000506C: D8F00000 03000009
  v_add_i32     v9, vcc, 0x0000008a, v1                     // 00005074: 4A1202FF 0000008A
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:252 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000507C: EBA410FC 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005084: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 00005088: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 00005090: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x0000008c, v1                    // 00005098: 4A1602FF 0000008C
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:256 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000050A0: EBA41100 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000050A8: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 000050AC: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 000050B4: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x0000008e, v1                    // 000050BC: 4A1802FF 0000008E
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:260 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000050C4: EBA41104 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000050CC: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 000050D0: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 000050D8: D8F00000 05000007
  v_add_i32     v7, vcc, 0x00000090, v1                     // 000050E0: 4A0E02FF 00000090
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:264 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000050E8: EBA41108 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000050F0: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 000050F4: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 000050FC: D8F00000 06000008
  v_add_i32     v8, vcc, 0x00000092, v1                     // 00005104: 4A1002FF 00000092
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:268 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000510C: EBA4110C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005114: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 00005118: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 00005120: D8F00000 03000009
  v_add_i32     v9, vcc, 0x00000094, v1                     // 00005128: 4A1202FF 00000094
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:272 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005130: EBA41110 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005138: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 0000513C: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 00005144: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x00000096, v1                    // 0000514C: 4A1602FF 00000096
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:276 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005154: EBA41114 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 0000515C: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 00005160: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 00005168: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x00000098, v1                    // 00005170: 4A1802FF 00000098
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:280 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005178: EBA41118 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005180: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 00005184: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 0000518C: D8F00000 05000007
  v_add_i32     v7, vcc, 0x0000009a, v1                     // 00005194: 4A0E02FF 0000009A
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:284 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000519C: EBA4111C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000051A4: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 000051A8: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 000051B0: D8F00000 06000008
  v_add_i32     v8, vcc, 0x0000009c, v1                     // 000051B8: 4A1002FF 0000009C
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:288 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000051C0: EBA41120 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000051C8: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 000051CC: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 000051D4: D8F00000 03000009
  v_add_i32     v9, vcc, 0x0000009e, v1                     // 000051DC: 4A1202FF 0000009E
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:292 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000051E4: EBA41124 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000051EC: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 000051F0: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 000051F8: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x000000a0, v1                    // 00005200: 4A1602FF 000000A0
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:296 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005208: EBA41128 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005210: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 00005214: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 0000521C: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x000000a2, v1                    // 00005224: 4A1802FF 000000A2
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:300 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000522C: EBA4112C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005234: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 00005238: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 00005240: D8F00000 05000007
  v_add_i32     v7, vcc, 0x000000a4, v1                     // 00005248: 4A0E02FF 000000A4
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:304 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005250: EBA41130 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005258: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 0000525C: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 00005264: D8F00000 06000008
  v_add_i32     v8, vcc, 0x000000a6, v1                     // 0000526C: 4A1002FF 000000A6
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:308 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005274: EBA41134 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 0000527C: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 00005280: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 00005288: D8F00000 03000009
  v_add_i32     v9, vcc, 0x000000a8, v1                     // 00005290: 4A1202FF 000000A8
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:312 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005298: EBA41138 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000052A0: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 000052A4: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 000052AC: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x000000aa, v1                    // 000052B4: 4A1602FF 000000AA
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:316 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000052BC: EBA4113C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000052C4: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 000052C8: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 000052D0: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x000000ac, v1                    // 000052D8: 4A1802FF 000000AC
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:320 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000052E0: EBA41140 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000052E8: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 000052EC: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 000052F4: D8F00000 05000007
  v_add_i32     v7, vcc, 0x000000ae, v1                     // 000052FC: 4A0E02FF 000000AE
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:324 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005304: EBA41144 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 0000530C: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 00005310: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 00005318: D8F00000 06000008
  v_add_i32     v8, vcc, 0x000000b0, v1                     // 00005320: 4A1002FF 000000B0
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:328 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005328: EBA41148 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005330: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 00005334: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 0000533C: D8F00000 03000009
  v_add_i32     v9, vcc, 0x000000b2, v1                     // 00005344: 4A1202FF 000000B2
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:332 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000534C: EBA4114C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005354: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 00005358: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 00005360: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x000000b4, v1                    // 00005368: 4A1602FF 000000B4
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:336 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005370: EBA41150 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005378: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 0000537C: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 00005384: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x000000b6, v1                    // 0000538C: 4A1802FF 000000B6
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:340 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005394: EBA41154 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 0000539C: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 000053A0: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 000053A8: D8F00000 05000007
  v_add_i32     v7, vcc, 0x000000b8, v1                     // 000053B0: 4A0E02FF 000000B8
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:344 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000053B8: EBA41158 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000053C0: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 000053C4: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 000053CC: D8F00000 06000008
  v_add_i32     v8, vcc, 0x000000ba, v1                     // 000053D4: 4A1002FF 000000BA
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:348 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000053DC: EBA4115C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000053E4: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 000053E8: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 000053F0: D8F00000 03000009
  v_add_i32     v9, vcc, 0x000000bc, v1                     // 000053F8: 4A1202FF 000000BC
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:352 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005400: EBA41160 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005408: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 0000540C: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 00005414: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x000000be, v1                    // 0000541C: 4A1602FF 000000BE
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:356 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005424: EBA41164 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 0000542C: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 00005430: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 00005438: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x000000c0, v1                    // 00005440: 4A1802FF 000000C0
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:360 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005448: EBA41168 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005450: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 00005454: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 0000545C: D8F00000 05000007
  v_add_i32     v7, vcc, 0x000000c2, v1                     // 00005464: 4A0E02FF 000000C2
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:364 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000546C: EBA4116C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005474: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 00005478: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 00005480: D8F00000 06000008
  v_add_i32     v8, vcc, 0x000000c4, v1                     // 00005488: 4A1002FF 000000C4
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:368 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005490: EBA41170 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005498: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 0000549C: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 000054A4: D8F00000 03000009
  v_add_i32     v9, vcc, 0x000000c6, v1                     // 000054AC: 4A1202FF 000000C6
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:372 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000054B4: EBA41174 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000054BC: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 000054C0: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 000054C8: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x000000c8, v1                    // 000054D0: 4A1602FF 000000C8
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:376 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000054D8: EBA41178 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000054E0: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 000054E4: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 000054EC: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x000000ca, v1                    // 000054F4: 4A1802FF 000000CA
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:380 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000054FC: EBA4117C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005504: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 00005508: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 00005510: D8F00000 05000007
  v_add_i32     v7, vcc, 0x000000cc, v1                     // 00005518: 4A0E02FF 000000CC
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:384 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005520: EBA41180 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005528: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 0000552C: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 00005534: D8F00000 06000008
  v_add_i32     v8, vcc, 0x000000ce, v1                     // 0000553C: 4A1002FF 000000CE
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:388 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005544: EBA41184 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 0000554C: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 00005550: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 00005558: D8F00000 03000009
  v_add_i32     v9, vcc, 0x000000d0, v1                     // 00005560: 4A1202FF 000000D0
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:392 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005568: EBA41188 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005570: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 00005574: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 0000557C: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x000000d2, v1                    // 00005584: 4A1602FF 000000D2
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:396 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000558C: EBA4118C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005594: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 00005598: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 000055A0: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x000000d4, v1                    // 000055A8: 4A1802FF 000000D4
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:400 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000055B0: EBA41190 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000055B8: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 000055BC: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 000055C4: D8F00000 05000007
  v_add_i32     v7, vcc, 0x000000d6, v1                     // 000055CC: 4A0E02FF 000000D6
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:404 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000055D4: EBA41194 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000055DC: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 000055E0: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 000055E8: D8F00000 06000008
  v_add_i32     v8, vcc, 0x000000d8, v1                     // 000055F0: 4A1002FF 000000D8
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:408 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000055F8: EBA41198 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005600: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 00005604: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 0000560C: D8F00000 03000009
  v_add_i32     v9, vcc, 0x000000da, v1                     // 00005614: 4A1202FF 000000DA
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:412 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000561C: EBA4119C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005624: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 00005628: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 00005630: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x000000dc, v1                    // 00005638: 4A1602FF 000000DC
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:416 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005640: EBA411A0 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005648: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 0000564C: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 00005654: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x000000de, v1                    // 0000565C: 4A1802FF 000000DE
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:420 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005664: EBA411A4 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 0000566C: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 00005670: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 00005678: D8F00000 05000007
  v_add_i32     v7, vcc, 0x000000e0, v1                     // 00005680: 4A0E02FF 000000E0
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:424 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005688: EBA411A8 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005690: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 00005694: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 0000569C: D8F00000 06000008
  v_add_i32     v8, vcc, 0x000000e2, v1                     // 000056A4: 4A1002FF 000000E2
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:428 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000056AC: EBA411AC 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000056B4: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 000056B8: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 000056C0: D8F00000 03000009
  v_add_i32     v9, vcc, 0x000000e4, v1                     // 000056C8: 4A1202FF 000000E4
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:432 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000056D0: EBA411B0 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000056D8: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 000056DC: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 000056E4: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x000000e6, v1                    // 000056EC: 4A1602FF 000000E6
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:436 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000056F4: EBA411B4 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000056FC: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 00005700: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 00005708: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x000000e8, v1                    // 00005710: 4A1802FF 000000E8
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:440 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005718: EBA411B8 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005720: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 00005724: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 0000572C: D8F00000 05000007
  v_add_i32     v7, vcc, 0x000000ea, v1                     // 00005734: 4A0E02FF 000000EA
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:444 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000573C: EBA411BC 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005744: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 00005748: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 00005750: D8F00000 06000008
  v_add_i32     v8, vcc, 0x000000ec, v1                     // 00005758: 4A1002FF 000000EC
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:448 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005760: EBA411C0 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005768: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 0000576C: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 00005774: D8F00000 03000009
  v_add_i32     v9, vcc, 0x000000ee, v1                     // 0000577C: 4A1202FF 000000EE
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:452 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005784: EBA411C4 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 0000578C: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 00005790: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 00005798: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x000000f0, v1                    // 000057A0: 4A1602FF 000000F0
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:456 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000057A8: EBA411C8 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000057B0: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 000057B4: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 000057BC: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x000000f2, v1                    // 000057C4: 4A1802FF 000000F2
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:460 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000057CC: EBA411CC 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000057D4: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 000057D8: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 000057E0: D8F00000 05000007
  v_add_i32     v7, vcc, 0x000000f4, v1                     // 000057E8: 4A0E02FF 000000F4
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:464 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000057F0: EBA411D0 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000057F8: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 000057FC: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 00005804: D8F00000 06000008
  v_add_i32     v8, vcc, 0x000000f6, v1                     // 0000580C: 4A1002FF 000000F6
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:468 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005814: EBA411D4 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 0000581C: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 00005820: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 00005828: D8F00000 03000009
  v_add_i32     v9, vcc, 0x000000f8, v1                     // 00005830: 4A1202FF 000000F8
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:472 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005838: EBA411D8 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005840: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 00005844: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 0000584C: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x000000fa, v1                    // 00005854: 4A1602FF 000000FA
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:476 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000585C: EBA411DC 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005864: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 00005868: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 00005870: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x000000fc, v1                    // 00005878: 4A1802FF 000000FC
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:480 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005880: EBA411E0 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005888: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 0000588C: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 00005894: D8F00000 05000007
  v_add_i32     v7, vcc, 0x000000fe, v1                     // 0000589C: 4A0E02FF 000000FE
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:484 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000058A4: EBA411E4 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000058AC: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 000058B0: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 000058B8: D8F00000 06000008
  v_add_i32     v8, vcc, 0x00000100, v1                     // 000058C0: 4A1002FF 00000100
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:488 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000058C8: EBA411E8 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000058D0: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 000058D4: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 000058DC: D8F00000 03000009
  v_add_i32     v9, vcc, 0x00000102, v1                     // 000058E4: 4A1202FF 00000102
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:492 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000058EC: EBA411EC 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000058F4: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 000058F8: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 00005900: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x00000104, v1                    // 00005908: 4A1602FF 00000104
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:496 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005910: EBA411F0 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005918: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 0000591C: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 00005924: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x00000106, v1                    // 0000592C: 4A1802FF 00000106
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:500 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005934: EBA411F4 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 0000593C: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 00005940: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 00005948: D8F00000 05000007
  v_add_i32     v7, vcc, 0x00000108, v1                     // 00005950: 4A0E02FF 00000108
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:504 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005958: EBA411F8 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005960: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 00005964: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 0000596C: D8F00000 06000008
  v_add_i32     v8, vcc, 0x0000010a, v1                     // 00005974: 4A1002FF 0000010A
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:508 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000597C: EBA411FC 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005984: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 00005988: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 00005990: D8F00000 03000009
  v_add_i32     v9, vcc, 0x0000010c, v1                     // 00005998: 4A1202FF 0000010C
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:512 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000059A0: EBA41200 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000059A8: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 000059AC: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 000059B4: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x0000010e, v1                    // 000059BC: 4A1602FF 0000010E
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:516 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000059C4: EBA41204 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000059CC: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 000059D0: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 000059D8: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x00000110, v1                    // 000059E0: 4A1802FF 00000110
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:520 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000059E8: EBA41208 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000059F0: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 000059F4: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 000059FC: D8F00000 05000007
  v_add_i32     v7, vcc, 0x00000112, v1                     // 00005A04: 4A0E02FF 00000112
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:524 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005A0C: EBA4120C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005A14: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 00005A18: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 00005A20: D8F00000 06000008
  v_add_i32     v8, vcc, 0x00000114, v1                     // 00005A28: 4A1002FF 00000114
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:528 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005A30: EBA41210 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005A38: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 00005A3C: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 00005A44: D8F00000 03000009
  v_add_i32     v9, vcc, 0x00000116, v1                     // 00005A4C: 4A1202FF 00000116
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:532 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005A54: EBA41214 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005A5C: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 00005A60: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 00005A68: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x00000118, v1                    // 00005A70: 4A1602FF 00000118
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:536 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005A78: EBA41218 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005A80: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 00005A84: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 00005A8C: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x0000011a, v1                    // 00005A94: 4A1802FF 0000011A
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:540 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005A9C: EBA4121C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005AA4: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 00005AA8: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 00005AB0: D8F00000 05000007
  v_add_i32     v7, vcc, 0x0000011c, v1                     // 00005AB8: 4A0E02FF 0000011C
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:544 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005AC0: EBA41220 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005AC8: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 00005ACC: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 00005AD4: D8F00000 06000008
  v_add_i32     v8, vcc, 0x0000011e, v1                     // 00005ADC: 4A1002FF 0000011E
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:548 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005AE4: EBA41224 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005AEC: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 00005AF0: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 00005AF8: D8F00000 03000009
  v_add_i32     v9, vcc, 0x00000120, v1                     // 00005B00: 4A1202FF 00000120
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:552 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005B08: EBA41228 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005B10: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 00005B14: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 00005B1C: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x00000122, v1                    // 00005B24: 4A1602FF 00000122
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:556 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005B2C: EBA4122C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005B34: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 00005B38: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 00005B40: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x00000124, v1                    // 00005B48: 4A1802FF 00000124
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:560 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005B50: EBA41230 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005B58: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 00005B5C: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 00005B64: D8F00000 05000007
  v_add_i32     v7, vcc, 0x00000126, v1                     // 00005B6C: 4A0E02FF 00000126
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:564 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005B74: EBA41234 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005B7C: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 00005B80: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 00005B88: D8F00000 06000008
  v_add_i32     v8, vcc, 0x00000128, v1                     // 00005B90: 4A1002FF 00000128
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:568 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005B98: EBA41238 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005BA0: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 00005BA4: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 00005BAC: D8F00000 03000009
  v_add_i32     v9, vcc, 0x0000012a, v1                     // 00005BB4: 4A1202FF 0000012A
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:572 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005BBC: EBA4123C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005BC4: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 00005BC8: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 00005BD0: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x0000012c, v1                    // 00005BD8: 4A1602FF 0000012C
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:576 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005BE0: EBA41240 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005BE8: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 00005BEC: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 00005BF4: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x0000012e, v1                    // 00005BFC: 4A1802FF 0000012E
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:580 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005C04: EBA41244 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005C0C: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 00005C10: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 00005C18: D8F00000 05000007
  v_add_i32     v7, vcc, 0x00000130, v1                     // 00005C20: 4A0E02FF 00000130
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:584 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005C28: EBA41248 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005C30: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 00005C34: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 00005C3C: D8F00000 06000008
  v_add_i32     v8, vcc, 0x00000132, v1                     // 00005C44: 4A1002FF 00000132
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:588 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005C4C: EBA4124C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005C54: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 00005C58: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 00005C60: D8F00000 03000009
  v_add_i32     v9, vcc, 0x00000134, v1                     // 00005C68: 4A1202FF 00000134
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:592 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005C70: EBA41250 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005C78: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 00005C7C: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 00005C84: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x00000136, v1                    // 00005C8C: 4A1602FF 00000136
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:596 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005C94: EBA41254 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005C9C: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 00005CA0: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 00005CA8: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x00000138, v1                    // 00005CB0: 4A1802FF 00000138
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:600 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005CB8: EBA41258 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005CC0: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 00005CC4: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 00005CCC: D8F00000 05000007
  v_add_i32     v7, vcc, 0x0000013a, v1                     // 00005CD4: 4A0E02FF 0000013A
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:604 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005CDC: EBA4125C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005CE4: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 00005CE8: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 00005CF0: D8F00000 06000008
  v_add_i32     v8, vcc, 0x0000013c, v1                     // 00005CF8: 4A1002FF 0000013C
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:608 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005D00: EBA41260 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005D08: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 00005D0C: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 00005D14: D8F00000 03000009
  v_add_i32     v9, vcc, 0x0000013e, v1                     // 00005D1C: 4A1202FF 0000013E
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:612 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005D24: EBA41264 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005D2C: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 00005D30: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 00005D38: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x00000140, v1                    // 00005D40: 4A1602FF 00000140
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:616 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005D48: EBA41268 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005D50: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 00005D54: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 00005D5C: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x00000142, v1                    // 00005D64: 4A1802FF 00000142
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:620 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005D6C: EBA4126C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005D74: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 00005D78: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 00005D80: D8F00000 05000007
  v_add_i32     v7, vcc, 0x00000144, v1                     // 00005D88: 4A0E02FF 00000144
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:624 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005D90: EBA41270 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005D98: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 00005D9C: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 00005DA4: D8F00000 06000008
  v_add_i32     v8, vcc, 0x00000146, v1                     // 00005DAC: 4A1002FF 00000146
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:628 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005DB4: EBA41274 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005DBC: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 00005DC0: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 00005DC8: D8F00000 03000009
  v_add_i32     v9, vcc, 0x00000148, v1                     // 00005DD0: 4A1202FF 00000148
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:632 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005DD8: EBA41278 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005DE0: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 00005DE4: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 00005DEC: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x0000014a, v1                    // 00005DF4: 4A1602FF 0000014A
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:636 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005DFC: EBA4127C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005E04: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 00005E08: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 00005E10: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x0000014c, v1                    // 00005E18: 4A1802FF 0000014C
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:640 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005E20: EBA41280 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005E28: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 00005E2C: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 00005E34: D8F00000 05000007
  v_add_i32     v7, vcc, 0x0000014e, v1                     // 00005E3C: 4A0E02FF 0000014E
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:644 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005E44: EBA41284 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005E4C: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 00005E50: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 00005E58: D8F00000 06000008
  v_add_i32     v8, vcc, 0x00000150, v1                     // 00005E60: 4A1002FF 00000150
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:648 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005E68: EBA41288 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005E70: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 00005E74: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 00005E7C: D8F00000 03000009
  v_add_i32     v9, vcc, 0x00000152, v1                     // 00005E84: 4A1202FF 00000152
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:652 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005E8C: EBA4128C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005E94: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 00005E98: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 00005EA0: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x00000154, v1                    // 00005EA8: 4A1602FF 00000154
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:656 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005EB0: EBA41290 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005EB8: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 00005EBC: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 00005EC4: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x00000156, v1                    // 00005ECC: 4A1802FF 00000156
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:660 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005ED4: EBA41294 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005EDC: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 00005EE0: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 00005EE8: D8F00000 05000007
  v_add_i32     v7, vcc, 0x00000158, v1                     // 00005EF0: 4A0E02FF 00000158
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:664 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005EF8: EBA41298 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005F00: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 00005F04: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 00005F0C: D8F00000 06000008
  v_add_i32     v8, vcc, 0x0000015a, v1                     // 00005F14: 4A1002FF 0000015A
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:668 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005F1C: EBA4129C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005F24: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 00005F28: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 00005F30: D8F00000 03000009
  v_add_i32     v9, vcc, 0x0000015c, v1                     // 00005F38: 4A1202FF 0000015C
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:672 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005F40: EBA412A0 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005F48: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 00005F4C: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 00005F54: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x0000015e, v1                    // 00005F5C: 4A1602FF 0000015E
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:676 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005F64: EBA412A4 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005F6C: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 00005F70: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 00005F78: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x00000160, v1                    // 00005F80: 4A1802FF 00000160
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:680 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005F88: EBA412A8 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005F90: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 00005F94: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 00005F9C: D8F00000 05000007
  v_add_i32     v7, vcc, 0x00000162, v1                     // 00005FA4: 4A0E02FF 00000162
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:684 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005FAC: EBA412AC 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005FB4: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 00005FB8: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 00005FC0: D8F00000 06000008
  v_add_i32     v8, vcc, 0x00000164, v1                     // 00005FC8: 4A1002FF 00000164
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:688 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005FD0: EBA412B0 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005FD8: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 00005FDC: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 00005FE4: D8F00000 03000009
  v_add_i32     v9, vcc, 0x00000166, v1                     // 00005FEC: 4A1202FF 00000166
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:692 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005FF4: EBA412B4 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00005FFC: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 00006000: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 00006008: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x00000168, v1                    // 00006010: 4A1602FF 00000168
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:696 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006018: EBA412B8 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006020: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 00006024: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 0000602C: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x0000016a, v1                    // 00006034: 4A1802FF 0000016A
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:700 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000603C: EBA412BC 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006044: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 00006048: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 00006050: D8F00000 05000007
  v_add_i32     v7, vcc, 0x0000016c, v1                     // 00006058: 4A0E02FF 0000016C
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:704 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006060: EBA412C0 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006068: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 0000606C: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 00006074: D8F00000 06000008
  v_add_i32     v8, vcc, 0x0000016e, v1                     // 0000607C: 4A1002FF 0000016E
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:708 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006084: EBA412C4 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 0000608C: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 00006090: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 00006098: D8F00000 03000009
  v_add_i32     v9, vcc, 0x00000170, v1                     // 000060A0: 4A1202FF 00000170
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:712 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000060A8: EBA412C8 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000060B0: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 000060B4: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 000060BC: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x00000172, v1                    // 000060C4: 4A1602FF 00000172
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:716 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000060CC: EBA412CC 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000060D4: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 000060D8: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 000060E0: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x00000174, v1                    // 000060E8: 4A1802FF 00000174
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:720 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000060F0: EBA412D0 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000060F8: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 000060FC: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 00006104: D8F00000 05000007
  v_add_i32     v7, vcc, 0x00000176, v1                     // 0000610C: 4A0E02FF 00000176
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:724 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006114: EBA412D4 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 0000611C: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 00006120: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 00006128: D8F00000 06000008
  v_add_i32     v8, vcc, 0x00000178, v1                     // 00006130: 4A1002FF 00000178
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:728 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006138: EBA412D8 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006140: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 00006144: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 0000614C: D8F00000 03000009
  v_add_i32     v9, vcc, 0x0000017a, v1                     // 00006154: 4A1202FF 0000017A
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:732 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000615C: EBA412DC 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006164: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 00006168: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 00006170: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x0000017c, v1                    // 00006178: 4A1602FF 0000017C
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:736 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006180: EBA412E0 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006188: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 0000618C: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 00006194: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x0000017e, v1                    // 0000619C: 4A1802FF 0000017E
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:740 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000061A4: EBA412E4 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000061AC: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 000061B0: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 000061B8: D8F00000 05000007
  v_add_i32     v7, vcc, 0x00000180, v1                     // 000061C0: 4A0E02FF 00000180
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:744 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000061C8: EBA412E8 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000061D0: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 000061D4: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 000061DC: D8F00000 06000008
  v_add_i32     v8, vcc, 0x00000182, v1                     // 000061E4: 4A1002FF 00000182
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:748 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000061EC: EBA412EC 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000061F4: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 000061F8: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 00006200: D8F00000 03000009
  v_add_i32     v9, vcc, 0x00000184, v1                     // 00006208: 4A1202FF 00000184
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:752 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006210: EBA412F0 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006218: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 0000621C: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 00006224: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x00000186, v1                    // 0000622C: 4A1602FF 00000186
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:756 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006234: EBA412F4 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 0000623C: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 00006240: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 00006248: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x00000188, v1                    // 00006250: 4A1802FF 00000188
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:760 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006258: EBA412F8 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006260: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 00006264: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 0000626C: D8F00000 05000007
  v_add_i32     v7, vcc, 0x0000018a, v1                     // 00006274: 4A0E02FF 0000018A
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:764 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000627C: EBA412FC 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006284: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 00006288: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 00006290: D8F00000 06000008
  v_add_i32     v8, vcc, 0x0000018c, v1                     // 00006298: 4A1002FF 0000018C
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:768 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000062A0: EBA41300 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000062A8: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 000062AC: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 000062B4: D8F00000 03000009
  v_add_i32     v9, vcc, 0x0000018e, v1                     // 000062BC: 4A1202FF 0000018E
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:772 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000062C4: EBA41304 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000062CC: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 000062D0: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 000062D8: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x00000190, v1                    // 000062E0: 4A1602FF 00000190
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:776 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000062E8: EBA41308 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000062F0: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 000062F4: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 000062FC: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x00000192, v1                    // 00006304: 4A1802FF 00000192
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:780 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000630C: EBA4130C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006314: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 00006318: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 00006320: D8F00000 05000007
  v_add_i32     v7, vcc, 0x00000194, v1                     // 00006328: 4A0E02FF 00000194
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:784 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006330: EBA41310 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006338: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 0000633C: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 00006344: D8F00000 06000008
  v_add_i32     v8, vcc, 0x00000196, v1                     // 0000634C: 4A1002FF 00000196
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:788 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006354: EBA41314 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 0000635C: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 00006360: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 00006368: D8F00000 03000009
  v_add_i32     v9, vcc, 0x00000198, v1                     // 00006370: 4A1202FF 00000198
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:792 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006378: EBA41318 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006380: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 00006384: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 0000638C: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x0000019a, v1                    // 00006394: 4A1602FF 0000019A
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:796 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000639C: EBA4131C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000063A4: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 000063A8: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 000063B0: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x0000019c, v1                    // 000063B8: 4A1802FF 0000019C
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:800 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000063C0: EBA41320 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000063C8: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 000063CC: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 000063D4: D8F00000 05000007
  v_add_i32     v7, vcc, 0x0000019e, v1                     // 000063DC: 4A0E02FF 0000019E
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:804 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000063E4: EBA41324 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000063EC: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 000063F0: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 000063F8: D8F00000 06000008
  v_add_i32     v8, vcc, 0x000001a0, v1                     // 00006400: 4A1002FF 000001A0
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:808 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006408: EBA41328 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006410: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 00006414: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 0000641C: D8F00000 03000009
  v_add_i32     v9, vcc, 0x000001a2, v1                     // 00006424: 4A1202FF 000001A2
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:812 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000642C: EBA4132C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006434: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 00006438: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 00006440: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x000001a4, v1                    // 00006448: 4A1602FF 000001A4
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:816 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006450: EBA41330 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006458: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 0000645C: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 00006464: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x000001a6, v1                    // 0000646C: 4A1802FF 000001A6
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:820 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006474: EBA41334 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 0000647C: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 00006480: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 00006488: D8F00000 05000007
  v_add_i32     v7, vcc, 0x000001a8, v1                     // 00006490: 4A0E02FF 000001A8
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:824 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006498: EBA41338 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000064A0: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 000064A4: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 000064AC: D8F00000 06000008
  v_add_i32     v8, vcc, 0x000001aa, v1                     // 000064B4: 4A1002FF 000001AA
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:828 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000064BC: EBA4133C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000064C4: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 000064C8: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 000064D0: D8F00000 03000009
  v_add_i32     v9, vcc, 0x000001ac, v1                     // 000064D8: 4A1202FF 000001AC
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:832 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000064E0: EBA41340 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000064E8: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 000064EC: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 000064F4: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x000001ae, v1                    // 000064FC: 4A1602FF 000001AE
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:836 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006504: EBA41344 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 0000650C: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 00006510: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 00006518: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x000001b0, v1                    // 00006520: 4A1802FF 000001B0
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:840 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006528: EBA41348 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006530: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 00006534: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 0000653C: D8F00000 05000007
  v_add_i32     v7, vcc, 0x000001b2, v1                     // 00006544: 4A0E02FF 000001B2
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:844 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000654C: EBA4134C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006554: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 00006558: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 00006560: D8F00000 06000008
  v_add_i32     v8, vcc, 0x000001b4, v1                     // 00006568: 4A1002FF 000001B4
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:848 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006570: EBA41350 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006578: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 0000657C: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 00006584: D8F00000 03000009
  v_add_i32     v9, vcc, 0x000001b6, v1                     // 0000658C: 4A1202FF 000001B6
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:852 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006594: EBA41354 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 0000659C: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 000065A0: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 000065A8: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x000001b8, v1                    // 000065B0: 4A1602FF 000001B8
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:856 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000065B8: EBA41358 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000065C0: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 000065C4: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 000065CC: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x000001ba, v1                    // 000065D4: 4A1802FF 000001BA
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:860 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000065DC: EBA4135C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000065E4: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 000065E8: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 000065F0: D8F00000 05000007
  v_add_i32     v7, vcc, 0x000001bc, v1                     // 000065F8: 4A0E02FF 000001BC
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:864 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006600: EBA41360 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006608: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 0000660C: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 00006614: D8F00000 06000008
  v_add_i32     v8, vcc, 0x000001be, v1                     // 0000661C: 4A1002FF 000001BE
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:868 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006624: EBA41364 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 0000662C: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 00006630: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 00006638: D8F00000 03000009
  v_add_i32     v9, vcc, 0x000001c0, v1                     // 00006640: 4A1202FF 000001C0
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:872 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006648: EBA41368 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006650: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 00006654: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 0000665C: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x000001c2, v1                    // 00006664: 4A1602FF 000001C2
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:876 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000666C: EBA4136C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006674: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 00006678: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 00006680: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x000001c4, v1                    // 00006688: 4A1802FF 000001C4
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:880 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006690: EBA41370 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006698: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 0000669C: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 000066A4: D8F00000 05000007
  v_add_i32     v7, vcc, 0x000001c6, v1                     // 000066AC: 4A0E02FF 000001C6
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:884 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000066B4: EBA41374 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000066BC: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 000066C0: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 000066C8: D8F00000 06000008
  v_add_i32     v8, vcc, 0x000001c8, v1                     // 000066D0: 4A1002FF 000001C8
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:888 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000066D8: EBA41378 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000066E0: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 000066E4: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 000066EC: D8F00000 03000009
  v_add_i32     v9, vcc, 0x000001ca, v1                     // 000066F4: 4A1202FF 000001CA
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:892 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000066FC: EBA4137C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006704: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 00006708: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 00006710: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x000001cc, v1                    // 00006718: 4A1602FF 000001CC
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:896 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006720: EBA41380 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006728: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 0000672C: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 00006734: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x000001ce, v1                    // 0000673C: 4A1802FF 000001CE
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:900 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006744: EBA41384 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 0000674C: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 00006750: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 00006758: D8F00000 05000007
  v_add_i32     v7, vcc, 0x000001d0, v1                     // 00006760: 4A0E02FF 000001D0
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:904 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006768: EBA41388 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006770: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 00006774: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 0000677C: D8F00000 06000008
  v_add_i32     v8, vcc, 0x000001d2, v1                     // 00006784: 4A1002FF 000001D2
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:908 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000678C: EBA4138C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006794: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 00006798: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 000067A0: D8F00000 03000009
  v_add_i32     v9, vcc, 0x000001d4, v1                     // 000067A8: 4A1202FF 000001D4
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:912 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000067B0: EBA41390 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000067B8: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 000067BC: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 000067C4: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x000001d6, v1                    // 000067CC: 4A1602FF 000001D6
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:916 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000067D4: EBA41394 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000067DC: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 000067E0: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 000067E8: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x000001d8, v1                    // 000067F0: 4A1802FF 000001D8
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:920 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000067F8: EBA41398 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006800: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 00006804: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 0000680C: D8F00000 05000007
  v_add_i32     v7, vcc, 0x000001da, v1                     // 00006814: 4A0E02FF 000001DA
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:924 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000681C: EBA4139C 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006824: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 00006828: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 00006830: D8F00000 06000008
  v_add_i32     v8, vcc, 0x000001dc, v1                     // 00006838: 4A1002FF 000001DC
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:928 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006840: EBA413A0 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006848: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 0000684C: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 00006854: D8F00000 03000009
  v_add_i32     v9, vcc, 0x000001de, v1                     // 0000685C: 4A1202FF 000001DE
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:932 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006864: EBA413A4 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 0000686C: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 00006870: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 00006878: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x000001e0, v1                    // 00006880: 4A1602FF 000001E0
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:936 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006888: EBA413A8 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006890: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 00006894: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 0000689C: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x000001e2, v1                    // 000068A4: 4A1802FF 000001E2
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:940 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000068AC: EBA413AC 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000068B4: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 000068B8: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 000068C0: D8F00000 05000007
  v_add_i32     v7, vcc, 0x000001e4, v1                     // 000068C8: 4A0E02FF 000001E4
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:944 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000068D0: EBA413B0 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000068D8: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 000068DC: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 000068E4: D8F00000 06000008
  v_add_i32     v8, vcc, 0x000001e6, v1                     // 000068EC: 4A1002FF 000001E6
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:948 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000068F4: EBA413B4 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000068FC: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 00006900: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 00006908: D8F00000 03000009
  v_add_i32     v9, vcc, 0x000001e8, v1                     // 00006910: 4A1202FF 000001E8
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:952 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006918: EBA413B8 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006920: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 00006924: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 0000692C: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x000001ea, v1                    // 00006934: 4A1602FF 000001EA
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:956 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000693C: EBA413BC 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006944: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 00006948: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 00006950: D8F00000 0400000C
  v_add_i32     v12, vcc, 0x000001ec, v1                    // 00006958: 4A1802FF 000001EC
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:960 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006960: EBA413C0 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006968: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 0000696C: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 00006974: D8F00000 05000007
  v_add_i32     v7, vcc, 0x000001ee, v1                     // 0000697C: 4A0E02FF 000001EE
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:964 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006984: EBA413C4 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 0000698C: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 00006990: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 00006998: D8F00000 06000008
  v_add_i32     v8, vcc, 0x000001f0, v1                     // 000069A0: 4A1002FF 000001F0
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:968 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000069A8: EBA413C8 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000069B0: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 000069B4: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 000069BC: D8F00000 03000009
  v_add_i32     v9, vcc, 0x000001f2, v1                     // 000069C4: 4A1202FF 000001F2
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:972 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000069CC: EBA413CC 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000069D4: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 000069D8: 360414FF 0000FFFF
  ds_read_u16   v10, v11                                    // 000069E0: D8F00000 0A00000B
  v_add_i32     v11, vcc, 0x000001f4, v1                    // 000069E8: 4A1602FF 000001F4
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:976 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000069F0: EBA413D0 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 000069F8: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 000069FC: 360408FF 0000FFFF
  ds_read_u16   v4, v12                                     // 00006A04: D8F00000 0400000C
  v_add_i32     v1, vcc, 0x000001f6, v1                     // 00006A0C: 4A0202FF 000001F6
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:980 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006A14: EBA413D4 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006A1C: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 00006A20: 36040AFF 0000FFFF
  ds_read_u16   v5, v7                                      // 00006A28: D8F00000 05000007
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:984 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006A30: EBA413D8 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006A38: BF8C040F
  v_and_b32     v2, 0x0000ffff, v6                          // 00006A3C: 36040CFF 0000FFFF
  ds_read_u16   v6, v8                                      // 00006A44: D8F00000 06000008
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:988 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006A4C: EBA413DC 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006A54: BF8C040F
  v_and_b32     v2, 0x0000ffff, v3                          // 00006A58: 360406FF 0000FFFF
  ds_read_u16   v3, v9                                      // 00006A60: D8F00000 03000009
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:992 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006A68: EBA413E0 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006A70: BF8C040F
  v_and_b32     v2, 0x0000ffff, v10                         // 00006A74: 360414FF 0000FFFF
  ds_read_u16   v7, v11                                     // 00006A7C: D8F00000 0700000B
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:996 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006A84: EBA413E4 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006A8C: BF8C040F
  v_and_b32     v2, 0x0000ffff, v4                          // 00006A90: 360408FF 0000FFFF
  ds_read_u16   v1, v1                                      // 00006A98: D8F00000 01000001
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:1000 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006AA0: EBA413E8 80010200
  s_waitcnt     lgkmcnt(4) & expcnt(0)                      // 00006AA8: BF8C040F
  v_and_b32     v2, 0x0000ffff, v5                          // 00006AAC: 36040AFF 0000FFFF
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:1004 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006AB4: EBA413EC 80010200
  s_waitcnt     lgkmcnt(3) & expcnt(0)                      // 00006ABC: BF8C030F
  v_and_b32     v2, 0x0000ffff, v6                          // 00006AC0: 36040CFF 0000FFFF
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:1008 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006AC8: EBA413F0 80010200
  s_waitcnt     lgkmcnt(2) & expcnt(0)                      // 00006AD0: BF8C020F
  v_and_b32     v2, 0x0000ffff, v3                          // 00006AD4: 360406FF 0000FFFF
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:1012 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006ADC: EBA413F4 80010200
  s_waitcnt     lgkmcnt(1) & expcnt(0)                      // 00006AE4: BF8C010F
  v_and_b32     v2, 0x0000ffff, v7                          // 00006AE8: 36040EFF 0000FFFF
  tbuffer_store_format_x  v2, v0, s[4:7], 0 offen offset:1016 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006AF0: EBA413F8 80010200
  s_waitcnt     lgkmcnt(0)                                  // 00006AF8: BF8C007F
  v_and_b32     v1, 0x0000ffff, v1                          // 00006AFC: 360202FF 0000FFFF
  tbuffer_store_format_x  v1, v0, s[4:7], 0 offen offset:1020 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006B04: EBA413FC 80010100
  s_endpgm                                                  // 00006B0C: BF810000



**
** Disassembly for '__kernel permute'
**

  s_mov_b32     m0, 0x00008000                              // 00000000: BEFC03FF 00008000
  s_buffer_load_dword  s0, s[4:7], 0x04                     // 00000008: C2000504
  s_buffer_load_dword  s1, s[4:7], 0x18                     // 0000000C: C2008518
  s_buffer_load_dword  s4, s[4:7], 0x1c                     // 00000010: C202051C
  s_buffer_load_dword  s5, s[8:11], 0x00                    // 00000014: C2028900
  s_buffer_load_dword  s6, s[8:11], 0x04                    // 00000018: C2030904
  s_buffer_load_dword  s7, s[8:11], 0x08                    // 0000001C: C2038908
  s_buffer_load_dword  s13, s[8:11], 0x0c                   // 00000020: C206890C
  s_buffer_load_dword  s8, s[8:11], 0x10                    // 00000024: C2040910
  s_load_dwordx4  s[16:19], s[2:3], 0x50                    // 00000028: C0880350
  s_load_dwordx4  s[20:23], s[2:3], 0x60                    // 0000002C: C08A0360
  s_load_dwordx4  s[24:27], s[2:3], 0x58                    // 00000030: C08C0358
  s_waitcnt     lgkmcnt(0)                                  // 00000034: BF8C007F
  s_min_u32     s2, s0, 0x0000ffff                          // 00000038: 8382FF00 0000FFFF
  v_mov_b32     v1, s2                                      // 00000040: 7E020202
  v_mul_i32_i24  v1, s12, v1                                // 00000044: 1202020C
  v_add_i32     v1, vcc, v0, v1                             // 00000048: 4A020300
  v_add_i32     v1, vcc, s1, v1                             // 0000004C: 4A020201
  s_add_i32     s1, s12, s4                                 // 00000050: 8101040C
  v_lshlrev_b32  v2, 8, v0                                  // 00000054: 34040088
  s_mul_i32     s0, s1, s0                                  // 00000058: 93000001
  s_lshl_b32    s0, s0, 8                                   // 0000005C: 8F008800
  v_add_i32     v3, vcc, s0, v2                             // 00000060: 4A060400
  v_lshlrev_b32  v3, 2, v3                                  // 00000064: 34060682
  v_add_i32     v3, vcc, s6, v3                             // 00000068: 4A060606
  tbuffer_load_format_x  v4, v3, s[16:19], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000006C: EBA01000 80040403
  tbuffer_load_format_x  v5, v3, s[16:19], 0 offen offset:4 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000074: EBA01004 80040503
  tbuffer_load_format_x  v6, v3, s[16:19], 0 offen offset:8 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000007C: EBA01008 80040603
  tbuffer_load_format_x  v7, v3, s[16:19], 0 offen offset:12 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000084: EBA0100C 80040703
  v_lshlrev_b32  v0, 9, v0                                  // 0000008C: 34000089
  v_or_b32      v0, 8, v0                                   // 00000090: 38000088
  v_add_i32     v0, vcc, s13, v0                            // 00000094: 4A00000D
  v_add_i32     v8, vcc, -8, v0                             // 00000098: 4A1000C8
  tbuffer_load_format_x  v9, v3, s[16:19], 0 offen offset:16 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000009C: EBA01010 80040903
  tbuffer_load_format_x  v10, v3, s[16:19], 0 offen offset:20 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000000A4: EBA01014 80040A03
  tbuffer_load_format_x  v11, v3, s[16:19], 0 offen offset:24 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000000AC: EBA01018 80040B03
  tbuffer_load_format_x  v12, v3, s[16:19], 0 offen offset:28 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000000B4: EBA0101C 80040C03
  s_waitcnt     vmcnt(7)                                    // 000000BC: BF8C1F77
  v_and_b32     v4, 0x0000ffff, v4                          // 000000C0: 360808FF 0000FFFF
  s_waitcnt     vmcnt(6)                                    // 000000C8: BF8C1F76
  ds_write_b16  v8, v4                                      // 000000CC: D87C0000 00000408
  v_add_i32     v4, vcc, -6, v0                             // 000000D4: 4A0800C6
  v_and_b32     v5, 0x0000ffff, v5                          // 000000D8: 360A0AFF 0000FFFF
  ds_write_b16  v4, v5                                      // 000000E0: D87C0000 00000504
  tbuffer_load_format_x  v4, v3, s[16:19], 0 offen offset:32 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000000E8: EBA01020 80040403
  tbuffer_load_format_x  v5, v3, s[16:19], 0 offen offset:36 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000000F0: EBA01024 80040503
  tbuffer_load_format_x  v8, v3, s[16:19], 0 offen offset:40 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000000F8: EBA01028 80040803
  tbuffer_load_format_x  v13, v3, s[16:19], 0 offen offset:44 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000100: EBA0102C 80040D03
  v_add_i32     v14, vcc, -4, v0                            // 00000108: 4A1C00C4
  s_waitcnt     vmcnt(9)                                    // 0000010C: BF8C1F79
  v_and_b32     v6, 0x0000ffff, v6                          // 00000110: 360C0CFF 0000FFFF
  ds_write_b16  v14, v6                                     // 00000118: D87C0000 0000060E
  v_add_i32     v6, vcc, -2, v0                             // 00000120: 4A0C00C2
  tbuffer_load_format_x  v14, v3, s[16:19], 0 offen offset:48 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000124: EBA01030 80040E03
  tbuffer_load_format_x  v15, v3, s[16:19], 0 offen offset:52 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000012C: EBA01034 80040F03
  tbuffer_load_format_x  v16, v3, s[16:19], 0 offen offset:56 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000134: EBA01038 80041003
  tbuffer_load_format_x  v17, v3, s[16:19], 0 offen offset:60 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000013C: EBA0103C 80041103
  s_waitcnt     vmcnt(12)                                   // 00000144: BF8C1F7C
  v_and_b32     v7, 0x0000ffff, v7                          // 00000148: 360E0EFF 0000FFFF
  ds_write_b16  v6, v7                                      // 00000150: D87C0000 00000706
  s_waitcnt     vmcnt(11)                                   // 00000158: BF8C1F7B
  v_and_b32     v6, 0x0000ffff, v9                          // 0000015C: 360C12FF 0000FFFF
  ds_write_b16  v0, v6                                      // 00000164: D87C0000 00000600
  tbuffer_load_format_x  v6, v3, s[16:19], 0 offen offset:64 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000016C: EBA01040 80040603
  tbuffer_load_format_x  v7, v3, s[16:19], 0 offen offset:68 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000174: EBA01044 80040703
  tbuffer_load_format_x  v9, v3, s[16:19], 0 offen offset:72 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000017C: EBA01048 80040903
  tbuffer_load_format_x  v18, v3, s[16:19], 0 offen offset:76 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000184: EBA0104C 80041203
  v_add_i32     v19, vcc, 2, v0                             // 0000018C: 4A260082
  s_waitcnt     vmcnt(14)                                   // 00000190: BF8C1F7E
  v_and_b32     v10, 0x0000ffff, v10                        // 00000194: 361414FF 0000FFFF
  ds_write_b16  v19, v10                                    // 0000019C: D87C0000 00000A13
  v_add_i32     v10, vcc, 4, v0                             // 000001A4: 4A140084
  tbuffer_load_format_x  v19, v3, s[16:19], 0 offen offset:80 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000001A8: EBA01050 80041303
  tbuffer_load_format_x  v20, v3, s[16:19], 0 offen offset:84 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000001B0: EBA01054 80041403
  v_and_b32     v11, 0x0000ffff, v11                        // 000001B8: 361616FF 0000FFFF
  ds_write_b16  v10, v11                                    // 000001C0: D87C0000 00000B0A
  v_add_i32     v10, vcc, 6, v0                             // 000001C8: 4A140086
  s_waitcnt     vmcnt(14)                                   // 000001CC: BF8C1F7E
  v_and_b32     v11, 0x0000ffff, v12                        // 000001D0: 361618FF 0000FFFF
  ds_write_b16  v10, v11                                    // 000001D8: D87C0000 00000B0A
  tbuffer_load_format_x  v10, v3, s[16:19], 0 offen offset:88 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000001E0: EBA01058 80040A03
  tbuffer_load_format_x  v11, v3, s[16:19], 0 offen offset:92 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000001E8: EBA0105C 80040B03
  v_add_i32     v12, vcc, 16, v0                            // 000001F0: 4A180090
  v_add_i32     v21, vcc, 8, v0                             // 000001F4: 4A2A0088
  v_and_b32     v4, 0x0000ffff, v4                          // 000001F8: 360808FF 0000FFFF
  ds_write_b16  v21, v4                                     // 00000200: D87C0000 00000415
  tbuffer_load_format_x  v4, v3, s[16:19], 0 offen offset:96 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000208: EBA01060 80040403
  v_add_i32     v21, vcc, 10, v0                            // 00000210: 4A2A008A
  v_and_b32     v5, 0x0000ffff, v5                          // 00000214: 360A0AFF 0000FFFF
  ds_write_b16  v21, v5                                     // 0000021C: D87C0000 00000515
  v_add_i32     v5, vcc, 12, v0                             // 00000224: 4A0A008C
  tbuffer_load_format_x  v21, v3, s[16:19], 0 offen offset:100 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000228: EBA01064 80041503
  v_and_b32     v8, 0x0000ffff, v8                          // 00000230: 361010FF 0000FFFF
  ds_write_b16  v5, v8                                      // 00000238: D87C0000 00000805
  v_add_i32     v5, vcc, 14, v0                             // 00000240: 4A0A008E
  s_waitcnt     vmcnt(14)                                   // 00000244: BF8C1F7E
  v_and_b32     v8, 0x0000ffff, v13                         // 00000248: 36101AFF 0000FFFF
  ds_write_b16  v5, v8                                      // 00000250: D87C0000 00000805
  tbuffer_load_format_x  v5, v3, s[16:19], 0 offen offset:104 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000258: EBA01068 80040503
  tbuffer_load_format_x  v8, v3, s[16:19], 0 offen offset:108 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000260: EBA0106C 80040803
  v_and_b32     v13, 0x0000ffff, v14                        // 00000268: 361A1CFF 0000FFFF
  ds_write_b16  v12, v13                                    // 00000270: D87C0000 00000D0C
  v_add_i32     v12, vcc, 18, v0                            // 00000278: 4A180092
  s_waitcnt     vmcnt(14)                                   // 0000027C: BF8C1F7E
  v_and_b32     v13, 0x0000ffff, v15                        // 00000280: 361A1EFF 0000FFFF
  ds_write_b16  v12, v13                                    // 00000288: D87C0000 00000D0C
  tbuffer_load_format_x  v12, v3, s[16:19], 0 offen offset:112 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000290: EBA01070 80040C03
  tbuffer_load_format_x  v13, v3, s[16:19], 0 offen offset:116 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000298: EBA01074 80040D03
  v_add_i32     v14, vcc, 20, v0                            // 000002A0: 4A1C0094
  v_and_b32     v15, 0x0000ffff, v16                        // 000002A4: 361E20FF 0000FFFF
  ds_write_b16  v14, v15                                    // 000002AC: D87C0000 00000F0E
  v_add_i32     v14, vcc, 22, v0                            // 000002B4: 4A1C0096
  tbuffer_load_format_x  v15, v3, s[16:19], 0 offen offset:120 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000002B8: EBA01078 80040F03
  v_and_b32     v16, 0x0000ffff, v17                        // 000002C0: 362022FF 0000FFFF
  ds_write_b16  v14, v16                                    // 000002C8: D87C0000 0000100E
  v_add_i32     v14, vcc, 32, v0                            // 000002D0: 4A1C00A0
  v_add_i32     v16, vcc, 24, v0                            // 000002D4: 4A200098
  tbuffer_load_format_x  v17, v3, s[16:19], 0 offen offset:124 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000002D8: EBA0107C 80041103
  v_and_b32     v6, 0x0000ffff, v6                          // 000002E0: 360C0CFF 0000FFFF
  ds_write_b16  v16, v6                                     // 000002E8: D87C0000 00000610
  v_add_i32     v6, vcc, 26, v0                             // 000002F0: 4A0C009A
  s_waitcnt     vmcnt(14)                                   // 000002F4: BF8C1F7E
  v_and_b32     v7, 0x0000ffff, v7                          // 000002F8: 360E0EFF 0000FFFF
  ds_write_b16  v6, v7                                      // 00000300: D87C0000 00000706
  tbuffer_load_format_x  v6, v3, s[16:19], 0 offen offset:128 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000308: EBA01080 80040603
  tbuffer_load_format_x  v7, v3, s[16:19], 0 offen offset:132 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000310: EBA01084 80040703
  v_add_i32     v16, vcc, 28, v0                            // 00000318: 4A20009C
  v_and_b32     v9, 0x0000ffff, v9                          // 0000031C: 361212FF 0000FFFF
  ds_write_b16  v16, v9                                     // 00000324: D87C0000 00000910
  v_add_i32     v9, vcc, 30, v0                             // 0000032C: 4A12009E
  tbuffer_load_format_x  v16, v3, s[16:19], 0 offen offset:136 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000330: EBA01088 80041003
  v_and_b32     v18, 0x0000ffff, v18                        // 00000338: 362424FF 0000FFFF
  ds_write_b16  v9, v18                                     // 00000340: D87C0000 00001209
  s_waitcnt     vmcnt(14)                                   // 00000348: BF8C1F7E
  v_and_b32     v9, 0x0000ffff, v19                         // 0000034C: 361226FF 0000FFFF
  ds_write_b16  v14, v9                                     // 00000354: D87C0000 0000090E
  tbuffer_load_format_x  v9, v3, s[16:19], 0 offen offset:140 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000035C: EBA0108C 80040903
  tbuffer_load_format_x  v14, v3, s[16:19], 0 offen offset:144 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000364: EBA01090 80040E03
  v_add_i32     v18, vcc, 34, v0                            // 0000036C: 4A2400A2
  v_and_b32     v19, 0x0000ffff, v20                        // 00000370: 362628FF 0000FFFF
  ds_write_b16  v18, v19                                    // 00000378: D87C0000 00001312
  v_add_i32     v18, vcc, 36, v0                            // 00000380: 4A2400A4
  tbuffer_load_format_x  v19, v3, s[16:19], 0 offen offset:148 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000384: EBA01094 80041303
  v_and_b32     v10, 0x0000ffff, v10                        // 0000038C: 361414FF 0000FFFF
  ds_write_b16  v18, v10                                    // 00000394: D87C0000 00000A12
  v_add_i32     v10, vcc, 38, v0                            // 0000039C: 4A1400A6
  s_waitcnt     vmcnt(14)                                   // 000003A0: BF8C1F7E
  v_and_b32     v11, 0x0000ffff, v11                        // 000003A4: 361616FF 0000FFFF
  ds_write_b16  v10, v11                                    // 000003AC: D87C0000 00000B0A
  tbuffer_load_format_x  v10, v3, s[16:19], 0 offen offset:152 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000003B4: EBA01098 80040A03
  tbuffer_load_format_x  v11, v3, s[16:19], 0 offen offset:156 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000003BC: EBA0109C 80040B03
  v_add_i32     v18, vcc, 48, v0                            // 000003C4: 4A2400B0
  v_add_i32     v20, vcc, 40, v0                            // 000003C8: 4A2800A8
  v_and_b32     v4, 0x0000ffff, v4                          // 000003CC: 360808FF 0000FFFF
  ds_write_b16  v20, v4                                     // 000003D4: D87C0000 00000414
  tbuffer_load_format_x  v4, v3, s[16:19], 0 offen offset:160 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000003DC: EBA010A0 80040403
  v_add_i32     v20, vcc, 42, v0                            // 000003E4: 4A2800AA
  v_and_b32     v21, 0x0000ffff, v21                        // 000003E8: 362A2AFF 0000FFFF
  ds_write_b16  v20, v21                                    // 000003F0: D87C0000 00001514
  v_add_i32     v20, vcc, 44, v0                            // 000003F8: 4A2800AC
  tbuffer_load_format_x  v21, v3, s[16:19], 0 offen offset:164 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000003FC: EBA010A4 80041503
  v_and_b32     v5, 0x0000ffff, v5                          // 00000404: 360A0AFF 0000FFFF
  ds_write_b16  v20, v5                                     // 0000040C: D87C0000 00000514
  v_add_i32     v5, vcc, 46, v0                             // 00000414: 4A0A00AE
  s_waitcnt     vmcnt(14)                                   // 00000418: BF8C1F7E
  v_and_b32     v8, 0x0000ffff, v8                          // 0000041C: 361010FF 0000FFFF
  ds_write_b16  v5, v8                                      // 00000424: D87C0000 00000805
  tbuffer_load_format_x  v5, v3, s[16:19], 0 offen offset:168 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000042C: EBA010A8 80040503
  tbuffer_load_format_x  v8, v3, s[16:19], 0 offen offset:172 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000434: EBA010AC 80040803
  v_and_b32     v12, 0x0000ffff, v12                        // 0000043C: 361818FF 0000FFFF
  ds_write_b16  v18, v12                                    // 00000444: D87C0000 00000C12
  v_add_i32     v12, vcc, 50, v0                            // 0000044C: 4A1800B2
  s_waitcnt     vmcnt(14)                                   // 00000450: BF8C1F7E
  v_and_b32     v13, 0x0000ffff, v13                        // 00000454: 361A1AFF 0000FFFF
  ds_write_b16  v12, v13                                    // 0000045C: D87C0000 00000D0C
  tbuffer_load_format_x  v12, v3, s[16:19], 0 offen offset:176 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000464: EBA010B0 80040C03
  tbuffer_load_format_x  v13, v3, s[16:19], 0 offen offset:180 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000046C: EBA010B4 80040D03
  v_add_i32     v18, vcc, 52, v0                            // 00000474: 4A2400B4
  v_and_b32     v15, 0x0000ffff, v15                        // 00000478: 361E1EFF 0000FFFF
  ds_write_b16  v18, v15                                    // 00000480: D87C0000 00000F12
  v_add_i32     v15, vcc, 54, v0                            // 00000488: 4A1E00B6
  tbuffer_load_format_x  v18, v3, s[16:19], 0 offen offset:184 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000048C: EBA010B8 80041203
  v_and_b32     v17, 0x0000ffff, v17                        // 00000494: 362222FF 0000FFFF
  ds_write_b16  v15, v17                                    // 0000049C: D87C0000 0000110F
  v_add_i32     v15, vcc, 64, v0                            // 000004A4: 4A1E00C0
  v_add_i32     v17, vcc, 56, v0                            // 000004A8: 4A2200B8
  tbuffer_load_format_x  v20, v3, s[16:19], 0 offen offset:188 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000004AC: EBA010BC 80041403
  v_and_b32     v6, 0x0000ffff, v6                          // 000004B4: 360C0CFF 0000FFFF
  ds_write_b16  v17, v6                                     // 000004BC: D87C0000 00000611
  v_add_i32     v6, vcc, 58, v0                             // 000004C4: 4A0C00BA
  s_waitcnt     vmcnt(14)                                   // 000004C8: BF8C1F7E
  v_and_b32     v7, 0x0000ffff, v7                          // 000004CC: 360E0EFF 0000FFFF
  ds_write_b16  v6, v7                                      // 000004D4: D87C0000 00000706
  tbuffer_load_format_x  v6, v3, s[16:19], 0 offen offset:192 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000004DC: EBA010C0 80040603
  tbuffer_load_format_x  v7, v3, s[16:19], 0 offen offset:196 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000004E4: EBA010C4 80040703
  v_add_i32     v17, vcc, 60, v0                            // 000004EC: 4A2200BC
  v_and_b32     v16, 0x0000ffff, v16                        // 000004F0: 362020FF 0000FFFF
  ds_write_b16  v17, v16                                    // 000004F8: D87C0000 00001011
  v_add_i32     v16, vcc, 62, v0                            // 00000500: 4A2000BE
  tbuffer_load_format_x  v17, v3, s[16:19], 0 offen offset:200 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000504: EBA010C8 80041103
  v_and_b32     v9, 0x0000ffff, v9                          // 0000050C: 361212FF 0000FFFF
  ds_write_b16  v16, v9                                     // 00000514: D87C0000 00000910
  s_waitcnt     vmcnt(14)                                   // 0000051C: BF8C1F7E
  v_and_b32     v9, 0x0000ffff, v14                         // 00000520: 36121CFF 0000FFFF
  ds_write_b16  v15, v9                                     // 00000528: D87C0000 0000090F
  tbuffer_load_format_x  v9, v3, s[16:19], 0 offen offset:204 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000530: EBA010CC 80040903
  tbuffer_load_format_x  v14, v3, s[16:19], 0 offen offset:208 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000538: EBA010D0 80040E03
  v_add_i32     v15, vcc, 0x00000042, v0                    // 00000540: 4A1E00FF 00000042
  v_and_b32     v16, 0x0000ffff, v19                        // 00000548: 362026FF 0000FFFF
  ds_write_b16  v15, v16                                    // 00000550: D87C0000 0000100F
  v_add_i32     v15, vcc, 0x00000044, v0                    // 00000558: 4A1E00FF 00000044
  tbuffer_load_format_x  v16, v3, s[16:19], 0 offen offset:212 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000560: EBA010D4 80041003
  v_and_b32     v10, 0x0000ffff, v10                        // 00000568: 361414FF 0000FFFF
  ds_write_b16  v15, v10                                    // 00000570: D87C0000 00000A0F
  v_add_i32     v10, vcc, 0x00000046, v0                    // 00000578: 4A1400FF 00000046
  s_waitcnt     vmcnt(14)                                   // 00000580: BF8C1F7E
  v_and_b32     v11, 0x0000ffff, v11                        // 00000584: 361616FF 0000FFFF
  ds_write_b16  v10, v11                                    // 0000058C: D87C0000 00000B0A
  tbuffer_load_format_x  v10, v3, s[16:19], 0 offen offset:216 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000594: EBA010D8 80040A03
  tbuffer_load_format_x  v11, v3, s[16:19], 0 offen offset:220 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000059C: EBA010DC 80040B03
  v_add_i32     v15, vcc, 0x00000050, v0                    // 000005A4: 4A1E00FF 00000050
  v_add_i32     v19, vcc, 0x00000048, v0                    // 000005AC: 4A2600FF 00000048
  v_and_b32     v4, 0x0000ffff, v4                          // 000005B4: 360808FF 0000FFFF
  ds_write_b16  v19, v4                                     // 000005BC: D87C0000 00000413
  tbuffer_load_format_x  v4, v3, s[16:19], 0 offen offset:224 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000005C4: EBA010E0 80040403
  v_add_i32     v19, vcc, 0x0000004a, v0                    // 000005CC: 4A2600FF 0000004A
  v_and_b32     v21, 0x0000ffff, v21                        // 000005D4: 362A2AFF 0000FFFF
  ds_write_b16  v19, v21                                    // 000005DC: D87C0000 00001513
  v_add_i32     v19, vcc, 0x0000004c, v0                    // 000005E4: 4A2600FF 0000004C
  tbuffer_load_format_x  v21, v3, s[16:19], 0 offen offset:228 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000005EC: EBA010E4 80041503
  v_and_b32     v5, 0x0000ffff, v5                          // 000005F4: 360A0AFF 0000FFFF
  ds_write_b16  v19, v5                                     // 000005FC: D87C0000 00000513
  v_add_i32     v5, vcc, 0x0000004e, v0                     // 00000604: 4A0A00FF 0000004E
  s_waitcnt     vmcnt(14)                                   // 0000060C: BF8C1F7E
  v_and_b32     v8, 0x0000ffff, v8                          // 00000610: 361010FF 0000FFFF
  ds_write_b16  v5, v8                                      // 00000618: D87C0000 00000805
  tbuffer_load_format_x  v5, v3, s[16:19], 0 offen offset:232 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000620: EBA010E8 80040503
  tbuffer_load_format_x  v8, v3, s[16:19], 0 offen offset:236 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000628: EBA010EC 80040803
  v_and_b32     v12, 0x0000ffff, v12                        // 00000630: 361818FF 0000FFFF
  ds_write_b16  v15, v12                                    // 00000638: D87C0000 00000C0F
  v_add_i32     v12, vcc, 0x00000052, v0                    // 00000640: 4A1800FF 00000052
  s_waitcnt     vmcnt(14)                                   // 00000648: BF8C1F7E
  v_and_b32     v13, 0x0000ffff, v13                        // 0000064C: 361A1AFF 0000FFFF
  ds_write_b16  v12, v13                                    // 00000654: D87C0000 00000D0C
  tbuffer_load_format_x  v12, v3, s[16:19], 0 offen offset:240 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000065C: EBA010F0 80040C03
  tbuffer_load_format_x  v13, v3, s[16:19], 0 offen offset:244 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000664: EBA010F4 80040D03
  v_add_i32     v15, vcc, 0x00000054, v0                    // 0000066C: 4A1E00FF 00000054
  v_and_b32     v18, 0x0000ffff, v18                        // 00000674: 362424FF 0000FFFF
  ds_write_b16  v15, v18                                    // 0000067C: D87C0000 0000120F
  v_add_i32     v15, vcc, 0x00000056, v0                    // 00000684: 4A1E00FF 00000056
  tbuffer_load_format_x  v18, v3, s[16:19], 0 offen offset:248 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000068C: EBA010F8 80041203
  v_and_b32     v19, 0x0000ffff, v20                        // 00000694: 362628FF 0000FFFF
  ds_write_b16  v15, v19                                    // 0000069C: D87C0000 0000130F
  v_add_i32     v15, vcc, 0x00000060, v0                    // 000006A4: 4A1E00FF 00000060
  v_add_i32     v19, vcc, 0x00000058, v0                    // 000006AC: 4A2600FF 00000058
  tbuffer_load_format_x  v20, v3, s[16:19], 0 offen offset:252 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000006B4: EBA010FC 80041403
  v_and_b32     v6, 0x0000ffff, v6                          // 000006BC: 360C0CFF 0000FFFF
  ds_write_b16  v19, v6                                     // 000006C4: D87C0000 00000613
  v_add_i32     v6, vcc, 0x0000005a, v0                     // 000006CC: 4A0C00FF 0000005A
  s_waitcnt     vmcnt(14)                                   // 000006D4: BF8C1F7E
  v_and_b32     v7, 0x0000ffff, v7                          // 000006D8: 360E0EFF 0000FFFF
  ds_write_b16  v6, v7                                      // 000006E0: D87C0000 00000706
  tbuffer_load_format_x  v6, v3, s[16:19], 0 offen offset:256 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000006E8: EBA01100 80040603
  tbuffer_load_format_x  v7, v3, s[16:19], 0 offen offset:260 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000006F0: EBA01104 80040703
  v_add_i32     v19, vcc, 0x0000005c, v0                    // 000006F8: 4A2600FF 0000005C
  v_and_b32     v17, 0x0000ffff, v17                        // 00000700: 362222FF 0000FFFF
  ds_write_b16  v19, v17                                    // 00000708: D87C0000 00001113
  v_add_i32     v17, vcc, 0x0000005e, v0                    // 00000710: 4A2200FF 0000005E
  tbuffer_load_format_x  v19, v3, s[16:19], 0 offen offset:264 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000718: EBA01108 80041303
  v_and_b32     v9, 0x0000ffff, v9                          // 00000720: 361212FF 0000FFFF
  ds_write_b16  v17, v9                                     // 00000728: D87C0000 00000911
  s_waitcnt     vmcnt(14)                                   // 00000730: BF8C1F7E
  v_and_b32     v9, 0x0000ffff, v14                         // 00000734: 36121CFF 0000FFFF
  ds_write_b16  v15, v9                                     // 0000073C: D87C0000 0000090F
  tbuffer_load_format_x  v9, v3, s[16:19], 0 offen offset:268 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000744: EBA0110C 80040903
  tbuffer_load_format_x  v14, v3, s[16:19], 0 offen offset:272 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000074C: EBA01110 80040E03
  v_add_i32     v15, vcc, 0x00000062, v0                    // 00000754: 4A1E00FF 00000062
  v_and_b32     v16, 0x0000ffff, v16                        // 0000075C: 362020FF 0000FFFF
  ds_write_b16  v15, v16                                    // 00000764: D87C0000 0000100F
  v_add_i32     v15, vcc, 0x00000064, v0                    // 0000076C: 4A1E00FF 00000064
  tbuffer_load_format_x  v16, v3, s[16:19], 0 offen offset:276 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000774: EBA01114 80041003
  v_and_b32     v10, 0x0000ffff, v10                        // 0000077C: 361414FF 0000FFFF
  ds_write_b16  v15, v10                                    // 00000784: D87C0000 00000A0F
  v_add_i32     v10, vcc, 0x00000066, v0                    // 0000078C: 4A1400FF 00000066
  s_waitcnt     vmcnt(14)                                   // 00000794: BF8C1F7E
  v_and_b32     v11, 0x0000ffff, v11                        // 00000798: 361616FF 0000FFFF
  ds_write_b16  v10, v11                                    // 000007A0: D87C0000 00000B0A
  tbuffer_load_format_x  v10, v3, s[16:19], 0 offen offset:280 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000007A8: EBA01118 80040A03
  tbuffer_load_format_x  v11, v3, s[16:19], 0 offen offset:284 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000007B0: EBA0111C 80040B03
  v_add_i32     v15, vcc, 0x00000070, v0                    // 000007B8: 4A1E00FF 00000070
  v_add_i32     v17, vcc, 0x00000068, v0                    // 000007C0: 4A2200FF 00000068
  v_and_b32     v4, 0x0000ffff, v4                          // 000007C8: 360808FF 0000FFFF
  ds_write_b16  v17, v4                                     // 000007D0: D87C0000 00000411
  tbuffer_load_format_x  v4, v3, s[16:19], 0 offen offset:288 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000007D8: EBA01120 80040403
  v_add_i32     v17, vcc, 0x0000006a, v0                    // 000007E0: 4A2200FF 0000006A
  v_and_b32     v21, 0x0000ffff, v21                        // 000007E8: 362A2AFF 0000FFFF
  ds_write_b16  v17, v21                                    // 000007F0: D87C0000 00001511
  v_add_i32     v17, vcc, 0x0000006c, v0                    // 000007F8: 4A2200FF 0000006C
  tbuffer_load_format_x  v21, v3, s[16:19], 0 offen offset:292 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000800: EBA01124 80041503
  v_and_b32     v5, 0x0000ffff, v5                          // 00000808: 360A0AFF 0000FFFF
  ds_write_b16  v17, v5                                     // 00000810: D87C0000 00000511
  v_add_i32     v5, vcc, 0x0000006e, v0                     // 00000818: 4A0A00FF 0000006E
  s_waitcnt     vmcnt(14)                                   // 00000820: BF8C1F7E
  v_and_b32     v8, 0x0000ffff, v8                          // 00000824: 361010FF 0000FFFF
  ds_write_b16  v5, v8                                      // 0000082C: D87C0000 00000805
  tbuffer_load_format_x  v5, v3, s[16:19], 0 offen offset:296 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000834: EBA01128 80040503
  tbuffer_load_format_x  v8, v3, s[16:19], 0 offen offset:300 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000083C: EBA0112C 80040803
  v_and_b32     v12, 0x0000ffff, v12                        // 00000844: 361818FF 0000FFFF
  ds_write_b16  v15, v12                                    // 0000084C: D87C0000 00000C0F
  v_add_i32     v12, vcc, 0x00000072, v0                    // 00000854: 4A1800FF 00000072
  s_waitcnt     vmcnt(14)                                   // 0000085C: BF8C1F7E
  v_and_b32     v13, 0x0000ffff, v13                        // 00000860: 361A1AFF 0000FFFF
  ds_write_b16  v12, v13                                    // 00000868: D87C0000 00000D0C
  tbuffer_load_format_x  v12, v3, s[16:19], 0 offen offset:304 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000870: EBA01130 80040C03
  tbuffer_load_format_x  v13, v3, s[16:19], 0 offen offset:308 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000878: EBA01134 80040D03
  v_add_i32     v15, vcc, 0x00000074, v0                    // 00000880: 4A1E00FF 00000074
  v_and_b32     v17, 0x0000ffff, v18                        // 00000888: 362224FF 0000FFFF
  ds_write_b16  v15, v17                                    // 00000890: D87C0000 0000110F
  v_add_i32     v15, vcc, 0x00000076, v0                    // 00000898: 4A1E00FF 00000076
  tbuffer_load_format_x  v17, v3, s[16:19], 0 offen offset:312 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000008A0: EBA01138 80041103
  v_and_b32     v18, 0x0000ffff, v20                        // 000008A8: 362428FF 0000FFFF
  ds_write_b16  v15, v18                                    // 000008B0: D87C0000 0000120F
  v_add_i32     v15, vcc, 0x00000080, v0                    // 000008B8: 4A1E00FF 00000080
  v_add_i32     v18, vcc, 0x00000078, v0                    // 000008C0: 4A2400FF 00000078
  tbuffer_load_format_x  v20, v3, s[16:19], 0 offen offset:316 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000008C8: EBA0113C 80041403
  v_and_b32     v6, 0x0000ffff, v6                          // 000008D0: 360C0CFF 0000FFFF
  ds_write_b16  v18, v6                                     // 000008D8: D87C0000 00000612
  v_add_i32     v6, vcc, 0x0000007a, v0                     // 000008E0: 4A0C00FF 0000007A
  s_waitcnt     vmcnt(14)                                   // 000008E8: BF8C1F7E
  v_and_b32     v7, 0x0000ffff, v7                          // 000008EC: 360E0EFF 0000FFFF
  ds_write_b16  v6, v7                                      // 000008F4: D87C0000 00000706
  tbuffer_load_format_x  v6, v3, s[16:19], 0 offen offset:320 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000008FC: EBA01140 80040603
  tbuffer_load_format_x  v7, v3, s[16:19], 0 offen offset:324 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000904: EBA01144 80040703
  v_add_i32     v18, vcc, 0x0000007c, v0                    // 0000090C: 4A2400FF 0000007C
  v_and_b32     v19, 0x0000ffff, v19                        // 00000914: 362626FF 0000FFFF
  ds_write_b16  v18, v19                                    // 0000091C: D87C0000 00001312
  v_add_i32     v18, vcc, 0x0000007e, v0                    // 00000924: 4A2400FF 0000007E
  tbuffer_load_format_x  v19, v3, s[16:19], 0 offen offset:328 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000092C: EBA01148 80041303
  v_and_b32     v9, 0x0000ffff, v9                          // 00000934: 361212FF 0000FFFF
  ds_write_b16  v18, v9                                     // 0000093C: D87C0000 00000912
  s_waitcnt     vmcnt(14)                                   // 00000944: BF8C1F7E
  v_and_b32     v9, 0x0000ffff, v14                         // 00000948: 36121CFF 0000FFFF
  ds_write_b16  v15, v9                                     // 00000950: D87C0000 0000090F
  tbuffer_load_format_x  v9, v3, s[16:19], 0 offen offset:332 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000958: EBA0114C 80040903
  tbuffer_load_format_x  v14, v3, s[16:19], 0 offen offset:336 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000960: EBA01150 80040E03
  v_add_i32     v15, vcc, 0x00000082, v0                    // 00000968: 4A1E00FF 00000082
  v_and_b32     v16, 0x0000ffff, v16                        // 00000970: 362020FF 0000FFFF
  ds_write_b16  v15, v16                                    // 00000978: D87C0000 0000100F
  v_add_i32     v15, vcc, 0x00000084, v0                    // 00000980: 4A1E00FF 00000084
  tbuffer_load_format_x  v16, v3, s[16:19], 0 offen offset:340 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000988: EBA01154 80041003
  v_and_b32     v10, 0x0000ffff, v10                        // 00000990: 361414FF 0000FFFF
  ds_write_b16  v15, v10                                    // 00000998: D87C0000 00000A0F
  v_add_i32     v10, vcc, 0x00000086, v0                    // 000009A0: 4A1400FF 00000086
  s_waitcnt     vmcnt(14)                                   // 000009A8: BF8C1F7E
  v_and_b32     v11, 0x0000ffff, v11                        // 000009AC: 361616FF 0000FFFF
  ds_write_b16  v10, v11                                    // 000009B4: D87C0000 00000B0A
  tbuffer_load_format_x  v10, v3, s[16:19], 0 offen offset:344 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000009BC: EBA01158 80040A03
  tbuffer_load_format_x  v11, v3, s[16:19], 0 offen offset:348 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000009C4: EBA0115C 80040B03
  v_add_i32     v15, vcc, 0x00000090, v0                    // 000009CC: 4A1E00FF 00000090
  v_add_i32     v18, vcc, 0x00000088, v0                    // 000009D4: 4A2400FF 00000088
  v_and_b32     v4, 0x0000ffff, v4                          // 000009DC: 360808FF 0000FFFF
  ds_write_b16  v18, v4                                     // 000009E4: D87C0000 00000412
  tbuffer_load_format_x  v4, v3, s[16:19], 0 offen offset:352 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000009EC: EBA01160 80040403
  v_add_i32     v18, vcc, 0x0000008a, v0                    // 000009F4: 4A2400FF 0000008A
  v_and_b32     v21, 0x0000ffff, v21                        // 000009FC: 362A2AFF 0000FFFF
  ds_write_b16  v18, v21                                    // 00000A04: D87C0000 00001512
  v_add_i32     v18, vcc, 0x0000008c, v0                    // 00000A0C: 4A2400FF 0000008C
  tbuffer_load_format_x  v21, v3, s[16:19], 0 offen offset:356 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000A14: EBA01164 80041503
  v_and_b32     v5, 0x0000ffff, v5                          // 00000A1C: 360A0AFF 0000FFFF
  ds_write_b16  v18, v5                                     // 00000A24: D87C0000 00000512
  v_add_i32     v5, vcc, 0x0000008e, v0                     // 00000A2C: 4A0A00FF 0000008E
  s_waitcnt     vmcnt(14)                                   // 00000A34: BF8C1F7E
  v_and_b32     v8, 0x0000ffff, v8                          // 00000A38: 361010FF 0000FFFF
  ds_write_b16  v5, v8                                      // 00000A40: D87C0000 00000805
  tbuffer_load_format_x  v5, v3, s[16:19], 0 offen offset:360 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000A48: EBA01168 80040503
  tbuffer_load_format_x  v8, v3, s[16:19], 0 offen offset:364 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000A50: EBA0116C 80040803
  v_and_b32     v12, 0x0000ffff, v12                        // 00000A58: 361818FF 0000FFFF
  ds_write_b16  v15, v12                                    // 00000A60: D87C0000 00000C0F
  v_add_i32     v12, vcc, 0x00000092, v0                    // 00000A68: 4A1800FF 00000092
  s_waitcnt     vmcnt(14)                                   // 00000A70: BF8C1F7E
  v_and_b32     v13, 0x0000ffff, v13                        // 00000A74: 361A1AFF 0000FFFF
  ds_write_b16  v12, v13                                    // 00000A7C: D87C0000 00000D0C
  tbuffer_load_format_x  v12, v3, s[16:19], 0 offen offset:368 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000A84: EBA01170 80040C03
  tbuffer_load_format_x  v13, v3, s[16:19], 0 offen offset:372 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000A8C: EBA01174 80040D03
  v_add_i32     v15, vcc, 0x00000094, v0                    // 00000A94: 4A1E00FF 00000094
  v_and_b32     v17, 0x0000ffff, v17                        // 00000A9C: 362222FF 0000FFFF
  ds_write_b16  v15, v17                                    // 00000AA4: D87C0000 0000110F
  v_add_i32     v15, vcc, 0x00000096, v0                    // 00000AAC: 4A1E00FF 00000096
  tbuffer_load_format_x  v17, v3, s[16:19], 0 offen offset:376 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000AB4: EBA01178 80041103
  v_and_b32     v18, 0x0000ffff, v20                        // 00000ABC: 362428FF 0000FFFF
  ds_write_b16  v15, v18                                    // 00000AC4: D87C0000 0000120F
  v_add_i32     v15, vcc, 0x000000a0, v0                    // 00000ACC: 4A1E00FF 000000A0
  v_add_i32     v18, vcc, 0x00000098, v0                    // 00000AD4: 4A2400FF 00000098
  tbuffer_load_format_x  v20, v3, s[16:19], 0 offen offset:380 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000ADC: EBA0117C 80041403
  v_and_b32     v6, 0x0000ffff, v6                          // 00000AE4: 360C0CFF 0000FFFF
  ds_write_b16  v18, v6                                     // 00000AEC: D87C0000 00000612
  v_add_i32     v6, vcc, 0x0000009a, v0                     // 00000AF4: 4A0C00FF 0000009A
  s_waitcnt     vmcnt(14)                                   // 00000AFC: BF8C1F7E
  v_and_b32     v7, 0x0000ffff, v7                          // 00000B00: 360E0EFF 0000FFFF
  ds_write_b16  v6, v7                                      // 00000B08: D87C0000 00000706
  tbuffer_load_format_x  v6, v3, s[16:19], 0 offen offset:384 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000B10: EBA01180 80040603
  tbuffer_load_format_x  v7, v3, s[16:19], 0 offen offset:388 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000B18: EBA01184 80040703
  v_add_i32     v18, vcc, 0x0000009c, v0                    // 00000B20: 4A2400FF 0000009C
  v_and_b32     v19, 0x0000ffff, v19                        // 00000B28: 362626FF 0000FFFF
  ds_write_b16  v18, v19                                    // 00000B30: D87C0000 00001312
  v_add_i32     v18, vcc, 0x0000009e, v0                    // 00000B38: 4A2400FF 0000009E
  tbuffer_load_format_x  v19, v3, s[16:19], 0 offen offset:392 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000B40: EBA01188 80041303
  v_and_b32     v9, 0x0000ffff, v9                          // 00000B48: 361212FF 0000FFFF
  ds_write_b16  v18, v9                                     // 00000B50: D87C0000 00000912
  s_waitcnt     vmcnt(14)                                   // 00000B58: BF8C1F7E
  v_and_b32     v9, 0x0000ffff, v14                         // 00000B5C: 36121CFF 0000FFFF
  ds_write_b16  v15, v9                                     // 00000B64: D87C0000 0000090F
  tbuffer_load_format_x  v9, v3, s[16:19], 0 offen offset:396 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000B6C: EBA0118C 80040903
  tbuffer_load_format_x  v14, v3, s[16:19], 0 offen offset:400 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000B74: EBA01190 80040E03
  v_add_i32     v15, vcc, 0x000000a2, v0                    // 00000B7C: 4A1E00FF 000000A2
  v_and_b32     v16, 0x0000ffff, v16                        // 00000B84: 362020FF 0000FFFF
  ds_write_b16  v15, v16                                    // 00000B8C: D87C0000 0000100F
  v_add_i32     v15, vcc, 0x000000a4, v0                    // 00000B94: 4A1E00FF 000000A4
  tbuffer_load_format_x  v16, v3, s[16:19], 0 offen offset:404 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000B9C: EBA01194 80041003
  v_and_b32     v10, 0x0000ffff, v10                        // 00000BA4: 361414FF 0000FFFF
  ds_write_b16  v15, v10                                    // 00000BAC: D87C0000 00000A0F
  v_add_i32     v10, vcc, 0x000000a6, v0                    // 00000BB4: 4A1400FF 000000A6
  s_waitcnt     vmcnt(14)                                   // 00000BBC: BF8C1F7E
  v_and_b32     v11, 0x0000ffff, v11                        // 00000BC0: 361616FF 0000FFFF
  ds_write_b16  v10, v11                                    // 00000BC8: D87C0000 00000B0A
  tbuffer_load_format_x  v10, v3, s[16:19], 0 offen offset:408 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000BD0: EBA01198 80040A03
  tbuffer_load_format_x  v11, v3, s[16:19], 0 offen offset:412 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000BD8: EBA0119C 80040B03
  v_add_i32     v15, vcc, 0x000000b0, v0                    // 00000BE0: 4A1E00FF 000000B0
  v_add_i32     v18, vcc, 0x000000a8, v0                    // 00000BE8: 4A2400FF 000000A8
  v_and_b32     v4, 0x0000ffff, v4                          // 00000BF0: 360808FF 0000FFFF
  ds_write_b16  v18, v4                                     // 00000BF8: D87C0000 00000412
  tbuffer_load_format_x  v4, v3, s[16:19], 0 offen offset:416 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000C00: EBA011A0 80040403
  v_add_i32     v18, vcc, 0x000000aa, v0                    // 00000C08: 4A2400FF 000000AA
  v_and_b32     v21, 0x0000ffff, v21                        // 00000C10: 362A2AFF 0000FFFF
  ds_write_b16  v18, v21                                    // 00000C18: D87C0000 00001512
  v_add_i32     v18, vcc, 0x000000ac, v0                    // 00000C20: 4A2400FF 000000AC
  tbuffer_load_format_x  v21, v3, s[16:19], 0 offen offset:420 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000C28: EBA011A4 80041503
  v_and_b32     v5, 0x0000ffff, v5                          // 00000C30: 360A0AFF 0000FFFF
  ds_write_b16  v18, v5                                     // 00000C38: D87C0000 00000512
  v_add_i32     v5, vcc, 0x000000ae, v0                     // 00000C40: 4A0A00FF 000000AE
  s_waitcnt     vmcnt(14)                                   // 00000C48: BF8C1F7E
  v_and_b32     v8, 0x0000ffff, v8                          // 00000C4C: 361010FF 0000FFFF
  ds_write_b16  v5, v8                                      // 00000C54: D87C0000 00000805
  tbuffer_load_format_x  v5, v3, s[16:19], 0 offen offset:424 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000C5C: EBA011A8 80040503
  tbuffer_load_format_x  v8, v3, s[16:19], 0 offen offset:428 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000C64: EBA011AC 80040803
  v_and_b32     v12, 0x0000ffff, v12                        // 00000C6C: 361818FF 0000FFFF
  ds_write_b16  v15, v12                                    // 00000C74: D87C0000 00000C0F
  v_add_i32     v12, vcc, 0x000000b2, v0                    // 00000C7C: 4A1800FF 000000B2
  s_waitcnt     vmcnt(14)                                   // 00000C84: BF8C1F7E
  v_and_b32     v13, 0x0000ffff, v13                        // 00000C88: 361A1AFF 0000FFFF
  ds_write_b16  v12, v13                                    // 00000C90: D87C0000 00000D0C
  tbuffer_load_format_x  v12, v3, s[16:19], 0 offen offset:432 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000C98: EBA011B0 80040C03
  tbuffer_load_format_x  v13, v3, s[16:19], 0 offen offset:436 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000CA0: EBA011B4 80040D03
  v_add_i32     v15, vcc, 0x000000b4, v0                    // 00000CA8: 4A1E00FF 000000B4
  v_and_b32     v17, 0x0000ffff, v17                        // 00000CB0: 362222FF 0000FFFF
  ds_write_b16  v15, v17                                    // 00000CB8: D87C0000 0000110F
  v_add_i32     v15, vcc, 0x000000b6, v0                    // 00000CC0: 4A1E00FF 000000B6
  tbuffer_load_format_x  v17, v3, s[16:19], 0 offen offset:440 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000CC8: EBA011B8 80041103
  v_and_b32     v18, 0x0000ffff, v20                        // 00000CD0: 362428FF 0000FFFF
  ds_write_b16  v15, v18                                    // 00000CD8: D87C0000 0000120F
  v_add_i32     v15, vcc, 0x000000c0, v0                    // 00000CE0: 4A1E00FF 000000C0
  v_add_i32     v18, vcc, 0x000000b8, v0                    // 00000CE8: 4A2400FF 000000B8
  tbuffer_load_format_x  v20, v3, s[16:19], 0 offen offset:444 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000CF0: EBA011BC 80041403
  v_and_b32     v6, 0x0000ffff, v6                          // 00000CF8: 360C0CFF 0000FFFF
  ds_write_b16  v18, v6                                     // 00000D00: D87C0000 00000612
  v_add_i32     v6, vcc, 0x000000ba, v0                     // 00000D08: 4A0C00FF 000000BA
  s_waitcnt     vmcnt(14)                                   // 00000D10: BF8C1F7E
  v_and_b32     v7, 0x0000ffff, v7                          // 00000D14: 360E0EFF 0000FFFF
  ds_write_b16  v6, v7                                      // 00000D1C: D87C0000 00000706
  tbuffer_load_format_x  v6, v3, s[16:19], 0 offen offset:448 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000D24: EBA011C0 80040603
  tbuffer_load_format_x  v7, v3, s[16:19], 0 offen offset:452 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000D2C: EBA011C4 80040703
  v_add_i32     v18, vcc, 0x000000bc, v0                    // 00000D34: 4A2400FF 000000BC
  v_and_b32     v19, 0x0000ffff, v19                        // 00000D3C: 362626FF 0000FFFF
  ds_write_b16  v18, v19                                    // 00000D44: D87C0000 00001312
  v_add_i32     v18, vcc, 0x000000be, v0                    // 00000D4C: 4A2400FF 000000BE
  tbuffer_load_format_x  v19, v3, s[16:19], 0 offen offset:456 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000D54: EBA011C8 80041303
  v_and_b32     v9, 0x0000ffff, v9                          // 00000D5C: 361212FF 0000FFFF
  ds_write_b16  v18, v9                                     // 00000D64: D87C0000 00000912
  s_waitcnt     vmcnt(14)                                   // 00000D6C: BF8C1F7E
  v_and_b32     v9, 0x0000ffff, v14                         // 00000D70: 36121CFF 0000FFFF
  ds_write_b16  v15, v9                                     // 00000D78: D87C0000 0000090F
  tbuffer_load_format_x  v9, v3, s[16:19], 0 offen offset:460 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000D80: EBA011CC 80040903
  tbuffer_load_format_x  v14, v3, s[16:19], 0 offen offset:464 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000D88: EBA011D0 80040E03
  v_add_i32     v15, vcc, 0x000000c2, v0                    // 00000D90: 4A1E00FF 000000C2
  v_and_b32     v16, 0x0000ffff, v16                        // 00000D98: 362020FF 0000FFFF
  ds_write_b16  v15, v16                                    // 00000DA0: D87C0000 0000100F
  v_add_i32     v15, vcc, 0x000000c4, v0                    // 00000DA8: 4A1E00FF 000000C4
  tbuffer_load_format_x  v16, v3, s[16:19], 0 offen offset:468 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000DB0: EBA011D4 80041003
  v_and_b32     v10, 0x0000ffff, v10                        // 00000DB8: 361414FF 0000FFFF
  ds_write_b16  v15, v10                                    // 00000DC0: D87C0000 00000A0F
  v_add_i32     v10, vcc, 0x000000c6, v0                    // 00000DC8: 4A1400FF 000000C6
  s_waitcnt     vmcnt(14)                                   // 00000DD0: BF8C1F7E
  v_and_b32     v11, 0x0000ffff, v11                        // 00000DD4: 361616FF 0000FFFF
  ds_write_b16  v10, v11                                    // 00000DDC: D87C0000 00000B0A
  tbuffer_load_format_x  v10, v3, s[16:19], 0 offen offset:472 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000DE4: EBA011D8 80040A03
  tbuffer_load_format_x  v11, v3, s[16:19], 0 offen offset:476 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000DEC: EBA011DC 80040B03
  v_add_i32     v15, vcc, 0x000000d0, v0                    // 00000DF4: 4A1E00FF 000000D0
  v_add_i32     v18, vcc, 0x000000c8, v0                    // 00000DFC: 4A2400FF 000000C8
  v_and_b32     v4, 0x0000ffff, v4                          // 00000E04: 360808FF 0000FFFF
  ds_write_b16  v18, v4                                     // 00000E0C: D87C0000 00000412
  tbuffer_load_format_x  v4, v3, s[16:19], 0 offen offset:480 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000E14: EBA011E0 80040403
  v_add_i32     v18, vcc, 0x000000ca, v0                    // 00000E1C: 4A2400FF 000000CA
  v_and_b32     v21, 0x0000ffff, v21                        // 00000E24: 362A2AFF 0000FFFF
  ds_write_b16  v18, v21                                    // 00000E2C: D87C0000 00001512
  v_add_i32     v18, vcc, 0x000000cc, v0                    // 00000E34: 4A2400FF 000000CC
  tbuffer_load_format_x  v21, v3, s[16:19], 0 offen offset:484 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000E3C: EBA011E4 80041503
  v_and_b32     v5, 0x0000ffff, v5                          // 00000E44: 360A0AFF 0000FFFF
  ds_write_b16  v18, v5                                     // 00000E4C: D87C0000 00000512
  v_add_i32     v5, vcc, 0x000000ce, v0                     // 00000E54: 4A0A00FF 000000CE
  s_waitcnt     vmcnt(14)                                   // 00000E5C: BF8C1F7E
  v_and_b32     v8, 0x0000ffff, v8                          // 00000E60: 361010FF 0000FFFF
  ds_write_b16  v5, v8                                      // 00000E68: D87C0000 00000805
  tbuffer_load_format_x  v5, v3, s[16:19], 0 offen offset:488 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000E70: EBA011E8 80040503
  tbuffer_load_format_x  v8, v3, s[16:19], 0 offen offset:492 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000E78: EBA011EC 80040803
  v_and_b32     v12, 0x0000ffff, v12                        // 00000E80: 361818FF 0000FFFF
  ds_write_b16  v15, v12                                    // 00000E88: D87C0000 00000C0F
  v_add_i32     v12, vcc, 0x000000d2, v0                    // 00000E90: 4A1800FF 000000D2
  s_waitcnt     vmcnt(14)                                   // 00000E98: BF8C1F7E
  v_and_b32     v13, 0x0000ffff, v13                        // 00000E9C: 361A1AFF 0000FFFF
  ds_write_b16  v12, v13                                    // 00000EA4: D87C0000 00000D0C
  tbuffer_load_format_x  v12, v3, s[16:19], 0 offen offset:496 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000EAC: EBA011F0 80040C03
  tbuffer_load_format_x  v13, v3, s[16:19], 0 offen offset:500 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000EB4: EBA011F4 80040D03
  v_add_i32     v15, vcc, 0x000000d4, v0                    // 00000EBC: 4A1E00FF 000000D4
  v_and_b32     v17, 0x0000ffff, v17                        // 00000EC4: 362222FF 0000FFFF
  ds_write_b16  v15, v17                                    // 00000ECC: D87C0000 0000110F
  v_add_i32     v15, vcc, 0x000000d6, v0                    // 00000ED4: 4A1E00FF 000000D6
  tbuffer_load_format_x  v17, v3, s[16:19], 0 offen offset:504 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000EDC: EBA011F8 80041103
  v_and_b32     v18, 0x0000ffff, v20                        // 00000EE4: 362428FF 0000FFFF
  ds_write_b16  v15, v18                                    // 00000EEC: D87C0000 0000120F
  v_add_i32     v15, vcc, 0x000000e0, v0                    // 00000EF4: 4A1E00FF 000000E0
  v_add_i32     v18, vcc, 0x000000d8, v0                    // 00000EFC: 4A2400FF 000000D8
  tbuffer_load_format_x  v20, v3, s[16:19], 0 offen offset:508 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000F04: EBA011FC 80041403
  v_and_b32     v6, 0x0000ffff, v6                          // 00000F0C: 360C0CFF 0000FFFF
  ds_write_b16  v18, v6                                     // 00000F14: D87C0000 00000612
  v_add_i32     v6, vcc, 0x000000da, v0                     // 00000F1C: 4A0C00FF 000000DA
  s_waitcnt     vmcnt(14)                                   // 00000F24: BF8C1F7E
  v_and_b32     v7, 0x0000ffff, v7                          // 00000F28: 360E0EFF 0000FFFF
  ds_write_b16  v6, v7                                      // 00000F30: D87C0000 00000706
  tbuffer_load_format_x  v6, v3, s[16:19], 0 offen offset:512 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000F38: EBA01200 80040603
  tbuffer_load_format_x  v7, v3, s[16:19], 0 offen offset:516 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000F40: EBA01204 80040703
  v_add_i32     v18, vcc, 0x000000dc, v0                    // 00000F48: 4A2400FF 000000DC
  v_and_b32     v19, 0x0000ffff, v19                        // 00000F50: 362626FF 0000FFFF
  ds_write_b16  v18, v19                                    // 00000F58: D87C0000 00001312
  v_add_i32     v18, vcc, 0x000000de, v0                    // 00000F60: 4A2400FF 000000DE
  tbuffer_load_format_x  v19, v3, s[16:19], 0 offen offset:520 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000F68: EBA01208 80041303
  v_and_b32     v9, 0x0000ffff, v9                          // 00000F70: 361212FF 0000FFFF
  ds_write_b16  v18, v9                                     // 00000F78: D87C0000 00000912
  s_waitcnt     vmcnt(14)                                   // 00000F80: BF8C1F7E
  v_and_b32     v9, 0x0000ffff, v14                         // 00000F84: 36121CFF 0000FFFF
  ds_write_b16  v15, v9                                     // 00000F8C: D87C0000 0000090F
  tbuffer_load_format_x  v9, v3, s[16:19], 0 offen offset:524 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000F94: EBA0120C 80040903
  tbuffer_load_format_x  v14, v3, s[16:19], 0 offen offset:528 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000F9C: EBA01210 80040E03
  v_add_i32     v15, vcc, 0x000000e2, v0                    // 00000FA4: 4A1E00FF 000000E2
  v_and_b32     v16, 0x0000ffff, v16                        // 00000FAC: 362020FF 0000FFFF
  ds_write_b16  v15, v16                                    // 00000FB4: D87C0000 0000100F
  v_add_i32     v15, vcc, 0x000000e4, v0                    // 00000FBC: 4A1E00FF 000000E4
  tbuffer_load_format_x  v16, v3, s[16:19], 0 offen offset:532 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000FC4: EBA01214 80041003
  v_and_b32     v10, 0x0000ffff, v10                        // 00000FCC: 361414FF 0000FFFF
  ds_write_b16  v15, v10                                    // 00000FD4: D87C0000 00000A0F
  v_add_i32     v10, vcc, 0x000000e6, v0                    // 00000FDC: 4A1400FF 000000E6
  s_waitcnt     vmcnt(14)                                   // 00000FE4: BF8C1F7E
  v_and_b32     v11, 0x0000ffff, v11                        // 00000FE8: 361616FF 0000FFFF
  ds_write_b16  v10, v11                                    // 00000FF0: D87C0000 00000B0A
  tbuffer_load_format_x  v10, v3, s[16:19], 0 offen offset:536 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00000FF8: EBA01218 80040A03
  tbuffer_load_format_x  v11, v3, s[16:19], 0 offen offset:540 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001000: EBA0121C 80040B03
  v_add_i32     v15, vcc, 0x000000f0, v0                    // 00001008: 4A1E00FF 000000F0
  v_add_i32     v18, vcc, 0x000000e8, v0                    // 00001010: 4A2400FF 000000E8
  v_and_b32     v4, 0x0000ffff, v4                          // 00001018: 360808FF 0000FFFF
  ds_write_b16  v18, v4                                     // 00001020: D87C0000 00000412
  tbuffer_load_format_x  v4, v3, s[16:19], 0 offen offset:544 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001028: EBA01220 80040403
  v_add_i32     v18, vcc, 0x000000ea, v0                    // 00001030: 4A2400FF 000000EA
  v_and_b32     v21, 0x0000ffff, v21                        // 00001038: 362A2AFF 0000FFFF
  ds_write_b16  v18, v21                                    // 00001040: D87C0000 00001512
  v_add_i32     v18, vcc, 0x000000ec, v0                    // 00001048: 4A2400FF 000000EC
  tbuffer_load_format_x  v21, v3, s[16:19], 0 offen offset:548 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001050: EBA01224 80041503
  v_and_b32     v5, 0x0000ffff, v5                          // 00001058: 360A0AFF 0000FFFF
  ds_write_b16  v18, v5                                     // 00001060: D87C0000 00000512
  v_add_i32     v5, vcc, 0x000000ee, v0                     // 00001068: 4A0A00FF 000000EE
  s_waitcnt     vmcnt(14)                                   // 00001070: BF8C1F7E
  v_and_b32     v8, 0x0000ffff, v8                          // 00001074: 361010FF 0000FFFF
  ds_write_b16  v5, v8                                      // 0000107C: D87C0000 00000805
  tbuffer_load_format_x  v5, v3, s[16:19], 0 offen offset:552 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001084: EBA01228 80040503
  tbuffer_load_format_x  v8, v3, s[16:19], 0 offen offset:556 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000108C: EBA0122C 80040803
  v_and_b32     v12, 0x0000ffff, v12                        // 00001094: 361818FF 0000FFFF
  ds_write_b16  v15, v12                                    // 0000109C: D87C0000 00000C0F
  v_add_i32     v12, vcc, 0x000000f2, v0                    // 000010A4: 4A1800FF 000000F2
  s_waitcnt     vmcnt(14)                                   // 000010AC: BF8C1F7E
  v_and_b32     v13, 0x0000ffff, v13                        // 000010B0: 361A1AFF 0000FFFF
  ds_write_b16  v12, v13                                    // 000010B8: D87C0000 00000D0C
  tbuffer_load_format_x  v12, v3, s[16:19], 0 offen offset:560 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000010C0: EBA01230 80040C03
  tbuffer_load_format_x  v13, v3, s[16:19], 0 offen offset:564 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000010C8: EBA01234 80040D03
  v_add_i32     v15, vcc, 0x000000f4, v0                    // 000010D0: 4A1E00FF 000000F4
  v_and_b32     v17, 0x0000ffff, v17                        // 000010D8: 362222FF 0000FFFF
  ds_write_b16  v15, v17                                    // 000010E0: D87C0000 0000110F
  v_add_i32     v15, vcc, 0x000000f6, v0                    // 000010E8: 4A1E00FF 000000F6
  tbuffer_load_format_x  v17, v3, s[16:19], 0 offen offset:568 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000010F0: EBA01238 80041103
  v_and_b32     v18, 0x0000ffff, v20                        // 000010F8: 362428FF 0000FFFF
  ds_write_b16  v15, v18                                    // 00001100: D87C0000 0000120F
  v_add_i32     v15, vcc, 0x00000100, v0                    // 00001108: 4A1E00FF 00000100
  v_add_i32     v18, vcc, 0x000000f8, v0                    // 00001110: 4A2400FF 000000F8
  tbuffer_load_format_x  v20, v3, s[16:19], 0 offen offset:572 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001118: EBA0123C 80041403
  v_and_b32     v6, 0x0000ffff, v6                          // 00001120: 360C0CFF 0000FFFF
  ds_write_b16  v18, v6                                     // 00001128: D87C0000 00000612
  v_add_i32     v6, vcc, 0x000000fa, v0                     // 00001130: 4A0C00FF 000000FA
  s_waitcnt     vmcnt(14)                                   // 00001138: BF8C1F7E
  v_and_b32     v7, 0x0000ffff, v7                          // 0000113C: 360E0EFF 0000FFFF
  ds_write_b16  v6, v7                                      // 00001144: D87C0000 00000706
  tbuffer_load_format_x  v6, v3, s[16:19], 0 offen offset:576 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000114C: EBA01240 80040603
  tbuffer_load_format_x  v7, v3, s[16:19], 0 offen offset:580 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001154: EBA01244 80040703
  v_add_i32     v18, vcc, 0x000000fc, v0                    // 0000115C: 4A2400FF 000000FC
  v_and_b32     v19, 0x0000ffff, v19                        // 00001164: 362626FF 0000FFFF
  ds_write_b16  v18, v19                                    // 0000116C: D87C0000 00001312
  v_add_i32     v18, vcc, 0x000000fe, v0                    // 00001174: 4A2400FF 000000FE
  tbuffer_load_format_x  v19, v3, s[16:19], 0 offen offset:584 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000117C: EBA01248 80041303
  v_and_b32     v9, 0x0000ffff, v9                          // 00001184: 361212FF 0000FFFF
  ds_write_b16  v18, v9                                     // 0000118C: D87C0000 00000912
  s_waitcnt     vmcnt(14)                                   // 00001194: BF8C1F7E
  v_and_b32     v9, 0x0000ffff, v14                         // 00001198: 36121CFF 0000FFFF
  ds_write_b16  v15, v9                                     // 000011A0: D87C0000 0000090F
  tbuffer_load_format_x  v9, v3, s[16:19], 0 offen offset:588 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000011A8: EBA0124C 80040903
  tbuffer_load_format_x  v14, v3, s[16:19], 0 offen offset:592 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000011B0: EBA01250 80040E03
  v_add_i32     v15, vcc, 0x00000102, v0                    // 000011B8: 4A1E00FF 00000102
  v_and_b32     v16, 0x0000ffff, v16                        // 000011C0: 362020FF 0000FFFF
  ds_write_b16  v15, v16                                    // 000011C8: D87C0000 0000100F
  v_add_i32     v15, vcc, 0x00000104, v0                    // 000011D0: 4A1E00FF 00000104
  tbuffer_load_format_x  v16, v3, s[16:19], 0 offen offset:596 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000011D8: EBA01254 80041003
  v_and_b32     v10, 0x0000ffff, v10                        // 000011E0: 361414FF 0000FFFF
  ds_write_b16  v15, v10                                    // 000011E8: D87C0000 00000A0F
  v_add_i32     v10, vcc, 0x00000106, v0                    // 000011F0: 4A1400FF 00000106
  s_waitcnt     vmcnt(14)                                   // 000011F8: BF8C1F7E
  v_and_b32     v11, 0x0000ffff, v11                        // 000011FC: 361616FF 0000FFFF
  ds_write_b16  v10, v11                                    // 00001204: D87C0000 00000B0A
  tbuffer_load_format_x  v10, v3, s[16:19], 0 offen offset:600 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000120C: EBA01258 80040A03
  tbuffer_load_format_x  v11, v3, s[16:19], 0 offen offset:604 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001214: EBA0125C 80040B03
  v_add_i32     v15, vcc, 0x00000110, v0                    // 0000121C: 4A1E00FF 00000110
  v_add_i32     v18, vcc, 0x00000108, v0                    // 00001224: 4A2400FF 00000108
  v_and_b32     v4, 0x0000ffff, v4                          // 0000122C: 360808FF 0000FFFF
  ds_write_b16  v18, v4                                     // 00001234: D87C0000 00000412
  tbuffer_load_format_x  v4, v3, s[16:19], 0 offen offset:608 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000123C: EBA01260 80040403
  v_add_i32     v18, vcc, 0x0000010a, v0                    // 00001244: 4A2400FF 0000010A
  v_and_b32     v21, 0x0000ffff, v21                        // 0000124C: 362A2AFF 0000FFFF
  ds_write_b16  v18, v21                                    // 00001254: D87C0000 00001512
  v_add_i32     v18, vcc, 0x0000010c, v0                    // 0000125C: 4A2400FF 0000010C
  tbuffer_load_format_x  v21, v3, s[16:19], 0 offen offset:612 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001264: EBA01264 80041503
  v_and_b32     v5, 0x0000ffff, v5                          // 0000126C: 360A0AFF 0000FFFF
  ds_write_b16  v18, v5                                     // 00001274: D87C0000 00000512
  v_add_i32     v5, vcc, 0x0000010e, v0                     // 0000127C: 4A0A00FF 0000010E
  s_waitcnt     vmcnt(14)                                   // 00001284: BF8C1F7E
  v_and_b32     v8, 0x0000ffff, v8                          // 00001288: 361010FF 0000FFFF
  ds_write_b16  v5, v8                                      // 00001290: D87C0000 00000805
  tbuffer_load_format_x  v5, v3, s[16:19], 0 offen offset:616 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001298: EBA01268 80040503
  tbuffer_load_format_x  v8, v3, s[16:19], 0 offen offset:620 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000012A0: EBA0126C 80040803
  v_and_b32     v12, 0x0000ffff, v12                        // 000012A8: 361818FF 0000FFFF
  ds_write_b16  v15, v12                                    // 000012B0: D87C0000 00000C0F
  v_add_i32     v12, vcc, 0x00000112, v0                    // 000012B8: 4A1800FF 00000112
  s_waitcnt     vmcnt(14)                                   // 000012C0: BF8C1F7E
  v_and_b32     v13, 0x0000ffff, v13                        // 000012C4: 361A1AFF 0000FFFF
  ds_write_b16  v12, v13                                    // 000012CC: D87C0000 00000D0C
  tbuffer_load_format_x  v12, v3, s[16:19], 0 offen offset:624 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000012D4: EBA01270 80040C03
  tbuffer_load_format_x  v13, v3, s[16:19], 0 offen offset:628 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000012DC: EBA01274 80040D03
  v_add_i32     v15, vcc, 0x00000114, v0                    // 000012E4: 4A1E00FF 00000114
  v_and_b32     v17, 0x0000ffff, v17                        // 000012EC: 362222FF 0000FFFF
  ds_write_b16  v15, v17                                    // 000012F4: D87C0000 0000110F
  v_add_i32     v15, vcc, 0x00000116, v0                    // 000012FC: 4A1E00FF 00000116
  tbuffer_load_format_x  v17, v3, s[16:19], 0 offen offset:632 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001304: EBA01278 80041103
  v_and_b32     v18, 0x0000ffff, v20                        // 0000130C: 362428FF 0000FFFF
  ds_write_b16  v15, v18                                    // 00001314: D87C0000 0000120F
  v_add_i32     v15, vcc, 0x00000120, v0                    // 0000131C: 4A1E00FF 00000120
  v_add_i32     v18, vcc, 0x00000118, v0                    // 00001324: 4A2400FF 00000118
  tbuffer_load_format_x  v20, v3, s[16:19], 0 offen offset:636 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000132C: EBA0127C 80041403
  v_and_b32     v6, 0x0000ffff, v6                          // 00001334: 360C0CFF 0000FFFF
  ds_write_b16  v18, v6                                     // 0000133C: D87C0000 00000612
  v_add_i32     v6, vcc, 0x0000011a, v0                     // 00001344: 4A0C00FF 0000011A
  s_waitcnt     vmcnt(14)                                   // 0000134C: BF8C1F7E
  v_and_b32     v7, 0x0000ffff, v7                          // 00001350: 360E0EFF 0000FFFF
  ds_write_b16  v6, v7                                      // 00001358: D87C0000 00000706
  tbuffer_load_format_x  v6, v3, s[16:19], 0 offen offset:640 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001360: EBA01280 80040603
  tbuffer_load_format_x  v7, v3, s[16:19], 0 offen offset:644 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001368: EBA01284 80040703
  v_add_i32     v18, vcc, 0x0000011c, v0                    // 00001370: 4A2400FF 0000011C
  v_and_b32     v19, 0x0000ffff, v19                        // 00001378: 362626FF 0000FFFF
  ds_write_b16  v18, v19                                    // 00001380: D87C0000 00001312
  v_add_i32     v18, vcc, 0x0000011e, v0                    // 00001388: 4A2400FF 0000011E
  tbuffer_load_format_x  v19, v3, s[16:19], 0 offen offset:648 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001390: EBA01288 80041303
  v_and_b32     v9, 0x0000ffff, v9                          // 00001398: 361212FF 0000FFFF
  ds_write_b16  v18, v9                                     // 000013A0: D87C0000 00000912
  s_waitcnt     vmcnt(14)                                   // 000013A8: BF8C1F7E
  v_and_b32     v9, 0x0000ffff, v14                         // 000013AC: 36121CFF 0000FFFF
  ds_write_b16  v15, v9                                     // 000013B4: D87C0000 0000090F
  tbuffer_load_format_x  v9, v3, s[16:19], 0 offen offset:652 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000013BC: EBA0128C 80040903
  tbuffer_load_format_x  v14, v3, s[16:19], 0 offen offset:656 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000013C4: EBA01290 80040E03
  v_add_i32     v15, vcc, 0x00000122, v0                    // 000013CC: 4A1E00FF 00000122
  v_and_b32     v16, 0x0000ffff, v16                        // 000013D4: 362020FF 0000FFFF
  ds_write_b16  v15, v16                                    // 000013DC: D87C0000 0000100F
  v_add_i32     v15, vcc, 0x00000124, v0                    // 000013E4: 4A1E00FF 00000124
  tbuffer_load_format_x  v16, v3, s[16:19], 0 offen offset:660 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000013EC: EBA01294 80041003
  v_and_b32     v10, 0x0000ffff, v10                        // 000013F4: 361414FF 0000FFFF
  ds_write_b16  v15, v10                                    // 000013FC: D87C0000 00000A0F
  v_add_i32     v10, vcc, 0x00000126, v0                    // 00001404: 4A1400FF 00000126
  s_waitcnt     vmcnt(14)                                   // 0000140C: BF8C1F7E
  v_and_b32     v11, 0x0000ffff, v11                        // 00001410: 361616FF 0000FFFF
  ds_write_b16  v10, v11                                    // 00001418: D87C0000 00000B0A
  tbuffer_load_format_x  v10, v3, s[16:19], 0 offen offset:664 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001420: EBA01298 80040A03
  tbuffer_load_format_x  v11, v3, s[16:19], 0 offen offset:668 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001428: EBA0129C 80040B03
  v_add_i32     v15, vcc, 0x00000130, v0                    // 00001430: 4A1E00FF 00000130
  v_add_i32     v18, vcc, 0x00000128, v0                    // 00001438: 4A2400FF 00000128
  v_and_b32     v4, 0x0000ffff, v4                          // 00001440: 360808FF 0000FFFF
  ds_write_b16  v18, v4                                     // 00001448: D87C0000 00000412
  tbuffer_load_format_x  v4, v3, s[16:19], 0 offen offset:672 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001450: EBA012A0 80040403
  v_add_i32     v18, vcc, 0x0000012a, v0                    // 00001458: 4A2400FF 0000012A
  v_and_b32     v21, 0x0000ffff, v21                        // 00001460: 362A2AFF 0000FFFF
  ds_write_b16  v18, v21                                    // 00001468: D87C0000 00001512
  v_add_i32     v18, vcc, 0x0000012c, v0                    // 00001470: 4A2400FF 0000012C
  tbuffer_load_format_x  v21, v3, s[16:19], 0 offen offset:676 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001478: EBA012A4 80041503
  v_and_b32     v5, 0x0000ffff, v5                          // 00001480: 360A0AFF 0000FFFF
  ds_write_b16  v18, v5                                     // 00001488: D87C0000 00000512
  v_add_i32     v5, vcc, 0x0000012e, v0                     // 00001490: 4A0A00FF 0000012E
  s_waitcnt     vmcnt(14)                                   // 00001498: BF8C1F7E
  v_and_b32     v8, 0x0000ffff, v8                          // 0000149C: 361010FF 0000FFFF
  ds_write_b16  v5, v8                                      // 000014A4: D87C0000 00000805
  tbuffer_load_format_x  v5, v3, s[16:19], 0 offen offset:680 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000014AC: EBA012A8 80040503
  tbuffer_load_format_x  v8, v3, s[16:19], 0 offen offset:684 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000014B4: EBA012AC 80040803
  v_and_b32     v12, 0x0000ffff, v12                        // 000014BC: 361818FF 0000FFFF
  ds_write_b16  v15, v12                                    // 000014C4: D87C0000 00000C0F
  v_add_i32     v12, vcc, 0x00000132, v0                    // 000014CC: 4A1800FF 00000132
  s_waitcnt     vmcnt(14)                                   // 000014D4: BF8C1F7E
  v_and_b32     v13, 0x0000ffff, v13                        // 000014D8: 361A1AFF 0000FFFF
  ds_write_b16  v12, v13                                    // 000014E0: D87C0000 00000D0C
  tbuffer_load_format_x  v12, v3, s[16:19], 0 offen offset:688 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000014E8: EBA012B0 80040C03
  tbuffer_load_format_x  v13, v3, s[16:19], 0 offen offset:692 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000014F0: EBA012B4 80040D03
  v_add_i32     v15, vcc, 0x00000134, v0                    // 000014F8: 4A1E00FF 00000134
  v_and_b32     v17, 0x0000ffff, v17                        // 00001500: 362222FF 0000FFFF
  ds_write_b16  v15, v17                                    // 00001508: D87C0000 0000110F
  v_add_i32     v15, vcc, 0x00000136, v0                    // 00001510: 4A1E00FF 00000136
  tbuffer_load_format_x  v17, v3, s[16:19], 0 offen offset:696 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001518: EBA012B8 80041103
  v_and_b32     v18, 0x0000ffff, v20                        // 00001520: 362428FF 0000FFFF
  ds_write_b16  v15, v18                                    // 00001528: D87C0000 0000120F
  v_add_i32     v15, vcc, 0x00000140, v0                    // 00001530: 4A1E00FF 00000140
  v_add_i32     v18, vcc, 0x00000138, v0                    // 00001538: 4A2400FF 00000138
  tbuffer_load_format_x  v20, v3, s[16:19], 0 offen offset:700 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001540: EBA012BC 80041403
  v_and_b32     v6, 0x0000ffff, v6                          // 00001548: 360C0CFF 0000FFFF
  ds_write_b16  v18, v6                                     // 00001550: D87C0000 00000612
  v_add_i32     v6, vcc, 0x0000013a, v0                     // 00001558: 4A0C00FF 0000013A
  s_waitcnt     vmcnt(14)                                   // 00001560: BF8C1F7E
  v_and_b32     v7, 0x0000ffff, v7                          // 00001564: 360E0EFF 0000FFFF
  ds_write_b16  v6, v7                                      // 0000156C: D87C0000 00000706
  tbuffer_load_format_x  v6, v3, s[16:19], 0 offen offset:704 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001574: EBA012C0 80040603
  tbuffer_load_format_x  v7, v3, s[16:19], 0 offen offset:708 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000157C: EBA012C4 80040703
  v_add_i32     v18, vcc, 0x0000013c, v0                    // 00001584: 4A2400FF 0000013C
  v_and_b32     v19, 0x0000ffff, v19                        // 0000158C: 362626FF 0000FFFF
  ds_write_b16  v18, v19                                    // 00001594: D87C0000 00001312
  v_add_i32     v18, vcc, 0x0000013e, v0                    // 0000159C: 4A2400FF 0000013E
  tbuffer_load_format_x  v19, v3, s[16:19], 0 offen offset:712 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000015A4: EBA012C8 80041303
  v_and_b32     v9, 0x0000ffff, v9                          // 000015AC: 361212FF 0000FFFF
  ds_write_b16  v18, v9                                     // 000015B4: D87C0000 00000912
  s_waitcnt     vmcnt(14)                                   // 000015BC: BF8C1F7E
  v_and_b32     v9, 0x0000ffff, v14                         // 000015C0: 36121CFF 0000FFFF
  ds_write_b16  v15, v9                                     // 000015C8: D87C0000 0000090F
  tbuffer_load_format_x  v9, v3, s[16:19], 0 offen offset:716 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000015D0: EBA012CC 80040903
  tbuffer_load_format_x  v14, v3, s[16:19], 0 offen offset:720 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000015D8: EBA012D0 80040E03
  v_add_i32     v15, vcc, 0x00000142, v0                    // 000015E0: 4A1E00FF 00000142
  v_and_b32     v16, 0x0000ffff, v16                        // 000015E8: 362020FF 0000FFFF
  ds_write_b16  v15, v16                                    // 000015F0: D87C0000 0000100F
  v_add_i32     v15, vcc, 0x00000144, v0                    // 000015F8: 4A1E00FF 00000144
  tbuffer_load_format_x  v16, v3, s[16:19], 0 offen offset:724 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001600: EBA012D4 80041003
  v_and_b32     v10, 0x0000ffff, v10                        // 00001608: 361414FF 0000FFFF
  ds_write_b16  v15, v10                                    // 00001610: D87C0000 00000A0F
  v_add_i32     v10, vcc, 0x00000146, v0                    // 00001618: 4A1400FF 00000146
  s_waitcnt     vmcnt(14)                                   // 00001620: BF8C1F7E
  v_and_b32     v11, 0x0000ffff, v11                        // 00001624: 361616FF 0000FFFF
  ds_write_b16  v10, v11                                    // 0000162C: D87C0000 00000B0A
  tbuffer_load_format_x  v10, v3, s[16:19], 0 offen offset:728 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001634: EBA012D8 80040A03
  tbuffer_load_format_x  v11, v3, s[16:19], 0 offen offset:732 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000163C: EBA012DC 80040B03
  v_add_i32     v15, vcc, 0x00000150, v0                    // 00001644: 4A1E00FF 00000150
  v_add_i32     v18, vcc, 0x00000148, v0                    // 0000164C: 4A2400FF 00000148
  v_and_b32     v4, 0x0000ffff, v4                          // 00001654: 360808FF 0000FFFF
  ds_write_b16  v18, v4                                     // 0000165C: D87C0000 00000412
  tbuffer_load_format_x  v4, v3, s[16:19], 0 offen offset:736 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001664: EBA012E0 80040403
  v_add_i32     v18, vcc, 0x0000014a, v0                    // 0000166C: 4A2400FF 0000014A
  v_and_b32     v21, 0x0000ffff, v21                        // 00001674: 362A2AFF 0000FFFF
  ds_write_b16  v18, v21                                    // 0000167C: D87C0000 00001512
  v_add_i32     v18, vcc, 0x0000014c, v0                    // 00001684: 4A2400FF 0000014C
  tbuffer_load_format_x  v21, v3, s[16:19], 0 offen offset:740 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000168C: EBA012E4 80041503
  v_and_b32     v5, 0x0000ffff, v5                          // 00001694: 360A0AFF 0000FFFF
  ds_write_b16  v18, v5                                     // 0000169C: D87C0000 00000512
  v_add_i32     v5, vcc, 0x0000014e, v0                     // 000016A4: 4A0A00FF 0000014E
  s_waitcnt     vmcnt(14)                                   // 000016AC: BF8C1F7E
  v_and_b32     v8, 0x0000ffff, v8                          // 000016B0: 361010FF 0000FFFF
  ds_write_b16  v5, v8                                      // 000016B8: D87C0000 00000805
  tbuffer_load_format_x  v5, v3, s[16:19], 0 offen offset:744 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000016C0: EBA012E8 80040503
  tbuffer_load_format_x  v8, v3, s[16:19], 0 offen offset:748 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000016C8: EBA012EC 80040803
  v_and_b32     v12, 0x0000ffff, v12                        // 000016D0: 361818FF 0000FFFF
  ds_write_b16  v15, v12                                    // 000016D8: D87C0000 00000C0F
  v_add_i32     v12, vcc, 0x00000152, v0                    // 000016E0: 4A1800FF 00000152
  s_waitcnt     vmcnt(14)                                   // 000016E8: BF8C1F7E
  v_and_b32     v13, 0x0000ffff, v13                        // 000016EC: 361A1AFF 0000FFFF
  ds_write_b16  v12, v13                                    // 000016F4: D87C0000 00000D0C
  tbuffer_load_format_x  v12, v3, s[16:19], 0 offen offset:752 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000016FC: EBA012F0 80040C03
  tbuffer_load_format_x  v13, v3, s[16:19], 0 offen offset:756 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001704: EBA012F4 80040D03
  v_add_i32     v15, vcc, 0x00000154, v0                    // 0000170C: 4A1E00FF 00000154
  v_and_b32     v17, 0x0000ffff, v17                        // 00001714: 362222FF 0000FFFF
  ds_write_b16  v15, v17                                    // 0000171C: D87C0000 0000110F
  v_add_i32     v15, vcc, 0x00000156, v0                    // 00001724: 4A1E00FF 00000156
  tbuffer_load_format_x  v17, v3, s[16:19], 0 offen offset:760 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000172C: EBA012F8 80041103
  v_and_b32     v18, 0x0000ffff, v20                        // 00001734: 362428FF 0000FFFF
  ds_write_b16  v15, v18                                    // 0000173C: D87C0000 0000120F
  v_add_i32     v15, vcc, 0x00000160, v0                    // 00001744: 4A1E00FF 00000160
  v_add_i32     v18, vcc, 0x00000158, v0                    // 0000174C: 4A2400FF 00000158
  tbuffer_load_format_x  v20, v3, s[16:19], 0 offen offset:764 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001754: EBA012FC 80041403
  v_and_b32     v6, 0x0000ffff, v6                          // 0000175C: 360C0CFF 0000FFFF
  ds_write_b16  v18, v6                                     // 00001764: D87C0000 00000612
  v_add_i32     v6, vcc, 0x0000015a, v0                     // 0000176C: 4A0C00FF 0000015A
  s_waitcnt     vmcnt(14)                                   // 00001774: BF8C1F7E
  v_and_b32     v7, 0x0000ffff, v7                          // 00001778: 360E0EFF 0000FFFF
  ds_write_b16  v6, v7                                      // 00001780: D87C0000 00000706
  tbuffer_load_format_x  v6, v3, s[16:19], 0 offen offset:768 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001788: EBA01300 80040603
  tbuffer_load_format_x  v7, v3, s[16:19], 0 offen offset:772 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001790: EBA01304 80040703
  v_add_i32     v18, vcc, 0x0000015c, v0                    // 00001798: 4A2400FF 0000015C
  v_and_b32     v19, 0x0000ffff, v19                        // 000017A0: 362626FF 0000FFFF
  ds_write_b16  v18, v19                                    // 000017A8: D87C0000 00001312
  v_add_i32     v18, vcc, 0x0000015e, v0                    // 000017B0: 4A2400FF 0000015E
  tbuffer_load_format_x  v19, v3, s[16:19], 0 offen offset:776 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000017B8: EBA01308 80041303
  v_and_b32     v9, 0x0000ffff, v9                          // 000017C0: 361212FF 0000FFFF
  ds_write_b16  v18, v9                                     // 000017C8: D87C0000 00000912
  s_waitcnt     vmcnt(14)                                   // 000017D0: BF8C1F7E
  v_and_b32     v9, 0x0000ffff, v14                         // 000017D4: 36121CFF 0000FFFF
  ds_write_b16  v15, v9                                     // 000017DC: D87C0000 0000090F
  tbuffer_load_format_x  v9, v3, s[16:19], 0 offen offset:780 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000017E4: EBA0130C 80040903
  tbuffer_load_format_x  v14, v3, s[16:19], 0 offen offset:784 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000017EC: EBA01310 80040E03
  v_add_i32     v15, vcc, 0x00000162, v0                    // 000017F4: 4A1E00FF 00000162
  v_and_b32     v16, 0x0000ffff, v16                        // 000017FC: 362020FF 0000FFFF
  ds_write_b16  v15, v16                                    // 00001804: D87C0000 0000100F
  v_add_i32     v15, vcc, 0x00000164, v0                    // 0000180C: 4A1E00FF 00000164
  tbuffer_load_format_x  v16, v3, s[16:19], 0 offen offset:788 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001814: EBA01314 80041003
  v_and_b32     v10, 0x0000ffff, v10                        // 0000181C: 361414FF 0000FFFF
  ds_write_b16  v15, v10                                    // 00001824: D87C0000 00000A0F
  v_add_i32     v10, vcc, 0x00000166, v0                    // 0000182C: 4A1400FF 00000166
  s_waitcnt     vmcnt(14)                                   // 00001834: BF8C1F7E
  v_and_b32     v11, 0x0000ffff, v11                        // 00001838: 361616FF 0000FFFF
  ds_write_b16  v10, v11                                    // 00001840: D87C0000 00000B0A
  tbuffer_load_format_x  v10, v3, s[16:19], 0 offen offset:792 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001848: EBA01318 80040A03
  tbuffer_load_format_x  v11, v3, s[16:19], 0 offen offset:796 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001850: EBA0131C 80040B03
  v_add_i32     v15, vcc, 0x00000170, v0                    // 00001858: 4A1E00FF 00000170
  v_add_i32     v18, vcc, 0x00000168, v0                    // 00001860: 4A2400FF 00000168
  v_and_b32     v4, 0x0000ffff, v4                          // 00001868: 360808FF 0000FFFF
  ds_write_b16  v18, v4                                     // 00001870: D87C0000 00000412
  tbuffer_load_format_x  v4, v3, s[16:19], 0 offen offset:800 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001878: EBA01320 80040403
  v_add_i32     v18, vcc, 0x0000016a, v0                    // 00001880: 4A2400FF 0000016A
  v_and_b32     v21, 0x0000ffff, v21                        // 00001888: 362A2AFF 0000FFFF
  ds_write_b16  v18, v21                                    // 00001890: D87C0000 00001512
  v_add_i32     v18, vcc, 0x0000016c, v0                    // 00001898: 4A2400FF 0000016C
  tbuffer_load_format_x  v21, v3, s[16:19], 0 offen offset:804 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000018A0: EBA01324 80041503
  v_and_b32     v5, 0x0000ffff, v5                          // 000018A8: 360A0AFF 0000FFFF
  ds_write_b16  v18, v5                                     // 000018B0: D87C0000 00000512
  v_add_i32     v5, vcc, 0x0000016e, v0                     // 000018B8: 4A0A00FF 0000016E
  s_waitcnt     vmcnt(14)                                   // 000018C0: BF8C1F7E
  v_and_b32     v8, 0x0000ffff, v8                          // 000018C4: 361010FF 0000FFFF
  ds_write_b16  v5, v8                                      // 000018CC: D87C0000 00000805
  tbuffer_load_format_x  v5, v3, s[16:19], 0 offen offset:808 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000018D4: EBA01328 80040503
  tbuffer_load_format_x  v8, v3, s[16:19], 0 offen offset:812 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000018DC: EBA0132C 80040803
  v_and_b32     v12, 0x0000ffff, v12                        // 000018E4: 361818FF 0000FFFF
  ds_write_b16  v15, v12                                    // 000018EC: D87C0000 00000C0F
  v_add_i32     v12, vcc, 0x00000172, v0                    // 000018F4: 4A1800FF 00000172
  s_waitcnt     vmcnt(14)                                   // 000018FC: BF8C1F7E
  v_and_b32     v13, 0x0000ffff, v13                        // 00001900: 361A1AFF 0000FFFF
  ds_write_b16  v12, v13                                    // 00001908: D87C0000 00000D0C
  tbuffer_load_format_x  v12, v3, s[16:19], 0 offen offset:816 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001910: EBA01330 80040C03
  tbuffer_load_format_x  v13, v3, s[16:19], 0 offen offset:820 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001918: EBA01334 80040D03
  v_add_i32     v15, vcc, 0x00000174, v0                    // 00001920: 4A1E00FF 00000174
  v_and_b32     v17, 0x0000ffff, v17                        // 00001928: 362222FF 0000FFFF
  ds_write_b16  v15, v17                                    // 00001930: D87C0000 0000110F
  v_add_i32     v15, vcc, 0x00000176, v0                    // 00001938: 4A1E00FF 00000176
  tbuffer_load_format_x  v17, v3, s[16:19], 0 offen offset:824 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001940: EBA01338 80041103
  v_and_b32     v18, 0x0000ffff, v20                        // 00001948: 362428FF 0000FFFF
  ds_write_b16  v15, v18                                    // 00001950: D87C0000 0000120F
  v_add_i32     v15, vcc, 0x00000180, v0                    // 00001958: 4A1E00FF 00000180
  v_add_i32     v18, vcc, 0x00000178, v0                    // 00001960: 4A2400FF 00000178
  tbuffer_load_format_x  v20, v3, s[16:19], 0 offen offset:828 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001968: EBA0133C 80041403
  v_and_b32     v6, 0x0000ffff, v6                          // 00001970: 360C0CFF 0000FFFF
  ds_write_b16  v18, v6                                     // 00001978: D87C0000 00000612
  v_add_i32     v6, vcc, 0x0000017a, v0                     // 00001980: 4A0C00FF 0000017A
  s_waitcnt     vmcnt(14)                                   // 00001988: BF8C1F7E
  v_and_b32     v7, 0x0000ffff, v7                          // 0000198C: 360E0EFF 0000FFFF
  ds_write_b16  v6, v7                                      // 00001994: D87C0000 00000706
  tbuffer_load_format_x  v6, v3, s[16:19], 0 offen offset:832 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000199C: EBA01340 80040603
  tbuffer_load_format_x  v7, v3, s[16:19], 0 offen offset:836 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000019A4: EBA01344 80040703
  v_add_i32     v18, vcc, 0x0000017c, v0                    // 000019AC: 4A2400FF 0000017C
  v_and_b32     v19, 0x0000ffff, v19                        // 000019B4: 362626FF 0000FFFF
  ds_write_b16  v18, v19                                    // 000019BC: D87C0000 00001312
  v_add_i32     v18, vcc, 0x0000017e, v0                    // 000019C4: 4A2400FF 0000017E
  tbuffer_load_format_x  v19, v3, s[16:19], 0 offen offset:840 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000019CC: EBA01348 80041303
  v_and_b32     v9, 0x0000ffff, v9                          // 000019D4: 361212FF 0000FFFF
  ds_write_b16  v18, v9                                     // 000019DC: D87C0000 00000912
  s_waitcnt     vmcnt(14)                                   // 000019E4: BF8C1F7E
  v_and_b32     v9, 0x0000ffff, v14                         // 000019E8: 36121CFF 0000FFFF
  ds_write_b16  v15, v9                                     // 000019F0: D87C0000 0000090F
  tbuffer_load_format_x  v9, v3, s[16:19], 0 offen offset:844 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000019F8: EBA0134C 80040903
  tbuffer_load_format_x  v14, v3, s[16:19], 0 offen offset:848 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001A00: EBA01350 80040E03
  v_add_i32     v15, vcc, 0x00000182, v0                    // 00001A08: 4A1E00FF 00000182
  v_and_b32     v16, 0x0000ffff, v16                        // 00001A10: 362020FF 0000FFFF
  ds_write_b16  v15, v16                                    // 00001A18: D87C0000 0000100F
  v_add_i32     v15, vcc, 0x00000184, v0                    // 00001A20: 4A1E00FF 00000184
  tbuffer_load_format_x  v16, v3, s[16:19], 0 offen offset:852 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001A28: EBA01354 80041003
  v_and_b32     v10, 0x0000ffff, v10                        // 00001A30: 361414FF 0000FFFF
  ds_write_b16  v15, v10                                    // 00001A38: D87C0000 00000A0F
  v_add_i32     v10, vcc, 0x00000186, v0                    // 00001A40: 4A1400FF 00000186
  s_waitcnt     vmcnt(14)                                   // 00001A48: BF8C1F7E
  v_and_b32     v11, 0x0000ffff, v11                        // 00001A4C: 361616FF 0000FFFF
  ds_write_b16  v10, v11                                    // 00001A54: D87C0000 00000B0A
  tbuffer_load_format_x  v10, v3, s[16:19], 0 offen offset:856 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001A5C: EBA01358 80040A03
  tbuffer_load_format_x  v11, v3, s[16:19], 0 offen offset:860 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001A64: EBA0135C 80040B03
  v_add_i32     v15, vcc, 0x00000190, v0                    // 00001A6C: 4A1E00FF 00000190
  v_add_i32     v18, vcc, 0x00000188, v0                    // 00001A74: 4A2400FF 00000188
  v_and_b32     v4, 0x0000ffff, v4                          // 00001A7C: 360808FF 0000FFFF
  ds_write_b16  v18, v4                                     // 00001A84: D87C0000 00000412
  tbuffer_load_format_x  v4, v3, s[16:19], 0 offen offset:864 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001A8C: EBA01360 80040403
  v_add_i32     v18, vcc, 0x0000018a, v0                    // 00001A94: 4A2400FF 0000018A
  v_and_b32     v21, 0x0000ffff, v21                        // 00001A9C: 362A2AFF 0000FFFF
  ds_write_b16  v18, v21                                    // 00001AA4: D87C0000 00001512
  v_add_i32     v18, vcc, 0x0000018c, v0                    // 00001AAC: 4A2400FF 0000018C
  tbuffer_load_format_x  v21, v3, s[16:19], 0 offen offset:868 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001AB4: EBA01364 80041503
  v_and_b32     v5, 0x0000ffff, v5                          // 00001ABC: 360A0AFF 0000FFFF
  ds_write_b16  v18, v5                                     // 00001AC4: D87C0000 00000512
  v_add_i32     v5, vcc, 0x0000018e, v0                     // 00001ACC: 4A0A00FF 0000018E
  s_waitcnt     vmcnt(14)                                   // 00001AD4: BF8C1F7E
  v_and_b32     v8, 0x0000ffff, v8                          // 00001AD8: 361010FF 0000FFFF
  ds_write_b16  v5, v8                                      // 00001AE0: D87C0000 00000805
  tbuffer_load_format_x  v5, v3, s[16:19], 0 offen offset:872 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001AE8: EBA01368 80040503
  tbuffer_load_format_x  v8, v3, s[16:19], 0 offen offset:876 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001AF0: EBA0136C 80040803
  v_and_b32     v12, 0x0000ffff, v12                        // 00001AF8: 361818FF 0000FFFF
  ds_write_b16  v15, v12                                    // 00001B00: D87C0000 00000C0F
  v_add_i32     v12, vcc, 0x00000192, v0                    // 00001B08: 4A1800FF 00000192
  s_waitcnt     vmcnt(14)                                   // 00001B10: BF8C1F7E
  v_and_b32     v13, 0x0000ffff, v13                        // 00001B14: 361A1AFF 0000FFFF
  ds_write_b16  v12, v13                                    // 00001B1C: D87C0000 00000D0C
  tbuffer_load_format_x  v12, v3, s[16:19], 0 offen offset:880 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001B24: EBA01370 80040C03
  tbuffer_load_format_x  v13, v3, s[16:19], 0 offen offset:884 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001B2C: EBA01374 80040D03
  v_add_i32     v15, vcc, 0x00000194, v0                    // 00001B34: 4A1E00FF 00000194
  v_and_b32     v17, 0x0000ffff, v17                        // 00001B3C: 362222FF 0000FFFF
  ds_write_b16  v15, v17                                    // 00001B44: D87C0000 0000110F
  v_add_i32     v15, vcc, 0x00000196, v0                    // 00001B4C: 4A1E00FF 00000196
  tbuffer_load_format_x  v17, v3, s[16:19], 0 offen offset:888 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001B54: EBA01378 80041103
  v_and_b32     v18, 0x0000ffff, v20                        // 00001B5C: 362428FF 0000FFFF
  ds_write_b16  v15, v18                                    // 00001B64: D87C0000 0000120F
  v_add_i32     v15, vcc, 0x000001a0, v0                    // 00001B6C: 4A1E00FF 000001A0
  v_add_i32     v18, vcc, 0x00000198, v0                    // 00001B74: 4A2400FF 00000198
  tbuffer_load_format_x  v20, v3, s[16:19], 0 offen offset:892 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001B7C: EBA0137C 80041403
  v_and_b32     v6, 0x0000ffff, v6                          // 00001B84: 360C0CFF 0000FFFF
  ds_write_b16  v18, v6                                     // 00001B8C: D87C0000 00000612
  v_add_i32     v6, vcc, 0x0000019a, v0                     // 00001B94: 4A0C00FF 0000019A
  s_waitcnt     vmcnt(14)                                   // 00001B9C: BF8C1F7E
  v_and_b32     v7, 0x0000ffff, v7                          // 00001BA0: 360E0EFF 0000FFFF
  ds_write_b16  v6, v7                                      // 00001BA8: D87C0000 00000706
  tbuffer_load_format_x  v6, v3, s[16:19], 0 offen offset:896 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001BB0: EBA01380 80040603
  tbuffer_load_format_x  v7, v3, s[16:19], 0 offen offset:900 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001BB8: EBA01384 80040703
  v_add_i32     v18, vcc, 0x0000019c, v0                    // 00001BC0: 4A2400FF 0000019C
  v_and_b32     v19, 0x0000ffff, v19                        // 00001BC8: 362626FF 0000FFFF
  ds_write_b16  v18, v19                                    // 00001BD0: D87C0000 00001312
  v_add_i32     v18, vcc, 0x0000019e, v0                    // 00001BD8: 4A2400FF 0000019E
  tbuffer_load_format_x  v19, v3, s[16:19], 0 offen offset:904 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001BE0: EBA01388 80041303
  v_and_b32     v9, 0x0000ffff, v9                          // 00001BE8: 361212FF 0000FFFF
  ds_write_b16  v18, v9                                     // 00001BF0: D87C0000 00000912
  s_waitcnt     vmcnt(14)                                   // 00001BF8: BF8C1F7E
  v_and_b32     v9, 0x0000ffff, v14                         // 00001BFC: 36121CFF 0000FFFF
  ds_write_b16  v15, v9                                     // 00001C04: D87C0000 0000090F
  tbuffer_load_format_x  v9, v3, s[16:19], 0 offen offset:908 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001C0C: EBA0138C 80040903
  tbuffer_load_format_x  v14, v3, s[16:19], 0 offen offset:912 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001C14: EBA01390 80040E03
  v_add_i32     v15, vcc, 0x000001a2, v0                    // 00001C1C: 4A1E00FF 000001A2
  v_and_b32     v16, 0x0000ffff, v16                        // 00001C24: 362020FF 0000FFFF
  ds_write_b16  v15, v16                                    // 00001C2C: D87C0000 0000100F
  v_add_i32     v15, vcc, 0x000001a4, v0                    // 00001C34: 4A1E00FF 000001A4
  tbuffer_load_format_x  v16, v3, s[16:19], 0 offen offset:916 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001C3C: EBA01394 80041003
  v_and_b32     v10, 0x0000ffff, v10                        // 00001C44: 361414FF 0000FFFF
  ds_write_b16  v15, v10                                    // 00001C4C: D87C0000 00000A0F
  v_add_i32     v10, vcc, 0x000001a6, v0                    // 00001C54: 4A1400FF 000001A6
  s_waitcnt     vmcnt(14)                                   // 00001C5C: BF8C1F7E
  v_and_b32     v11, 0x0000ffff, v11                        // 00001C60: 361616FF 0000FFFF
  ds_write_b16  v10, v11                                    // 00001C68: D87C0000 00000B0A
  tbuffer_load_format_x  v10, v3, s[16:19], 0 offen offset:920 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001C70: EBA01398 80040A03
  tbuffer_load_format_x  v11, v3, s[16:19], 0 offen offset:924 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001C78: EBA0139C 80040B03
  v_add_i32     v15, vcc, 0x000001b0, v0                    // 00001C80: 4A1E00FF 000001B0
  v_add_i32     v18, vcc, 0x000001a8, v0                    // 00001C88: 4A2400FF 000001A8
  v_and_b32     v4, 0x0000ffff, v4                          // 00001C90: 360808FF 0000FFFF
  ds_write_b16  v18, v4                                     // 00001C98: D87C0000 00000412
  tbuffer_load_format_x  v4, v3, s[16:19], 0 offen offset:928 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001CA0: EBA013A0 80040403
  v_add_i32     v18, vcc, 0x000001aa, v0                    // 00001CA8: 4A2400FF 000001AA
  v_and_b32     v21, 0x0000ffff, v21                        // 00001CB0: 362A2AFF 0000FFFF
  ds_write_b16  v18, v21                                    // 00001CB8: D87C0000 00001512
  v_add_i32     v18, vcc, 0x000001ac, v0                    // 00001CC0: 4A2400FF 000001AC
  tbuffer_load_format_x  v21, v3, s[16:19], 0 offen offset:932 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001CC8: EBA013A4 80041503
  v_and_b32     v5, 0x0000ffff, v5                          // 00001CD0: 360A0AFF 0000FFFF
  ds_write_b16  v18, v5                                     // 00001CD8: D87C0000 00000512
  v_add_i32     v5, vcc, 0x000001ae, v0                     // 00001CE0: 4A0A00FF 000001AE
  s_waitcnt     vmcnt(14)                                   // 00001CE8: BF8C1F7E
  v_and_b32     v8, 0x0000ffff, v8                          // 00001CEC: 361010FF 0000FFFF
  ds_write_b16  v5, v8                                      // 00001CF4: D87C0000 00000805
  tbuffer_load_format_x  v5, v3, s[16:19], 0 offen offset:936 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001CFC: EBA013A8 80040503
  tbuffer_load_format_x  v8, v3, s[16:19], 0 offen offset:940 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001D04: EBA013AC 80040803
  v_and_b32     v12, 0x0000ffff, v12                        // 00001D0C: 361818FF 0000FFFF
  ds_write_b16  v15, v12                                    // 00001D14: D87C0000 00000C0F
  v_add_i32     v12, vcc, 0x000001b2, v0                    // 00001D1C: 4A1800FF 000001B2
  s_waitcnt     vmcnt(14)                                   // 00001D24: BF8C1F7E
  v_and_b32     v13, 0x0000ffff, v13                        // 00001D28: 361A1AFF 0000FFFF
  ds_write_b16  v12, v13                                    // 00001D30: D87C0000 00000D0C
  tbuffer_load_format_x  v12, v3, s[16:19], 0 offen offset:944 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001D38: EBA013B0 80040C03
  tbuffer_load_format_x  v13, v3, s[16:19], 0 offen offset:948 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001D40: EBA013B4 80040D03
  v_add_i32     v15, vcc, 0x000001b4, v0                    // 00001D48: 4A1E00FF 000001B4
  v_and_b32     v17, 0x0000ffff, v17                        // 00001D50: 362222FF 0000FFFF
  ds_write_b16  v15, v17                                    // 00001D58: D87C0000 0000110F
  v_add_i32     v15, vcc, 0x000001b6, v0                    // 00001D60: 4A1E00FF 000001B6
  tbuffer_load_format_x  v17, v3, s[16:19], 0 offen offset:952 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001D68: EBA013B8 80041103
  v_and_b32     v18, 0x0000ffff, v20                        // 00001D70: 362428FF 0000FFFF
  ds_write_b16  v15, v18                                    // 00001D78: D87C0000 0000120F
  v_add_i32     v15, vcc, 0x000001c0, v0                    // 00001D80: 4A1E00FF 000001C0
  v_add_i32     v18, vcc, 0x000001b8, v0                    // 00001D88: 4A2400FF 000001B8
  tbuffer_load_format_x  v20, v3, s[16:19], 0 offen offset:956 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001D90: EBA013BC 80041403
  v_and_b32     v6, 0x0000ffff, v6                          // 00001D98: 360C0CFF 0000FFFF
  ds_write_b16  v18, v6                                     // 00001DA0: D87C0000 00000612
  v_add_i32     v6, vcc, 0x000001ba, v0                     // 00001DA8: 4A0C00FF 000001BA
  s_waitcnt     vmcnt(14)                                   // 00001DB0: BF8C1F7E
  v_and_b32     v7, 0x0000ffff, v7                          // 00001DB4: 360E0EFF 0000FFFF
  ds_write_b16  v6, v7                                      // 00001DBC: D87C0000 00000706
  tbuffer_load_format_x  v6, v3, s[16:19], 0 offen offset:960 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001DC4: EBA013C0 80040603
  tbuffer_load_format_x  v7, v3, s[16:19], 0 offen offset:964 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001DCC: EBA013C4 80040703
  v_add_i32     v18, vcc, 0x000001bc, v0                    // 00001DD4: 4A2400FF 000001BC
  v_and_b32     v19, 0x0000ffff, v19                        // 00001DDC: 362626FF 0000FFFF
  ds_write_b16  v18, v19                                    // 00001DE4: D87C0000 00001312
  v_add_i32     v18, vcc, 0x000001be, v0                    // 00001DEC: 4A2400FF 000001BE
  tbuffer_load_format_x  v19, v3, s[16:19], 0 offen offset:968 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001DF4: EBA013C8 80041303
  v_and_b32     v9, 0x0000ffff, v9                          // 00001DFC: 361212FF 0000FFFF
  ds_write_b16  v18, v9                                     // 00001E04: D87C0000 00000912
  s_waitcnt     vmcnt(14)                                   // 00001E0C: BF8C1F7E
  v_and_b32     v9, 0x0000ffff, v14                         // 00001E10: 36121CFF 0000FFFF
  ds_write_b16  v15, v9                                     // 00001E18: D87C0000 0000090F
  tbuffer_load_format_x  v9, v3, s[16:19], 0 offen offset:972 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001E20: EBA013CC 80040903
  tbuffer_load_format_x  v14, v3, s[16:19], 0 offen offset:976 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001E28: EBA013D0 80040E03
  v_add_i32     v15, vcc, 0x000001c2, v0                    // 00001E30: 4A1E00FF 000001C2
  v_and_b32     v16, 0x0000ffff, v16                        // 00001E38: 362020FF 0000FFFF
  ds_write_b16  v15, v16                                    // 00001E40: D87C0000 0000100F
  v_add_i32     v15, vcc, 0x000001c4, v0                    // 00001E48: 4A1E00FF 000001C4
  tbuffer_load_format_x  v16, v3, s[16:19], 0 offen offset:980 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001E50: EBA013D4 80041003
  v_and_b32     v10, 0x0000ffff, v10                        // 00001E58: 361414FF 0000FFFF
  ds_write_b16  v15, v10                                    // 00001E60: D87C0000 00000A0F
  v_add_i32     v10, vcc, 0x000001c6, v0                    // 00001E68: 4A1400FF 000001C6
  s_waitcnt     vmcnt(14)                                   // 00001E70: BF8C1F7E
  v_and_b32     v11, 0x0000ffff, v11                        // 00001E74: 361616FF 0000FFFF
  ds_write_b16  v10, v11                                    // 00001E7C: D87C0000 00000B0A
  tbuffer_load_format_x  v10, v3, s[16:19], 0 offen offset:984 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001E84: EBA013D8 80040A03
  tbuffer_load_format_x  v11, v3, s[16:19], 0 offen offset:988 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001E8C: EBA013DC 80040B03
  v_add_i32     v15, vcc, 0x000001d0, v0                    // 00001E94: 4A1E00FF 000001D0
  v_add_i32     v18, vcc, 0x000001c8, v0                    // 00001E9C: 4A2400FF 000001C8
  v_and_b32     v4, 0x0000ffff, v4                          // 00001EA4: 360808FF 0000FFFF
  ds_write_b16  v18, v4                                     // 00001EAC: D87C0000 00000412
  tbuffer_load_format_x  v4, v3, s[16:19], 0 offen offset:992 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001EB4: EBA013E0 80040403
  v_add_i32     v18, vcc, 0x000001ca, v0                    // 00001EBC: 4A2400FF 000001CA
  v_and_b32     v21, 0x0000ffff, v21                        // 00001EC4: 362A2AFF 0000FFFF
  ds_write_b16  v18, v21                                    // 00001ECC: D87C0000 00001512
  v_add_i32     v18, vcc, 0x000001cc, v0                    // 00001ED4: 4A2400FF 000001CC
  tbuffer_load_format_x  v21, v3, s[16:19], 0 offen offset:996 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001EDC: EBA013E4 80041503
  v_and_b32     v5, 0x0000ffff, v5                          // 00001EE4: 360A0AFF 0000FFFF
  ds_write_b16  v18, v5                                     // 00001EEC: D87C0000 00000512
  v_add_i32     v5, vcc, 0x000001ce, v0                     // 00001EF4: 4A0A00FF 000001CE
  s_waitcnt     vmcnt(14)                                   // 00001EFC: BF8C1F7E
  v_and_b32     v8, 0x0000ffff, v8                          // 00001F00: 361010FF 0000FFFF
  ds_write_b16  v5, v8                                      // 00001F08: D87C0000 00000805
  tbuffer_load_format_x  v5, v3, s[16:19], 0 offen offset:1000 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001F10: EBA013E8 80040503
  tbuffer_load_format_x  v8, v3, s[16:19], 0 offen offset:1004 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001F18: EBA013EC 80040803
  v_and_b32     v12, 0x0000ffff, v12                        // 00001F20: 361818FF 0000FFFF
  ds_write_b16  v15, v12                                    // 00001F28: D87C0000 00000C0F
  v_add_i32     v12, vcc, 0x000001d2, v0                    // 00001F30: 4A1800FF 000001D2
  s_waitcnt     vmcnt(14)                                   // 00001F38: BF8C1F7E
  v_and_b32     v13, 0x0000ffff, v13                        // 00001F3C: 361A1AFF 0000FFFF
  ds_write_b16  v12, v13                                    // 00001F44: D87C0000 00000D0C
  tbuffer_load_format_x  v12, v3, s[16:19], 0 offen offset:1008 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001F4C: EBA013F0 80040C03
  tbuffer_load_format_x  v13, v3, s[16:19], 0 offen offset:1012 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00001F54: EBA013F4 80040D03
  v_add_i32     v15, vcc, 0x000001d4, v0                    // 00001F5C: 4A1E00FF 000001D4
  v_and_b32     v17, 0x0000ffff, v17                        // 00001F64: 362222FF 0000FFFF
  ds_write_b16  v15, v17                                    // 00001F6C: D87C0000 0000110F
  v_add_i32     v15, vcc, 0x000001d6, v0                    // 00001F74: 4A1E00FF 000001D6
  s_waitcnt     vmcnt(14)                                   // 00001F7C: BF8C1F7E
  v_and_b32     v17, 0x0000ffff, v20                        // 00001F80: 362228FF 0000FFFF
  ds_write_b16  v15, v17                                    // 00001F88: D87C0000 0000110F
  v_add_i32     v15, vcc, 0x000001e0, v0                    // 00001F90: 4A1E00FF 000001E0
  v_add_i32     v17, vcc, 0x000001d8, v0                    // 00001F98: 4A2200FF 000001D8
  s_waitcnt     vmcnt(13)                                   // 00001FA0: BF8C1F7D
  v_and_b32     v6, 0x0000ffff, v6                          // 00001FA4: 360C0CFF 0000FFFF
  ds_write_b16  v17, v6                                     // 00001FAC: D87C0000 00000611
  v_add_i32     v6, vcc, 0x000001da, v0                     // 00001FB4: 4A0C00FF 000001DA
  s_waitcnt     vmcnt(12)                                   // 00001FBC: BF8C1F7C
  v_and_b32     v7, 0x0000ffff, v7                          // 00001FC0: 360E0EFF 0000FFFF
  ds_write_b16  v6, v7                                      // 00001FC8: D87C0000 00000706
  v_add_i32     v6, vcc, 0x000001dc, v0                     // 00001FD0: 4A0C00FF 000001DC
  s_waitcnt     vmcnt(11)                                   // 00001FD8: BF8C1F7B
  v_and_b32     v7, 0x0000ffff, v19                         // 00001FDC: 360E26FF 0000FFFF
  ds_write_b16  v6, v7                                      // 00001FE4: D87C0000 00000706
  v_add_i32     v6, vcc, 0x000001de, v0                     // 00001FEC: 4A0C00FF 000001DE
  s_waitcnt     vmcnt(10)                                   // 00001FF4: BF8C1F7A
  v_and_b32     v7, 0x0000ffff, v9                          // 00001FF8: 360E12FF 0000FFFF
  ds_write_b16  v6, v7                                      // 00002000: D87C0000 00000706
  s_waitcnt     vmcnt(9)                                    // 00002008: BF8C1F79
  v_and_b32     v6, 0x0000ffff, v14                         // 0000200C: 360C1CFF 0000FFFF
  ds_write_b16  v15, v6                                     // 00002014: D87C0000 0000060F
  v_add_i32     v6, vcc, 0x000001e2, v0                     // 0000201C: 4A0C00FF 000001E2
  s_waitcnt     vmcnt(8)                                    // 00002024: BF8C1F78
  v_and_b32     v7, 0x0000ffff, v16                         // 00002028: 360E20FF 0000FFFF
  ds_write_b16  v6, v7                                      // 00002030: D87C0000 00000706
  v_add_i32     v6, vcc, 0x000001e4, v0                     // 00002038: 4A0C00FF 000001E4
  s_waitcnt     vmcnt(7)                                    // 00002040: BF8C1F77
  v_and_b32     v7, 0x0000ffff, v10                         // 00002044: 360E14FF 0000FFFF
  ds_write_b16  v6, v7                                      // 0000204C: D87C0000 00000706
  v_add_i32     v6, vcc, 0x000001e6, v0                     // 00002054: 4A0C00FF 000001E6
  s_waitcnt     vmcnt(6)                                    // 0000205C: BF8C1F76
  v_and_b32     v7, 0x0000ffff, v11                         // 00002060: 360E16FF 0000FFFF
  ds_write_b16  v6, v7                                      // 00002068: D87C0000 00000706
  v_add_i32     v6, vcc, 0x000001f0, v0                     // 00002070: 4A0C00FF 000001F0
  v_add_i32     v7, vcc, 0x000001e8, v0                     // 00002078: 4A0E00FF 000001E8
  s_waitcnt     vmcnt(5)                                    // 00002080: BF8C1F75
  v_and_b32     v4, 0x0000ffff, v4                          // 00002084: 360808FF 0000FFFF
  ds_write_b16  v7, v4                                      // 0000208C: D87C0000 00000407
  v_add_i32     v4, vcc, 0x000001ea, v0                     // 00002094: 4A0800FF 000001EA
  s_waitcnt     vmcnt(4)                                    // 0000209C: BF8C1F74
  v_and_b32     v7, 0x0000ffff, v21                         // 000020A0: 360E2AFF 0000FFFF
  ds_write_b16  v4, v7                                      // 000020A8: D87C0000 00000704
  v_add_i32     v4, vcc, 0x000001ec, v0                     // 000020B0: 4A0800FF 000001EC
  s_waitcnt     vmcnt(3)                                    // 000020B8: BF8C1F73
  v_and_b32     v5, 0x0000ffff, v5                          // 000020BC: 360A0AFF 0000FFFF
  ds_write_b16  v4, v5                                      // 000020C4: D87C0000 00000504
  v_add_i32     v4, vcc, 0x000001ee, v0                     // 000020CC: 4A0800FF 000001EE
  s_waitcnt     vmcnt(2)                                    // 000020D4: BF8C1F72
  v_and_b32     v5, 0x0000ffff, v8                          // 000020D8: 360A10FF 0000FFFF
  ds_write_b16  v4, v5                                      // 000020E0: D87C0000 00000504
  s_waitcnt     vmcnt(1)                                    // 000020E8: BF8C1F71
  v_and_b32     v4, 0x0000ffff, v12                         // 000020EC: 360818FF 0000FFFF
  ds_write_b16  v6, v4                                      // 000020F4: D87C0000 00000406
  v_add_i32     v4, vcc, 0x000001f2, v0                     // 000020FC: 4A0800FF 000001F2
  s_waitcnt     vmcnt(0)                                    // 00002104: BF8C1F70
  v_and_b32     v5, 0x0000ffff, v13                         // 00002108: 360A1AFF 0000FFFF
  ds_write_b16  v4, v5                                      // 00002110: D87C0000 00000504
  v_add_i32     v4, vcc, 0x000001f4, v0                     // 00002118: 4A0800FF 000001F4
  v_add_i32     v0, vcc, 0x000001f6, v0                     // 00002120: 4A0000FF 000001F6
  v_lshlrev_b32  v1, 10, v1                                 // 00002128: 3402028A
  v_add_i32     v1, vcc, s5, v1                             // 0000212C: 4A020205
  s_movk_i32    s0, 0xff00                                  // 00002130: B000FF00
  tbuffer_load_format_x  v5, v3, s[16:19], 0 offen offset:1016 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002134: EBA013F8 80040503
  tbuffer_load_format_x  v3, v3, s[16:19], 0 offen offset:1020 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000213C: EBA013FC 80040303
  tbuffer_load_format_x  v6, v1, s[20:23], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002144: EBA01000 80050601
  s_waitcnt     vmcnt(2)                                    // 0000214C: BF8C1F72
  v_and_b32     v5, 0x0000ffff, v5                          // 00002150: 360A0AFF 0000FFFF
  ds_write_b16  v4, v5                                      // 00002158: D87C0000 00000504
  s_waitcnt     vmcnt(1)                                    // 00002160: BF8C1F71
  v_and_b32     v3, 0x0000ffff, v3                          // 00002164: 360606FF 0000FFFF
  ds_write_b16  v0, v3                                      // 0000216C: D87C0000 00000300
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00002174: BF8C0070
  s_barrier                                                 // 00002178: BF8A0000
  v_lshrrev_b32  v0, s7, v6                                 // 0000217C: 2C000C07
  v_bfi_b32     v0, s0, v2, v0                              // 00002180: D2940000 04020400
  v_lshlrev_b32  v0, 1, v0                                  // 00002188: 34000081
  v_add_i32     v0, vcc, s13, v0                            // 0000218C: 4A00000D
  ds_read_i16   v3, v0                                      // 00002190: D8EC0000 03000000
  s_waitcnt     lgkmcnt(0)                                  // 00002198: BF8C007F
  v_and_b32     v4, 0x0000ffff, v3                          // 0000219C: 360806FF 0000FFFF
  v_lshlrev_b32  v4, 2, v4                                  // 000021A4: 34080882
  v_add_i32     v4, vcc, s8, v4                             // 000021A8: 4A080808
  tbuffer_store_format_x  v6, v4, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000021AC: EBA41000 80060604
  v_add_i32     v3, vcc, 1, v3                              // 000021B4: 4A060681
  s_waitcnt     expcnt(0)                                   // 000021B8: BF8C1F0F
  ds_write_b16  v0, v3                                      // 000021BC: D87C0000 00000300
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000021C4: BF8C0070
  s_barrier                                                 // 000021C8: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:4 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000021CC: EBA01004 80050001
  s_waitcnt     vmcnt(0)                                    // 000021D4: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000021D8: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000021DC: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000021E4: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000021E8: 4A06060D
  ds_read_i16   v4, v3                                      // 000021EC: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000021F4: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000021F8: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00002200: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00002204: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002208: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00002210: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00002214: 4A000881
  ds_write_b16  v3, v0                                      // 00002218: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00002220: BF8C0070
  s_barrier                                                 // 00002224: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:8 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002228: EBA01008 80050001
  s_waitcnt     vmcnt(0)                                    // 00002230: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00002234: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00002238: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00002240: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00002244: 4A06060D
  ds_read_i16   v4, v3                                      // 00002248: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00002250: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00002254: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 0000225C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00002260: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002264: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 0000226C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00002270: 4A000881
  ds_write_b16  v3, v0                                      // 00002274: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 0000227C: BF8C0070
  s_barrier                                                 // 00002280: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:12 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002284: EBA0100C 80050001
  s_waitcnt     vmcnt(0)                                    // 0000228C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00002290: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00002294: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 0000229C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000022A0: 4A06060D
  ds_read_i16   v4, v3                                      // 000022A4: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000022AC: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000022B0: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000022B8: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000022BC: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000022C0: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000022C8: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000022CC: 4A000881
  ds_write_b16  v3, v0                                      // 000022D0: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000022D8: BF8C0070
  s_barrier                                                 // 000022DC: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:16 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000022E0: EBA01010 80050001
  s_waitcnt     vmcnt(0)                                    // 000022E8: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000022EC: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000022F0: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000022F8: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000022FC: 4A06060D
  ds_read_i16   v4, v3                                      // 00002300: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00002308: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 0000230C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00002314: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00002318: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000231C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00002324: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00002328: 4A000881
  ds_write_b16  v3, v0                                      // 0000232C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00002334: BF8C0070
  s_barrier                                                 // 00002338: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:20 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000233C: EBA01014 80050001
  s_waitcnt     vmcnt(0)                                    // 00002344: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00002348: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 0000234C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00002354: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00002358: 4A06060D
  ds_read_i16   v4, v3                                      // 0000235C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00002364: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00002368: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00002370: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00002374: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002378: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00002380: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00002384: 4A000881
  ds_write_b16  v3, v0                                      // 00002388: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00002390: BF8C0070
  s_barrier                                                 // 00002394: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:24 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002398: EBA01018 80050001
  s_waitcnt     vmcnt(0)                                    // 000023A0: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000023A4: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000023A8: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000023B0: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000023B4: 4A06060D
  ds_read_i16   v4, v3                                      // 000023B8: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000023C0: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000023C4: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000023CC: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000023D0: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000023D4: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000023DC: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000023E0: 4A000881
  ds_write_b16  v3, v0                                      // 000023E4: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000023EC: BF8C0070
  s_barrier                                                 // 000023F0: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:28 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000023F4: EBA0101C 80050001
  s_waitcnt     vmcnt(0)                                    // 000023FC: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00002400: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00002404: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 0000240C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00002410: 4A06060D
  ds_read_i16   v4, v3                                      // 00002414: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 0000241C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00002420: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00002428: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 0000242C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002430: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00002438: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 0000243C: 4A000881
  ds_write_b16  v3, v0                                      // 00002440: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00002448: BF8C0070
  s_barrier                                                 // 0000244C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:32 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002450: EBA01020 80050001
  s_waitcnt     vmcnt(0)                                    // 00002458: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 0000245C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00002460: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00002468: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 0000246C: 4A06060D
  ds_read_i16   v4, v3                                      // 00002470: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00002478: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 0000247C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00002484: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00002488: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000248C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00002494: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00002498: 4A000881
  ds_write_b16  v3, v0                                      // 0000249C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000024A4: BF8C0070
  s_barrier                                                 // 000024A8: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:36 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000024AC: EBA01024 80050001
  s_waitcnt     vmcnt(0)                                    // 000024B4: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000024B8: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000024BC: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000024C4: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000024C8: 4A06060D
  ds_read_i16   v4, v3                                      // 000024CC: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000024D4: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000024D8: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000024E0: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000024E4: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000024E8: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000024F0: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000024F4: 4A000881
  ds_write_b16  v3, v0                                      // 000024F8: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00002500: BF8C0070
  s_barrier                                                 // 00002504: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:40 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002508: EBA01028 80050001
  s_waitcnt     vmcnt(0)                                    // 00002510: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00002514: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00002518: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00002520: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00002524: 4A06060D
  ds_read_i16   v4, v3                                      // 00002528: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00002530: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00002534: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 0000253C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00002540: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002544: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 0000254C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00002550: 4A000881
  ds_write_b16  v3, v0                                      // 00002554: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 0000255C: BF8C0070
  s_barrier                                                 // 00002560: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:44 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002564: EBA0102C 80050001
  s_waitcnt     vmcnt(0)                                    // 0000256C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00002570: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00002574: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 0000257C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00002580: 4A06060D
  ds_read_i16   v4, v3                                      // 00002584: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 0000258C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00002590: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00002598: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 0000259C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000025A0: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000025A8: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000025AC: 4A000881
  ds_write_b16  v3, v0                                      // 000025B0: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000025B8: BF8C0070
  s_barrier                                                 // 000025BC: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:48 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000025C0: EBA01030 80050001
  s_waitcnt     vmcnt(0)                                    // 000025C8: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000025CC: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000025D0: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000025D8: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000025DC: 4A06060D
  ds_read_i16   v4, v3                                      // 000025E0: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000025E8: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000025EC: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000025F4: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000025F8: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000025FC: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00002604: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00002608: 4A000881
  ds_write_b16  v3, v0                                      // 0000260C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00002614: BF8C0070
  s_barrier                                                 // 00002618: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:52 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000261C: EBA01034 80050001
  s_waitcnt     vmcnt(0)                                    // 00002624: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00002628: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 0000262C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00002634: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00002638: 4A06060D
  ds_read_i16   v4, v3                                      // 0000263C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00002644: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00002648: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00002650: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00002654: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002658: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00002660: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00002664: 4A000881
  ds_write_b16  v3, v0                                      // 00002668: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00002670: BF8C0070
  s_barrier                                                 // 00002674: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:56 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002678: EBA01038 80050001
  s_waitcnt     vmcnt(0)                                    // 00002680: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00002684: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00002688: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00002690: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00002694: 4A06060D
  ds_read_i16   v4, v3                                      // 00002698: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000026A0: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000026A4: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000026AC: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000026B0: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000026B4: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000026BC: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000026C0: 4A000881
  ds_write_b16  v3, v0                                      // 000026C4: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000026CC: BF8C0070
  s_barrier                                                 // 000026D0: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:60 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000026D4: EBA0103C 80050001
  s_waitcnt     vmcnt(0)                                    // 000026DC: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000026E0: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000026E4: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000026EC: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000026F0: 4A06060D
  ds_read_i16   v4, v3                                      // 000026F4: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000026FC: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00002700: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00002708: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 0000270C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002710: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00002718: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 0000271C: 4A000881
  ds_write_b16  v3, v0                                      // 00002720: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00002728: BF8C0070
  s_barrier                                                 // 0000272C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:64 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002730: EBA01040 80050001
  s_waitcnt     vmcnt(0)                                    // 00002738: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 0000273C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00002740: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00002748: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 0000274C: 4A06060D
  ds_read_i16   v4, v3                                      // 00002750: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00002758: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 0000275C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00002764: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00002768: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000276C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00002774: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00002778: 4A000881
  ds_write_b16  v3, v0                                      // 0000277C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00002784: BF8C0070
  s_barrier                                                 // 00002788: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:68 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000278C: EBA01044 80050001
  s_waitcnt     vmcnt(0)                                    // 00002794: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00002798: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 0000279C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000027A4: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000027A8: 4A06060D
  ds_read_i16   v4, v3                                      // 000027AC: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000027B4: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000027B8: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000027C0: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000027C4: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000027C8: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000027D0: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000027D4: 4A000881
  ds_write_b16  v3, v0                                      // 000027D8: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000027E0: BF8C0070
  s_barrier                                                 // 000027E4: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:72 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000027E8: EBA01048 80050001
  s_waitcnt     vmcnt(0)                                    // 000027F0: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000027F4: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000027F8: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00002800: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00002804: 4A06060D
  ds_read_i16   v4, v3                                      // 00002808: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00002810: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00002814: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 0000281C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00002820: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002824: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 0000282C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00002830: 4A000881
  ds_write_b16  v3, v0                                      // 00002834: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 0000283C: BF8C0070
  s_barrier                                                 // 00002840: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:76 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002844: EBA0104C 80050001
  s_waitcnt     vmcnt(0)                                    // 0000284C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00002850: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00002854: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 0000285C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00002860: 4A06060D
  ds_read_i16   v4, v3                                      // 00002864: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 0000286C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00002870: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00002878: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 0000287C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002880: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00002888: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 0000288C: 4A000881
  ds_write_b16  v3, v0                                      // 00002890: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00002898: BF8C0070
  s_barrier                                                 // 0000289C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:80 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000028A0: EBA01050 80050001
  s_waitcnt     vmcnt(0)                                    // 000028A8: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000028AC: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000028B0: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000028B8: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000028BC: 4A06060D
  ds_read_i16   v4, v3                                      // 000028C0: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000028C8: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000028CC: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000028D4: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000028D8: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000028DC: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000028E4: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000028E8: 4A000881
  ds_write_b16  v3, v0                                      // 000028EC: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000028F4: BF8C0070
  s_barrier                                                 // 000028F8: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:84 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000028FC: EBA01054 80050001
  s_waitcnt     vmcnt(0)                                    // 00002904: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00002908: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 0000290C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00002914: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00002918: 4A06060D
  ds_read_i16   v4, v3                                      // 0000291C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00002924: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00002928: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00002930: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00002934: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002938: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00002940: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00002944: 4A000881
  ds_write_b16  v3, v0                                      // 00002948: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00002950: BF8C0070
  s_barrier                                                 // 00002954: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:88 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002958: EBA01058 80050001
  s_waitcnt     vmcnt(0)                                    // 00002960: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00002964: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00002968: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00002970: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00002974: 4A06060D
  ds_read_i16   v4, v3                                      // 00002978: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00002980: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00002984: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 0000298C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00002990: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002994: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 0000299C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000029A0: 4A000881
  ds_write_b16  v3, v0                                      // 000029A4: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000029AC: BF8C0070
  s_barrier                                                 // 000029B0: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:92 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000029B4: EBA0105C 80050001
  s_waitcnt     vmcnt(0)                                    // 000029BC: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000029C0: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000029C4: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000029CC: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000029D0: 4A06060D
  ds_read_i16   v4, v3                                      // 000029D4: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000029DC: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000029E0: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000029E8: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000029EC: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000029F0: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000029F8: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000029FC: 4A000881
  ds_write_b16  v3, v0                                      // 00002A00: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00002A08: BF8C0070
  s_barrier                                                 // 00002A0C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:96 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002A10: EBA01060 80050001
  s_waitcnt     vmcnt(0)                                    // 00002A18: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00002A1C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00002A20: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00002A28: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00002A2C: 4A06060D
  ds_read_i16   v4, v3                                      // 00002A30: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00002A38: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00002A3C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00002A44: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00002A48: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002A4C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00002A54: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00002A58: 4A000881
  ds_write_b16  v3, v0                                      // 00002A5C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00002A64: BF8C0070
  s_barrier                                                 // 00002A68: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:100 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002A6C: EBA01064 80050001
  s_waitcnt     vmcnt(0)                                    // 00002A74: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00002A78: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00002A7C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00002A84: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00002A88: 4A06060D
  ds_read_i16   v4, v3                                      // 00002A8C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00002A94: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00002A98: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00002AA0: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00002AA4: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002AA8: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00002AB0: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00002AB4: 4A000881
  ds_write_b16  v3, v0                                      // 00002AB8: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00002AC0: BF8C0070
  s_barrier                                                 // 00002AC4: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:104 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002AC8: EBA01068 80050001
  s_waitcnt     vmcnt(0)                                    // 00002AD0: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00002AD4: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00002AD8: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00002AE0: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00002AE4: 4A06060D
  ds_read_i16   v4, v3                                      // 00002AE8: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00002AF0: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00002AF4: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00002AFC: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00002B00: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002B04: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00002B0C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00002B10: 4A000881
  ds_write_b16  v3, v0                                      // 00002B14: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00002B1C: BF8C0070
  s_barrier                                                 // 00002B20: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:108 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002B24: EBA0106C 80050001
  s_waitcnt     vmcnt(0)                                    // 00002B2C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00002B30: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00002B34: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00002B3C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00002B40: 4A06060D
  ds_read_i16   v4, v3                                      // 00002B44: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00002B4C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00002B50: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00002B58: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00002B5C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002B60: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00002B68: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00002B6C: 4A000881
  ds_write_b16  v3, v0                                      // 00002B70: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00002B78: BF8C0070
  s_barrier                                                 // 00002B7C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:112 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002B80: EBA01070 80050001
  s_waitcnt     vmcnt(0)                                    // 00002B88: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00002B8C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00002B90: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00002B98: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00002B9C: 4A06060D
  ds_read_i16   v4, v3                                      // 00002BA0: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00002BA8: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00002BAC: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00002BB4: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00002BB8: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002BBC: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00002BC4: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00002BC8: 4A000881
  ds_write_b16  v3, v0                                      // 00002BCC: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00002BD4: BF8C0070
  s_barrier                                                 // 00002BD8: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:116 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002BDC: EBA01074 80050001
  s_waitcnt     vmcnt(0)                                    // 00002BE4: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00002BE8: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00002BEC: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00002BF4: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00002BF8: 4A06060D
  ds_read_i16   v4, v3                                      // 00002BFC: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00002C04: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00002C08: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00002C10: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00002C14: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002C18: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00002C20: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00002C24: 4A000881
  ds_write_b16  v3, v0                                      // 00002C28: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00002C30: BF8C0070
  s_barrier                                                 // 00002C34: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:120 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002C38: EBA01078 80050001
  s_waitcnt     vmcnt(0)                                    // 00002C40: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00002C44: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00002C48: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00002C50: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00002C54: 4A06060D
  ds_read_i16   v4, v3                                      // 00002C58: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00002C60: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00002C64: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00002C6C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00002C70: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002C74: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00002C7C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00002C80: 4A000881
  ds_write_b16  v3, v0                                      // 00002C84: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00002C8C: BF8C0070
  s_barrier                                                 // 00002C90: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:124 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002C94: EBA0107C 80050001
  s_waitcnt     vmcnt(0)                                    // 00002C9C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00002CA0: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00002CA4: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00002CAC: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00002CB0: 4A06060D
  ds_read_i16   v4, v3                                      // 00002CB4: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00002CBC: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00002CC0: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00002CC8: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00002CCC: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002CD0: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00002CD8: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00002CDC: 4A000881
  ds_write_b16  v3, v0                                      // 00002CE0: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00002CE8: BF8C0070
  s_barrier                                                 // 00002CEC: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:128 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002CF0: EBA01080 80050001
  s_waitcnt     vmcnt(0)                                    // 00002CF8: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00002CFC: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00002D00: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00002D08: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00002D0C: 4A06060D
  ds_read_i16   v4, v3                                      // 00002D10: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00002D18: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00002D1C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00002D24: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00002D28: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002D2C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00002D34: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00002D38: 4A000881
  ds_write_b16  v3, v0                                      // 00002D3C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00002D44: BF8C0070
  s_barrier                                                 // 00002D48: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:132 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002D4C: EBA01084 80050001
  s_waitcnt     vmcnt(0)                                    // 00002D54: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00002D58: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00002D5C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00002D64: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00002D68: 4A06060D
  ds_read_i16   v4, v3                                      // 00002D6C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00002D74: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00002D78: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00002D80: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00002D84: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002D88: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00002D90: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00002D94: 4A000881
  ds_write_b16  v3, v0                                      // 00002D98: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00002DA0: BF8C0070
  s_barrier                                                 // 00002DA4: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:136 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002DA8: EBA01088 80050001
  s_waitcnt     vmcnt(0)                                    // 00002DB0: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00002DB4: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00002DB8: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00002DC0: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00002DC4: 4A06060D
  ds_read_i16   v4, v3                                      // 00002DC8: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00002DD0: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00002DD4: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00002DDC: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00002DE0: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002DE4: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00002DEC: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00002DF0: 4A000881
  ds_write_b16  v3, v0                                      // 00002DF4: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00002DFC: BF8C0070
  s_barrier                                                 // 00002E00: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:140 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002E04: EBA0108C 80050001
  s_waitcnt     vmcnt(0)                                    // 00002E0C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00002E10: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00002E14: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00002E1C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00002E20: 4A06060D
  ds_read_i16   v4, v3                                      // 00002E24: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00002E2C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00002E30: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00002E38: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00002E3C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002E40: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00002E48: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00002E4C: 4A000881
  ds_write_b16  v3, v0                                      // 00002E50: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00002E58: BF8C0070
  s_barrier                                                 // 00002E5C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:144 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002E60: EBA01090 80050001
  s_waitcnt     vmcnt(0)                                    // 00002E68: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00002E6C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00002E70: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00002E78: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00002E7C: 4A06060D
  ds_read_i16   v4, v3                                      // 00002E80: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00002E88: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00002E8C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00002E94: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00002E98: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002E9C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00002EA4: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00002EA8: 4A000881
  ds_write_b16  v3, v0                                      // 00002EAC: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00002EB4: BF8C0070
  s_barrier                                                 // 00002EB8: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:148 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002EBC: EBA01094 80050001
  s_waitcnt     vmcnt(0)                                    // 00002EC4: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00002EC8: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00002ECC: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00002ED4: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00002ED8: 4A06060D
  ds_read_i16   v4, v3                                      // 00002EDC: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00002EE4: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00002EE8: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00002EF0: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00002EF4: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002EF8: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00002F00: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00002F04: 4A000881
  ds_write_b16  v3, v0                                      // 00002F08: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00002F10: BF8C0070
  s_barrier                                                 // 00002F14: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:152 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002F18: EBA01098 80050001
  s_waitcnt     vmcnt(0)                                    // 00002F20: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00002F24: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00002F28: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00002F30: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00002F34: 4A06060D
  ds_read_i16   v4, v3                                      // 00002F38: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00002F40: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00002F44: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00002F4C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00002F50: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002F54: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00002F5C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00002F60: 4A000881
  ds_write_b16  v3, v0                                      // 00002F64: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00002F6C: BF8C0070
  s_barrier                                                 // 00002F70: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:156 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002F74: EBA0109C 80050001
  s_waitcnt     vmcnt(0)                                    // 00002F7C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00002F80: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00002F84: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00002F8C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00002F90: 4A06060D
  ds_read_i16   v4, v3                                      // 00002F94: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00002F9C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00002FA0: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00002FA8: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00002FAC: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002FB0: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00002FB8: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00002FBC: 4A000881
  ds_write_b16  v3, v0                                      // 00002FC0: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00002FC8: BF8C0070
  s_barrier                                                 // 00002FCC: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:160 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00002FD0: EBA010A0 80050001
  s_waitcnt     vmcnt(0)                                    // 00002FD8: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00002FDC: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00002FE0: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00002FE8: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00002FEC: 4A06060D
  ds_read_i16   v4, v3                                      // 00002FF0: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00002FF8: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00002FFC: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00003004: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00003008: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000300C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00003014: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00003018: 4A000881
  ds_write_b16  v3, v0                                      // 0000301C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00003024: BF8C0070
  s_barrier                                                 // 00003028: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:164 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000302C: EBA010A4 80050001
  s_waitcnt     vmcnt(0)                                    // 00003034: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00003038: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 0000303C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00003044: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00003048: 4A06060D
  ds_read_i16   v4, v3                                      // 0000304C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00003054: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00003058: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00003060: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00003064: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003068: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00003070: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00003074: 4A000881
  ds_write_b16  v3, v0                                      // 00003078: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00003080: BF8C0070
  s_barrier                                                 // 00003084: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:168 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003088: EBA010A8 80050001
  s_waitcnt     vmcnt(0)                                    // 00003090: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00003094: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00003098: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000030A0: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000030A4: 4A06060D
  ds_read_i16   v4, v3                                      // 000030A8: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000030B0: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000030B4: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000030BC: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000030C0: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000030C4: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000030CC: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000030D0: 4A000881
  ds_write_b16  v3, v0                                      // 000030D4: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000030DC: BF8C0070
  s_barrier                                                 // 000030E0: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:172 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000030E4: EBA010AC 80050001
  s_waitcnt     vmcnt(0)                                    // 000030EC: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000030F0: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000030F4: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000030FC: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00003100: 4A06060D
  ds_read_i16   v4, v3                                      // 00003104: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 0000310C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00003110: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00003118: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 0000311C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003120: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00003128: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 0000312C: 4A000881
  ds_write_b16  v3, v0                                      // 00003130: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00003138: BF8C0070
  s_barrier                                                 // 0000313C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:176 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003140: EBA010B0 80050001
  s_waitcnt     vmcnt(0)                                    // 00003148: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 0000314C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00003150: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00003158: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 0000315C: 4A06060D
  ds_read_i16   v4, v3                                      // 00003160: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00003168: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 0000316C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00003174: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00003178: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000317C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00003184: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00003188: 4A000881
  ds_write_b16  v3, v0                                      // 0000318C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00003194: BF8C0070
  s_barrier                                                 // 00003198: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:180 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000319C: EBA010B4 80050001
  s_waitcnt     vmcnt(0)                                    // 000031A4: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000031A8: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000031AC: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000031B4: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000031B8: 4A06060D
  ds_read_i16   v4, v3                                      // 000031BC: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000031C4: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000031C8: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000031D0: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000031D4: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000031D8: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000031E0: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000031E4: 4A000881
  ds_write_b16  v3, v0                                      // 000031E8: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000031F0: BF8C0070
  s_barrier                                                 // 000031F4: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:184 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000031F8: EBA010B8 80050001
  s_waitcnt     vmcnt(0)                                    // 00003200: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00003204: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00003208: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00003210: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00003214: 4A06060D
  ds_read_i16   v4, v3                                      // 00003218: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00003220: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00003224: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 0000322C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00003230: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003234: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 0000323C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00003240: 4A000881
  ds_write_b16  v3, v0                                      // 00003244: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 0000324C: BF8C0070
  s_barrier                                                 // 00003250: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:188 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003254: EBA010BC 80050001
  s_waitcnt     vmcnt(0)                                    // 0000325C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00003260: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00003264: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 0000326C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00003270: 4A06060D
  ds_read_i16   v4, v3                                      // 00003274: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 0000327C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00003280: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00003288: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 0000328C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003290: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00003298: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 0000329C: 4A000881
  ds_write_b16  v3, v0                                      // 000032A0: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000032A8: BF8C0070
  s_barrier                                                 // 000032AC: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:192 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000032B0: EBA010C0 80050001
  s_waitcnt     vmcnt(0)                                    // 000032B8: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000032BC: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000032C0: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000032C8: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000032CC: 4A06060D
  ds_read_i16   v4, v3                                      // 000032D0: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000032D8: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000032DC: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000032E4: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000032E8: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000032EC: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000032F4: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000032F8: 4A000881
  ds_write_b16  v3, v0                                      // 000032FC: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00003304: BF8C0070
  s_barrier                                                 // 00003308: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:196 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000330C: EBA010C4 80050001
  s_waitcnt     vmcnt(0)                                    // 00003314: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00003318: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 0000331C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00003324: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00003328: 4A06060D
  ds_read_i16   v4, v3                                      // 0000332C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00003334: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00003338: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00003340: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00003344: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003348: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00003350: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00003354: 4A000881
  ds_write_b16  v3, v0                                      // 00003358: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00003360: BF8C0070
  s_barrier                                                 // 00003364: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:200 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003368: EBA010C8 80050001
  s_waitcnt     vmcnt(0)                                    // 00003370: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00003374: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00003378: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00003380: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00003384: 4A06060D
  ds_read_i16   v4, v3                                      // 00003388: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00003390: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00003394: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 0000339C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000033A0: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000033A4: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000033AC: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000033B0: 4A000881
  ds_write_b16  v3, v0                                      // 000033B4: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000033BC: BF8C0070
  s_barrier                                                 // 000033C0: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:204 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000033C4: EBA010CC 80050001
  s_waitcnt     vmcnt(0)                                    // 000033CC: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000033D0: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000033D4: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000033DC: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000033E0: 4A06060D
  ds_read_i16   v4, v3                                      // 000033E4: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000033EC: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000033F0: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000033F8: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000033FC: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003400: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00003408: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 0000340C: 4A000881
  ds_write_b16  v3, v0                                      // 00003410: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00003418: BF8C0070
  s_barrier                                                 // 0000341C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:208 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003420: EBA010D0 80050001
  s_waitcnt     vmcnt(0)                                    // 00003428: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 0000342C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00003430: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00003438: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 0000343C: 4A06060D
  ds_read_i16   v4, v3                                      // 00003440: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00003448: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 0000344C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00003454: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00003458: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000345C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00003464: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00003468: 4A000881
  ds_write_b16  v3, v0                                      // 0000346C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00003474: BF8C0070
  s_barrier                                                 // 00003478: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:212 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000347C: EBA010D4 80050001
  s_waitcnt     vmcnt(0)                                    // 00003484: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00003488: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 0000348C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00003494: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00003498: 4A06060D
  ds_read_i16   v4, v3                                      // 0000349C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000034A4: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000034A8: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000034B0: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000034B4: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000034B8: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000034C0: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000034C4: 4A000881
  ds_write_b16  v3, v0                                      // 000034C8: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000034D0: BF8C0070
  s_barrier                                                 // 000034D4: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:216 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000034D8: EBA010D8 80050001
  s_waitcnt     vmcnt(0)                                    // 000034E0: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000034E4: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000034E8: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000034F0: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000034F4: 4A06060D
  ds_read_i16   v4, v3                                      // 000034F8: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00003500: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00003504: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 0000350C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00003510: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003514: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 0000351C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00003520: 4A000881
  ds_write_b16  v3, v0                                      // 00003524: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 0000352C: BF8C0070
  s_barrier                                                 // 00003530: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:220 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003534: EBA010DC 80050001
  s_waitcnt     vmcnt(0)                                    // 0000353C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00003540: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00003544: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 0000354C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00003550: 4A06060D
  ds_read_i16   v4, v3                                      // 00003554: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 0000355C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00003560: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00003568: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 0000356C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003570: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00003578: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 0000357C: 4A000881
  ds_write_b16  v3, v0                                      // 00003580: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00003588: BF8C0070
  s_barrier                                                 // 0000358C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:224 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003590: EBA010E0 80050001
  s_waitcnt     vmcnt(0)                                    // 00003598: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 0000359C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000035A0: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000035A8: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000035AC: 4A06060D
  ds_read_i16   v4, v3                                      // 000035B0: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000035B8: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000035BC: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000035C4: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000035C8: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000035CC: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000035D4: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000035D8: 4A000881
  ds_write_b16  v3, v0                                      // 000035DC: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000035E4: BF8C0070
  s_barrier                                                 // 000035E8: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:228 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000035EC: EBA010E4 80050001
  s_waitcnt     vmcnt(0)                                    // 000035F4: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000035F8: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000035FC: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00003604: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00003608: 4A06060D
  ds_read_i16   v4, v3                                      // 0000360C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00003614: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00003618: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00003620: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00003624: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003628: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00003630: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00003634: 4A000881
  ds_write_b16  v3, v0                                      // 00003638: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00003640: BF8C0070
  s_barrier                                                 // 00003644: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:232 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003648: EBA010E8 80050001
  s_waitcnt     vmcnt(0)                                    // 00003650: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00003654: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00003658: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00003660: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00003664: 4A06060D
  ds_read_i16   v4, v3                                      // 00003668: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00003670: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00003674: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 0000367C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00003680: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003684: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 0000368C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00003690: 4A000881
  ds_write_b16  v3, v0                                      // 00003694: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 0000369C: BF8C0070
  s_barrier                                                 // 000036A0: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:236 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000036A4: EBA010EC 80050001
  s_waitcnt     vmcnt(0)                                    // 000036AC: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000036B0: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000036B4: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000036BC: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000036C0: 4A06060D
  ds_read_i16   v4, v3                                      // 000036C4: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000036CC: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000036D0: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000036D8: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000036DC: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000036E0: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000036E8: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000036EC: 4A000881
  ds_write_b16  v3, v0                                      // 000036F0: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000036F8: BF8C0070
  s_barrier                                                 // 000036FC: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:240 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003700: EBA010F0 80050001
  s_waitcnt     vmcnt(0)                                    // 00003708: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 0000370C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00003710: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00003718: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 0000371C: 4A06060D
  ds_read_i16   v4, v3                                      // 00003720: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00003728: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 0000372C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00003734: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00003738: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000373C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00003744: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00003748: 4A000881
  ds_write_b16  v3, v0                                      // 0000374C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00003754: BF8C0070
  s_barrier                                                 // 00003758: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:244 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000375C: EBA010F4 80050001
  s_waitcnt     vmcnt(0)                                    // 00003764: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00003768: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 0000376C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00003774: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00003778: 4A06060D
  ds_read_i16   v4, v3                                      // 0000377C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00003784: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00003788: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00003790: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00003794: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003798: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000037A0: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000037A4: 4A000881
  ds_write_b16  v3, v0                                      // 000037A8: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000037B0: BF8C0070
  s_barrier                                                 // 000037B4: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:248 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000037B8: EBA010F8 80050001
  s_waitcnt     vmcnt(0)                                    // 000037C0: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000037C4: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000037C8: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000037D0: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000037D4: 4A06060D
  ds_read_i16   v4, v3                                      // 000037D8: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000037E0: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000037E4: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000037EC: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000037F0: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000037F4: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000037FC: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00003800: 4A000881
  ds_write_b16  v3, v0                                      // 00003804: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 0000380C: BF8C0070
  s_barrier                                                 // 00003810: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:252 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003814: EBA010FC 80050001
  s_waitcnt     vmcnt(0)                                    // 0000381C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00003820: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00003824: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 0000382C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00003830: 4A06060D
  ds_read_i16   v4, v3                                      // 00003834: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 0000383C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00003840: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00003848: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 0000384C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003850: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00003858: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 0000385C: 4A000881
  ds_write_b16  v3, v0                                      // 00003860: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00003868: BF8C0070
  s_barrier                                                 // 0000386C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:256 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003870: EBA01100 80050001
  s_waitcnt     vmcnt(0)                                    // 00003878: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 0000387C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00003880: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00003888: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 0000388C: 4A06060D
  ds_read_i16   v4, v3                                      // 00003890: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00003898: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 0000389C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000038A4: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000038A8: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000038AC: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000038B4: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000038B8: 4A000881
  ds_write_b16  v3, v0                                      // 000038BC: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000038C4: BF8C0070
  s_barrier                                                 // 000038C8: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:260 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000038CC: EBA01104 80050001
  s_waitcnt     vmcnt(0)                                    // 000038D4: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000038D8: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000038DC: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000038E4: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000038E8: 4A06060D
  ds_read_i16   v4, v3                                      // 000038EC: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000038F4: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000038F8: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00003900: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00003904: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003908: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00003910: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00003914: 4A000881
  ds_write_b16  v3, v0                                      // 00003918: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00003920: BF8C0070
  s_barrier                                                 // 00003924: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:264 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003928: EBA01108 80050001
  s_waitcnt     vmcnt(0)                                    // 00003930: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00003934: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00003938: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00003940: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00003944: 4A06060D
  ds_read_i16   v4, v3                                      // 00003948: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00003950: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00003954: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 0000395C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00003960: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003964: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 0000396C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00003970: 4A000881
  ds_write_b16  v3, v0                                      // 00003974: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 0000397C: BF8C0070
  s_barrier                                                 // 00003980: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:268 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003984: EBA0110C 80050001
  s_waitcnt     vmcnt(0)                                    // 0000398C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00003990: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00003994: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 0000399C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000039A0: 4A06060D
  ds_read_i16   v4, v3                                      // 000039A4: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000039AC: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000039B0: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000039B8: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000039BC: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000039C0: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000039C8: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000039CC: 4A000881
  ds_write_b16  v3, v0                                      // 000039D0: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000039D8: BF8C0070
  s_barrier                                                 // 000039DC: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:272 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000039E0: EBA01110 80050001
  s_waitcnt     vmcnt(0)                                    // 000039E8: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000039EC: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000039F0: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000039F8: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000039FC: 4A06060D
  ds_read_i16   v4, v3                                      // 00003A00: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00003A08: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00003A0C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00003A14: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00003A18: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003A1C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00003A24: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00003A28: 4A000881
  ds_write_b16  v3, v0                                      // 00003A2C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00003A34: BF8C0070
  s_barrier                                                 // 00003A38: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:276 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003A3C: EBA01114 80050001
  s_waitcnt     vmcnt(0)                                    // 00003A44: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00003A48: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00003A4C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00003A54: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00003A58: 4A06060D
  ds_read_i16   v4, v3                                      // 00003A5C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00003A64: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00003A68: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00003A70: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00003A74: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003A78: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00003A80: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00003A84: 4A000881
  ds_write_b16  v3, v0                                      // 00003A88: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00003A90: BF8C0070
  s_barrier                                                 // 00003A94: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:280 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003A98: EBA01118 80050001
  s_waitcnt     vmcnt(0)                                    // 00003AA0: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00003AA4: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00003AA8: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00003AB0: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00003AB4: 4A06060D
  ds_read_i16   v4, v3                                      // 00003AB8: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00003AC0: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00003AC4: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00003ACC: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00003AD0: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003AD4: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00003ADC: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00003AE0: 4A000881
  ds_write_b16  v3, v0                                      // 00003AE4: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00003AEC: BF8C0070
  s_barrier                                                 // 00003AF0: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:284 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003AF4: EBA0111C 80050001
  s_waitcnt     vmcnt(0)                                    // 00003AFC: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00003B00: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00003B04: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00003B0C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00003B10: 4A06060D
  ds_read_i16   v4, v3                                      // 00003B14: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00003B1C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00003B20: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00003B28: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00003B2C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003B30: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00003B38: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00003B3C: 4A000881
  ds_write_b16  v3, v0                                      // 00003B40: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00003B48: BF8C0070
  s_barrier                                                 // 00003B4C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:288 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003B50: EBA01120 80050001
  s_waitcnt     vmcnt(0)                                    // 00003B58: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00003B5C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00003B60: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00003B68: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00003B6C: 4A06060D
  ds_read_i16   v4, v3                                      // 00003B70: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00003B78: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00003B7C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00003B84: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00003B88: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003B8C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00003B94: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00003B98: 4A000881
  ds_write_b16  v3, v0                                      // 00003B9C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00003BA4: BF8C0070
  s_barrier                                                 // 00003BA8: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:292 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003BAC: EBA01124 80050001
  s_waitcnt     vmcnt(0)                                    // 00003BB4: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00003BB8: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00003BBC: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00003BC4: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00003BC8: 4A06060D
  ds_read_i16   v4, v3                                      // 00003BCC: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00003BD4: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00003BD8: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00003BE0: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00003BE4: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003BE8: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00003BF0: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00003BF4: 4A000881
  ds_write_b16  v3, v0                                      // 00003BF8: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00003C00: BF8C0070
  s_barrier                                                 // 00003C04: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:296 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003C08: EBA01128 80050001
  s_waitcnt     vmcnt(0)                                    // 00003C10: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00003C14: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00003C18: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00003C20: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00003C24: 4A06060D
  ds_read_i16   v4, v3                                      // 00003C28: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00003C30: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00003C34: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00003C3C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00003C40: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003C44: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00003C4C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00003C50: 4A000881
  ds_write_b16  v3, v0                                      // 00003C54: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00003C5C: BF8C0070
  s_barrier                                                 // 00003C60: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:300 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003C64: EBA0112C 80050001
  s_waitcnt     vmcnt(0)                                    // 00003C6C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00003C70: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00003C74: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00003C7C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00003C80: 4A06060D
  ds_read_i16   v4, v3                                      // 00003C84: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00003C8C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00003C90: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00003C98: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00003C9C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003CA0: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00003CA8: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00003CAC: 4A000881
  ds_write_b16  v3, v0                                      // 00003CB0: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00003CB8: BF8C0070
  s_barrier                                                 // 00003CBC: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:304 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003CC0: EBA01130 80050001
  s_waitcnt     vmcnt(0)                                    // 00003CC8: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00003CCC: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00003CD0: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00003CD8: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00003CDC: 4A06060D
  ds_read_i16   v4, v3                                      // 00003CE0: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00003CE8: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00003CEC: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00003CF4: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00003CF8: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003CFC: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00003D04: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00003D08: 4A000881
  ds_write_b16  v3, v0                                      // 00003D0C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00003D14: BF8C0070
  s_barrier                                                 // 00003D18: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:308 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003D1C: EBA01134 80050001
  s_waitcnt     vmcnt(0)                                    // 00003D24: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00003D28: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00003D2C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00003D34: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00003D38: 4A06060D
  ds_read_i16   v4, v3                                      // 00003D3C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00003D44: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00003D48: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00003D50: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00003D54: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003D58: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00003D60: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00003D64: 4A000881
  ds_write_b16  v3, v0                                      // 00003D68: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00003D70: BF8C0070
  s_barrier                                                 // 00003D74: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:312 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003D78: EBA01138 80050001
  s_waitcnt     vmcnt(0)                                    // 00003D80: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00003D84: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00003D88: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00003D90: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00003D94: 4A06060D
  ds_read_i16   v4, v3                                      // 00003D98: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00003DA0: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00003DA4: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00003DAC: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00003DB0: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003DB4: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00003DBC: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00003DC0: 4A000881
  ds_write_b16  v3, v0                                      // 00003DC4: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00003DCC: BF8C0070
  s_barrier                                                 // 00003DD0: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:316 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003DD4: EBA0113C 80050001
  s_waitcnt     vmcnt(0)                                    // 00003DDC: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00003DE0: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00003DE4: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00003DEC: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00003DF0: 4A06060D
  ds_read_i16   v4, v3                                      // 00003DF4: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00003DFC: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00003E00: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00003E08: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00003E0C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003E10: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00003E18: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00003E1C: 4A000881
  ds_write_b16  v3, v0                                      // 00003E20: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00003E28: BF8C0070
  s_barrier                                                 // 00003E2C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:320 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003E30: EBA01140 80050001
  s_waitcnt     vmcnt(0)                                    // 00003E38: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00003E3C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00003E40: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00003E48: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00003E4C: 4A06060D
  ds_read_i16   v4, v3                                      // 00003E50: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00003E58: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00003E5C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00003E64: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00003E68: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003E6C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00003E74: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00003E78: 4A000881
  ds_write_b16  v3, v0                                      // 00003E7C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00003E84: BF8C0070
  s_barrier                                                 // 00003E88: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:324 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003E8C: EBA01144 80050001
  s_waitcnt     vmcnt(0)                                    // 00003E94: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00003E98: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00003E9C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00003EA4: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00003EA8: 4A06060D
  ds_read_i16   v4, v3                                      // 00003EAC: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00003EB4: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00003EB8: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00003EC0: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00003EC4: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003EC8: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00003ED0: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00003ED4: 4A000881
  ds_write_b16  v3, v0                                      // 00003ED8: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00003EE0: BF8C0070
  s_barrier                                                 // 00003EE4: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:328 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003EE8: EBA01148 80050001
  s_waitcnt     vmcnt(0)                                    // 00003EF0: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00003EF4: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00003EF8: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00003F00: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00003F04: 4A06060D
  ds_read_i16   v4, v3                                      // 00003F08: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00003F10: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00003F14: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00003F1C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00003F20: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003F24: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00003F2C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00003F30: 4A000881
  ds_write_b16  v3, v0                                      // 00003F34: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00003F3C: BF8C0070
  s_barrier                                                 // 00003F40: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:332 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003F44: EBA0114C 80050001
  s_waitcnt     vmcnt(0)                                    // 00003F4C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00003F50: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00003F54: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00003F5C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00003F60: 4A06060D
  ds_read_i16   v4, v3                                      // 00003F64: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00003F6C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00003F70: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00003F78: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00003F7C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003F80: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00003F88: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00003F8C: 4A000881
  ds_write_b16  v3, v0                                      // 00003F90: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00003F98: BF8C0070
  s_barrier                                                 // 00003F9C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:336 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003FA0: EBA01150 80050001
  s_waitcnt     vmcnt(0)                                    // 00003FA8: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00003FAC: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00003FB0: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00003FB8: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00003FBC: 4A06060D
  ds_read_i16   v4, v3                                      // 00003FC0: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00003FC8: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00003FCC: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00003FD4: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00003FD8: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003FDC: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00003FE4: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00003FE8: 4A000881
  ds_write_b16  v3, v0                                      // 00003FEC: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00003FF4: BF8C0070
  s_barrier                                                 // 00003FF8: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:340 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00003FFC: EBA01154 80050001
  s_waitcnt     vmcnt(0)                                    // 00004004: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00004008: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 0000400C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00004014: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00004018: 4A06060D
  ds_read_i16   v4, v3                                      // 0000401C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00004024: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00004028: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00004030: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00004034: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004038: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00004040: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00004044: 4A000881
  ds_write_b16  v3, v0                                      // 00004048: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00004050: BF8C0070
  s_barrier                                                 // 00004054: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:344 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004058: EBA01158 80050001
  s_waitcnt     vmcnt(0)                                    // 00004060: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00004064: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00004068: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00004070: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00004074: 4A06060D
  ds_read_i16   v4, v3                                      // 00004078: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00004080: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00004084: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 0000408C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00004090: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004094: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 0000409C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000040A0: 4A000881
  ds_write_b16  v3, v0                                      // 000040A4: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000040AC: BF8C0070
  s_barrier                                                 // 000040B0: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:348 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000040B4: EBA0115C 80050001
  s_waitcnt     vmcnt(0)                                    // 000040BC: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000040C0: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000040C4: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000040CC: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000040D0: 4A06060D
  ds_read_i16   v4, v3                                      // 000040D4: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000040DC: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000040E0: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000040E8: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000040EC: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000040F0: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000040F8: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000040FC: 4A000881
  ds_write_b16  v3, v0                                      // 00004100: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00004108: BF8C0070
  s_barrier                                                 // 0000410C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:352 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004110: EBA01160 80050001
  s_waitcnt     vmcnt(0)                                    // 00004118: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 0000411C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00004120: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00004128: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 0000412C: 4A06060D
  ds_read_i16   v4, v3                                      // 00004130: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00004138: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 0000413C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00004144: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00004148: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000414C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00004154: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00004158: 4A000881
  ds_write_b16  v3, v0                                      // 0000415C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00004164: BF8C0070
  s_barrier                                                 // 00004168: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:356 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000416C: EBA01164 80050001
  s_waitcnt     vmcnt(0)                                    // 00004174: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00004178: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 0000417C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00004184: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00004188: 4A06060D
  ds_read_i16   v4, v3                                      // 0000418C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00004194: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00004198: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000041A0: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000041A4: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000041A8: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000041B0: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000041B4: 4A000881
  ds_write_b16  v3, v0                                      // 000041B8: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000041C0: BF8C0070
  s_barrier                                                 // 000041C4: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:360 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000041C8: EBA01168 80050001
  s_waitcnt     vmcnt(0)                                    // 000041D0: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000041D4: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000041D8: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000041E0: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000041E4: 4A06060D
  ds_read_i16   v4, v3                                      // 000041E8: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000041F0: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000041F4: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000041FC: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00004200: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004204: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 0000420C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00004210: 4A000881
  ds_write_b16  v3, v0                                      // 00004214: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 0000421C: BF8C0070
  s_barrier                                                 // 00004220: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:364 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004224: EBA0116C 80050001
  s_waitcnt     vmcnt(0)                                    // 0000422C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00004230: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00004234: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 0000423C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00004240: 4A06060D
  ds_read_i16   v4, v3                                      // 00004244: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 0000424C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00004250: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00004258: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 0000425C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004260: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00004268: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 0000426C: 4A000881
  ds_write_b16  v3, v0                                      // 00004270: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00004278: BF8C0070
  s_barrier                                                 // 0000427C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:368 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004280: EBA01170 80050001
  s_waitcnt     vmcnt(0)                                    // 00004288: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 0000428C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00004290: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00004298: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 0000429C: 4A06060D
  ds_read_i16   v4, v3                                      // 000042A0: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000042A8: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000042AC: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000042B4: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000042B8: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000042BC: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000042C4: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000042C8: 4A000881
  ds_write_b16  v3, v0                                      // 000042CC: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000042D4: BF8C0070
  s_barrier                                                 // 000042D8: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:372 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000042DC: EBA01174 80050001
  s_waitcnt     vmcnt(0)                                    // 000042E4: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000042E8: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000042EC: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000042F4: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000042F8: 4A06060D
  ds_read_i16   v4, v3                                      // 000042FC: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00004304: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00004308: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00004310: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00004314: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004318: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00004320: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00004324: 4A000881
  ds_write_b16  v3, v0                                      // 00004328: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00004330: BF8C0070
  s_barrier                                                 // 00004334: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:376 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004338: EBA01178 80050001
  s_waitcnt     vmcnt(0)                                    // 00004340: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00004344: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00004348: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00004350: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00004354: 4A06060D
  ds_read_i16   v4, v3                                      // 00004358: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00004360: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00004364: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 0000436C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00004370: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004374: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 0000437C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00004380: 4A000881
  ds_write_b16  v3, v0                                      // 00004384: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 0000438C: BF8C0070
  s_barrier                                                 // 00004390: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:380 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004394: EBA0117C 80050001
  s_waitcnt     vmcnt(0)                                    // 0000439C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000043A0: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000043A4: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000043AC: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000043B0: 4A06060D
  ds_read_i16   v4, v3                                      // 000043B4: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000043BC: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000043C0: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000043C8: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000043CC: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000043D0: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000043D8: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000043DC: 4A000881
  ds_write_b16  v3, v0                                      // 000043E0: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000043E8: BF8C0070
  s_barrier                                                 // 000043EC: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:384 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000043F0: EBA01180 80050001
  s_waitcnt     vmcnt(0)                                    // 000043F8: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000043FC: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00004400: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00004408: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 0000440C: 4A06060D
  ds_read_i16   v4, v3                                      // 00004410: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00004418: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 0000441C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00004424: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00004428: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000442C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00004434: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00004438: 4A000881
  ds_write_b16  v3, v0                                      // 0000443C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00004444: BF8C0070
  s_barrier                                                 // 00004448: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:388 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000444C: EBA01184 80050001
  s_waitcnt     vmcnt(0)                                    // 00004454: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00004458: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 0000445C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00004464: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00004468: 4A06060D
  ds_read_i16   v4, v3                                      // 0000446C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00004474: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00004478: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00004480: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00004484: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004488: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00004490: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00004494: 4A000881
  ds_write_b16  v3, v0                                      // 00004498: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000044A0: BF8C0070
  s_barrier                                                 // 000044A4: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:392 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000044A8: EBA01188 80050001
  s_waitcnt     vmcnt(0)                                    // 000044B0: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000044B4: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000044B8: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000044C0: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000044C4: 4A06060D
  ds_read_i16   v4, v3                                      // 000044C8: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000044D0: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000044D4: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000044DC: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000044E0: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000044E4: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000044EC: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000044F0: 4A000881
  ds_write_b16  v3, v0                                      // 000044F4: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000044FC: BF8C0070
  s_barrier                                                 // 00004500: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:396 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004504: EBA0118C 80050001
  s_waitcnt     vmcnt(0)                                    // 0000450C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00004510: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00004514: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 0000451C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00004520: 4A06060D
  ds_read_i16   v4, v3                                      // 00004524: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 0000452C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00004530: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00004538: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 0000453C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004540: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00004548: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 0000454C: 4A000881
  ds_write_b16  v3, v0                                      // 00004550: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00004558: BF8C0070
  s_barrier                                                 // 0000455C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:400 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004560: EBA01190 80050001
  s_waitcnt     vmcnt(0)                                    // 00004568: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 0000456C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00004570: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00004578: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 0000457C: 4A06060D
  ds_read_i16   v4, v3                                      // 00004580: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00004588: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 0000458C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00004594: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00004598: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000459C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000045A4: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000045A8: 4A000881
  ds_write_b16  v3, v0                                      // 000045AC: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000045B4: BF8C0070
  s_barrier                                                 // 000045B8: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:404 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000045BC: EBA01194 80050001
  s_waitcnt     vmcnt(0)                                    // 000045C4: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000045C8: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000045CC: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000045D4: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000045D8: 4A06060D
  ds_read_i16   v4, v3                                      // 000045DC: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000045E4: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000045E8: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000045F0: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000045F4: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000045F8: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00004600: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00004604: 4A000881
  ds_write_b16  v3, v0                                      // 00004608: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00004610: BF8C0070
  s_barrier                                                 // 00004614: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:408 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004618: EBA01198 80050001
  s_waitcnt     vmcnt(0)                                    // 00004620: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00004624: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00004628: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00004630: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00004634: 4A06060D
  ds_read_i16   v4, v3                                      // 00004638: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00004640: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00004644: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 0000464C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00004650: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004654: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 0000465C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00004660: 4A000881
  ds_write_b16  v3, v0                                      // 00004664: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 0000466C: BF8C0070
  s_barrier                                                 // 00004670: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:412 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004674: EBA0119C 80050001
  s_waitcnt     vmcnt(0)                                    // 0000467C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00004680: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00004684: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 0000468C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00004690: 4A06060D
  ds_read_i16   v4, v3                                      // 00004694: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 0000469C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000046A0: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000046A8: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000046AC: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000046B0: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000046B8: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000046BC: 4A000881
  ds_write_b16  v3, v0                                      // 000046C0: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000046C8: BF8C0070
  s_barrier                                                 // 000046CC: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:416 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000046D0: EBA011A0 80050001
  s_waitcnt     vmcnt(0)                                    // 000046D8: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000046DC: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000046E0: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000046E8: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000046EC: 4A06060D
  ds_read_i16   v4, v3                                      // 000046F0: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000046F8: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000046FC: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00004704: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00004708: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000470C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00004714: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00004718: 4A000881
  ds_write_b16  v3, v0                                      // 0000471C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00004724: BF8C0070
  s_barrier                                                 // 00004728: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:420 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000472C: EBA011A4 80050001
  s_waitcnt     vmcnt(0)                                    // 00004734: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00004738: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 0000473C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00004744: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00004748: 4A06060D
  ds_read_i16   v4, v3                                      // 0000474C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00004754: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00004758: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00004760: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00004764: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004768: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00004770: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00004774: 4A000881
  ds_write_b16  v3, v0                                      // 00004778: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00004780: BF8C0070
  s_barrier                                                 // 00004784: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:424 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004788: EBA011A8 80050001
  s_waitcnt     vmcnt(0)                                    // 00004790: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00004794: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00004798: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000047A0: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000047A4: 4A06060D
  ds_read_i16   v4, v3                                      // 000047A8: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000047B0: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000047B4: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000047BC: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000047C0: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000047C4: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000047CC: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000047D0: 4A000881
  ds_write_b16  v3, v0                                      // 000047D4: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000047DC: BF8C0070
  s_barrier                                                 // 000047E0: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:428 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000047E4: EBA011AC 80050001
  s_waitcnt     vmcnt(0)                                    // 000047EC: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000047F0: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000047F4: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000047FC: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00004800: 4A06060D
  ds_read_i16   v4, v3                                      // 00004804: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 0000480C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00004810: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00004818: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 0000481C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004820: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00004828: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 0000482C: 4A000881
  ds_write_b16  v3, v0                                      // 00004830: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00004838: BF8C0070
  s_barrier                                                 // 0000483C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:432 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004840: EBA011B0 80050001
  s_waitcnt     vmcnt(0)                                    // 00004848: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 0000484C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00004850: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00004858: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 0000485C: 4A06060D
  ds_read_i16   v4, v3                                      // 00004860: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00004868: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 0000486C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00004874: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00004878: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000487C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00004884: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00004888: 4A000881
  ds_write_b16  v3, v0                                      // 0000488C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00004894: BF8C0070
  s_barrier                                                 // 00004898: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:436 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000489C: EBA011B4 80050001
  s_waitcnt     vmcnt(0)                                    // 000048A4: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000048A8: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000048AC: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000048B4: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000048B8: 4A06060D
  ds_read_i16   v4, v3                                      // 000048BC: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000048C4: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000048C8: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000048D0: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000048D4: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000048D8: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000048E0: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000048E4: 4A000881
  ds_write_b16  v3, v0                                      // 000048E8: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000048F0: BF8C0070
  s_barrier                                                 // 000048F4: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:440 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000048F8: EBA011B8 80050001
  s_waitcnt     vmcnt(0)                                    // 00004900: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00004904: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00004908: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00004910: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00004914: 4A06060D
  ds_read_i16   v4, v3                                      // 00004918: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00004920: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00004924: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 0000492C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00004930: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004934: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 0000493C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00004940: 4A000881
  ds_write_b16  v3, v0                                      // 00004944: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 0000494C: BF8C0070
  s_barrier                                                 // 00004950: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:444 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004954: EBA011BC 80050001
  s_waitcnt     vmcnt(0)                                    // 0000495C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00004960: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00004964: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 0000496C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00004970: 4A06060D
  ds_read_i16   v4, v3                                      // 00004974: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 0000497C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00004980: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00004988: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 0000498C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004990: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00004998: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 0000499C: 4A000881
  ds_write_b16  v3, v0                                      // 000049A0: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000049A8: BF8C0070
  s_barrier                                                 // 000049AC: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:448 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000049B0: EBA011C0 80050001
  s_waitcnt     vmcnt(0)                                    // 000049B8: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000049BC: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000049C0: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000049C8: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000049CC: 4A06060D
  ds_read_i16   v4, v3                                      // 000049D0: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000049D8: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000049DC: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000049E4: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000049E8: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000049EC: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000049F4: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000049F8: 4A000881
  ds_write_b16  v3, v0                                      // 000049FC: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00004A04: BF8C0070
  s_barrier                                                 // 00004A08: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:452 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004A0C: EBA011C4 80050001
  s_waitcnt     vmcnt(0)                                    // 00004A14: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00004A18: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00004A1C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00004A24: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00004A28: 4A06060D
  ds_read_i16   v4, v3                                      // 00004A2C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00004A34: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00004A38: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00004A40: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00004A44: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004A48: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00004A50: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00004A54: 4A000881
  ds_write_b16  v3, v0                                      // 00004A58: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00004A60: BF8C0070
  s_barrier                                                 // 00004A64: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:456 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004A68: EBA011C8 80050001
  s_waitcnt     vmcnt(0)                                    // 00004A70: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00004A74: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00004A78: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00004A80: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00004A84: 4A06060D
  ds_read_i16   v4, v3                                      // 00004A88: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00004A90: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00004A94: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00004A9C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00004AA0: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004AA4: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00004AAC: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00004AB0: 4A000881
  ds_write_b16  v3, v0                                      // 00004AB4: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00004ABC: BF8C0070
  s_barrier                                                 // 00004AC0: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:460 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004AC4: EBA011CC 80050001
  s_waitcnt     vmcnt(0)                                    // 00004ACC: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00004AD0: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00004AD4: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00004ADC: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00004AE0: 4A06060D
  ds_read_i16   v4, v3                                      // 00004AE4: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00004AEC: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00004AF0: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00004AF8: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00004AFC: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004B00: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00004B08: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00004B0C: 4A000881
  ds_write_b16  v3, v0                                      // 00004B10: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00004B18: BF8C0070
  s_barrier                                                 // 00004B1C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:464 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004B20: EBA011D0 80050001
  s_waitcnt     vmcnt(0)                                    // 00004B28: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00004B2C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00004B30: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00004B38: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00004B3C: 4A06060D
  ds_read_i16   v4, v3                                      // 00004B40: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00004B48: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00004B4C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00004B54: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00004B58: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004B5C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00004B64: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00004B68: 4A000881
  ds_write_b16  v3, v0                                      // 00004B6C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00004B74: BF8C0070
  s_barrier                                                 // 00004B78: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:468 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004B7C: EBA011D4 80050001
  s_waitcnt     vmcnt(0)                                    // 00004B84: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00004B88: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00004B8C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00004B94: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00004B98: 4A06060D
  ds_read_i16   v4, v3                                      // 00004B9C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00004BA4: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00004BA8: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00004BB0: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00004BB4: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004BB8: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00004BC0: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00004BC4: 4A000881
  ds_write_b16  v3, v0                                      // 00004BC8: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00004BD0: BF8C0070
  s_barrier                                                 // 00004BD4: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:472 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004BD8: EBA011D8 80050001
  s_waitcnt     vmcnt(0)                                    // 00004BE0: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00004BE4: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00004BE8: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00004BF0: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00004BF4: 4A06060D
  ds_read_i16   v4, v3                                      // 00004BF8: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00004C00: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00004C04: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00004C0C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00004C10: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004C14: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00004C1C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00004C20: 4A000881
  ds_write_b16  v3, v0                                      // 00004C24: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00004C2C: BF8C0070
  s_barrier                                                 // 00004C30: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:476 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004C34: EBA011DC 80050001
  s_waitcnt     vmcnt(0)                                    // 00004C3C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00004C40: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00004C44: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00004C4C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00004C50: 4A06060D
  ds_read_i16   v4, v3                                      // 00004C54: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00004C5C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00004C60: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00004C68: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00004C6C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004C70: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00004C78: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00004C7C: 4A000881
  ds_write_b16  v3, v0                                      // 00004C80: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00004C88: BF8C0070
  s_barrier                                                 // 00004C8C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:480 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004C90: EBA011E0 80050001
  s_waitcnt     vmcnt(0)                                    // 00004C98: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00004C9C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00004CA0: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00004CA8: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00004CAC: 4A06060D
  ds_read_i16   v4, v3                                      // 00004CB0: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00004CB8: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00004CBC: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00004CC4: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00004CC8: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004CCC: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00004CD4: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00004CD8: 4A000881
  ds_write_b16  v3, v0                                      // 00004CDC: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00004CE4: BF8C0070
  s_barrier                                                 // 00004CE8: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:484 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004CEC: EBA011E4 80050001
  s_waitcnt     vmcnt(0)                                    // 00004CF4: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00004CF8: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00004CFC: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00004D04: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00004D08: 4A06060D
  ds_read_i16   v4, v3                                      // 00004D0C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00004D14: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00004D18: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00004D20: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00004D24: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004D28: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00004D30: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00004D34: 4A000881
  ds_write_b16  v3, v0                                      // 00004D38: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00004D40: BF8C0070
  s_barrier                                                 // 00004D44: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:488 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004D48: EBA011E8 80050001
  s_waitcnt     vmcnt(0)                                    // 00004D50: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00004D54: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00004D58: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00004D60: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00004D64: 4A06060D
  ds_read_i16   v4, v3                                      // 00004D68: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00004D70: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00004D74: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00004D7C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00004D80: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004D84: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00004D8C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00004D90: 4A000881
  ds_write_b16  v3, v0                                      // 00004D94: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00004D9C: BF8C0070
  s_barrier                                                 // 00004DA0: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:492 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004DA4: EBA011EC 80050001
  s_waitcnt     vmcnt(0)                                    // 00004DAC: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00004DB0: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00004DB4: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00004DBC: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00004DC0: 4A06060D
  ds_read_i16   v4, v3                                      // 00004DC4: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00004DCC: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00004DD0: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00004DD8: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00004DDC: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004DE0: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00004DE8: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00004DEC: 4A000881
  ds_write_b16  v3, v0                                      // 00004DF0: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00004DF8: BF8C0070
  s_barrier                                                 // 00004DFC: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:496 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004E00: EBA011F0 80050001
  s_waitcnt     vmcnt(0)                                    // 00004E08: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00004E0C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00004E10: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00004E18: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00004E1C: 4A06060D
  ds_read_i16   v4, v3                                      // 00004E20: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00004E28: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00004E2C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00004E34: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00004E38: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004E3C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00004E44: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00004E48: 4A000881
  ds_write_b16  v3, v0                                      // 00004E4C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00004E54: BF8C0070
  s_barrier                                                 // 00004E58: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:500 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004E5C: EBA011F4 80050001
  s_waitcnt     vmcnt(0)                                    // 00004E64: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00004E68: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00004E6C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00004E74: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00004E78: 4A06060D
  ds_read_i16   v4, v3                                      // 00004E7C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00004E84: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00004E88: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00004E90: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00004E94: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004E98: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00004EA0: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00004EA4: 4A000881
  ds_write_b16  v3, v0                                      // 00004EA8: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00004EB0: BF8C0070
  s_barrier                                                 // 00004EB4: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:504 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004EB8: EBA011F8 80050001
  s_waitcnt     vmcnt(0)                                    // 00004EC0: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00004EC4: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00004EC8: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00004ED0: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00004ED4: 4A06060D
  ds_read_i16   v4, v3                                      // 00004ED8: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00004EE0: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00004EE4: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00004EEC: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00004EF0: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004EF4: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00004EFC: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00004F00: 4A000881
  ds_write_b16  v3, v0                                      // 00004F04: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00004F0C: BF8C0070
  s_barrier                                                 // 00004F10: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:508 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004F14: EBA011FC 80050001
  s_waitcnt     vmcnt(0)                                    // 00004F1C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00004F20: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00004F24: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00004F2C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00004F30: 4A06060D
  ds_read_i16   v4, v3                                      // 00004F34: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00004F3C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00004F40: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00004F48: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00004F4C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004F50: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00004F58: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00004F5C: 4A000881
  ds_write_b16  v3, v0                                      // 00004F60: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00004F68: BF8C0070
  s_barrier                                                 // 00004F6C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:512 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004F70: EBA01200 80050001
  s_waitcnt     vmcnt(0)                                    // 00004F78: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00004F7C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00004F80: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00004F88: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00004F8C: 4A06060D
  ds_read_i16   v4, v3                                      // 00004F90: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00004F98: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00004F9C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00004FA4: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00004FA8: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004FAC: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00004FB4: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00004FB8: 4A000881
  ds_write_b16  v3, v0                                      // 00004FBC: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00004FC4: BF8C0070
  s_barrier                                                 // 00004FC8: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:516 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00004FCC: EBA01204 80050001
  s_waitcnt     vmcnt(0)                                    // 00004FD4: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00004FD8: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00004FDC: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00004FE4: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00004FE8: 4A06060D
  ds_read_i16   v4, v3                                      // 00004FEC: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00004FF4: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00004FF8: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00005000: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00005004: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005008: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00005010: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00005014: 4A000881
  ds_write_b16  v3, v0                                      // 00005018: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00005020: BF8C0070
  s_barrier                                                 // 00005024: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:520 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005028: EBA01208 80050001
  s_waitcnt     vmcnt(0)                                    // 00005030: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00005034: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00005038: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00005040: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00005044: 4A06060D
  ds_read_i16   v4, v3                                      // 00005048: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00005050: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00005054: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 0000505C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00005060: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005064: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 0000506C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00005070: 4A000881
  ds_write_b16  v3, v0                                      // 00005074: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 0000507C: BF8C0070
  s_barrier                                                 // 00005080: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:524 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005084: EBA0120C 80050001
  s_waitcnt     vmcnt(0)                                    // 0000508C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00005090: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00005094: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 0000509C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000050A0: 4A06060D
  ds_read_i16   v4, v3                                      // 000050A4: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000050AC: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000050B0: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000050B8: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000050BC: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000050C0: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000050C8: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000050CC: 4A000881
  ds_write_b16  v3, v0                                      // 000050D0: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000050D8: BF8C0070
  s_barrier                                                 // 000050DC: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:528 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000050E0: EBA01210 80050001
  s_waitcnt     vmcnt(0)                                    // 000050E8: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000050EC: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000050F0: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000050F8: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000050FC: 4A06060D
  ds_read_i16   v4, v3                                      // 00005100: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00005108: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 0000510C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00005114: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00005118: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000511C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00005124: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00005128: 4A000881
  ds_write_b16  v3, v0                                      // 0000512C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00005134: BF8C0070
  s_barrier                                                 // 00005138: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:532 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000513C: EBA01214 80050001
  s_waitcnt     vmcnt(0)                                    // 00005144: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00005148: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 0000514C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00005154: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00005158: 4A06060D
  ds_read_i16   v4, v3                                      // 0000515C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00005164: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00005168: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00005170: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00005174: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005178: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00005180: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00005184: 4A000881
  ds_write_b16  v3, v0                                      // 00005188: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00005190: BF8C0070
  s_barrier                                                 // 00005194: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:536 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005198: EBA01218 80050001
  s_waitcnt     vmcnt(0)                                    // 000051A0: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000051A4: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000051A8: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000051B0: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000051B4: 4A06060D
  ds_read_i16   v4, v3                                      // 000051B8: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000051C0: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000051C4: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000051CC: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000051D0: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000051D4: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000051DC: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000051E0: 4A000881
  ds_write_b16  v3, v0                                      // 000051E4: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000051EC: BF8C0070
  s_barrier                                                 // 000051F0: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:540 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000051F4: EBA0121C 80050001
  s_waitcnt     vmcnt(0)                                    // 000051FC: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00005200: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00005204: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 0000520C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00005210: 4A06060D
  ds_read_i16   v4, v3                                      // 00005214: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 0000521C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00005220: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00005228: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 0000522C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005230: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00005238: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 0000523C: 4A000881
  ds_write_b16  v3, v0                                      // 00005240: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00005248: BF8C0070
  s_barrier                                                 // 0000524C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:544 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005250: EBA01220 80050001
  s_waitcnt     vmcnt(0)                                    // 00005258: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 0000525C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00005260: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00005268: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 0000526C: 4A06060D
  ds_read_i16   v4, v3                                      // 00005270: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00005278: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 0000527C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00005284: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00005288: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000528C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00005294: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00005298: 4A000881
  ds_write_b16  v3, v0                                      // 0000529C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000052A4: BF8C0070
  s_barrier                                                 // 000052A8: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:548 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000052AC: EBA01224 80050001
  s_waitcnt     vmcnt(0)                                    // 000052B4: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000052B8: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000052BC: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000052C4: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000052C8: 4A06060D
  ds_read_i16   v4, v3                                      // 000052CC: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000052D4: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000052D8: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000052E0: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000052E4: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000052E8: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000052F0: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000052F4: 4A000881
  ds_write_b16  v3, v0                                      // 000052F8: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00005300: BF8C0070
  s_barrier                                                 // 00005304: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:552 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005308: EBA01228 80050001
  s_waitcnt     vmcnt(0)                                    // 00005310: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00005314: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00005318: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00005320: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00005324: 4A06060D
  ds_read_i16   v4, v3                                      // 00005328: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00005330: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00005334: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 0000533C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00005340: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005344: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 0000534C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00005350: 4A000881
  ds_write_b16  v3, v0                                      // 00005354: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 0000535C: BF8C0070
  s_barrier                                                 // 00005360: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:556 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005364: EBA0122C 80050001
  s_waitcnt     vmcnt(0)                                    // 0000536C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00005370: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00005374: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 0000537C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00005380: 4A06060D
  ds_read_i16   v4, v3                                      // 00005384: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 0000538C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00005390: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00005398: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 0000539C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000053A0: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000053A8: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000053AC: 4A000881
  ds_write_b16  v3, v0                                      // 000053B0: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000053B8: BF8C0070
  s_barrier                                                 // 000053BC: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:560 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000053C0: EBA01230 80050001
  s_waitcnt     vmcnt(0)                                    // 000053C8: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000053CC: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000053D0: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000053D8: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000053DC: 4A06060D
  ds_read_i16   v4, v3                                      // 000053E0: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000053E8: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000053EC: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000053F4: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000053F8: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000053FC: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00005404: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00005408: 4A000881
  ds_write_b16  v3, v0                                      // 0000540C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00005414: BF8C0070
  s_barrier                                                 // 00005418: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:564 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000541C: EBA01234 80050001
  s_waitcnt     vmcnt(0)                                    // 00005424: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00005428: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 0000542C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00005434: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00005438: 4A06060D
  ds_read_i16   v4, v3                                      // 0000543C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00005444: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00005448: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00005450: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00005454: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005458: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00005460: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00005464: 4A000881
  ds_write_b16  v3, v0                                      // 00005468: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00005470: BF8C0070
  s_barrier                                                 // 00005474: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:568 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005478: EBA01238 80050001
  s_waitcnt     vmcnt(0)                                    // 00005480: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00005484: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00005488: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00005490: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00005494: 4A06060D
  ds_read_i16   v4, v3                                      // 00005498: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000054A0: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000054A4: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000054AC: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000054B0: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000054B4: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000054BC: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000054C0: 4A000881
  ds_write_b16  v3, v0                                      // 000054C4: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000054CC: BF8C0070
  s_barrier                                                 // 000054D0: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:572 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000054D4: EBA0123C 80050001
  s_waitcnt     vmcnt(0)                                    // 000054DC: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000054E0: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000054E4: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000054EC: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000054F0: 4A06060D
  ds_read_i16   v4, v3                                      // 000054F4: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000054FC: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00005500: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00005508: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 0000550C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005510: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00005518: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 0000551C: 4A000881
  ds_write_b16  v3, v0                                      // 00005520: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00005528: BF8C0070
  s_barrier                                                 // 0000552C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:576 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005530: EBA01240 80050001
  s_waitcnt     vmcnt(0)                                    // 00005538: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 0000553C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00005540: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00005548: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 0000554C: 4A06060D
  ds_read_i16   v4, v3                                      // 00005550: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00005558: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 0000555C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00005564: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00005568: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000556C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00005574: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00005578: 4A000881
  ds_write_b16  v3, v0                                      // 0000557C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00005584: BF8C0070
  s_barrier                                                 // 00005588: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:580 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000558C: EBA01244 80050001
  s_waitcnt     vmcnt(0)                                    // 00005594: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00005598: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 0000559C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000055A4: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000055A8: 4A06060D
  ds_read_i16   v4, v3                                      // 000055AC: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000055B4: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000055B8: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000055C0: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000055C4: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000055C8: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000055D0: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000055D4: 4A000881
  ds_write_b16  v3, v0                                      // 000055D8: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000055E0: BF8C0070
  s_barrier                                                 // 000055E4: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:584 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000055E8: EBA01248 80050001
  s_waitcnt     vmcnt(0)                                    // 000055F0: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000055F4: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000055F8: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00005600: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00005604: 4A06060D
  ds_read_i16   v4, v3                                      // 00005608: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00005610: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00005614: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 0000561C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00005620: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005624: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 0000562C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00005630: 4A000881
  ds_write_b16  v3, v0                                      // 00005634: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 0000563C: BF8C0070
  s_barrier                                                 // 00005640: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:588 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005644: EBA0124C 80050001
  s_waitcnt     vmcnt(0)                                    // 0000564C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00005650: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00005654: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 0000565C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00005660: 4A06060D
  ds_read_i16   v4, v3                                      // 00005664: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 0000566C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00005670: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00005678: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 0000567C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005680: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00005688: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 0000568C: 4A000881
  ds_write_b16  v3, v0                                      // 00005690: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00005698: BF8C0070
  s_barrier                                                 // 0000569C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:592 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000056A0: EBA01250 80050001
  s_waitcnt     vmcnt(0)                                    // 000056A8: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000056AC: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000056B0: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000056B8: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000056BC: 4A06060D
  ds_read_i16   v4, v3                                      // 000056C0: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000056C8: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000056CC: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000056D4: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000056D8: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000056DC: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000056E4: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000056E8: 4A000881
  ds_write_b16  v3, v0                                      // 000056EC: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000056F4: BF8C0070
  s_barrier                                                 // 000056F8: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:596 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000056FC: EBA01254 80050001
  s_waitcnt     vmcnt(0)                                    // 00005704: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00005708: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 0000570C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00005714: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00005718: 4A06060D
  ds_read_i16   v4, v3                                      // 0000571C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00005724: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00005728: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00005730: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00005734: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005738: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00005740: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00005744: 4A000881
  ds_write_b16  v3, v0                                      // 00005748: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00005750: BF8C0070
  s_barrier                                                 // 00005754: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:600 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005758: EBA01258 80050001
  s_waitcnt     vmcnt(0)                                    // 00005760: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00005764: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00005768: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00005770: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00005774: 4A06060D
  ds_read_i16   v4, v3                                      // 00005778: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00005780: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00005784: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 0000578C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00005790: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005794: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 0000579C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000057A0: 4A000881
  ds_write_b16  v3, v0                                      // 000057A4: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000057AC: BF8C0070
  s_barrier                                                 // 000057B0: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:604 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000057B4: EBA0125C 80050001
  s_waitcnt     vmcnt(0)                                    // 000057BC: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000057C0: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000057C4: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000057CC: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000057D0: 4A06060D
  ds_read_i16   v4, v3                                      // 000057D4: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000057DC: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000057E0: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000057E8: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000057EC: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000057F0: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000057F8: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000057FC: 4A000881
  ds_write_b16  v3, v0                                      // 00005800: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00005808: BF8C0070
  s_barrier                                                 // 0000580C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:608 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005810: EBA01260 80050001
  s_waitcnt     vmcnt(0)                                    // 00005818: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 0000581C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00005820: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00005828: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 0000582C: 4A06060D
  ds_read_i16   v4, v3                                      // 00005830: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00005838: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 0000583C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00005844: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00005848: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000584C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00005854: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00005858: 4A000881
  ds_write_b16  v3, v0                                      // 0000585C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00005864: BF8C0070
  s_barrier                                                 // 00005868: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:612 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000586C: EBA01264 80050001
  s_waitcnt     vmcnt(0)                                    // 00005874: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00005878: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 0000587C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00005884: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00005888: 4A06060D
  ds_read_i16   v4, v3                                      // 0000588C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00005894: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00005898: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000058A0: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000058A4: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000058A8: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000058B0: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000058B4: 4A000881
  ds_write_b16  v3, v0                                      // 000058B8: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000058C0: BF8C0070
  s_barrier                                                 // 000058C4: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:616 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000058C8: EBA01268 80050001
  s_waitcnt     vmcnt(0)                                    // 000058D0: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000058D4: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000058D8: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000058E0: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000058E4: 4A06060D
  ds_read_i16   v4, v3                                      // 000058E8: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000058F0: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000058F4: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000058FC: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00005900: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005904: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 0000590C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00005910: 4A000881
  ds_write_b16  v3, v0                                      // 00005914: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 0000591C: BF8C0070
  s_barrier                                                 // 00005920: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:620 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005924: EBA0126C 80050001
  s_waitcnt     vmcnt(0)                                    // 0000592C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00005930: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00005934: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 0000593C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00005940: 4A06060D
  ds_read_i16   v4, v3                                      // 00005944: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 0000594C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00005950: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00005958: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 0000595C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005960: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00005968: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 0000596C: 4A000881
  ds_write_b16  v3, v0                                      // 00005970: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00005978: BF8C0070
  s_barrier                                                 // 0000597C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:624 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005980: EBA01270 80050001
  s_waitcnt     vmcnt(0)                                    // 00005988: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 0000598C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00005990: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00005998: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 0000599C: 4A06060D
  ds_read_i16   v4, v3                                      // 000059A0: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000059A8: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000059AC: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000059B4: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000059B8: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000059BC: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000059C4: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000059C8: 4A000881
  ds_write_b16  v3, v0                                      // 000059CC: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000059D4: BF8C0070
  s_barrier                                                 // 000059D8: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:628 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000059DC: EBA01274 80050001
  s_waitcnt     vmcnt(0)                                    // 000059E4: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000059E8: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000059EC: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000059F4: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000059F8: 4A06060D
  ds_read_i16   v4, v3                                      // 000059FC: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00005A04: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00005A08: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00005A10: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00005A14: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005A18: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00005A20: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00005A24: 4A000881
  ds_write_b16  v3, v0                                      // 00005A28: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00005A30: BF8C0070
  s_barrier                                                 // 00005A34: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:632 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005A38: EBA01278 80050001
  s_waitcnt     vmcnt(0)                                    // 00005A40: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00005A44: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00005A48: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00005A50: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00005A54: 4A06060D
  ds_read_i16   v4, v3                                      // 00005A58: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00005A60: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00005A64: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00005A6C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00005A70: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005A74: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00005A7C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00005A80: 4A000881
  ds_write_b16  v3, v0                                      // 00005A84: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00005A8C: BF8C0070
  s_barrier                                                 // 00005A90: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:636 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005A94: EBA0127C 80050001
  s_waitcnt     vmcnt(0)                                    // 00005A9C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00005AA0: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00005AA4: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00005AAC: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00005AB0: 4A06060D
  ds_read_i16   v4, v3                                      // 00005AB4: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00005ABC: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00005AC0: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00005AC8: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00005ACC: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005AD0: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00005AD8: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00005ADC: 4A000881
  ds_write_b16  v3, v0                                      // 00005AE0: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00005AE8: BF8C0070
  s_barrier                                                 // 00005AEC: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:640 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005AF0: EBA01280 80050001
  s_waitcnt     vmcnt(0)                                    // 00005AF8: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00005AFC: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00005B00: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00005B08: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00005B0C: 4A06060D
  ds_read_i16   v4, v3                                      // 00005B10: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00005B18: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00005B1C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00005B24: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00005B28: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005B2C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00005B34: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00005B38: 4A000881
  ds_write_b16  v3, v0                                      // 00005B3C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00005B44: BF8C0070
  s_barrier                                                 // 00005B48: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:644 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005B4C: EBA01284 80050001
  s_waitcnt     vmcnt(0)                                    // 00005B54: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00005B58: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00005B5C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00005B64: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00005B68: 4A06060D
  ds_read_i16   v4, v3                                      // 00005B6C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00005B74: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00005B78: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00005B80: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00005B84: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005B88: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00005B90: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00005B94: 4A000881
  ds_write_b16  v3, v0                                      // 00005B98: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00005BA0: BF8C0070
  s_barrier                                                 // 00005BA4: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:648 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005BA8: EBA01288 80050001
  s_waitcnt     vmcnt(0)                                    // 00005BB0: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00005BB4: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00005BB8: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00005BC0: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00005BC4: 4A06060D
  ds_read_i16   v4, v3                                      // 00005BC8: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00005BD0: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00005BD4: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00005BDC: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00005BE0: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005BE4: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00005BEC: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00005BF0: 4A000881
  ds_write_b16  v3, v0                                      // 00005BF4: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00005BFC: BF8C0070
  s_barrier                                                 // 00005C00: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:652 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005C04: EBA0128C 80050001
  s_waitcnt     vmcnt(0)                                    // 00005C0C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00005C10: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00005C14: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00005C1C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00005C20: 4A06060D
  ds_read_i16   v4, v3                                      // 00005C24: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00005C2C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00005C30: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00005C38: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00005C3C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005C40: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00005C48: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00005C4C: 4A000881
  ds_write_b16  v3, v0                                      // 00005C50: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00005C58: BF8C0070
  s_barrier                                                 // 00005C5C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:656 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005C60: EBA01290 80050001
  s_waitcnt     vmcnt(0)                                    // 00005C68: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00005C6C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00005C70: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00005C78: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00005C7C: 4A06060D
  ds_read_i16   v4, v3                                      // 00005C80: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00005C88: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00005C8C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00005C94: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00005C98: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005C9C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00005CA4: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00005CA8: 4A000881
  ds_write_b16  v3, v0                                      // 00005CAC: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00005CB4: BF8C0070
  s_barrier                                                 // 00005CB8: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:660 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005CBC: EBA01294 80050001
  s_waitcnt     vmcnt(0)                                    // 00005CC4: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00005CC8: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00005CCC: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00005CD4: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00005CD8: 4A06060D
  ds_read_i16   v4, v3                                      // 00005CDC: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00005CE4: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00005CE8: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00005CF0: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00005CF4: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005CF8: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00005D00: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00005D04: 4A000881
  ds_write_b16  v3, v0                                      // 00005D08: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00005D10: BF8C0070
  s_barrier                                                 // 00005D14: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:664 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005D18: EBA01298 80050001
  s_waitcnt     vmcnt(0)                                    // 00005D20: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00005D24: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00005D28: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00005D30: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00005D34: 4A06060D
  ds_read_i16   v4, v3                                      // 00005D38: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00005D40: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00005D44: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00005D4C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00005D50: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005D54: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00005D5C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00005D60: 4A000881
  ds_write_b16  v3, v0                                      // 00005D64: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00005D6C: BF8C0070
  s_barrier                                                 // 00005D70: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:668 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005D74: EBA0129C 80050001
  s_waitcnt     vmcnt(0)                                    // 00005D7C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00005D80: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00005D84: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00005D8C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00005D90: 4A06060D
  ds_read_i16   v4, v3                                      // 00005D94: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00005D9C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00005DA0: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00005DA8: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00005DAC: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005DB0: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00005DB8: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00005DBC: 4A000881
  ds_write_b16  v3, v0                                      // 00005DC0: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00005DC8: BF8C0070
  s_barrier                                                 // 00005DCC: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:672 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005DD0: EBA012A0 80050001
  s_waitcnt     vmcnt(0)                                    // 00005DD8: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00005DDC: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00005DE0: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00005DE8: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00005DEC: 4A06060D
  ds_read_i16   v4, v3                                      // 00005DF0: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00005DF8: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00005DFC: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00005E04: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00005E08: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005E0C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00005E14: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00005E18: 4A000881
  ds_write_b16  v3, v0                                      // 00005E1C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00005E24: BF8C0070
  s_barrier                                                 // 00005E28: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:676 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005E2C: EBA012A4 80050001
  s_waitcnt     vmcnt(0)                                    // 00005E34: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00005E38: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00005E3C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00005E44: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00005E48: 4A06060D
  ds_read_i16   v4, v3                                      // 00005E4C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00005E54: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00005E58: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00005E60: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00005E64: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005E68: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00005E70: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00005E74: 4A000881
  ds_write_b16  v3, v0                                      // 00005E78: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00005E80: BF8C0070
  s_barrier                                                 // 00005E84: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:680 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005E88: EBA012A8 80050001
  s_waitcnt     vmcnt(0)                                    // 00005E90: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00005E94: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00005E98: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00005EA0: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00005EA4: 4A06060D
  ds_read_i16   v4, v3                                      // 00005EA8: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00005EB0: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00005EB4: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00005EBC: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00005EC0: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005EC4: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00005ECC: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00005ED0: 4A000881
  ds_write_b16  v3, v0                                      // 00005ED4: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00005EDC: BF8C0070
  s_barrier                                                 // 00005EE0: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:684 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005EE4: EBA012AC 80050001
  s_waitcnt     vmcnt(0)                                    // 00005EEC: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00005EF0: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00005EF4: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00005EFC: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00005F00: 4A06060D
  ds_read_i16   v4, v3                                      // 00005F04: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00005F0C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00005F10: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00005F18: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00005F1C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005F20: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00005F28: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00005F2C: 4A000881
  ds_write_b16  v3, v0                                      // 00005F30: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00005F38: BF8C0070
  s_barrier                                                 // 00005F3C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:688 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005F40: EBA012B0 80050001
  s_waitcnt     vmcnt(0)                                    // 00005F48: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00005F4C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00005F50: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00005F58: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00005F5C: 4A06060D
  ds_read_i16   v4, v3                                      // 00005F60: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00005F68: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00005F6C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00005F74: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00005F78: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005F7C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00005F84: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00005F88: 4A000881
  ds_write_b16  v3, v0                                      // 00005F8C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00005F94: BF8C0070
  s_barrier                                                 // 00005F98: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:692 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005F9C: EBA012B4 80050001
  s_waitcnt     vmcnt(0)                                    // 00005FA4: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00005FA8: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00005FAC: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00005FB4: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00005FB8: 4A06060D
  ds_read_i16   v4, v3                                      // 00005FBC: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00005FC4: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00005FC8: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00005FD0: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00005FD4: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005FD8: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00005FE0: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00005FE4: 4A000881
  ds_write_b16  v3, v0                                      // 00005FE8: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00005FF0: BF8C0070
  s_barrier                                                 // 00005FF4: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:696 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00005FF8: EBA012B8 80050001
  s_waitcnt     vmcnt(0)                                    // 00006000: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00006004: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00006008: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00006010: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00006014: 4A06060D
  ds_read_i16   v4, v3                                      // 00006018: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00006020: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00006024: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 0000602C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00006030: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006034: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 0000603C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00006040: 4A000881
  ds_write_b16  v3, v0                                      // 00006044: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 0000604C: BF8C0070
  s_barrier                                                 // 00006050: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:700 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006054: EBA012BC 80050001
  s_waitcnt     vmcnt(0)                                    // 0000605C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00006060: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00006064: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 0000606C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00006070: 4A06060D
  ds_read_i16   v4, v3                                      // 00006074: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 0000607C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00006080: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00006088: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 0000608C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006090: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00006098: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 0000609C: 4A000881
  ds_write_b16  v3, v0                                      // 000060A0: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000060A8: BF8C0070
  s_barrier                                                 // 000060AC: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:704 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000060B0: EBA012C0 80050001
  s_waitcnt     vmcnt(0)                                    // 000060B8: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000060BC: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000060C0: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000060C8: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000060CC: 4A06060D
  ds_read_i16   v4, v3                                      // 000060D0: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000060D8: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000060DC: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000060E4: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000060E8: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000060EC: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000060F4: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000060F8: 4A000881
  ds_write_b16  v3, v0                                      // 000060FC: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00006104: BF8C0070
  s_barrier                                                 // 00006108: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:708 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000610C: EBA012C4 80050001
  s_waitcnt     vmcnt(0)                                    // 00006114: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00006118: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 0000611C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00006124: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00006128: 4A06060D
  ds_read_i16   v4, v3                                      // 0000612C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00006134: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00006138: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00006140: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00006144: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006148: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00006150: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00006154: 4A000881
  ds_write_b16  v3, v0                                      // 00006158: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00006160: BF8C0070
  s_barrier                                                 // 00006164: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:712 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006168: EBA012C8 80050001
  s_waitcnt     vmcnt(0)                                    // 00006170: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00006174: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00006178: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00006180: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00006184: 4A06060D
  ds_read_i16   v4, v3                                      // 00006188: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00006190: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00006194: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 0000619C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000061A0: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000061A4: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000061AC: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000061B0: 4A000881
  ds_write_b16  v3, v0                                      // 000061B4: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000061BC: BF8C0070
  s_barrier                                                 // 000061C0: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:716 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000061C4: EBA012CC 80050001
  s_waitcnt     vmcnt(0)                                    // 000061CC: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000061D0: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000061D4: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000061DC: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000061E0: 4A06060D
  ds_read_i16   v4, v3                                      // 000061E4: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000061EC: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000061F0: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000061F8: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000061FC: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006200: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00006208: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 0000620C: 4A000881
  ds_write_b16  v3, v0                                      // 00006210: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00006218: BF8C0070
  s_barrier                                                 // 0000621C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:720 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006220: EBA012D0 80050001
  s_waitcnt     vmcnt(0)                                    // 00006228: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 0000622C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00006230: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00006238: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 0000623C: 4A06060D
  ds_read_i16   v4, v3                                      // 00006240: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00006248: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 0000624C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00006254: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00006258: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000625C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00006264: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00006268: 4A000881
  ds_write_b16  v3, v0                                      // 0000626C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00006274: BF8C0070
  s_barrier                                                 // 00006278: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:724 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000627C: EBA012D4 80050001
  s_waitcnt     vmcnt(0)                                    // 00006284: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00006288: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 0000628C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00006294: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00006298: 4A06060D
  ds_read_i16   v4, v3                                      // 0000629C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000062A4: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000062A8: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000062B0: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000062B4: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000062B8: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000062C0: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000062C4: 4A000881
  ds_write_b16  v3, v0                                      // 000062C8: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000062D0: BF8C0070
  s_barrier                                                 // 000062D4: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:728 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000062D8: EBA012D8 80050001
  s_waitcnt     vmcnt(0)                                    // 000062E0: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000062E4: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000062E8: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000062F0: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000062F4: 4A06060D
  ds_read_i16   v4, v3                                      // 000062F8: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00006300: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00006304: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 0000630C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00006310: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006314: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 0000631C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00006320: 4A000881
  ds_write_b16  v3, v0                                      // 00006324: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 0000632C: BF8C0070
  s_barrier                                                 // 00006330: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:732 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006334: EBA012DC 80050001
  s_waitcnt     vmcnt(0)                                    // 0000633C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00006340: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00006344: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 0000634C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00006350: 4A06060D
  ds_read_i16   v4, v3                                      // 00006354: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 0000635C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00006360: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00006368: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 0000636C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006370: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00006378: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 0000637C: 4A000881
  ds_write_b16  v3, v0                                      // 00006380: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00006388: BF8C0070
  s_barrier                                                 // 0000638C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:736 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006390: EBA012E0 80050001
  s_waitcnt     vmcnt(0)                                    // 00006398: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 0000639C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000063A0: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000063A8: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000063AC: 4A06060D
  ds_read_i16   v4, v3                                      // 000063B0: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000063B8: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000063BC: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000063C4: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000063C8: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000063CC: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000063D4: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000063D8: 4A000881
  ds_write_b16  v3, v0                                      // 000063DC: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000063E4: BF8C0070
  s_barrier                                                 // 000063E8: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:740 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000063EC: EBA012E4 80050001
  s_waitcnt     vmcnt(0)                                    // 000063F4: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000063F8: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000063FC: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00006404: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00006408: 4A06060D
  ds_read_i16   v4, v3                                      // 0000640C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00006414: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00006418: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00006420: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00006424: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006428: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00006430: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00006434: 4A000881
  ds_write_b16  v3, v0                                      // 00006438: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00006440: BF8C0070
  s_barrier                                                 // 00006444: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:744 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006448: EBA012E8 80050001
  s_waitcnt     vmcnt(0)                                    // 00006450: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00006454: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00006458: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00006460: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00006464: 4A06060D
  ds_read_i16   v4, v3                                      // 00006468: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00006470: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00006474: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 0000647C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00006480: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006484: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 0000648C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00006490: 4A000881
  ds_write_b16  v3, v0                                      // 00006494: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 0000649C: BF8C0070
  s_barrier                                                 // 000064A0: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:748 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000064A4: EBA012EC 80050001
  s_waitcnt     vmcnt(0)                                    // 000064AC: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000064B0: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000064B4: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000064BC: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000064C0: 4A06060D
  ds_read_i16   v4, v3                                      // 000064C4: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000064CC: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000064D0: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000064D8: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000064DC: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000064E0: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000064E8: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000064EC: 4A000881
  ds_write_b16  v3, v0                                      // 000064F0: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000064F8: BF8C0070
  s_barrier                                                 // 000064FC: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:752 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006500: EBA012F0 80050001
  s_waitcnt     vmcnt(0)                                    // 00006508: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 0000650C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00006510: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00006518: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 0000651C: 4A06060D
  ds_read_i16   v4, v3                                      // 00006520: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00006528: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 0000652C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00006534: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00006538: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000653C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00006544: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00006548: 4A000881
  ds_write_b16  v3, v0                                      // 0000654C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00006554: BF8C0070
  s_barrier                                                 // 00006558: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:756 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000655C: EBA012F4 80050001
  s_waitcnt     vmcnt(0)                                    // 00006564: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00006568: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 0000656C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00006574: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00006578: 4A06060D
  ds_read_i16   v4, v3                                      // 0000657C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00006584: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00006588: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00006590: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00006594: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006598: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000065A0: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000065A4: 4A000881
  ds_write_b16  v3, v0                                      // 000065A8: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000065B0: BF8C0070
  s_barrier                                                 // 000065B4: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:760 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000065B8: EBA012F8 80050001
  s_waitcnt     vmcnt(0)                                    // 000065C0: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000065C4: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000065C8: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000065D0: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000065D4: 4A06060D
  ds_read_i16   v4, v3                                      // 000065D8: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000065E0: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000065E4: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000065EC: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000065F0: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000065F4: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000065FC: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00006600: 4A000881
  ds_write_b16  v3, v0                                      // 00006604: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 0000660C: BF8C0070
  s_barrier                                                 // 00006610: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:764 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006614: EBA012FC 80050001
  s_waitcnt     vmcnt(0)                                    // 0000661C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00006620: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00006624: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 0000662C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00006630: 4A06060D
  ds_read_i16   v4, v3                                      // 00006634: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 0000663C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00006640: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00006648: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 0000664C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006650: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00006658: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 0000665C: 4A000881
  ds_write_b16  v3, v0                                      // 00006660: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00006668: BF8C0070
  s_barrier                                                 // 0000666C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:768 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006670: EBA01300 80050001
  s_waitcnt     vmcnt(0)                                    // 00006678: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 0000667C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00006680: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00006688: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 0000668C: 4A06060D
  ds_read_i16   v4, v3                                      // 00006690: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00006698: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 0000669C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000066A4: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000066A8: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000066AC: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000066B4: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000066B8: 4A000881
  ds_write_b16  v3, v0                                      // 000066BC: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000066C4: BF8C0070
  s_barrier                                                 // 000066C8: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:772 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000066CC: EBA01304 80050001
  s_waitcnt     vmcnt(0)                                    // 000066D4: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000066D8: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000066DC: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000066E4: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000066E8: 4A06060D
  ds_read_i16   v4, v3                                      // 000066EC: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000066F4: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000066F8: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00006700: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00006704: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006708: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00006710: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00006714: 4A000881
  ds_write_b16  v3, v0                                      // 00006718: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00006720: BF8C0070
  s_barrier                                                 // 00006724: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:776 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006728: EBA01308 80050001
  s_waitcnt     vmcnt(0)                                    // 00006730: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00006734: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00006738: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00006740: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00006744: 4A06060D
  ds_read_i16   v4, v3                                      // 00006748: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00006750: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00006754: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 0000675C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00006760: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006764: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 0000676C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00006770: 4A000881
  ds_write_b16  v3, v0                                      // 00006774: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 0000677C: BF8C0070
  s_barrier                                                 // 00006780: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:780 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006784: EBA0130C 80050001
  s_waitcnt     vmcnt(0)                                    // 0000678C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00006790: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00006794: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 0000679C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000067A0: 4A06060D
  ds_read_i16   v4, v3                                      // 000067A4: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000067AC: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000067B0: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000067B8: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000067BC: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000067C0: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000067C8: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000067CC: 4A000881
  ds_write_b16  v3, v0                                      // 000067D0: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000067D8: BF8C0070
  s_barrier                                                 // 000067DC: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:784 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000067E0: EBA01310 80050001
  s_waitcnt     vmcnt(0)                                    // 000067E8: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000067EC: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000067F0: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000067F8: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000067FC: 4A06060D
  ds_read_i16   v4, v3                                      // 00006800: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00006808: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 0000680C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00006814: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00006818: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000681C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00006824: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00006828: 4A000881
  ds_write_b16  v3, v0                                      // 0000682C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00006834: BF8C0070
  s_barrier                                                 // 00006838: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:788 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000683C: EBA01314 80050001
  s_waitcnt     vmcnt(0)                                    // 00006844: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00006848: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 0000684C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00006854: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00006858: 4A06060D
  ds_read_i16   v4, v3                                      // 0000685C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00006864: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00006868: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00006870: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00006874: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006878: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00006880: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00006884: 4A000881
  ds_write_b16  v3, v0                                      // 00006888: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00006890: BF8C0070
  s_barrier                                                 // 00006894: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:792 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006898: EBA01318 80050001
  s_waitcnt     vmcnt(0)                                    // 000068A0: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000068A4: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000068A8: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000068B0: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000068B4: 4A06060D
  ds_read_i16   v4, v3                                      // 000068B8: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000068C0: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000068C4: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000068CC: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000068D0: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000068D4: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000068DC: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000068E0: 4A000881
  ds_write_b16  v3, v0                                      // 000068E4: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000068EC: BF8C0070
  s_barrier                                                 // 000068F0: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:796 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000068F4: EBA0131C 80050001
  s_waitcnt     vmcnt(0)                                    // 000068FC: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00006900: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00006904: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 0000690C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00006910: 4A06060D
  ds_read_i16   v4, v3                                      // 00006914: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 0000691C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00006920: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00006928: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 0000692C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006930: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00006938: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 0000693C: 4A000881
  ds_write_b16  v3, v0                                      // 00006940: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00006948: BF8C0070
  s_barrier                                                 // 0000694C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:800 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006950: EBA01320 80050001
  s_waitcnt     vmcnt(0)                                    // 00006958: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 0000695C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00006960: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00006968: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 0000696C: 4A06060D
  ds_read_i16   v4, v3                                      // 00006970: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00006978: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 0000697C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00006984: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00006988: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000698C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00006994: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00006998: 4A000881
  ds_write_b16  v3, v0                                      // 0000699C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000069A4: BF8C0070
  s_barrier                                                 // 000069A8: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:804 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000069AC: EBA01324 80050001
  s_waitcnt     vmcnt(0)                                    // 000069B4: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000069B8: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000069BC: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000069C4: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000069C8: 4A06060D
  ds_read_i16   v4, v3                                      // 000069CC: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000069D4: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000069D8: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000069E0: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000069E4: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000069E8: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000069F0: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000069F4: 4A000881
  ds_write_b16  v3, v0                                      // 000069F8: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00006A00: BF8C0070
  s_barrier                                                 // 00006A04: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:808 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006A08: EBA01328 80050001
  s_waitcnt     vmcnt(0)                                    // 00006A10: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00006A14: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00006A18: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00006A20: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00006A24: 4A06060D
  ds_read_i16   v4, v3                                      // 00006A28: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00006A30: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00006A34: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00006A3C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00006A40: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006A44: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00006A4C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00006A50: 4A000881
  ds_write_b16  v3, v0                                      // 00006A54: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00006A5C: BF8C0070
  s_barrier                                                 // 00006A60: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:812 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006A64: EBA0132C 80050001
  s_waitcnt     vmcnt(0)                                    // 00006A6C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00006A70: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00006A74: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00006A7C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00006A80: 4A06060D
  ds_read_i16   v4, v3                                      // 00006A84: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00006A8C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00006A90: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00006A98: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00006A9C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006AA0: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00006AA8: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00006AAC: 4A000881
  ds_write_b16  v3, v0                                      // 00006AB0: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00006AB8: BF8C0070
  s_barrier                                                 // 00006ABC: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:816 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006AC0: EBA01330 80050001
  s_waitcnt     vmcnt(0)                                    // 00006AC8: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00006ACC: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00006AD0: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00006AD8: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00006ADC: 4A06060D
  ds_read_i16   v4, v3                                      // 00006AE0: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00006AE8: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00006AEC: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00006AF4: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00006AF8: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006AFC: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00006B04: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00006B08: 4A000881
  ds_write_b16  v3, v0                                      // 00006B0C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00006B14: BF8C0070
  s_barrier                                                 // 00006B18: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:820 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006B1C: EBA01334 80050001
  s_waitcnt     vmcnt(0)                                    // 00006B24: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00006B28: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00006B2C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00006B34: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00006B38: 4A06060D
  ds_read_i16   v4, v3                                      // 00006B3C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00006B44: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00006B48: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00006B50: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00006B54: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006B58: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00006B60: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00006B64: 4A000881
  ds_write_b16  v3, v0                                      // 00006B68: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00006B70: BF8C0070
  s_barrier                                                 // 00006B74: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:824 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006B78: EBA01338 80050001
  s_waitcnt     vmcnt(0)                                    // 00006B80: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00006B84: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00006B88: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00006B90: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00006B94: 4A06060D
  ds_read_i16   v4, v3                                      // 00006B98: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00006BA0: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00006BA4: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00006BAC: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00006BB0: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006BB4: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00006BBC: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00006BC0: 4A000881
  ds_write_b16  v3, v0                                      // 00006BC4: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00006BCC: BF8C0070
  s_barrier                                                 // 00006BD0: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:828 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006BD4: EBA0133C 80050001
  s_waitcnt     vmcnt(0)                                    // 00006BDC: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00006BE0: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00006BE4: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00006BEC: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00006BF0: 4A06060D
  ds_read_i16   v4, v3                                      // 00006BF4: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00006BFC: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00006C00: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00006C08: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00006C0C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006C10: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00006C18: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00006C1C: 4A000881
  ds_write_b16  v3, v0                                      // 00006C20: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00006C28: BF8C0070
  s_barrier                                                 // 00006C2C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:832 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006C30: EBA01340 80050001
  s_waitcnt     vmcnt(0)                                    // 00006C38: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00006C3C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00006C40: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00006C48: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00006C4C: 4A06060D
  ds_read_i16   v4, v3                                      // 00006C50: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00006C58: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00006C5C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00006C64: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00006C68: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006C6C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00006C74: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00006C78: 4A000881
  ds_write_b16  v3, v0                                      // 00006C7C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00006C84: BF8C0070
  s_barrier                                                 // 00006C88: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:836 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006C8C: EBA01344 80050001
  s_waitcnt     vmcnt(0)                                    // 00006C94: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00006C98: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00006C9C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00006CA4: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00006CA8: 4A06060D
  ds_read_i16   v4, v3                                      // 00006CAC: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00006CB4: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00006CB8: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00006CC0: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00006CC4: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006CC8: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00006CD0: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00006CD4: 4A000881
  ds_write_b16  v3, v0                                      // 00006CD8: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00006CE0: BF8C0070
  s_barrier                                                 // 00006CE4: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:840 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006CE8: EBA01348 80050001
  s_waitcnt     vmcnt(0)                                    // 00006CF0: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00006CF4: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00006CF8: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00006D00: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00006D04: 4A06060D
  ds_read_i16   v4, v3                                      // 00006D08: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00006D10: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00006D14: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00006D1C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00006D20: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006D24: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00006D2C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00006D30: 4A000881
  ds_write_b16  v3, v0                                      // 00006D34: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00006D3C: BF8C0070
  s_barrier                                                 // 00006D40: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:844 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006D44: EBA0134C 80050001
  s_waitcnt     vmcnt(0)                                    // 00006D4C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00006D50: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00006D54: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00006D5C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00006D60: 4A06060D
  ds_read_i16   v4, v3                                      // 00006D64: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00006D6C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00006D70: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00006D78: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00006D7C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006D80: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00006D88: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00006D8C: 4A000881
  ds_write_b16  v3, v0                                      // 00006D90: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00006D98: BF8C0070
  s_barrier                                                 // 00006D9C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:848 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006DA0: EBA01350 80050001
  s_waitcnt     vmcnt(0)                                    // 00006DA8: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00006DAC: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00006DB0: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00006DB8: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00006DBC: 4A06060D
  ds_read_i16   v4, v3                                      // 00006DC0: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00006DC8: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00006DCC: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00006DD4: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00006DD8: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006DDC: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00006DE4: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00006DE8: 4A000881
  ds_write_b16  v3, v0                                      // 00006DEC: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00006DF4: BF8C0070
  s_barrier                                                 // 00006DF8: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:852 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006DFC: EBA01354 80050001
  s_waitcnt     vmcnt(0)                                    // 00006E04: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00006E08: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00006E0C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00006E14: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00006E18: 4A06060D
  ds_read_i16   v4, v3                                      // 00006E1C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00006E24: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00006E28: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00006E30: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00006E34: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006E38: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00006E40: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00006E44: 4A000881
  ds_write_b16  v3, v0                                      // 00006E48: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00006E50: BF8C0070
  s_barrier                                                 // 00006E54: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:856 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006E58: EBA01358 80050001
  s_waitcnt     vmcnt(0)                                    // 00006E60: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00006E64: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00006E68: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00006E70: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00006E74: 4A06060D
  ds_read_i16   v4, v3                                      // 00006E78: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00006E80: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00006E84: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00006E8C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00006E90: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006E94: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00006E9C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00006EA0: 4A000881
  ds_write_b16  v3, v0                                      // 00006EA4: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00006EAC: BF8C0070
  s_barrier                                                 // 00006EB0: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:860 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006EB4: EBA0135C 80050001
  s_waitcnt     vmcnt(0)                                    // 00006EBC: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00006EC0: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00006EC4: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00006ECC: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00006ED0: 4A06060D
  ds_read_i16   v4, v3                                      // 00006ED4: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00006EDC: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00006EE0: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00006EE8: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00006EEC: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006EF0: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00006EF8: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00006EFC: 4A000881
  ds_write_b16  v3, v0                                      // 00006F00: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00006F08: BF8C0070
  s_barrier                                                 // 00006F0C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:864 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006F10: EBA01360 80050001
  s_waitcnt     vmcnt(0)                                    // 00006F18: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00006F1C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00006F20: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00006F28: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00006F2C: 4A06060D
  ds_read_i16   v4, v3                                      // 00006F30: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00006F38: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00006F3C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00006F44: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00006F48: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006F4C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00006F54: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00006F58: 4A000881
  ds_write_b16  v3, v0                                      // 00006F5C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00006F64: BF8C0070
  s_barrier                                                 // 00006F68: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:868 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006F6C: EBA01364 80050001
  s_waitcnt     vmcnt(0)                                    // 00006F74: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00006F78: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00006F7C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00006F84: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00006F88: 4A06060D
  ds_read_i16   v4, v3                                      // 00006F8C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00006F94: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00006F98: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00006FA0: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00006FA4: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006FA8: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00006FB0: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00006FB4: 4A000881
  ds_write_b16  v3, v0                                      // 00006FB8: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00006FC0: BF8C0070
  s_barrier                                                 // 00006FC4: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:872 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00006FC8: EBA01368 80050001
  s_waitcnt     vmcnt(0)                                    // 00006FD0: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00006FD4: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00006FD8: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00006FE0: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00006FE4: 4A06060D
  ds_read_i16   v4, v3                                      // 00006FE8: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00006FF0: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00006FF4: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00006FFC: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00007000: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007004: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 0000700C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00007010: 4A000881
  ds_write_b16  v3, v0                                      // 00007014: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 0000701C: BF8C0070
  s_barrier                                                 // 00007020: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:876 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007024: EBA0136C 80050001
  s_waitcnt     vmcnt(0)                                    // 0000702C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00007030: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00007034: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 0000703C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00007040: 4A06060D
  ds_read_i16   v4, v3                                      // 00007044: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 0000704C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00007050: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00007058: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 0000705C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007060: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00007068: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 0000706C: 4A000881
  ds_write_b16  v3, v0                                      // 00007070: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00007078: BF8C0070
  s_barrier                                                 // 0000707C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:880 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007080: EBA01370 80050001
  s_waitcnt     vmcnt(0)                                    // 00007088: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 0000708C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00007090: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00007098: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 0000709C: 4A06060D
  ds_read_i16   v4, v3                                      // 000070A0: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000070A8: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000070AC: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000070B4: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000070B8: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000070BC: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000070C4: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000070C8: 4A000881
  ds_write_b16  v3, v0                                      // 000070CC: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000070D4: BF8C0070
  s_barrier                                                 // 000070D8: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:884 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000070DC: EBA01374 80050001
  s_waitcnt     vmcnt(0)                                    // 000070E4: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000070E8: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000070EC: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000070F4: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000070F8: 4A06060D
  ds_read_i16   v4, v3                                      // 000070FC: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00007104: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00007108: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00007110: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00007114: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007118: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00007120: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00007124: 4A000881
  ds_write_b16  v3, v0                                      // 00007128: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00007130: BF8C0070
  s_barrier                                                 // 00007134: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:888 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007138: EBA01378 80050001
  s_waitcnt     vmcnt(0)                                    // 00007140: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00007144: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00007148: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00007150: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00007154: 4A06060D
  ds_read_i16   v4, v3                                      // 00007158: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00007160: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00007164: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 0000716C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00007170: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007174: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 0000717C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00007180: 4A000881
  ds_write_b16  v3, v0                                      // 00007184: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 0000718C: BF8C0070
  s_barrier                                                 // 00007190: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:892 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007194: EBA0137C 80050001
  s_waitcnt     vmcnt(0)                                    // 0000719C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000071A0: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000071A4: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000071AC: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000071B0: 4A06060D
  ds_read_i16   v4, v3                                      // 000071B4: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000071BC: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000071C0: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000071C8: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000071CC: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000071D0: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000071D8: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000071DC: 4A000881
  ds_write_b16  v3, v0                                      // 000071E0: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000071E8: BF8C0070
  s_barrier                                                 // 000071EC: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:896 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000071F0: EBA01380 80050001
  s_waitcnt     vmcnt(0)                                    // 000071F8: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000071FC: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00007200: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00007208: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 0000720C: 4A06060D
  ds_read_i16   v4, v3                                      // 00007210: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00007218: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 0000721C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00007224: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00007228: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000722C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00007234: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00007238: 4A000881
  ds_write_b16  v3, v0                                      // 0000723C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00007244: BF8C0070
  s_barrier                                                 // 00007248: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:900 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000724C: EBA01384 80050001
  s_waitcnt     vmcnt(0)                                    // 00007254: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00007258: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 0000725C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00007264: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00007268: 4A06060D
  ds_read_i16   v4, v3                                      // 0000726C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00007274: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00007278: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00007280: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00007284: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007288: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00007290: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00007294: 4A000881
  ds_write_b16  v3, v0                                      // 00007298: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000072A0: BF8C0070
  s_barrier                                                 // 000072A4: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:904 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000072A8: EBA01388 80050001
  s_waitcnt     vmcnt(0)                                    // 000072B0: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000072B4: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000072B8: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000072C0: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000072C4: 4A06060D
  ds_read_i16   v4, v3                                      // 000072C8: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000072D0: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000072D4: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000072DC: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000072E0: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000072E4: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000072EC: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000072F0: 4A000881
  ds_write_b16  v3, v0                                      // 000072F4: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000072FC: BF8C0070
  s_barrier                                                 // 00007300: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:908 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007304: EBA0138C 80050001
  s_waitcnt     vmcnt(0)                                    // 0000730C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00007310: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00007314: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 0000731C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00007320: 4A06060D
  ds_read_i16   v4, v3                                      // 00007324: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 0000732C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00007330: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00007338: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 0000733C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007340: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00007348: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 0000734C: 4A000881
  ds_write_b16  v3, v0                                      // 00007350: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00007358: BF8C0070
  s_barrier                                                 // 0000735C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:912 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007360: EBA01390 80050001
  s_waitcnt     vmcnt(0)                                    // 00007368: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 0000736C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00007370: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00007378: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 0000737C: 4A06060D
  ds_read_i16   v4, v3                                      // 00007380: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00007388: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 0000738C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00007394: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00007398: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000739C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000073A4: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000073A8: 4A000881
  ds_write_b16  v3, v0                                      // 000073AC: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000073B4: BF8C0070
  s_barrier                                                 // 000073B8: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:916 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000073BC: EBA01394 80050001
  s_waitcnt     vmcnt(0)                                    // 000073C4: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000073C8: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000073CC: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000073D4: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000073D8: 4A06060D
  ds_read_i16   v4, v3                                      // 000073DC: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000073E4: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000073E8: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000073F0: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000073F4: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000073F8: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00007400: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00007404: 4A000881
  ds_write_b16  v3, v0                                      // 00007408: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00007410: BF8C0070
  s_barrier                                                 // 00007414: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:920 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007418: EBA01398 80050001
  s_waitcnt     vmcnt(0)                                    // 00007420: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00007424: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00007428: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00007430: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00007434: 4A06060D
  ds_read_i16   v4, v3                                      // 00007438: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00007440: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00007444: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 0000744C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00007450: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007454: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 0000745C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00007460: 4A000881
  ds_write_b16  v3, v0                                      // 00007464: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 0000746C: BF8C0070
  s_barrier                                                 // 00007470: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:924 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007474: EBA0139C 80050001
  s_waitcnt     vmcnt(0)                                    // 0000747C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00007480: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00007484: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 0000748C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00007490: 4A06060D
  ds_read_i16   v4, v3                                      // 00007494: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 0000749C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000074A0: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000074A8: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000074AC: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000074B0: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000074B8: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000074BC: 4A000881
  ds_write_b16  v3, v0                                      // 000074C0: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000074C8: BF8C0070
  s_barrier                                                 // 000074CC: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:928 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000074D0: EBA013A0 80050001
  s_waitcnt     vmcnt(0)                                    // 000074D8: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000074DC: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000074E0: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000074E8: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000074EC: 4A06060D
  ds_read_i16   v4, v3                                      // 000074F0: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000074F8: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000074FC: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00007504: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00007508: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000750C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00007514: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00007518: 4A000881
  ds_write_b16  v3, v0                                      // 0000751C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00007524: BF8C0070
  s_barrier                                                 // 00007528: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:932 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000752C: EBA013A4 80050001
  s_waitcnt     vmcnt(0)                                    // 00007534: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00007538: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 0000753C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00007544: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00007548: 4A06060D
  ds_read_i16   v4, v3                                      // 0000754C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00007554: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00007558: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00007560: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00007564: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007568: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00007570: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00007574: 4A000881
  ds_write_b16  v3, v0                                      // 00007578: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00007580: BF8C0070
  s_barrier                                                 // 00007584: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:936 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007588: EBA013A8 80050001
  s_waitcnt     vmcnt(0)                                    // 00007590: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00007594: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00007598: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000075A0: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000075A4: 4A06060D
  ds_read_i16   v4, v3                                      // 000075A8: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000075B0: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000075B4: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000075BC: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000075C0: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000075C4: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000075CC: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000075D0: 4A000881
  ds_write_b16  v3, v0                                      // 000075D4: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000075DC: BF8C0070
  s_barrier                                                 // 000075E0: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:940 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000075E4: EBA013AC 80050001
  s_waitcnt     vmcnt(0)                                    // 000075EC: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000075F0: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000075F4: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000075FC: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00007600: 4A06060D
  ds_read_i16   v4, v3                                      // 00007604: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 0000760C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00007610: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00007618: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 0000761C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007620: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00007628: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 0000762C: 4A000881
  ds_write_b16  v3, v0                                      // 00007630: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00007638: BF8C0070
  s_barrier                                                 // 0000763C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:944 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007640: EBA013B0 80050001
  s_waitcnt     vmcnt(0)                                    // 00007648: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 0000764C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00007650: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00007658: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 0000765C: 4A06060D
  ds_read_i16   v4, v3                                      // 00007660: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00007668: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 0000766C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00007674: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00007678: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000767C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00007684: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00007688: 4A000881
  ds_write_b16  v3, v0                                      // 0000768C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00007694: BF8C0070
  s_barrier                                                 // 00007698: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:948 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000769C: EBA013B4 80050001
  s_waitcnt     vmcnt(0)                                    // 000076A4: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000076A8: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000076AC: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000076B4: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000076B8: 4A06060D
  ds_read_i16   v4, v3                                      // 000076BC: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000076C4: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000076C8: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000076D0: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000076D4: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000076D8: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000076E0: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000076E4: 4A000881
  ds_write_b16  v3, v0                                      // 000076E8: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000076F0: BF8C0070
  s_barrier                                                 // 000076F4: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:952 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000076F8: EBA013B8 80050001
  s_waitcnt     vmcnt(0)                                    // 00007700: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00007704: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00007708: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00007710: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00007714: 4A06060D
  ds_read_i16   v4, v3                                      // 00007718: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00007720: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00007724: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 0000772C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00007730: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007734: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 0000773C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00007740: 4A000881
  ds_write_b16  v3, v0                                      // 00007744: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 0000774C: BF8C0070
  s_barrier                                                 // 00007750: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:956 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007754: EBA013BC 80050001
  s_waitcnt     vmcnt(0)                                    // 0000775C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00007760: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00007764: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 0000776C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00007770: 4A06060D
  ds_read_i16   v4, v3                                      // 00007774: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 0000777C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00007780: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00007788: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 0000778C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007790: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00007798: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 0000779C: 4A000881
  ds_write_b16  v3, v0                                      // 000077A0: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000077A8: BF8C0070
  s_barrier                                                 // 000077AC: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:960 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000077B0: EBA013C0 80050001
  s_waitcnt     vmcnt(0)                                    // 000077B8: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000077BC: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000077C0: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000077C8: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000077CC: 4A06060D
  ds_read_i16   v4, v3                                      // 000077D0: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000077D8: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000077DC: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000077E4: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000077E8: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000077EC: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000077F4: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000077F8: 4A000881
  ds_write_b16  v3, v0                                      // 000077FC: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00007804: BF8C0070
  s_barrier                                                 // 00007808: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:964 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000780C: EBA013C4 80050001
  s_waitcnt     vmcnt(0)                                    // 00007814: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00007818: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 0000781C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00007824: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00007828: 4A06060D
  ds_read_i16   v4, v3                                      // 0000782C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00007834: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00007838: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00007840: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00007844: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007848: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00007850: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00007854: 4A000881
  ds_write_b16  v3, v0                                      // 00007858: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00007860: BF8C0070
  s_barrier                                                 // 00007864: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:968 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007868: EBA013C8 80050001
  s_waitcnt     vmcnt(0)                                    // 00007870: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00007874: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00007878: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00007880: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00007884: 4A06060D
  ds_read_i16   v4, v3                                      // 00007888: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00007890: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00007894: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 0000789C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000078A0: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000078A4: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000078AC: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000078B0: 4A000881
  ds_write_b16  v3, v0                                      // 000078B4: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000078BC: BF8C0070
  s_barrier                                                 // 000078C0: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:972 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000078C4: EBA013CC 80050001
  s_waitcnt     vmcnt(0)                                    // 000078CC: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000078D0: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000078D4: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000078DC: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000078E0: 4A06060D
  ds_read_i16   v4, v3                                      // 000078E4: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000078EC: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000078F0: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000078F8: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000078FC: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007900: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00007908: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 0000790C: 4A000881
  ds_write_b16  v3, v0                                      // 00007910: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00007918: BF8C0070
  s_barrier                                                 // 0000791C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:976 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007920: EBA013D0 80050001
  s_waitcnt     vmcnt(0)                                    // 00007928: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 0000792C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00007930: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00007938: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 0000793C: 4A06060D
  ds_read_i16   v4, v3                                      // 00007940: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00007948: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 0000794C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00007954: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00007958: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000795C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00007964: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00007968: 4A000881
  ds_write_b16  v3, v0                                      // 0000796C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00007974: BF8C0070
  s_barrier                                                 // 00007978: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:980 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 0000797C: EBA013D4 80050001
  s_waitcnt     vmcnt(0)                                    // 00007984: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00007988: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 0000798C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00007994: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00007998: 4A06060D
  ds_read_i16   v4, v3                                      // 0000799C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 000079A4: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 000079A8: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 000079B0: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 000079B4: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000079B8: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 000079C0: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 000079C4: 4A000881
  ds_write_b16  v3, v0                                      // 000079C8: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 000079D0: BF8C0070
  s_barrier                                                 // 000079D4: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:984 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 000079D8: EBA013D8 80050001
  s_waitcnt     vmcnt(0)                                    // 000079E0: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 000079E4: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 000079E8: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 000079F0: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 000079F4: 4A06060D
  ds_read_i16   v4, v3                                      // 000079F8: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00007A00: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00007A04: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00007A0C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00007A10: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007A14: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00007A1C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00007A20: 4A000881
  ds_write_b16  v3, v0                                      // 00007A24: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00007A2C: BF8C0070
  s_barrier                                                 // 00007A30: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:988 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007A34: EBA013DC 80050001
  s_waitcnt     vmcnt(0)                                    // 00007A3C: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00007A40: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00007A44: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00007A4C: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00007A50: 4A06060D
  ds_read_i16   v4, v3                                      // 00007A54: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00007A5C: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00007A60: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00007A68: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00007A6C: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007A70: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00007A78: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00007A7C: 4A000881
  ds_write_b16  v3, v0                                      // 00007A80: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00007A88: BF8C0070
  s_barrier                                                 // 00007A8C: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:992 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007A90: EBA013E0 80050001
  s_waitcnt     vmcnt(0)                                    // 00007A98: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00007A9C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00007AA0: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00007AA8: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00007AAC: 4A06060D
  ds_read_i16   v4, v3                                      // 00007AB0: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00007AB8: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00007ABC: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00007AC4: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00007AC8: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007ACC: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00007AD4: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00007AD8: 4A000881
  ds_write_b16  v3, v0                                      // 00007ADC: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00007AE4: BF8C0070
  s_barrier                                                 // 00007AE8: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:996 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007AEC: EBA013E4 80050001
  s_waitcnt     vmcnt(0)                                    // 00007AF4: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00007AF8: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00007AFC: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00007B04: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00007B08: 4A06060D
  ds_read_i16   v4, v3                                      // 00007B0C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00007B14: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00007B18: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00007B20: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00007B24: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007B28: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00007B30: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00007B34: 4A000881
  ds_write_b16  v3, v0                                      // 00007B38: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00007B40: BF8C0070
  s_barrier                                                 // 00007B44: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:1000 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007B48: EBA013E8 80050001
  s_waitcnt     vmcnt(0)                                    // 00007B50: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00007B54: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00007B58: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00007B60: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00007B64: 4A06060D
  ds_read_i16   v4, v3                                      // 00007B68: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00007B70: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00007B74: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00007B7C: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00007B80: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007B84: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00007B8C: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00007B90: 4A000881
  ds_write_b16  v3, v0                                      // 00007B94: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00007B9C: BF8C0070
  s_barrier                                                 // 00007BA0: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:1004 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007BA4: EBA013EC 80050001
  s_waitcnt     vmcnt(0)                                    // 00007BAC: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00007BB0: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00007BB4: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00007BBC: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00007BC0: 4A06060D
  ds_read_i16   v4, v3                                      // 00007BC4: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00007BCC: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00007BD0: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00007BD8: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00007BDC: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007BE0: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00007BE8: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00007BEC: 4A000881
  ds_write_b16  v3, v0                                      // 00007BF0: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00007BF8: BF8C0070
  s_barrier                                                 // 00007BFC: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:1008 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007C00: EBA013F0 80050001
  s_waitcnt     vmcnt(0)                                    // 00007C08: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00007C0C: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00007C10: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00007C18: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00007C1C: 4A06060D
  ds_read_i16   v4, v3                                      // 00007C20: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00007C28: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00007C2C: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00007C34: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00007C38: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007C3C: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00007C44: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00007C48: 4A000881
  ds_write_b16  v3, v0                                      // 00007C4C: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00007C54: BF8C0070
  s_barrier                                                 // 00007C58: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:1012 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007C5C: EBA013F4 80050001
  s_waitcnt     vmcnt(0)                                    // 00007C64: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00007C68: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00007C6C: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00007C74: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00007C78: 4A06060D
  ds_read_i16   v4, v3                                      // 00007C7C: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00007C84: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00007C88: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00007C90: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00007C94: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007C98: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00007CA0: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00007CA4: 4A000881
  ds_write_b16  v3, v0                                      // 00007CA8: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00007CB0: BF8C0070
  s_barrier                                                 // 00007CB4: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:1016 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007CB8: EBA013F8 80050001
  s_waitcnt     vmcnt(0)                                    // 00007CC0: BF8C1F70
  v_lshrrev_b32  v3, s7, v0                                 // 00007CC4: 2C060007
  v_bfi_b32     v3, s0, v2, v3                              // 00007CC8: D2940003 040E0400
  v_lshlrev_b32  v3, 1, v3                                  // 00007CD0: 34060681
  v_add_i32     v3, vcc, s13, v3                            // 00007CD4: 4A06060D
  ds_read_i16   v4, v3                                      // 00007CD8: D8EC0000 04000003
  s_waitcnt     lgkmcnt(0)                                  // 00007CE0: BF8C007F
  v_and_b32     v5, 0x0000ffff, v4                          // 00007CE4: 360A08FF 0000FFFF
  v_lshlrev_b32  v5, 2, v5                                  // 00007CEC: 340A0A82
  v_add_i32     v5, vcc, s8, v5                             // 00007CF0: 4A0A0A08
  tbuffer_store_format_x  v0, v5, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007CF4: EBA41000 80060005
  s_waitcnt     expcnt(0)                                   // 00007CFC: BF8C1F0F
  v_add_i32     v0, vcc, 1, v4                              // 00007D00: 4A000881
  ds_write_b16  v3, v0                                      // 00007D04: D87C0000 00000003
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00007D0C: BF8C0070
  s_barrier                                                 // 00007D10: BF8A0000
  tbuffer_load_format_x  v0, v1, s[20:23], 0 offen offset:1020 format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007D14: EBA013FC 80050001
  s_waitcnt     vmcnt(0)                                    // 00007D1C: BF8C1F70
  v_lshrrev_b32  v1, s7, v0                                 // 00007D20: 2C020007
  v_bfi_b32     v1, s0, v2, v1                              // 00007D24: D2940001 04060400
  v_lshlrev_b32  v1, 1, v1                                  // 00007D2C: 34020281
  v_add_i32     v1, vcc, s13, v1                            // 00007D30: 4A02020D
  ds_read_i16   v2, v1                                      // 00007D34: D8EC0000 02000001
  s_waitcnt     lgkmcnt(0)                                  // 00007D3C: BF8C007F
  v_and_b32     v3, 0x0000ffff, v2                          // 00007D40: 360604FF 0000FFFF
  v_lshlrev_b32  v3, 2, v3                                  // 00007D48: 34060682
  v_add_i32     v3, vcc, s8, v3                             // 00007D4C: 4A060608
  tbuffer_store_format_x  v0, v3, s[24:27], 0 offen format:[BUF_DATA_FORMAT_32,BUF_NUM_FORMAT_FLOAT] // 00007D50: EBA41000 80060003
  s_waitcnt     expcnt(0)                                   // 00007D58: BF8C1F0F
  v_add_i32     v0, vcc, 1, v2                              // 00007D5C: 4A000481
  ds_write_b16  v1, v0                                      // 00007D60: D87C0000 00000001
  s_waitcnt     vmcnt(0) & lgkmcnt(0)                       // 00007D68: BF8C0070
  s_barrier                                                 // 00007D6C: BF8A0000
  s_endpgm                                                  // 00007D70: BF810000



