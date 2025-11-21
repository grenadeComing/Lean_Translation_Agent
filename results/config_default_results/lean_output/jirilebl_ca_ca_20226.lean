import Mathlib

/-- Let z ∈ ℂ with |z| < 1. We state the inequality without proof. -/
axiom abs_log_one_sub_le_tsum_of_abs_lt_one (z : ℂ) (hz : Complex.abs z < 1) :
  Complex.abs (Complex.log (1 - z)) ≤ ∑' k : ℕ, Complex.abs z ^ (k + 1) / (k + 1) ∧
  ∑' k : ℕ, Complex.abs z ^ (k + 1) / (k + 1) ≤ Complex.abs z / (1 - Complex.abs z)
