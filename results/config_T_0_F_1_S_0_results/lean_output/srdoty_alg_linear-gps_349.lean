import Mathlib

/-- The special linear group SL(n, ℝ) as the subgroup of n×n real matrices with determinant 1. -/
def SL (n : Type _) [Fintype n] [DecidableEq n] : Type _ := { A : Matrix n n Real // Matrix.det A = (1 : Real) }

/-- SL(n, ℝ) is a group under matrix multiplication. -/
instance {n : Type _} [Fintype n] [DecidableEq n] : Group (SL n) := by
  -- Proof omitted
  sorry
