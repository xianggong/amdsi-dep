package amdsidep

// MemInsts contains all the memory related instructions
var MemInsts = map[string]string{
	"s_waitcnt":                 "SOPP",
	"s_barrier":                 "SOPP",
	"s_endpgm":                  "SOPP",
	"s_load_dword":              "SMRD",
	"s_load_dwordx2":            "SMRD",
	"s_load_dwordx4":            "SMRD",
	"s_load_dwordx8":            "SMRD",
	"s_load_dwordx16":           "SMRD",
	"s_buffer_load_dword":       "SMRD",
	"s_buffer_load_dwordx2":     "SMRD",
	"s_buffer_load_dwordx4":     "SMRD",
	"s_buffer_load_dwordx8":     "SMRD",
	"s_buffer_load_dwordx16":    "SMRD",
	"buffer_load_format_x":      "MUBUF",
	"buffer_load_format_xy":     "MUBUF",
	"buffer_load_format_xyz":    "MUBUF",
	"buffer_load_format_xyzw":   "MUBUF",
	"buffer_store_format_x":     "MUBUF",
	"buffer_store_format_xy":    "MUBUF",
	"buffer_store_format_xyz":   "MUBUF",
	"buffer_store_format_xyzw":  "MUBUF",
	"buffer_load_ubyte":         "MUBUF",
	"buffer_load_sbyte":         "MUBUF",
	"buffer_load_ushort":        "MUBUF",
	"buffer_load_sshort":        "MUBUF",
	"buffer_load_dword":         "MUBUF",
	"buffer_load_dwordx2":       "MUBUF",
	"buffer_load_dwordx4":       "MUBUF",
	"buffer_store_byte":         "MUBUF",
	"buffer_store_short":        "MUBUF",
	"buffer_store_dword":        "MUBUF",
	"buffer_store_dwordx2":      "MUBUF",
	"buffer_store_dwordx4":      "MUBUF",
	"buffer_atomic_swap":        "MUBUF",
	"buffer_atomic_cmpswap":     "MUBUF",
	"buffer_atomic_add":         "MUBUF",
	"buffer_atomic_sub":         "MUBUF",
	"buffer_atomic_rsub":        "MUBUF",
	"buffer_atomic_smin":        "MUBUF",
	"buffer_atomic_umin":        "MUBUF",
	"buffer_atomic_smax":        "MUBUF",
	"buffer_atomic_umax":        "MUBUF",
	"buffer_atomic_and":         "MUBUF",
	"buffer_atomic_or":          "MUBUF",
	"buffer_atomic_xor":         "MUBUF",
	"buffer_atomic_inc":         "MUBUF",
	"buffer_atomic_dec":         "MUBUF",
	"buffer_atomic_fcmpswap":    "MUBUF",
	"buffer_atomic_fmin":        "MUBUF",
	"buffer_atomic_fmax":        "MUBUF",
	"buffer_atomic_swap_x2":     "MUBUF",
	"buffer_atomic_cmpswap_x2":  "MUBUF",
	"buffer_atomic_add_x2":      "MUBUF",
	"buffer_atomic_sub_x2":      "MUBUF",
	"buffer_atomic_rsub_x2":     "MUBUF",
	"buffer_atomic_smin_x2":     "MUBUF",
	"buffer_atomic_umin_x2":     "MUBUF",
	"buffer_atomic_smax_x2":     "MUBUF",
	"buffer_atomic_umax_x2":     "MUBUF",
	"buffer_atomic_and_x2":      "MUBUF",
	"buffer_atomic_or_x2":       "MUBUF",
	"buffer_atomic_xor_x2":      "MUBUF",
	"buffer_atomic_inc_x2":      "MUBUF",
	"buffer_atomic_dec_x2":      "MUBUF",
	"buffer_atomic_fcmpswap_x2": "MUBUF",
	"buffer_atomic_fmin_x2":     "MUBUF",
	"buffer_atomic_fmax_x2":     "MUBUF",
	"buffer_wbinvl1_sc":         "MUBUF",
	"buffer_wbinvl1":            "MUBUF",
	"tbuffer_load_format_x":     "MTBUF",
	"tbuffer_load_format_xy":    "MTBUF",
	"tbuffer_load_format_xyz":   "MTBUF",
	"tbuffer_load_format_xyzw":  "MTBUF",
	"tbuffer_store_format_x":    "MTBUF",
	"tbuffer_store_format_xy":   "MTBUF",
	"tbuffer_store_format_xyz":  "MTBUF",
	"tbuffer_store_format_xyzw": "MTBUF",
	"ds_read_b32":               "DS",
	"ds_read2_b32":              "DS",
	"ds_read2st64_b32":          "DS",
	"ds_read_i8":                "DS",
	"ds_read_u8":                "DS",
	"ds_read_i16":               "DS",
	"ds_read_u16":               "DS",
	"ds_read_b64":               "DS",
	"ds_read2_b64":              "DS",
	"ds_read2st64_b64":          "DS",
	"ds_write_b32":              "DS",
	"ds_write2_b32":             "DS",
	"ds_write2st64_b32":         "DS",
	"ds_write_b8":               "DS",
	"ds_write_b16":              "DS",
	"ds_write_b64":              "DS",
	"ds_write2_b64":             "DS",
	"ds_write2st64_b64":         "DS",
	"ds_write_src2_b32":         "DS",
	"ds_write_src2_b64":         "DS",
}

// InstType contains the instructions and their corresponding instruction type
var InstType = map[string]string{
	"s_add_u32":                 "SOP2",
	"s_sub_u32":                 "SOP2",
	"s_add_i32":                 "SOP2",
	"s_sub_i32":                 "SOP2",
	"s_addc_u32":                "SOP2",
	"s_subb_u32":                "SOP2",
	"s_min_i32":                 "SOP2",
	"s_min_u32":                 "SOP2",
	"s_max_i32":                 "SOP2",
	"s_max_u32":                 "SOP2",
	"s_cselect_b32":             "SOP2",
	"s_cselect_b64":             "SOP2",
	"s_and_b32":                 "SOP2",
	"s_and_b64":                 "SOP2",
	"s_or_b32":                  "SOP2",
	"s_or_b64":                  "SOP2",
	"s_xor_b32":                 "SOP2",
	"s_xor_b64":                 "SOP2",
	"s_andn2_b32":               "SOP2",
	"s_andn2_b64":               "SOP2",
	"s_orn2_b32":                "SOP2",
	"s_orn2_b64":                "SOP2",
	"s_nand_b32":                "SOP2",
	"s_nand_b64":                "SOP2",
	"s_nor_b32":                 "SOP2",
	"s_nor_b64":                 "SOP2",
	"s_xnor_b32":                "SOP2",
	"s_xnor_b64":                "SOP2",
	"s_lshl_b32":                "SOP2",
	"s_lshl_b64":                "SOP2",
	"s_lshr_b32":                "SOP2",
	"s_lshr_b64":                "SOP2",
	"s_ashr_i32":                "SOP2",
	"s_ashr_i64":                "SOP2",
	"s_bfm_b32":                 "SOP2",
	"s_bfm_b64":                 "SOP2",
	"s_mul_i32":                 "SOP2",
	"s_bfe_u32":                 "SOP2",
	"s_bfe_i32":                 "SOP2",
	"s_bfe_u64":                 "SOP2",
	"s_bfe_i64":                 "SOP2",
	"s_cbranch_g_fork":          "SOP2",
	"s_absdiff_i32":             "SOP2",
	"s_movk_i32":                "SOPK",
	"s_cmovk_i32":               "SOPK",
	"s_cmpk_eq_i32":             "SOPK",
	"s_cmpk_lg_i32":             "SOPK",
	"s_cmpk_gt_i32":             "SOPK",
	"s_cmpk_ge_i32":             "SOPK",
	"s_cmpk_lt_i32":             "SOPK",
	"s_cmpk_le_i32":             "SOPK",
	"s_cmpk_eq_u32":             "SOPK",
	"s_cmpk_lg_u32":             "SOPK",
	"s_cmpk_gt_u32":             "SOPK",
	"s_cmpk_ge_u32":             "SOPK",
	"s_cmpk_lt_u32":             "SOPK",
	"s_cmpk_le_u32":             "SOPK",
	"s_addk_i32":                "SOPK",
	"s_mulk_i32":                "SOPK",
	"s_cbranch_i_fork":          "SOPK",
	"s_getreg_b32":              "SOPK",
	"s_setreg_b32":              "SOPK",
	"s_setreg_imm32_b32":        "SOPK",
	"s_mov_b32":                 "SOP1",
	"s_mov_b64":                 "SOP1",
	"s_cmov_b32":                "SOP1",
	"s_cmov_b64":                "SOP1",
	"s_not_b32":                 "SOP1",
	"s_not_b64":                 "SOP1",
	"s_wqm_b32":                 "SOP1",
	"s_wqm_b64":                 "SOP1",
	"s_brev_b32":                "SOP1",
	"s_brev_b64":                "SOP1",
	"s_bcnt0_i32_b32":           "SOP1",
	"s_bcnt0_i32_b64":           "SOP1",
	"s_bcnt1_i32_b32":           "SOP1",
	"s_bcnt1_i32_b64":           "SOP1",
	"s_ff0_i32_b32":             "SOP1",
	"s_ff0_i32_b64":             "SOP1",
	"s_ff1_i32_b32":             "SOP1",
	"s_ff1_i32_b64":             "SOP1",
	"s_flbit_i32_b32":           "SOP1",
	"s_flbit_i32_b64":           "SOP1",
	"s_flbit_i32":               "SOP1",
	"s_flbit_i32_i64":           "SOP1",
	"s_sext_i32_i8":             "SOP1",
	"s_sext_i32_i16":            "SOP1",
	"s_bitset0_b32":             "SOP1",
	"s_bitset0_b64":             "SOP1",
	"s_bitset1_b32":             "SOP1",
	"s_bitset1_b64":             "SOP1",
	"s_getpc_b64":               "SOP1",
	"s_setpc_b64":               "SOP1",
	"s_swappc_b64":              "SOP1",
	"s_rfe_b64":                 "SOP1",
	"s_and_saveexec_b64":        "SOP1",
	"s_or_saveexec_b64":         "SOP1",
	"s_xor_saveexec_b64":        "SOP1",
	"s_andn2_saveexec_b64":      "SOP1",
	"s_orn2_saveexec_b64":       "SOP1",
	"s_nand_saveexec_b64":       "SOP1",
	"s_nor_saveexec_b64":        "SOP1",
	"s_xnor_saveexec_b64":       "SOP1",
	"s_quadmask_b32":            "SOP1",
	"s_quadmask_b64":            "SOP1",
	"s_movrels_b32":             "SOP1",
	"s_movrels_b64":             "SOP1",
	"s_movreld_b32":             "SOP1",
	"s_movreld_b64":             "SOP1",
	"s_cbranch_join":            "SOP1",
	"s_abs_i32":                 "SOP1",
	"s_mov_fed_b32":             "SOP1",
	"s_cmp_eq_i32":              "SOPC",
	"s_cmp_lg_i32":              "SOPC",
	"s_cmp_gt_i32":              "SOPC",
	"s_cmp_ge_i32":              "SOPC",
	"s_cmp_lt_i32":              "SOPC",
	"s_cmp_le_i32":              "SOPC",
	"s_cmp_eq_u32":              "SOPC",
	"s_cmp_lg_u32":              "SOPC",
	"s_cmp_gt_u32":              "SOPC",
	"s_cmp_ge_u32":              "SOPC",
	"s_cmp_lt_u32":              "SOPC",
	"s_cmp_le_u32":              "SOPC",
	"s_bitcmp0_b32":             "SOPC",
	"s_bitcmp1_b32":             "SOPC",
	"s_bitcmp0_b64":             "SOPC",
	"s_bitcmp1_b64":             "SOPC",
	"s_setvskip":                "SOPC",
	"s_nop":                     "SOPP",
	"s_endpgm":                  "SOPP",
	"s_branch":                  "SOPP",
	"s_cbranch_scc0":            "SOPP",
	"s_cbranch_scc1":            "SOPP",
	"s_cbranch_vccz":            "SOPP",
	"s_cbranch_vccnz":           "SOPP",
	"s_cbranch_execz":           "SOPP",
	"s_cbranch_execnz":          "SOPP",
	"s_barrier":                 "SOPP",
	"s_waitcnt":                 "SOPP",
	"s_sethalt":                 "SOPP",
	"s_sleep":                   "SOPP",
	"s_setprio":                 "SOPP",
	"s_sendmsg":                 "SOPP",
	"s_sendmsghalt":             "SOPP",
	"s_trap":                    "SOPP",
	"s_icache_inv":              "SOPP",
	"s_incperflevel":            "SOPP",
	"s_decperflevel":            "SOPP",
	"s_ttracedata":              "SOPP",
	"s_load_dword":              "SMRD",
	"s_load_dwordx2":            "SMRD",
	"s_load_dwordx4":            "SMRD",
	"s_load_dwordx8":            "SMRD",
	"s_load_dwordx16":           "SMRD",
	"s_buffer_load_dword":       "SMRD",
	"s_buffer_load_dwordx2":     "SMRD",
	"s_buffer_load_dwordx4":     "SMRD",
	"s_buffer_load_dwordx8":     "SMRD",
	"s_buffer_load_dwordx16":    "SMRD",
	"s_memtime":                 "SMRD",
	"s_dcache_inv":              "SMRD",
	"v_cndmask_b32":             "VOP2",
	"v_readlane_b32":            "VOP2",
	"v_writelane_b32":           "VOP2",
	"v_add_f32":                 "VOP2",
	"v_sub_f32":                 "VOP2",
	"v_subrev_f32":              "VOP2",
	"v_mac_legacy_f32":          "VOP2",
	"v_mul_legacy_f32":          "VOP2",
	"v_mul_f32":                 "VOP2",
	"v_mul_i32_i24":             "VOP2",
	"v_mul_hi_i32_i24":          "VOP2",
	"v_mul_u32_u24":             "VOP2",
	"v_mul_hi_u32_u24":          "VOP2",
	"v_min_legacy_f32":          "VOP2",
	"v_max_legacy_f32":          "VOP2",
	"v_min_f32":                 "VOP2",
	"v_max_f32":                 "VOP2",
	"v_min_i32":                 "VOP2",
	"v_max_i32":                 "VOP2",
	"v_min_u32":                 "VOP2",
	"v_max_u32":                 "VOP2",
	"v_lshr_b32":                "VOP2",
	"v_lshrrev_b32":             "VOP2",
	"v_ashr_i32":                "VOP2",
	"v_ashrrev_i32":             "VOP2",
	"v_lshl_b32":                "VOP2",
	"v_lshlrev_b32":             "VOP2",
	"v_and_b32":                 "VOP2",
	"v_or_b32":                  "VOP2",
	"v_xor_b32":                 "VOP2",
	"v_bfm_b32":                 "VOP2",
	"v_mac_f32":                 "VOP2",
	"v_madmk_f32":               "VOP2",
	"v_madak_f32":               "VOP2",
	"v_bcnt_u32_b32":            "VOP2",
	"v_mbcnt_lo_u32_b32":        "VOP2",
	"v_mbcnt_hi_u32_b32":        "VOP2",
	"v_add_i32":                 "VOP2",
	"v_sub_i32":                 "VOP2",
	"v_subrev_i32":              "VOP2",
	"v_addc_u32":                "VOP2",
	"v_subb_u32":                "VOP2",
	"v_subbrev_u32":             "VOP2",
	"v_ldexp_f32":               "VOP2",
	"v_cvt_pkaccum_u8_f32":      "VOP2",
	"v_cvt_pknorm_i16_f32":      "VOP2",
	"v_cvt_pknorm_u16_f32":      "VOP2",
	"v_cvt_pkrtz_f16_f32":       "VOP2",
	"v_cvt_pk_u16_u32":          "VOP2",
	"v_cvt_pk_i16_i32":          "VOP2",
	"v_nop":                     "VOP1",
	"v_mov_b32":                 "VOP1",
	"v_readfirstlane_b32":       "VOP1",
	"v_cvt_i32_f64":             "VOP1",
	"v_cvt_f64_i32":             "VOP1",
	"v_cvt_f32_i32":             "VOP1",
	"v_cvt_f32_u32":             "VOP1",
	"v_cvt_u32_f32":             "VOP1",
	"v_cvt_i32_f32":             "VOP1",
	"v_mov_fed_b32":             "VOP1",
	"v_cvt_f16_f32":             "VOP1",
	"v_cvt_f32_f16":             "VOP1",
	"v_cvt_rpi_i32_f32":         "VOP1",
	"v_cvt_flr_i32_f32":         "VOP1",
	"v_cvt_off_f32_i4":          "VOP1",
	"v_cvt_f32_f64":             "VOP1",
	"v_cvt_f64_f32":             "VOP1",
	"v_cvt_f32_ubyte0":          "VOP1",
	"v_cvt_f32_ubyte1":          "VOP1",
	"v_cvt_f32_ubyte2":          "VOP1",
	"v_cvt_f32_ubyte3":          "VOP1",
	"v_cvt_u32_f64":             "VOP1",
	"v_cvt_f64_u32":             "VOP1",
	"v_fract_f32":               "VOP1",
	"v_trunc_f32":               "VOP1",
	"v_ceil_f32":                "VOP1",
	"v_rndne_f32":               "VOP1",
	"v_floor_f32":               "VOP1",
	"v_exp_f32":                 "VOP1",
	"v_log_clamp_f32":           "VOP1",
	"v_log_f32":                 "VOP1",
	"v_rcp_clamp_f32":           "VOP1",
	"v_rcp_legacy_f32":          "VOP1",
	"v_rcp_f32":                 "VOP1",
	"v_rcp_iflag_f32":           "VOP1",
	"v_rsq_clamp_f32":           "VOP1",
	"v_rsq_legacy_f32":          "VOP1",
	"v_rsq_f32":                 "VOP1",
	"v_rcp_f64":                 "VOP1",
	"v_rcp_clamp_f64":           "VOP1",
	"v_rsq_f64":                 "VOP1",
	"v_rsq_clamp_f64":           "VOP1",
	"v_sqrt_f32":                "VOP1",
	"v_sqrt_f64":                "VOP1",
	"v_sin_f32":                 "VOP1",
	"v_cos_f32":                 "VOP1",
	"v_not_b32":                 "VOP1",
	"v_bfrev_b32":               "VOP1",
	"v_ffbh_u32":                "VOP1",
	"v_ffbl_b32":                "VOP1",
	"v_ffbh_i32":                "VOP1",
	"v_frexp_exp_i32_f64":       "VOP1",
	"v_frexp_mant_f64":          "VOP1",
	"v_fract_f64":               "VOP1",
	"v_frexp_exp_i32_f32":       "VOP1",
	"v_frexp_mant_f32":          "VOP1",
	"v_clrexcp":                 "VOP1",
	"v_movreld_b32":             "VOP1",
	"v_movrels_b32":             "VOP1",
	"v_movrelsd_b32":            "VOP1",
	"v_cmp_f_f32":               "VOPC",
	"v_cmp_lt_f32":              "VOPC",
	"v_cmp_eq_f32":              "VOPC",
	"v_cmp_le_f32":              "VOPC",
	"v_cmp_gt_f32":              "VOPC",
	"v_cmp_lg_f32":              "VOPC",
	"v_cmp_ge_f32":              "VOPC",
	"v_cmp_u_f32":               "VOPC",
	"v_cmp_o_f32":               "VOPC",
	"v_cmp_nge_f32":             "VOPC",
	"v_cmp_nlg_f32":             "VOPC",
	"v_cmp_ngt_f32":             "VOPC",
	"v_cmp_nle_f32":             "VOPC",
	"v_cmp_neq_f32":             "VOPC",
	"v_cmp_nlt_f32":             "VOPC",
	"v_cmp_tru_f32":             "VOPC",
	"v_cmp_f_f64":               "VOPC",
	"v_cmp_lt_f64":              "VOPC",
	"v_cmp_eq_f64":              "VOPC",
	"v_cmp_le_f64":              "VOPC",
	"v_cmp_gt_f64":              "VOPC",
	"v_cmp_lg_f64":              "VOPC",
	"v_cmp_ge_f64":              "VOPC",
	"v_cmp_u_f64":               "VOPC",
	"v_cmp_o_f64":               "VOPC",
	"v_cmp_nge_f64":             "VOPC",
	"v_cmp_nlg_f64":             "VOPC",
	"v_cmp_ngt_f64":             "VOPC",
	"v_cmp_nle_f64":             "VOPC",
	"v_cmp_neq_f64":             "VOPC",
	"v_cmp_nlt_f64":             "VOPC",
	"v_cmp_tru_f64":             "VOPC",
	"v_cmpx_f_f64":              "VOPC",
	"v_cmpx_lt_f64":             "VOPC",
	"v_cmpx_eq_f64":             "VOPC",
	"v_cmpx_le_f64":             "VOPC",
	"v_cmpx_gt_f64":             "VOPC",
	"v_cmpx_lg_f64":             "VOPC",
	"v_cmpx_ge_f64":             "VOPC",
	"v_cmpx_u_f64":              "VOPC",
	"v_cmpx_o_f64":              "VOPC",
	"v_cmpx_nge_f64":            "VOPC",
	"v_cmpx_nlg_f64":            "VOPC",
	"v_cmpx_ngt_f64":            "VOPC",
	"v_cmpx_nle_f64":            "VOPC",
	"v_cmpx_neq_f64":            "VOPC",
	"v_cmpx_nlt_f64":            "VOPC",
	"v_cmpx_tru_f64":            "VOPC",
	"v_cmps_f_f32":              "VOPC",
	"v_cmps_lt_f32":             "VOPC",
	"v_cmps_eq_f32":             "VOPC",
	"v_cmps_le_f32":             "VOPC",
	"v_cmps_gt_f32":             "VOPC",
	"v_cmps_lg_f32":             "VOPC",
	"v_cmps_ge_f32":             "VOPC",
	"v_cmps_u_f32":              "VOPC",
	"v_cmps_o_f32":              "VOPC",
	"v_cmps_nge_f32":            "VOPC",
	"v_cmps_nlg_f32":            "VOPC",
	"v_cmps_ngt_f32":            "VOPC",
	"v_cmps_nle_f32":            "VOPC",
	"v_cmps_neq_f32":            "VOPC",
	"v_cmps_nlt_f32":            "VOPC",
	"v_cmps_tru_f32":            "VOPC",
	"v_cmpsx_f_f32":             "VOPC",
	"v_cmpsx_lt_f32":            "VOPC",
	"v_cmpsx_eq_f32":            "VOPC",
	"v_cmpsx_le_f32":            "VOPC",
	"v_cmpsx_gt_f32":            "VOPC",
	"v_cmpsx_lg_f32":            "VOPC",
	"v_cmpsx_ge_f32":            "VOPC",
	"v_cmpsx_u_f32":             "VOPC",
	"v_cmpsx_o_f32":             "VOPC",
	"v_cmpsx_nge_f32":           "VOPC",
	"v_cmpsx_nlg_f32":           "VOPC",
	"v_cmpsx_ngt_f32":           "VOPC",
	"v_cmpsx_nle_f32":           "VOPC",
	"v_cmpsx_neq_f32":           "VOPC",
	"v_cmpsx_nlt_f32":           "VOPC",
	"v_cmpsx_tru_f32":           "VOPC",
	"v_cmps_f_f64":              "VOPC",
	"v_cmps_lt_f64":             "VOPC",
	"v_cmps_eq_f64":             "VOPC",
	"v_cmps_le_f64":             "VOPC",
	"v_cmps_gt_f64":             "VOPC",
	"v_cmps_lg_f64":             "VOPC",
	"v_cmps_ge_f64":             "VOPC",
	"v_cmps_u_f64":              "VOPC",
	"v_cmps_o_f64":              "VOPC",
	"v_cmps_nge_f64":            "VOPC",
	"v_cmps_nlg_f64":            "VOPC",
	"v_cmps_ngt_f64":            "VOPC",
	"v_cmps_nle_f64":            "VOPC",
	"v_cmps_neq_f64":            "VOPC",
	"v_cmps_nlt_f64":            "VOPC",
	"v_cmps_tru_f64":            "VOPC",
	"v_cmpsx_f_f64":             "VOPC",
	"v_cmpsx_lt_f64":            "VOPC",
	"v_cmpsx_eq_f64":            "VOPC",
	"v_cmpsx_le_f64":            "VOPC",
	"v_cmpsx_gt_f64":            "VOPC",
	"v_cmpsx_lg_f64":            "VOPC",
	"v_cmpsx_ge_f64":            "VOPC",
	"v_cmpsx_u_f64":             "VOPC",
	"v_cmpsx_o_f64":             "VOPC",
	"v_cmpsx_nge_f64":           "VOPC",
	"v_cmpsx_nlg_f64":           "VOPC",
	"v_cmpsx_ngt_f64":           "VOPC",
	"v_cmpsx_nle_f64":           "VOPC",
	"v_cmpsx_neq_f64":           "VOPC",
	"v_cmpsx_nlt_f64":           "VOPC",
	"v_cmpsx_tru_f64":           "VOPC",
	"v_cmp_f_i32":               "VOPC",
	"v_cmp_lt_i32":              "VOPC",
	"v_cmp_eq_i32":              "VOPC",
	"v_cmp_le_i32":              "VOPC",
	"v_cmp_gt_i32":              "VOPC",
	"v_cmp_lg_i32":              "VOPC",
	"v_cmp_ge_i32":              "VOPC",
	"v_cmp_o_i32":               "VOPC",
	"v_cmp_u_i32":               "VOPC",
	"v_cmp_nge_i32":             "VOPC",
	"v_cmp_nlg_i32":             "VOPC",
	"v_cmp_ngt_i32":             "VOPC",
	"v_cmp_nle_i32":             "VOPC",
	"v_cmp_ne_i32":              "VOPC",
	"v_cmp_nlt_i32":             "VOPC",
	"v_cmp_tru_i32":             "VOPC",
	"v_cmpx_f_i32":              "VOPC",
	"v_cmpx_lt_i32":             "VOPC",
	"v_cmpx_eq_i32":             "VOPC",
	"v_cmpx_le_i32":             "VOPC",
	"v_cmpx_gt_i32":             "VOPC",
	"v_cmpx_lg_i32":             "VOPC",
	"v_cmpx_ge_i32":             "VOPC",
	"v_cmpx_o_i32":              "VOPC",
	"v_cmpx_u_i32":              "VOPC",
	"v_cmpx_nge_i32":            "VOPC",
	"v_cmpx_nlg_i32":            "VOPC",
	"v_cmpx_ngt_i32":            "VOPC",
	"v_cmpx_nle_i32":            "VOPC",
	"v_cmpx_ne_i32":             "VOPC",
	"v_cmpx_nlt_i32":            "VOPC",
	"v_cmpx_tru_i32":            "VOPC",
	"v_cmp_f_i64":               "VOPC",
	"v_cmp_lt_i64":              "VOPC",
	"v_cmp_eq_i64":              "VOPC",
	"v_cmp_le_i64":              "VOPC",
	"v_cmp_gt_i64":              "VOPC",
	"v_cmp_lg_i64":              "VOPC",
	"v_cmp_ge_i64":              "VOPC",
	"v_cmp_o_i64":               "VOPC",
	"v_cmp_u_i64":               "VOPC",
	"v_cmp_nge_i64":             "VOPC",
	"v_cmp_nlg_i64":             "VOPC",
	"v_cmp_ngt_i64":             "VOPC",
	"v_cmp_nle_i64":             "VOPC",
	"v_cmp_ne_i64":              "VOPC",
	"v_cmp_nlt_i64":             "VOPC",
	"v_cmp_tru_i64":             "VOPC",
	"v_cmpx_f_i64":              "VOPC",
	"v_cmpx_lt_i64":             "VOPC",
	"v_cmpx_eq_i64":             "VOPC",
	"v_cmpx_le_i64":             "VOPC",
	"v_cmpx_gt_i64":             "VOPC",
	"v_cmpx_lg_i64":             "VOPC",
	"v_cmpx_ge_i64":             "VOPC",
	"v_cmpx_o_i64":              "VOPC",
	"v_cmpx_u_i64":              "VOPC",
	"v_cmpx_nge_i64":            "VOPC",
	"v_cmpx_nlg_i64":            "VOPC",
	"v_cmpx_ngt_i64":            "VOPC",
	"v_cmpx_nle_i64":            "VOPC",
	"v_cmpx_ne_i64":             "VOPC",
	"v_cmpx_nlt_i64":            "VOPC",
	"v_cmpx_tru_i64":            "VOPC",
	"v_cmp_f_u32":               "VOPC",
	"v_cmp_lt_u32":              "VOPC",
	"v_cmp_eq_u32":              "VOPC",
	"v_cmp_le_u32":              "VOPC",
	"v_cmp_gt_u32":              "VOPC",
	"v_cmp_lg_u32":              "VOPC",
	"v_cmp_ge_u32":              "VOPC",
	"v_cmp_o_u32":               "VOPC",
	"v_cmp_u_u32":               "VOPC",
	"v_cmp_nge_u32":             "VOPC",
	"v_cmp_nlg_u32":             "VOPC",
	"v_cmp_ngt_u32":             "VOPC",
	"v_cmp_nle_u32":             "VOPC",
	"v_cmp_ne_u32":              "VOPC",
	"v_cmp_nlt_u32":             "VOPC",
	"v_cmp_tru_u32":             "VOPC",
	"v_cmpx_f_u32":              "VOPC",
	"v_cmpx_lt_u32":             "VOPC",
	"v_cmpx_eq_u32":             "VOPC",
	"v_cmpx_le_u32":             "VOPC",
	"v_cmpx_gt_u32":             "VOPC",
	"v_cmpx_lg_u32":             "VOPC",
	"v_cmpx_ge_u32":             "VOPC",
	"v_cmpx_o_u32":              "VOPC",
	"v_cmpx_u_u32":              "VOPC",
	"v_cmpx_nge_u32":            "VOPC",
	"v_cmpx_nlg_u32":            "VOPC",
	"v_cmpx_ngt_u32":            "VOPC",
	"v_cmpx_nle_u32":            "VOPC",
	"v_cmpx_ne_u32":             "VOPC",
	"v_cmpx_nlt_u32":            "VOPC",
	"v_cmpx_tru_u32":            "VOPC",
	"v_cmp_f_u64":               "VOPC",
	"v_cmp_lt_u64":              "VOPC",
	"v_cmp_eq_u64":              "VOPC",
	"v_cmp_le_u64":              "VOPC",
	"v_cmp_gt_u64":              "VOPC",
	"v_cmp_lg_u64":              "VOPC",
	"v_cmp_ge_u64":              "VOPC",
	"v_cmp_o_u64":               "VOPC",
	"v_cmp_u_u64":               "VOPC",
	"v_cmp_nge_u64":             "VOPC",
	"v_cmp_nlg_u64":             "VOPC",
	"v_cmp_ngt_u64":             "VOPC",
	"v_cmp_nle_u64":             "VOPC",
	"v_cmp_ne_u64":              "VOPC",
	"v_cmp_nlt_u64":             "VOPC",
	"v_cmp_tru_u64":             "VOPC",
	"v_cmpx_f_u64":              "VOPC",
	"v_cmpx_lt_u64":             "VOPC",
	"v_cmpx_eq_u64":             "VOPC",
	"v_cmpx_le_u64":             "VOPC",
	"v_cmpx_gt_u64":             "VOPC",
	"v_cmpx_lg_u64":             "VOPC",
	"v_cmpx_ge_u64":             "VOPC",
	"v_cmpx_o_u64":              "VOPC",
	"v_cmpx_u_u64":              "VOPC",
	"v_cmpx_nge_u64":            "VOPC",
	"v_cmpx_nlg_u64":            "VOPC",
	"v_cmpx_ngt_u64":            "VOPC",
	"v_cmpx_nle_u64":            "VOPC",
	"v_cmpx_ne_u64":             "VOPC",
	"v_cmpx_nlt_u64":            "VOPC",
	"v_cmpx_tru_u64":            "VOPC",
	"v_mad_legacy_f32":          "VOP3A",
	"v_mad_f32":                 "VOP3A",
	"v_mad_i32_i24":             "VOP3A",
	"v_mad_u32_u24":             "VOP3A",
	"v_cubeid_f32":              "VOP3A",
	"v_cubesc_f32":              "VOP3A",
	"v_cubetc_f32":              "VOP3A",
	"v_cubema_f32":              "VOP3A",
	"v_bfe_u32":                 "VOP3A",
	"v_bfe_i32":                 "VOP3A",
	"v_bfi_b32":                 "VOP3A",
	"v_fma_f32":                 "VOP3A",
	"v_fma_f64":                 "VOP3A",
	"v_lerp_u8":                 "VOP3A",
	"v_alignbit_b32":            "VOP3A",
	"v_alignbyte_b32":           "VOP3A",
	"v_mullit_f32":              "VOP3A",
	"v_min3_f32":                "VOP3A",
	"v_min3_i32":                "VOP3A",
	"v_min3_u32":                "VOP3A",
	"v_max3_f32":                "VOP3A",
	"v_max3_i32":                "VOP3A",
	"v_max3_u32":                "VOP3A",
	"v_med3_f32":                "VOP3A",
	"v_med3_i32":                "VOP3A",
	"v_med3_u32":                "VOP3A",
	"v_sad_u8":                  "VOP3A",
	"v_sad_hi_u8":               "VOP3A",
	"v_sad_u16":                 "VOP3A",
	"v_sad_u32":                 "VOP3A",
	"v_cvt_pk_u8_f32":           "VOP3A",
	"v_div_fixup_f32":           "VOP3A",
	"v_div_fixup_f64":           "VOP3A",
	"v_lshl_b64":                "VOP3A",
	"v_lshr_b64":                "VOP3A",
	"v_ashr_i64":                "VOP3A",
	"v_add_f64":                 "VOP3A",
	"v_mul_f64":                 "VOP3A",
	"v_min_f64":                 "VOP3A",
	"v_max_f64":                 "VOP3A",
	"v_ldexp_f64":               "VOP3A",
	"v_mul_lo_u32":              "VOP3A",
	"v_mul_hi_u32":              "VOP3A",
	"v_mul_lo_i32":              "VOP3A",
	"v_mul_hi_i32":              "VOP3A",
	"v_div_fmas_f32":            "VOP3A",
	"v_div_fmas_f64":            "VOP3A",
	"v_msad_u8":                 "VOP3A",
	"v_qsad_u8":                 "VOP3A",
	"v_mqsad_u8":                "VOP3A",
	"v_trig_preop_f64":          "VOP3A",
	"v_div_scale_f32":           "VOP3B",
	"v_div_scale_f64":           "VOP3B",
	"v_interp_p1_f32":           "VINTRP",
	"v_interp_p2_f32":           "VINTRP",
	"v_interp_mov_f32":          "VINTRP",
	"ds_add_u32":                "DS",
	"ds_sub_u32":                "DS",
	"ds_rsub_u32":               "DS",
	"ds_inc_u32":                "DS",
	"ds_dec_u32":                "DS",
	"ds_min_i32":                "DS",
	"ds_max_i32":                "DS",
	"ds_min_u32":                "DS",
	"ds_max_u32":                "DS",
	"ds_and_b32":                "DS",
	"ds_or_b32":                 "DS",
	"ds_xor_b32":                "DS",
	"ds_mskor_b32":              "DS",
	"ds_write_b32":              "DS",
	"ds_write2_b32":             "DS",
	"ds_write2st64_b32":         "DS",
	"ds_cmpst_b32":              "DS",
	"ds_cmpst_f32":              "DS",
	"ds_min_f32":                "DS",
	"ds_max_f32":                "DS",
	"ds_gws_init":               "DS",
	"ds_gws_sema_v":             "DS",
	"ds_gws_sema_br":            "DS",
	"ds_gws_sema_p":             "DS",
	"ds_gws_barrier":            "DS",
	"ds_write_b8":               "DS",
	"ds_write_b16":              "DS",
	"ds_add_rtn_u32":            "DS",
	"ds_sub_rtn_u32":            "DS",
	"ds_rsub_rtn_u32":           "DS",
	"ds_inc_rtn_u32":            "DS",
	"ds_dec_rtn_u32":            "DS",
	"ds_min_rtn_i32":            "DS",
	"ds_max_rtn_i32":            "DS",
	"ds_min_rtn_u32":            "DS",
	"ds_max_rtn_u32":            "DS",
	"ds_and_rtn_b32":            "DS",
	"ds_or_rtn_b32":             "DS",
	"ds_xor_rtn_b32":            "DS",
	"ds_mskor_rtn_b32":          "DS",
	"ds_wrxchg_rtn_b32":         "DS",
	"ds_wrxchg2st64_rtn_b32":    "DS",
	"ds_cmpst_rtn_b32":          "DS",
	"ds_cmpst_rtn_f32":          "DS",
	"ds_min_rtn_f32":            "DS",
	"ds_max_rtn_f32":            "DS",
	"ds_wrxchg2_rtn_b32":        "DS",
	"ds_swizzle_b32":            "DS",
	"ds_read_b32":               "DS",
	"ds_read2_b32":              "DS",
	"ds_read2st64_b32":          "DS",
	"ds_read_i8":                "DS",
	"ds_read_u8":                "DS",
	"ds_read_i16":               "DS",
	"ds_read_u16":               "DS",
	"ds_consume":                "DS",
	"ds_append":                 "DS",
	"ds_ordered_count":          "DS",
	"ds_add_u64":                "DS",
	"ds_sub_u64":                "DS",
	"ds_rsub_u64":               "DS",
	"ds_inc_u64":                "DS",
	"ds_dec_u64":                "DS",
	"ds_min_i64":                "DS",
	"ds_max_i64":                "DS",
	"ds_min_u64":                "DS",
	"ds_max_u64":                "DS",
	"ds_and_b64":                "DS",
	"ds_or_b64":                 "DS",
	"ds_xor_b64":                "DS",
	"ds_mskor_b64":              "DS",
	"ds_write_b64":              "DS",
	"ds_write2_b64":             "DS",
	"ds_write2st64_b64":         "DS",
	"ds_cmpst_b64":              "DS",
	"ds_cmpst_f64":              "DS",
	"ds_min_f64":                "DS",
	"ds_max_f64":                "DS",
	"ds_add_rtn_u64":            "DS",
	"ds_sub_rtn_u64":            "DS",
	"ds_rsub_rtn_u64":           "DS",
	"ds_inc_rtn_u64":            "DS",
	"ds_dec_rtn_u64":            "DS",
	"ds_min_rtn_i64":            "DS",
	"ds_max_rtn_i64":            "DS",
	"ds_min_rtn_u64":            "DS",
	"ds_max_rtn_u64":            "DS",
	"ds_and_rtn_b64":            "DS",
	"ds_or_rtn_b64":             "DS",
	"ds_xor_rtn_b64":            "DS",
	"ds_mskor_rtn_b64":          "DS",
	"ds_wrxchg_rtn_b64":         "DS",
	"ds_wrxchg2_rtn_b64":        "DS",
	"ds_wrxchg2st64_rtn_b64":    "DS",
	"ds_cmpst_rtn_b64":          "DS",
	"ds_cmpst_rtn_f64":          "DS",
	"ds_min_rtn_f64":            "DS",
	"ds_max_rtn_f64":            "DS",
	"ds_read_b64":               "DS",
	"ds_read2_b64":              "DS",
	"ds_read2st64_b64":          "DS",
	"ds_add_src2_u32":           "DS",
	"ds_sub_src2_u32":           "DS",
	"ds_rsub_src2_u32":          "DS",
	"ds_inc_src2_u32":           "DS",
	"ds_dec_src2_u32":           "DS",
	"ds_min_src2_i32":           "DS",
	"ds_max_src2_i32":           "DS",
	"ds_min_src2_u32":           "DS",
	"ds_max_src2_u32":           "DS",
	"ds_and_src2_b32":           "DS",
	"ds_or_src2_b32":            "DS",
	"ds_xor_src2_b32":           "DS",
	"ds_write_src2_b32":         "DS",
	"ds_min_src2_f32":           "DS",
	"ds_max_src2_f32":           "DS",
	"ds_add_src2_u64":           "DS",
	"ds_sub_src2_u64":           "DS",
	"ds_rsub_src2_u64":          "DS",
	"ds_inc_src2_u64":           "DS",
	"ds_dec_src2_u64":           "DS",
	"ds_min_src2_i64":           "DS",
	"ds_max_src2_i64":           "DS",
	"ds_min_src2_u64":           "DS",
	"ds_max_src2_u64":           "DS",
	"ds_and_src2_b64":           "DS",
	"ds_or_src2_b64":            "DS",
	"ds_xor_src2_b64":           "DS",
	"ds_write_src2_b64":         "DS",
	"ds_min_src2_f64":           "DS",
	"ds_max_src2_f64":           "DS",
	"buffer_load_format_x":      "MUBUF",
	"buffer_load_format_xy":     "MUBUF",
	"buffer_load_format_xyz":    "MUBUF",
	"buffer_load_format_xyzw":   "MUBUF",
	"buffer_store_format_x":     "MUBUF",
	"buffer_store_format_xy":    "MUBUF",
	"buffer_store_format_xyz":   "MUBUF",
	"buffer_store_format_xyzw":  "MUBUF",
	"buffer_load_ubyte":         "MUBUF",
	"buffer_load_sbyte":         "MUBUF",
	"buffer_load_ushort":        "MUBUF",
	"buffer_load_sshort":        "MUBUF",
	"buffer_load_dword":         "MUBUF",
	"buffer_load_dwordx2":       "MUBUF",
	"buffer_load_dwordx4":       "MUBUF",
	"buffer_store_byte":         "MUBUF",
	"buffer_store_short":        "MUBUF",
	"buffer_store_dword":        "MUBUF",
	"buffer_store_dwordx2":      "MUBUF",
	"buffer_store_dwordx4":      "MUBUF",
	"buffer_atomic_swap":        "MUBUF",
	"buffer_atomic_cmpswap":     "MUBUF",
	"buffer_atomic_add":         "MUBUF",
	"buffer_atomic_sub":         "MUBUF",
	"buffer_atomic_rsub":        "MUBUF",
	"buffer_atomic_smin":        "MUBUF",
	"buffer_atomic_umin":        "MUBUF",
	"buffer_atomic_smax":        "MUBUF",
	"buffer_atomic_umax":        "MUBUF",
	"buffer_atomic_and":         "MUBUF",
	"buffer_atomic_or":          "MUBUF",
	"buffer_atomic_xor":         "MUBUF",
	"buffer_atomic_inc":         "MUBUF",
	"buffer_atomic_dec":         "MUBUF",
	"buffer_atomic_fcmpswap":    "MUBUF",
	"buffer_atomic_fmin":        "MUBUF",
	"buffer_atomic_fmax":        "MUBUF",
	"buffer_atomic_swap_x2":     "MUBUF",
	"buffer_atomic_cmpswap_x2":  "MUBUF",
	"buffer_atomic_add_x2":      "MUBUF",
	"buffer_atomic_sub_x2":      "MUBUF",
	"buffer_atomic_rsub_x2":     "MUBUF",
	"buffer_atomic_smin_x2":     "MUBUF",
	"buffer_atomic_umin_x2":     "MUBUF",
	"buffer_atomic_smax_x2":     "MUBUF",
	"buffer_atomic_umax_x2":     "MUBUF",
	"buffer_atomic_and_x2":      "MUBUF",
	"buffer_atomic_or_x2":       "MUBUF",
	"buffer_atomic_xor_x2":      "MUBUF",
	"buffer_atomic_inc_x2":      "MUBUF",
	"buffer_atomic_dec_x2":      "MUBUF",
	"buffer_atomic_fcmpswap_x2": "MUBUF",
	"buffer_atomic_fmin_x2":     "MUBUF",
	"buffer_atomic_fmax_x2":     "MUBUF",
	"buffer_wbinvl1_sc":         "MUBUF",
	"buffer_wbinvl1":            "MUBUF",
	"tbuffer_load_format_x":     "MTBUF",
	"tbuffer_load_format_xy":    "MTBUF",
	"tbuffer_load_format_xyz":   "MTBUF",
	"tbuffer_load_format_xyzw":  "MTBUF",
	"tbuffer_store_format_x":    "MTBUF",
	"tbuffer_store_format_xy":   "MTBUF",
	"tbuffer_store_format_xyz":  "MTBUF",
	"tbuffer_store_format_xyzw": "MTBUF",
	"image_load":                "MIMG",
	"image_load_mip":            "MIMG",
	"image_load_pck":            "MIMG",
	"image_load_pck_sgn":        "MIMG",
	"image_load_mip_pck":        "MIMG",
	"image_load_mip_pck_sgn":    "MIMG",
	"image_store":               "MIMG",
	"image_store_mip":           "MIMG",
	"image_store_pck":           "MIMG",
	"image_store_mip_pck":       "MIMG",
	"image_atomic_swap":         "MIMG",
	"image_atomic_cmpswap":      "MIMG",
	"image_atomic_add":          "MIMG",
	"image_atomic_sub":          "MIMG",
	"image_atomic_rsub":         "MIMG",
	"image_atomic_smin":         "MIMG",
	"image_atomic_umin":         "MIMG",
	"image_atomic_smax":         "MIMG",
	"image_atomic_umax":         "MIMG",
	"image_atomic_and":          "MIMG",
	"image_atomic_or":           "MIMG",
	"image_atomic_xor":          "MIMG",
	"image_atomic_inc":          "MIMG",
	"image_atomic_dec":          "MIMG",
	"image_atomic_fcmpswap":     "MIMG",
	"image_atomic_fmin":         "MIMG",
	"image_atomic_fmax":         "MIMG",
	"image_sample":              "MIMG",
	"image_sample_cl":           "MIMG",
	"image_sample_d":            "MIMG",
	"image_sample_d_cl":         "MIMG",
	"image_sample_l":            "MIMG",
	"image_sample_b":            "MIMG",
	"image_sample_b_cl":         "MIMG",
	"image_sample_lz":           "MIMG",
	"image_sample_c":            "MIMG",
	"image_sample_c_cl":         "MIMG",
	"image_sample_c_d":          "MIMG",
	"image_sample_c_d_cl":       "MIMG",
	"image_sample_c_l":          "MIMG",
	"image_sample_c_b":          "MIMG",
	"image_sample_c_b_cl":       "MIMG",
	"image_sample_c_lz":         "MIMG",
	"image_sample_o":            "MIMG",
	"image_sample_cl_o":         "MIMG",
	"image_sample_d_o":          "MIMG",
	"image_sample_d_cl_o":       "MIMG",
	"image_sample_l_o":          "MIMG",
	"image_sample_b_o":          "MIMG",
	"image_sample_b_cl_o":       "MIMG",
	"image_sample_lz_o":         "MIMG",
	"image_sample_c_o":          "MIMG",
	"image_sample_c_cl_o":       "MIMG",
	"image_sample_c_d_o":        "MIMG",
	"image_sample_c_d_cl_o":     "MIMG",
	"image_sample_c_l_o":        "MIMG",
	"image_sample_c_b_o":        "MIMG",
	"image_sample_c_b_cl_o":     "MIMG",
	"image_sample_c_lz_o":       "MIMG",
	"image_sample_cd":           "MIMG",
	"image_sample_cd_cl":        "MIMG",
	"image_sample_c_cd":         "MIMG",
	"image_sample_c_cd_cl":      "MIMG",
	"image_sample_cd_o":         "MIMG",
	"image_sample_cd_cl_o":      "MIMG",
	"image_sample_c_cd_o":       "MIMG",
	"image_sample_c_cd_cl_o":    "MIMG",
	"image_gather4":             "MIMG",
	"image_gather4_cl":          "MIMG",
	"image_gather4_l":           "MIMG",
	"image_gather4_b":           "MIMG",
	"image_gather4_b_cl":        "MIMG",
	"image_gather4_lz":          "MIMG",
	"image_gather4_c":           "MIMG",
	"image_gather4_c_cl":        "MIMG",
	"image_gather4_c_l":         "MIMG",
	"image_gather4_c_b":         "MIMG",
	"image_gather4_c_b_cl":      "MIMG",
	"image_gather4_c_lz":        "MIMG",
	"image_gather4_o":           "MIMG",
	"image_gather4_cl_o":        "MIMG",
	"image_gather4_l_o":         "MIMG",
	"image_gather4_b_o":         "MIMG",
	"image_gather4_b_cl_o":      "MIMG",
	"image_gather4_lz_o":        "MIMG",
	"image_gather4_c_o":         "MIMG",
	"image_gather4_c_cl_o":      "MIMG",
	"image_gather4_c_l_o":       "MIMG",
	"image_gather4_c_b_o":       "MIMG",
	"image_gather4_c_b_cl_o":    "MIMG",
	"image_gather4_c_lz_o":      "MIMG",
	"image_get_resinfo":         "MIMG",
	"image_get_lod":             "MIMG",
	"export":                    "EXP",
}
