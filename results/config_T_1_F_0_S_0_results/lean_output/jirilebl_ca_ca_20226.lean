import Mathlib

/-- Let z ∈ ℂ with |z| < 1. Then

    |log(1 - z)| ≤ ∑_{n=1}^∞ |z|^n / n ≤ |z| / (1 - |z|).

This statement is given without proof. -/
theorem abs_log_one_sub_le_sum_le {z : ℂ} (hz : Complex.abs z < 1) :
  Complex.abs (Complex.log (1 - z)) ≤ ∑' n : ℕ, Complex.abs z ^ (n + 1) / (n + 1) ∧
  ∑' n : ℕ, Complex.abs z ^ (n + 1) / (n + 1) ≤ Complex.abs z / (1 - Complex.abs z) := by sorry