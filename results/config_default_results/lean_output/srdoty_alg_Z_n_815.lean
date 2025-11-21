import Mathlib

/-- Relation approx on the reals: a ≈ b iff a - b is an integer (i.e., equals some Int cast). -/
def approx (a b : ℝ) : Prop := ∃ n : Int, a - b = (n : ℝ)

theorem approx_equivalence : Equivalence approx := by sorry