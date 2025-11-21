import Mathlib

variable {R : Type _} [CommRing R]
variable {n : Type _} [Fintype n] [DecidableEq n]

theorem det_adjugate (A : Matrix n n R) : (Matrix.adjugate A).det = A.det ^ (Fintype.card n - 1) := by sorry