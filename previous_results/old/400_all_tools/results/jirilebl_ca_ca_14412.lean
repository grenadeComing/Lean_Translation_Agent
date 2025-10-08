import Mathlib

/-- If |z| = |w|, then |z + w| = |z - w| iff z * conj w is purely imaginary (i.e. its real part is 0). -/
theorem abs_add_eq_abs_sub_iff_mul_conj_real_zero {z w : ℂ} (h : Complex.abs z = Complex.abs w) :
  Complex.abs (z + w) = Complex.abs (z - w) ↔ (z * Star.star w).re = 0 := by sorry
