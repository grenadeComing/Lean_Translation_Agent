import Mathlib

/-- The general linear group over R (real numbers) as a subtype of matrices with nonzero determinant. -/
def gl (n : Type _) [Fintype n] [DecidableEq n] := { A : Matrix n n Real // Matrix.det A ≠ 0 }

/-- GL(n, R) is a group under matrix multiplication. Proof omitted. -/
instance {n : Type _} [Fintype n] [DecidableEq n] : Group (gl n) := by sorry
