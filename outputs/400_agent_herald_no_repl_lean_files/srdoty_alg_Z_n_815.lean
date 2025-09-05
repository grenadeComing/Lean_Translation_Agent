import Mathlib

/-- Relation a ≈ b iff a - b is an integer (viewed as a real). -/
def approx (a b : ℝ) : Prop := ∃ k : Int, (a - b) = (k : ℝ)

theorem approx_equivalence : Equivalence (approx : ℝ → ℝ → Prop) := by sorry
