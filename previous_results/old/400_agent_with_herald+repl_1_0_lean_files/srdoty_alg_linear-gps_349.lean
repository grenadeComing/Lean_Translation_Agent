import Mathlib

/-- Special linear group SL(n, R) as matrices with determinant 1. -/
def SL (n : Nat) := { A : Matrix (Fin n) (Fin n) ℝ // Matrix.det A = 1 }

/-- SL(n, R) is a group under matrix multiplication. -/
instance SL_group (n : Nat) : Group (SL n) := by
  sorry
