import Mathlib

/-!
Simple bounds for complex hyperbolic functions.
We state the inequalities as requested and leave the proofs as `by sorry`.
-/

open Complex

theorem abs_sinh_le_half_exp_abs (z : ℂ) :
  Complex.abs (Complex.sinh z) ≤ (1 : ℝ) / 2 * Real.exp (Complex.abs z) := by sorry

theorem abs_cosh_le_half_exp_abs (z : ℂ) :
  Complex.abs (Complex.cosh z) ≤ (1 : ℝ) / 2 * Real.exp (Complex.abs z) := by sorry
