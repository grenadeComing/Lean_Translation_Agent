import Mathlib

open Matrix

variable {R : Type _} [CommRing R]
variable {n : Type _} [Fintype n] [DecidableEq n]

/-- Determinant is multiplicative: det(AB) = det(A) * det(B) for square matrices. -/
theorem matrix_det_mul (A B : Matrix n n R) : (A * B).det = A.det * B.det := by sorry
