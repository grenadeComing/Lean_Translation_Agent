import Mathlib

open Matrix

/-- If A is an n-by-n matrix and B is the matrix of cofactors of A (the adjugate of A),
then det adjugate A = det A^(n-1). -/
theorem det_adjugate {R : Type _} {n : Type _} [CommRing R] [Fintype n] [DecidableEq n]
  (A : Matrix n n R) :
  det (adjugate A) = det A ^ (Fintype.card n - 1) := by sorry
