import Mathlib

theorem exp_series_tail_bound (z : ℂ) (n : ℕ) :
  abs (∑ k in Finset.range (n + 1), z ^ k / (k! : ℂ) - Complex.exp z)
    ≤ (abs z) ^ (n + 1) / ((n + 1)! : ℝ) * Real.exp (abs z) := by sorry