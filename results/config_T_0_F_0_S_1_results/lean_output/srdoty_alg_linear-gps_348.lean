import Mathlib

/-- The general linear group GL(n, ℝ) as the subtype of invertible (i.e. nonzero determinant)
square n × n real matrices. -/
def GL (n : Type _) [Fintype n] [DecidableEq n] := { A : Matrix n n ℝ // Matrix.det A ≠ 0 }

/-- GL(n, ℝ) is a group under matrix multiplication. -/
instance group_GL (n : Type _) [Fintype n] [DecidableEq n] : Group (GL n) := by sorry
