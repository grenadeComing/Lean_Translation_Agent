import Mathlib

open Matrix

/-- For square matrices A and B over a commutative semiring, det (A * B) = det A * det B. -/
theorem det_mul {R : Type _} [CommSemiring R] {n : Type _} [Fintype n] [DecidableEq n] (A B : Matrix n n R) :
  det (A * B) = det A * det B := by sorry
