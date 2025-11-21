import Mathlib

/-- Let z ∈ ℂ with |z| < 1. Then the sum from n=1 to ∞ of |z|^n equals |z|/(1-|z|). -/
theorem tsum_abs_geometric_of_abs_lt_one (z : ℂ) (h : Complex.abs z < 1) :
  ∑' n : ℕ, (Complex.abs z) ^ (n + 1) = Complex.abs z / (1 - Complex.abs z) := by sorry
