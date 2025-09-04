import Mathlib

/-!
Simple statements: bounds for complex sine and cosine.
We state the inequalities; proofs are omitted ("by sorry").
-/

theorem abs_sin_le_half_exp_abs (z : Complex) :
  Complex.abs (Complex.sin z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry

theorem abs_cos_le_half_exp_abs (z : Complex) :
  Complex.abs (Complex.cos z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry
