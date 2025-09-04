import Mathlib

open Matrix

variable {R : Type _} [CommRing R]
variable {n : Type _} [Fintype n] [DecidableEq n]

theorem det_adjugate_pow (A : Matrix n n R) :
  (A.adjugate).det = A.det ^ (Fintype.card n - 1) := by
  sorry
