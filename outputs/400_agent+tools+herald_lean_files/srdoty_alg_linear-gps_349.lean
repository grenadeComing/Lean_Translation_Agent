import Mathlib

variable {n : Type _} [Fintype n] [DecidableEq n]

/-- Special linear group SL(n, ℝ) as a set of matrices with determinant 1. -/
def SL : Set (Matrix n n Real) := { A | Matrix.det A = 1 }

/-- The subtype of matrices with determinant 1 carries a group structure under multiplication. -/
noncomputable def SL_group : Group ({ A : Matrix n n Real // Matrix.det A = 1 }) := by
  sorry
