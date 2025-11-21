import Mathlib

open Matrix

variable {R : Type*} [CommRing R]
variable {n : Type*} [Fintype n] [DecidableEq n]

/-- Determinant multiplicativity: for square matrices A and B over a commutative ring R,
    det (A * B) = det A * det B. -/
theorem det_mul (A B : Matrix n n R) : det (A * B) = det A * det B := by sorry