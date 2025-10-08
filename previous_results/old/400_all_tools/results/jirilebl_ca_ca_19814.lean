import Mathlib

/-- Let z ∈ ℂ with |z| < 1. Show that |log(1 - z)| ≤ ∑_{n=1}^∞ |z|^n / n ≤ |z| / (1 - |z|). -/
lemma abs_log_one_sub_le_sum_geometric (z : Complex) (hz : Complex.abs z < 1) :
  Complex.abs (Complex.log (1 - z)) ≤ ∑' (n : ℕ), (Complex.abs z) ^ n / (n : ℝ) ∧
  ∑' (n : ℕ), (Complex.abs z) ^ n / (n : ℝ) ≤ Complex.abs z / (1 - Complex.abs z) := by
  sorry
