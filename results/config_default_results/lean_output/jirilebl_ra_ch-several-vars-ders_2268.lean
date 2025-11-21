import Mathlib

open Matrix

variable {R : Type*} [CommRing R]
variable {n : Type*} [Fintype n] [DecidableEq n]

/-- If A is an n-by-n matrix and B is the matrix of cofactors of A (the adjugate),
    then det B = det A ^ (n - 1). -/
theorem det_adjugate (A : Matrix n n R) : det (adjugate A) = det A ^ (Fintype.card n - 1) := by sorry
