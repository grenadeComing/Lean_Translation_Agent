import Mathlib

/-- Let z ∈ ℂ with |z| < 1. Then ∑_{n=1}^∞ |z|^n = |z|/(1-|z|). -/
theorem tsum_abs_geometric_of_abs_lt_one (z : ℂ) (h : abs z < 1) :
  tsum (fun n : ℕ => (abs z) ^ (n + 1)) = abs z / (1 - abs z) := by sorry