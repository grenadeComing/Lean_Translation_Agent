import Mathlib

theorem log_one_sub_z_bound (z : ℂ) (h : Complex.abs z < 1) :
  Complex.abs (Complex.log (1 - z)) ≤ (∑' n : ℕ, (Complex.abs z) ^ n / (n : ℝ)) ∧ (∑' n : ℕ, (Complex.abs z) ^ n / (n : ℝ)) ≤ Complex.abs z / (1 - Complex.abs z) := by
  sorry
