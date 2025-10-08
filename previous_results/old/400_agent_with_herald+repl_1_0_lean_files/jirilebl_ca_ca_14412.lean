import Mathlib

theorem abs_add_eq_abs_sub_iff_pure_imag {z w : Complex} (h : Complex.abs z = Complex.abs w) :
  Complex.abs (z + w) = Complex.abs (z - w) ↔ (z * Complex.conj w).re = 0 := by sorry
