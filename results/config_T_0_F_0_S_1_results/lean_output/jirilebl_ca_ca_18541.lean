import Mathlib

open Complex

theorem abs_add_eq_abs_sub_iff_re_mul_conj_eq_zero {z w : ℂ} (h : abs z = abs w) :
  abs (z + w) = abs (z - w) ↔ re (z * conj w) = 0 := by sorry