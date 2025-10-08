import Mathlib

variables (R : Type _) [CommRing R]
variables (n : Type _) [DecidableEq n] [Fintype n]

/-- The general linear group GL(n, R) as matrices with nonzero determinant. -/
def GL_subtype : Type _ := { A : Matrix n n R // Matrix.det A ≠ 0 }

/-- GL(n, R) is a group under matrix multiplication. Proof omitted. -/
instance GL_subtype_group : Group (GL_subtype R n) := by sorry
