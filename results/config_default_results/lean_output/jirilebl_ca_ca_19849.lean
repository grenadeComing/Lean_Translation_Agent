import Mathlib
open Set Filter
open scoped Real

/-- Let z ∈ ℂ. Show that | arctan z | ≤ (π / 4) * |z| / (1 - |z|) whenever |z| < 1. -/
theorem abs_arctan_le_div_one_sub_abs_tac_1105 (z : ℂ) (hz : Complex.abs z < 1) : Complex.abs (Complex.arctan z) ≤ (π / 4) * Complex.abs z / (1 - Complex.abs z) := by
  sorry
