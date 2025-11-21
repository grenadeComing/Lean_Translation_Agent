import Mathlib

open Matrix

/-- For square matrices A and B over a commutative ring, the determinant is multiplicative. -/
theorem det_mul {α : Type _} [CommRing α] {n : Type _} [Fintype n] [DecidableEq n]
  (A B : Matrix n n α) :
  Matrix.det (A * B) = Matrix.det A * Matrix.det B := by sorry
