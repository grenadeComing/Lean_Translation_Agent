import Mathlib

/-- Let z ∈ ℂ with |z| < 1. Then |log(1 - z)| ≤ ∑_{n=1}∞ |z|^n/n ≤ |z|/(1-|z|). -/
theorem abs_log_one_sub_le_tsum (z : Complex) (hz : Complex.abs z < 1) :
  Complex.abs (Complex.log (1 - z)) ≤ ∑' n : ℕ, (Complex.abs z)^(n + 1) / (n + 1 : ℝ) ∧
  ∑' n : ℕ, (Complex.abs z)^(n + 1) / (n + 1 : ℝ) ≤ Complex.abs z / (1 - Complex.abs z) := by sorry
