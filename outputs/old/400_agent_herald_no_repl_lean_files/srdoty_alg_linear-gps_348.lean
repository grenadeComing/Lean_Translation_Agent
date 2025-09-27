import Mathlib

open Matrix

/-- The general linear group GL(n, ℝ) as the set of n×n real matrices with nonzero determinant. -/
def GL (n : ℕ) := { A : Matrix (Fin n) (Fin n) ℝ // Matrix.det A ≠ 0 }

/-- GL(n, ℝ) is a group under matrix multiplication. -/
instance GL_group (n : ℕ) : Group (GL n) := by sorry
