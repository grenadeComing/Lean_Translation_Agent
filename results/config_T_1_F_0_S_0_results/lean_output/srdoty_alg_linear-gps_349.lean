import Mathlib

/-- The special linear group SL(n, ℝ) as the subtype of n×n real matrices with determinant 1. -/
def SL (n : ℕ) : Type := { A : Matrix (Fin n) (Fin n) ℝ // Matrix.det A = 1 }

/-- SL(n, ℝ) is a group under matrix multiplication. -/
instance SL_group (n : ℕ) : Group (SL n) := by sorry