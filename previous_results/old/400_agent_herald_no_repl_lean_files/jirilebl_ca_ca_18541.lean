import Mathlib

/--
If z and w are complex numbers with the same modulus, then |z + w| = |z - w|
iff z * conj w is purely imaginary. We express "purely imaginary" by saying
that the real part is zero.
-/
theorem abs_add_eq_abs_sub_iff_mul_conj_re_eq_zero (z w : ℂ)
  (h : Complex.abs z = Complex.abs w) :
  Complex.abs (z + w) = Complex.abs (z - w) ↔ (z * Complex.conj w).re = 0 := by sorry
