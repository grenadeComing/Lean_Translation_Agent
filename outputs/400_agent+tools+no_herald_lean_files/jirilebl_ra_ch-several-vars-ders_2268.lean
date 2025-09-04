import Mathlib

open Matrix

variable {R : Type _} [CommRing R]
variable {n : Type _} [DecidableEq n] [Fintype n]

theorem det_of_cofactor_matrix (A : Matrix n n R) (B : Matrix n n R) (h : B = A.adjugate) :
  B.det = A.det ^ (Fintype.card n - 1) := by
  sorry
