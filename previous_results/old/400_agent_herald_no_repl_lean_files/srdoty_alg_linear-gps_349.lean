import Mathlib

open Matrix

variable (n : Type _) [Fintype n] [DecidableEq n]

/-- Special linear group SL(n, R) as matrices with determinant 1 -/
def SL : Type _ := { A : Matrix n n ℝ // Matrix.det A = 1 }

/-- SL(n, R) is a group under matrix multiplication. -/
instance : Group (SL n) := by sorry
