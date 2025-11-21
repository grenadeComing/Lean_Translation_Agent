import Mathlib

open Complex

theorem abs_add_eq_abs_sub_iff_mul_conj_pure_imag {z w : ℂ} (h : |z| = |w|) :
  |z + w| = |z - w| ↔ ( (z * conj w).re = 0 ) := by sorry