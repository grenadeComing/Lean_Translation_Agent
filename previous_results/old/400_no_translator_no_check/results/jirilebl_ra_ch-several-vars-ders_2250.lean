import Mathlib

open Matrix

variable {n : Type _} [DecidableEq n] [Fintype n]
variable {R : Type _} [CommRing R]

theorem det_mul (A B : Matrix n n R) : (A * B).det = A.det * B.det := by sorry
