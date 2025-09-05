import Mathlib

/-- For z ∈ ℂ with |z| < 1, we have |arctan z| ≤ (π/4) * |z| / (1 - |z|). -/
theorem complex.abs_arctan_le_of_abs_lt_one (z : ℂ) (hz : Complex.abs z < 1) :
  Complex.abs (Complex.arctan z) ≤ (π / 4) * Complex.abs z / (1 - Complex.abs z) := by sorry
