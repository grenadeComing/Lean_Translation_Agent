import Mathlib

/-- Define a relation on the real numbers: a ≈ b iff a - b is an integer. -/
def approx_rel (a b : ℝ) : Prop := ∃ z : ℤ, a - b = (z : ℝ)

/-- The relation ≈ is an equivalence relation on ℝ. -/
theorem approx_rel_equivalence : Equivalence (approx_rel) := by sorry
