import Mathlib

/-- If A is an n-by-n matrix over a commutative ring R, and `Matrix.adjugate A` is the matrix of cofactors, then det (adjugate A) = det A ^ (card n - 1). -/
theorem det_adjugate_eq_pow_det {R : Type _} {n : Type _} [CommRing R] [Fintype n] [DecidableEq n]
  (A : Matrix n n R) : Matrix.det (Matrix.adjugate A) = Matrix.det A ^ (Fintype.card n - 1) := by sorry
