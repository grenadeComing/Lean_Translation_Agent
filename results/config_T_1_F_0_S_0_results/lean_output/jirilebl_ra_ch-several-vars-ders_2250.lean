import Mathlib

/-- Determinant is multiplicative: for square matrices A and B over a commutative ring R indexed by a finite type n, det (A * B) = det A * det B. -/
theorem det_mul {R : Type _} {n : Type _} [CommRing R] [Fintype n] [DecidableEq n]
  (A B : Matrix n n R) : (A * B).det = A.det * B.det := by sorry