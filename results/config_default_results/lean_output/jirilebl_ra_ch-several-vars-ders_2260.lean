import Mathlib

variable {R : Type _} [CommRing R]
variable {n : Type _} [DecidableEq n] [Fintype n]

open Matrix

theorem test_id (A : Matrix n n R) : A = A := by rfl