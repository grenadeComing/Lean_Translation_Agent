import Mathlib

/--
Let z ∈ ℂ with |z| < 1. Then
|log(1 - z)| ≤ ∑_{n=1}^∞ |z|^n / n ≤ |z| / (1 - |z|).
-/
theorem complex_log_abs_le_tsum_pow_div (z : ℂ) (hz : Complex.abs z < 1) :
  Complex.abs (Complex.log (1 - z)) ≤ ∑' (n : ℕ), (Complex.abs z) ^ (n + 1) / (n + 1 : ℝ) ∧
  ∑' (n : ℕ), (Complex.abs z) ^ (n + 1) / (n + 1 : ℝ) ≤ Complex.abs z / (1 - Complex.abs z) := by sorry
