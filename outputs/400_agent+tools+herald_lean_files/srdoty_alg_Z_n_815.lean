import Mathlib

/-- Define the relation `approx` on the real numbers: `a ≈ b` iff `a - b` is an integer. -/
def approx (a b : ℝ) : Prop := ∃ k : Int, a - b = k

/-- The relation `approx` is an equivalence relation on `ℝ`. -/
theorem approx_equivalence : Equivalence approx := by sorry
