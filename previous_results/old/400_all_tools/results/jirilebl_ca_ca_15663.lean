import Mathlib

/-- Let z ∈ ℂ with |z| < 1. Show |log(1 - z)| ≤ Σ_{n=1}^∞ |z|^n / n ≤ |z|/(1-|z|). -/
theorem jirilebl_ca_ca_15663 {z : ℂ} (hz : Complex.abs z < 1) :
  Complex.abs (Complex.log (1 - z)) ≤ ∑' n : ℕ, Complex.abs z ^ (n + 1) / (n + 1 : ℝ) ∧
  ∑' n : ℕ, Complex.abs z ^ (n + 1) / (n + 1 : ℝ) ≤ Complex.abs z / (1 - Complex.abs z) := by sorry
