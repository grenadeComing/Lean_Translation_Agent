import Mathlib

/-
If z,w ∈ ℂ and |z| = |w| then |z+w| = |z-w| ↔ z * conj w is purely imaginary.
We avoid Complex.abs (deprecated) and express norms via re^2 + im^2.
-/

theorem complex_abs_add_eq_abs_sub_iff_mul_conj_re_zero (z w : ℂ)
  (h : z.re ^ 2 + z.im ^ 2 = w.re ^ 2 + w.im ^ 2) :
  ( (z + w).re ^ 2 + (z + w).im ^ 2 = (z - w).re ^ 2 + (z - w).im ^ 2 ) ↔
    (z * (↑w.re - Complex.I * ↑w.im)).re = 0 := by sorry
