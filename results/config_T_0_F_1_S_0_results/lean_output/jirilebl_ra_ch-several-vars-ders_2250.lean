import Mathlib

variable {R : Type _} [CommRing R]
variable {n : Type _} [Fintype n] [DecidableEq n]

theorem det_mul (A B : Matrix n n R) : Matrix.det (A * B) = Matrix.det A * Matrix.det B := by sorry
