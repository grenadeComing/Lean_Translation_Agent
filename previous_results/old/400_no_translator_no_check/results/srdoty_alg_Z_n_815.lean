import Mathlib

/-- Define a relation a ≈ b on the reals when a - b is an integer. -/
def approx (a b : Real) : Prop := ∃ n : Int, a - b = n

infix:50 " ≈ " => approx

/-- The relation ≈ is an equivalence relation on ℝ. -/
theorem approx_equivalence : Equivalence (fun a b => approx a b) := by sorry
