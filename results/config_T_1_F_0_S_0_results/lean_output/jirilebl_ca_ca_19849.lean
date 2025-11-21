import Mathlib

/-- Let z ∈ ℂ. Show that |arctan z| ≤ (π / 4) * |z| / (1 - |z|) whenever |z| < 1. -/
theorem abs_arctan_le {z : ℂ} (hz : Complex.abs z < 1) :
  Complex.abs (Complex.arctan z) ≤ (π / 4) * Complex.abs z / (1 - Complex.abs z) := by sorry
