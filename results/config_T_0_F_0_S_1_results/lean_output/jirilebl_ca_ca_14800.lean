import Mathlib

/-!
Two inequalities for complex hyperbolic sine and cosine:
For all z : ℂ,
  |sinh z| ≤ 1/2 * exp |z|  and  |cosh z| ≤ 1/2 * exp |z|.
These statements are given here without proof.
-/

theorem abs_sinh_le_half_exp_abs (z : ℂ) :
  Complex.abs (Complex.sinh z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry

theorem abs_cosh_le_half_exp_abs (z : ℂ) :
  Complex.abs (Complex.cosh z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry
