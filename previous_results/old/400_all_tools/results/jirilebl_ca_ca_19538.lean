import Mathlib

/-- Let z ∈ ℂ with |z| < 1. Prove that ∑_{n=1}^{∞} |z|^n / n ≤ |z| / (1 - |z|). -/
theorem tsum_abs_pow_div_le (z : Complex) (hz : Complex.abs z < 1) :
  ∑' (n : ℕ), (Complex.abs z)^(n+1) / (n+1 : ℝ) ≤ Complex.abs z / (1 - Complex.abs z) := by sorry
