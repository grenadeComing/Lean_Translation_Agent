import Mathlib

/-- Let z ∈ ℂ with |z| < 1. Then the series ∑_{n=1}^∞ |z|^n / n is bounded above by |z| / (1 - |z|). -/
theorem sum_abs_pow_div_le {z : ℂ} (h : abs z < 1) :
  ∑' n : ℕ, abs z ^ (n + 1) / ((n + 1) : ℝ) ≤ abs z / (1 - abs z) := by sorry