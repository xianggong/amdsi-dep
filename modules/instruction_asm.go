package amdsidep

import "fmt"

const (
	ROLE_IVD = iota
	ROLE_SRC = iota
	ROLE_DST = iota
	ROLE_LIT = iota
)

func IsScalarMemoryInstruction(instText string) bool {
	if _, ok := instScalarMemoryInstruction[instText]; ok {
		return true
	}

	return false
}

func IsVectorMemoryInstruction(instText string) bool {
	if _, ok := instVectorMemoryInstruction[instText]; ok {
		return true
	}

	return false
}

func IsLDSMemoryInstruction(instText string) bool {
	if _, ok := instLDSMemoryInstruction[instText]; ok {
		return true
	}

	return false
}

func GetInstRegRoleByIndex(instText string, index int) int {
	if role, ok := instRegRole[instText]; ok {
		if index < len(role) {
			return role[index]
		} else {
			return ROLE_IVD
		}
	}

	fmt.Printf("No instruction in role table: %s\n", instText)
	return ROLE_IVD
}

var instScalarMemoryInstruction = map[string]bool{
	"s_load_dwordx2":         true,
	"s_load_dwordx4":         true,
	"s_load_dwordx8":         true,
	"s_load_dwordx16":        true,
	"s_buffer_load_dword":    true,
	"s_buffer_load_dwordx2":  true,
	"s_buffer_load_dwordx4":  true,
	"s_buffer_load_dwordx8":  true,
	"s_buffer_load_dwordx16": true,
}

var instVectorMemoryInstruction = map[string]bool{
	"buffer_load_sbyte":         true,
	"buffer_load_dword":         true,
	"buffer_store_byte":         true,
	"buffer_store_dword":        true,
	"buffer_atomic_add":         true,
	"tbuffer_load_format_x":     true,
	"tbuffer_load_format_xy":    true,
	"tbuffer_load_format_xyz":   true,
	"tbuffer_load_format_xyzw":  true,
	"tbuffer_store_format_x":    true,
	"tbuffer_store_format_xy":   true,
	"tbuffer_store_format_xyzw": true,
}

var instLDSMemoryInstruction = map[string]bool{
	"ds_write_b32":  true,
	"ds_write2_b32": true,
	"ds_write_b8":   true,
	"ds_write_b16":  true,
	"ds_read_b32":   true,
	"ds_read2_b32":  true,
	"ds_read_i8":    true,
	"ds_read_u8":    true,
	"ds_read_i16":   true,
	"ds_read_u16":   true,
}

var instRegRole = map[string][]int{
	"s_add_u32":                 {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"s_add_i32":                 {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"s_sub_i32":                 {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"s_min_u32":                 {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"s_max_i32":                 {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"s_max_u32":                 {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"s_cselect_b32":             {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"s_and_b32":                 {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"s_and_b64":                 {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"s_or_b32":                  {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"s_or_b64":                  {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"s_xor_b64":                 {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"s_andn2_b64":               {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"s_nand_b64":                {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"s_lshl_b32":                {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"s_lshr_b32":                {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"s_ashr_i32":                {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"s_mul_i32":                 {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"s_bfe_i32":                 {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"s_movk_i32":                {ROLE_DST},
	"s_cmpk_le_u32":             {ROLE_DST},
	"s_addk_i32":                {ROLE_DST},
	"s_mulk_i32":                {ROLE_DST},
	"s_mov_b32":                 {ROLE_DST, ROLE_SRC},
	"s_mov_b64":                 {ROLE_DST, ROLE_SRC},
	"s_not_b32":                 {ROLE_DST, ROLE_SRC},
	"s_wqm_b64":                 {ROLE_DST, ROLE_SRC},
	"s_swappc_b64":              {ROLE_DST, ROLE_SRC},
	"s_and_saveexec_b64":        {ROLE_DST, ROLE_SRC},
	"s_cmp_eq_i32":              {ROLE_SRC, ROLE_SRC},
	"s_cmp_gt_i32":              {ROLE_SRC, ROLE_SRC},
	"s_cmp_ge_i32":              {ROLE_SRC, ROLE_SRC},
	"s_cmp_lt_i32":              {ROLE_SRC, ROLE_SRC},
	"s_cmp_le_i32":              {ROLE_SRC, ROLE_SRC},
	"s_cmp_gt_u32":              {ROLE_SRC, ROLE_SRC},
	"s_cmp_ge_u32":              {ROLE_SRC, ROLE_SRC},
	"s_cmp_le_u32":              {ROLE_SRC, ROLE_SRC},
	"s_endpgm":                  {},
	"s_branch":                  {},
	"s_cbranch_scc0":            {},
	"s_cbranch_scc1":            {},
	"s_cbranch_vccz":            {},
	"s_cbranch_vccnz":           {},
	"s_cbranch_execz":           {},
	"s_cbranch_execnz":          {},
	"s_barrier":                 {},
	"s_waitcnt":                 {},
	"s_load_dwordx2":            {ROLE_DST, ROLE_SRC},
	"s_load_dwordx4":            {ROLE_DST, ROLE_SRC},
	"s_load_dwordx8":            {ROLE_DST, ROLE_SRC},
	"s_load_dwordx16":           {ROLE_DST, ROLE_SRC},
	"s_buffer_load_dword":       {ROLE_DST, ROLE_SRC},
	"s_buffer_load_dwordx2":     {ROLE_DST, ROLE_SRC},
	"s_buffer_load_dwordx4":     {ROLE_DST, ROLE_SRC},
	"s_buffer_load_dwordx8":     {ROLE_DST, ROLE_SRC},
	"s_buffer_load_dwordx16":    {ROLE_DST, ROLE_SRC},
	"v_min_f32":                 {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"v_min_i32":                 {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"v_max_i32":                 {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"v_min_u32":                 {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"v_max_u32":                 {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"v_lshrrev_b32":             {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"v_ashrrev_i32":             {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"v_lshl_b32":                {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"v_lshlrev_b32":             {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"v_and_b32":                 {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"v_or_b32":                  {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"v_xor_b32":                 {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"v_bfm_b32":                 {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"v_mac_f32":                 {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"v_madmk_f32":               {ROLE_DST, ROLE_SRC, ROLE_LIT, ROLE_SRC},
	"v_add_i32":                 {ROLE_DST, ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_sub_i32":                 {ROLE_DST, ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_sub_f32":                 {ROLE_DST, ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_subrev_i32":              {ROLE_DST, ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_cvt_pkrtz_f16_f32":       {ROLE_DST, ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_nop":                     {},
	"v_mov_b32":                 {ROLE_DST, ROLE_SRC},
	"v_readfirstlane_b32":       {ROLE_DST, ROLE_SRC},
	"v_cvt_i32_f64":             {ROLE_DST, ROLE_SRC},
	"v_cvt_f64_i32":             {ROLE_DST, ROLE_SRC},
	"v_cvt_f32_i32":             {ROLE_DST, ROLE_SRC},
	"v_cvt_f32_u32":             {ROLE_DST, ROLE_SRC},
	"v_cvt_u32_f32":             {ROLE_DST, ROLE_SRC},
	"v_cvt_i32_f32":             {ROLE_DST, ROLE_SRC},
	"v_cvt_f32_f64":             {ROLE_DST, ROLE_SRC},
	"v_cvt_f64_f32":             {ROLE_DST, ROLE_SRC},
	"v_cvt_f64_u32":             {ROLE_DST, ROLE_SRC},
	"v_trunc_f32":               {ROLE_DST, ROLE_SRC},
	"v_floor_f32":               {ROLE_DST, ROLE_SRC},
	"v_log_f32":                 {ROLE_DST, ROLE_SRC},
	"v_rcp_f32":                 {ROLE_DST, ROLE_SRC},
	"v_rsq_f32":                 {ROLE_DST, ROLE_SRC},
	"v_rcp_f64":                 {ROLE_DST, ROLE_SRC},
	"v_rsq_f64":                 {ROLE_DST, ROLE_SRC},
	"v_sqrt_f32":                {ROLE_DST, ROLE_SRC},
	"v_sin_f32":                 {ROLE_DST, ROLE_SRC},
	"v_cos_f32":                 {ROLE_DST, ROLE_SRC},
	"v_not_b32":                 {ROLE_DST, ROLE_SRC},
	"v_ffbh_u32":                {ROLE_DST, ROLE_SRC},
	"v_fract_f64":               {ROLE_DST, ROLE_SRC},
	"v_movreld_b32":             {ROLE_DST, ROLE_SRC},
	"v_movrels_b32":             {ROLE_DST, ROLE_SRC},
	"v_cmp_lt_f32":              {ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_cmp_gt_f32":              {ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_cmp_ge_f32":              {ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_cmp_ngt_f32":             {ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_cmp_neq_f32":             {ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_cmp_lt_f64":              {ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_cmp_eq_f64":              {ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_cmp_le_f64":              {ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_cmp_gt_f64":              {ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_cmp_nge_f64":             {ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_cmp_neq_f64":             {ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_cmp_nlt_f64":             {ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_cmp_lt_i32":              {ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_cmp_eq_i32":              {ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_cmp_le_i32":              {ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_cmp_gt_i32":              {ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_cmp_ne_i32":              {ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_cmp_ge_i32":              {ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_cmp_class_f64":           {ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_cmp_lt_u32":              {ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_cmp_eq_u32":              {ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_cmp_le_u32":              {ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_cmp_gt_u32":              {ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_cmp_ne_u32":              {ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_cmp_ge_u32":              {ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_cndmask_b32":             {ROLE_DST, ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_add_f32":                 {ROLE_DST, ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_subrev_f32":              {ROLE_DST, ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_mul_legacy_f32":          {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"v_mul_f32":                 {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"v_mul_i32_i24":             {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"v_max_f32":                 {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"v_mad_f32":                 {ROLE_DST, ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_mad_u32_u24":             {ROLE_DST, ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_bfe_u32":                 {ROLE_DST, ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_bfe_i32":                 {ROLE_DST, ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_bfi_b32":                 {ROLE_DST, ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_fma_f32":                 {ROLE_DST, ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_fma_f64":                 {ROLE_DST, ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_alignbit_b32":            {ROLE_DST, ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_div_fixup_f64":           {ROLE_DST, ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_lshl_b64":                {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"v_mul_lo_u32":              {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"v_mul_hi_u32":              {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"v_mul_lo_i32":              {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"v_div_fmas_f64":            {ROLE_DST, ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_fract_f32":               {ROLE_DST, ROLE_SRC},
	"v_cmp_eq_f32":              {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"v_cmp_le_f32":              {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"v_cmp_nle_f32":             {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"v_cmp_nlt_f32":             {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"v_cmpx_eq_i32":             {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"v_med3_i32":                {ROLE_DST, ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_lshr_b64":                {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"v_add_f64":                 {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"v_mul_f64":                 {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"v_ldexp_f64":               {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"v_addc_u32":                {ROLE_DST, ROLE_DST, ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"v_div_scale_f64":           {ROLE_DST, ROLE_DST, ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"ds_add_u32":                {ROLE_DST, ROLE_SRC},
	"ds_inc_u32":                {ROLE_DST, ROLE_SRC},
	"ds_write_b32":              {ROLE_DST, ROLE_SRC},
	"ds_write2_b32":             {ROLE_DST, ROLE_SRC, ROLE_SRC},
	"ds_write_b8":               {ROLE_DST, ROLE_SRC},
	"ds_write_b16":              {ROLE_DST, ROLE_SRC},
	"ds_read_b32":               {ROLE_DST, ROLE_SRC},
	"ds_read2_b32":              {ROLE_DST, ROLE_SRC},
	"ds_read_i8":                {ROLE_DST, ROLE_SRC},
	"ds_read_u8":                {ROLE_DST, ROLE_SRC},
	"ds_read_i16":               {ROLE_DST, ROLE_SRC},
	"ds_read_u16":               {ROLE_DST, ROLE_SRC},
	"buffer_load_sbyte":         {ROLE_DST, ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"buffer_load_dword":         {ROLE_DST, ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"buffer_store_byte":         {ROLE_SRC, ROLE_DST, ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"buffer_store_dword":        {ROLE_SRC, ROLE_DST, ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"buffer_atomic_add":         {ROLE_DST, ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"tbuffer_load_format_x":     {ROLE_DST, ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"tbuffer_load_format_xy":    {ROLE_DST, ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"tbuffer_load_format_xyz":   {ROLE_DST, ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"tbuffer_load_format_xyzw":  {ROLE_DST, ROLE_SRC, ROLE_SRC, ROLE_SRC},
	"tbuffer_store_format_x":    {ROLE_SRC, ROLE_DST, ROLE_SRC, ROLE_SRC},
	"tbuffer_store_format_xy":   {ROLE_SRC, ROLE_DST, ROLE_SRC, ROLE_SRC},
	"tbuffer_store_format_xyzw": {ROLE_SRC, ROLE_DST, ROLE_SRC, ROLE_SRC},
	"image_store":               {ROLE_SRC, ROLE_DST, ROLE_SRC},
	"image_sample":              {ROLE_DST, ROLE_SRC, ROLE_SRC, ROLE_SRC},
}
