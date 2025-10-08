import Mathlib

theorem complex_abs_add_eq_abs_sub_iff_pure_imag {z w : ℂ} (h : Complex.abs z = Complex.abs w) :
  Complex.abs (z + w) = Complex.abs (z - w) ↔ (z * Star.star w).re = 0 := by
  sorry
