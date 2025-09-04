import Mathlib

open Complex

theorem sin_abs_le_half_exp_abs (z : ℂ) : Complex.abs (Complex.sin z) ≤ (1/2 : ℝ) * Real.exp (Complex.abs z) := by
  sorry

theorem cos_abs_le_half_exp_abs (z : ℂ) : Complex.abs (Complex.cos z) ≤ (1/2 : ℝ) * Real.exp (Complex.abs z) := by
  sorry
