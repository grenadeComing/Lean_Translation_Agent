import Mathlib

/-!
Prove that if z, w ∈ ℂ and |z| = |w|, then |z + w| = |z - w| iff z * conj w is purely imaginary.
We express "purely imaginary" as the real part being zero and use `star w` for the conjugate.
-/

theorem complex_abs_eq_iff_re_z_mul_conj_w_zero {z w : ℂ} (h : Complex.abs z = Complex.abs w) :
  Complex.abs (z + w) = Complex.abs (z - w) ↔ (z * (star w)).re = 0 := by
  sorry
