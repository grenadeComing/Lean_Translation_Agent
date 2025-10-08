import Mathlib

open Matrix

variable {R : Type _} [CommRing R]
variable {n : Type _} [Fintype n] [DecidableEq n]

/-- For square matrices A and B, det(AB) = det(A) * det(B). -/
theorem det_mul (A B : Matrix n n R) : (A * B).det = A.det * B.det := by sorry
