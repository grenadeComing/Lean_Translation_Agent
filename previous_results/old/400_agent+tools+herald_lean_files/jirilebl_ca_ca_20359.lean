import Mathlib

open Complex

theorem abs_sin_le_half_exp (z : ℂ) : Complex.abs (Complex.sin z) ≤ (1/2 : ℝ) * Real.exp (Complex.abs z) := by
  sorry

theorem abs_cos_le_half_exp (z : ℂ) : Complex.abs (Complex.cos z) ≤ (1/2 : ℝ) * Real.exp (Complex.abs z) := by
  sorry
