package amdsidep

import "fmt"

func GetInstAsmDstCount(key string) int {
	if fmt, ok := instAsmDstCount[key]; ok {
		return fmt
	}

	fmt.Printf("Invalid instruction key %s\n", key)
	return 0
}

var instAsmDstCount = map[string]int{
	"s_add_u32":                 1,
	"s_add_i32":                 1,
	"s_sub_i32":                 1,
	"s_min_u32":                 1,
	"s_max_i32":                 1,
	"s_max_u32":                 1,
	"s_cselect_b32":             1,
	"s_and_b32":                 1,
	"s_and_b64":                 1,
	"s_or_b32":                  1,
	"s_or_b64":                  1,
	"s_xor_b64":                 1,
	"s_andn2_b64":               1,
	"s_nand_b64":                1,
	"s_lshl_b32":                1,
	"s_lshr_b32":                1,
	"s_ashr_i32":                1,
	"s_mul_i32":                 1,
	"s_bfe_i32":                 1,
	"s_movk_i32":                1,
	"s_cmpk_le_u32":             1,
	"s_addk_i32":                1,
	"s_mulk_i32":                1,
	"s_mov_b32":                 1,
	"s_mov_b64":                 1,
	"s_not_b32":                 1,
	"s_wqm_b64":                 1,
	"s_swappc_b64":              1,
	"s_and_saveexec_b64":        1,
	"s_cmp_eq_i32":              0,
	"s_cmp_gt_i32":              0,
	"s_cmp_ge_i32":              0,
	"s_cmp_lt_i32":              0,
	"s_cmp_le_i32":              0,
	"s_cmp_eq_u32":              0,
	"s_cmp_gt_u32":              0,
	"s_cmp_ge_u32":              0,
	"s_cmp_le_u32":              0,
	"s_endpgm":                  0,
	"s_branch":                  0,
	"s_cbranch_scc0":            0,
	"s_cbranch_scc1":            0,
	"s_cbranch_vccz":            0,
	"s_cbranch_vccnz":           0,
	"s_cbranch_execz":           0,
	"s_cbranch_execnz":          0,
	"s_barrier":                 0,
	"s_waitcnt":                 0,
	"s_load_dwordx2":            1,
	"s_load_dwordx4":            1,
	"s_load_dwordx8":            1,
	"s_load_dwordx16":           1,
	"s_buffer_load_dword":       1,
	"s_buffer_load_dwordx2":     1,
	"s_buffer_load_dwordx4":     1,
	"s_buffer_load_dwordx8":     1,
	"s_buffer_load_dwordx16":    1,
	"v_add_f32":                 1,
	"v_sub_f32":                 1,
	"v_subrev_f32":              1,
	"v_mac_legacy_f32":          1,
	"v_mul_legacy_f32":          1,
	"v_mul_i32_i24":             1,
	"v_min_f32":                 1,
	"v_max_f32":                 1,
	"v_min_i32":                 1,
	"v_max_i32":                 1,
	"v_min_u32":                 1,
	"v_max_u32":                 1,
	"v_lshrrev_b32":             1,
	"v_ashrrev_i32":             1,
	"v_lshl_b32":                1,
	"v_lshlrev_b32":             1,
	"v_and_b32":                 1,
	"v_or_b32":                  1,
	"v_xor_b32":                 1,
	"v_bfm_b32":                 1,
	"v_mac_f32":                 1,
	"v_madmk_f32":               1,
	"v_add_i32":                 2,
	"v_sub_i32":                 2,
	"v_subrev_i32":              2,
	"v_cvt_pkrtz_f16_f32":       2,
	"v_nop":                     0,
	"v_mov_b32":                 1,
	"v_readfirstlane_b32":       1,
	"v_cvt_i32_f64":             1,
	"v_cvt_f64_i32":             1,
	"v_cvt_f32_i32":             1,
	"v_cvt_f32_u32":             1,
	"v_cvt_u32_f32":             1,
	"v_cvt_i32_f32":             1,
	"v_cvt_f32_f64":             1,
	"v_cvt_f64_f32":             1,
	"v_cvt_f64_u32":             1,
	"v_trunc_f32":               1,
	"v_floor_f32":               1,
	"v_log_f32":                 1,
	"v_rcp_f32":                 1,
	"v_rsq_f32":                 1,
	"v_rcp_f64":                 1,
	"v_rsq_f64":                 1,
	"v_sqrt_f32":                1,
	"v_sin_f32":                 1,
	"v_cos_f32":                 1,
	"v_not_b32":                 1,
	"v_ffbh_u32":                1,
	"v_fract_f64":               1,
	"v_movreld_b32":             1,
	"v_movrels_b32":             1,
	"v_cndmask_b32":             1,
	"v_mul_f32":                 1,
	"v_mad_f32":                 1,
	"v_mad_u32_u24":             1,
	"v_bfe_u32":                 1,
	"v_bfe_i32":                 1,
	"v_bfi_b32":                 1,
	"v_fma_f32":                 1,
	"v_fma_f64":                 1,
	"v_alignbit_b32":            1,
	"v_div_fixup_f64":           1,
	"v_lshl_b64":                1,
	"v_mul_lo_u32":              1,
	"v_mul_hi_u32":              1,
	"v_mul_lo_i32":              1,
	"v_div_fmas_f64":            1,
	"v_fract_f32":               1,
	"v_cmp_lt_f32":              1,
	"v_cmp_eq_f32":              1,
	"v_cmp_le_f32":              1,
	"v_cmp_gt_f32":              1,
	"v_cmp_nle_f32":             1,
	"v_cmp_neq_f32":             1,
	"v_cmp_nlt_f32":             1,
	"v_cmp_ngt_f32":             1,
	"v_cmp_VOP3_OP16_f64":       1,
	"v_cmp_f_f64":               1,
	"v_cmp_lt_i32":              1,
	"v_cmp_eq_i32":              1,
	"v_cmp_le_i32":              1,
	"v_cmp_gt_i32":              1,
	"v_cmp_ne_i32":              1,
	"v_cmp_ge_i32":              1,
	"v_cmpx_eq_i32":             1,
	"v_cmp_class_f64":           1,
	"v_cmp_lt_u32":              1,
	"v_cmp_le_u32":              1,
	"v_cmp_gt_u32":              1,
	"v_cmp_lg_u32":              1,
	"v_cmp_ge_u32":              1,
	"v_cmp_lt_u64":              1,
	"v_med3_i32":                1,
	"v_lshr_b64":                1,
	"v_add_f64":                 1,
	"v_mul_f64":                 1,
	"v_ldexp_f64":               1,
	"v_addc_u32":                2,
	"v_div_scale_f64":           2,
	"ds_add_u32":                1,
	"ds_inc_u32":                1,
	"ds_write_b32":              1,
	"ds_write2_b32":             1,
	"ds_write_b8":               1,
	"ds_write_b16":              1,
	"ds_read_b32":               1,
	"ds_read2_b32":              1,
	"ds_read_i8":                1,
	"ds_read_u8":                1,
	"ds_read_i16":               1,
	"ds_read_u16":               1,
	"buffer_load_sbyte":         1,
	"buffer_load_dword":         1,
	"buffer_store_byte":         1,
	"buffer_store_dword":        1,
	"buffer_atomic_add":         1,
	"tbuffer_load_format_x":     1,
	"tbuffer_load_format_xy":    1,
	"tbuffer_load_format_xyz":   1,
	"tbuffer_load_format_xyzw":  1,
	"tbuffer_store_format_x":    1,
	"tbuffer_store_format_xy":   1,
	"tbuffer_store_format_xyzw": 1,
	"image_store":               1,
	"image_sample":              1,
}
