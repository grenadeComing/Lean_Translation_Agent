import Mathlib

theorem complex_abs_add_eq_abs_sub_iff_mul_conj_is_imaginary {z w : ℂ}
  (h : Complex.abs z = Complex.abs w) :
  Complex.abs (z + w) = Complex.abs (z - w) ↔ Complex.re (z * Complex.conj w) = 0 := by sorry