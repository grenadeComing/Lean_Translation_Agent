import Mathlib

/-- If z, w : ℂ and |z| = |w| then |z + w| = |z - w| ↔ z * (conj w) is purely imaginary, expressed as (z * star w).re = 0. -/
theorem abs_add_eq_abs_sub_iff_pure_imaginary {z w : ℂ} (h : Complex.abs z = Complex.abs w) :
  Complex.abs (z + w) = Complex.abs (z - w) ↔ (z * star w).re = 0 := by sorry
