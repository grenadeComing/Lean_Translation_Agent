import Mathlib

/-- Let z ∈ ℂ with |z| < 1. Show that ∑_{n=1}^∞ |z|^n = |z|/(1-|z|). -/
theorem tsum_abs_geometric_complex {z : ℂ} (hz : Complex.abs z < 1) :
  ∑' n : ℕ, (Complex.abs z) ^ (n + 1) = Complex.abs z / (1 - Complex.abs z) := by
  sorry
