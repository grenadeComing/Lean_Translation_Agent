import Mathlib

/-- For complex numbers z and w with |z| = |w|, we have |z + w| = |z - w| iff z * w.conj has real part 0. -/
theorem abs_add_eq_abs_sub_iff_re_mul_conj_eq_zero {z w : ℂ} (h : Complex.abs z = Complex.abs w) :
  Complex.abs (z + w) = Complex.abs (z - w) ↔ (z * w.conj).re = 0 := by sorry