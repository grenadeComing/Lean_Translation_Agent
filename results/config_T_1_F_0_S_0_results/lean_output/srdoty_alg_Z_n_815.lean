import Mathlib

/-- Define a relation `approx` on the reals by `a ≈ b` iff `a - b` is an integer. -/
def approx (a b : ℝ) : Prop := ∃ n : ℤ, a - b = n

theorem approx_equivalence : Equivalence (approx : ℝ → ℝ → Prop) := by sorry