import Mathlib

lemma abs_sin_le_exp (z : Complex) :
  Complex.abs (Complex.sin z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry

lemma abs_cos_le_exp (z : Complex) :
  Complex.abs (Complex.cos z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry
