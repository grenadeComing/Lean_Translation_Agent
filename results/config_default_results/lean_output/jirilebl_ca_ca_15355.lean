import Mathlib

/-- Let z ∈ ℂ with ‖z‖ < 1. Then the tail geometric series of ‖z‖ equals ‖z‖/(1-‖z‖). -/
theorem tsum_norm_geometric_of_norm_lt_one {z : Complex} (h : ‖z‖ < 1) :
  ∑' n : ℕ, (‖z‖ : ℝ) ^ (n + 1) = (‖z‖ : ℝ) / (1 - (‖z‖ : ℝ)) := by sorry
