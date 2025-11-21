import Mathlib
open Matrix

/-- The general linear group GL(n, R) as the subtype of n×n real matrices with nonzero determinant. -/
def gl_subtype (n : ℕ) := {A : Matrix (Fin n) (Fin n) Real // Matrix.det A ≠ 0}

/-- GL(n, R) is a group under matrix multiplication. -/
instance gl_subtype_group (n : ℕ) : Group (gl_subtype n) := by sorry
