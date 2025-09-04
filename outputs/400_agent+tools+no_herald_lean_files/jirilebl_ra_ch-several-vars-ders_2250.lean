import Mathlib

/-!
Prove that for square matrices A and B over a commutative ring, det (A * B) = det A * det B.
This follows the usual approach: first for elementary matrices, then for products of elementary
matrices, and finally for all matrices. Here we only state the theorem.
-/

variable {R : Type _} [CommRing R]
variable {n : Type _} [Fintype n] [DecidableEq n]

theorem det_mul_jirilebl (A B : Matrix n n R) : (A * B).det = A.det * B.det := by
  sorry
