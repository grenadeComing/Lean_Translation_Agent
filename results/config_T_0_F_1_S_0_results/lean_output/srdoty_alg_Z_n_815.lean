import Mathlib

/-- We say a is equivalent to b if their difference is an integer. -/
def approx (a b : Real) : Prop := ∃ n : Int, a - b = n

theorem approx_equivalence : Equivalence (approx : Real → Real → Prop) := by sorry
