import Mathlib

variable {n : Type _} [Fintype n] [DecidableEq n]
variable {α : Type _} [CommRing α]

/-- If A is an n-by-n matrix and B is the matrix of cofactors of A (the adjugate),
    then det(B) = det(A)^(n-1). -/
theorem det_cofactor_matrix_eq_pow (A B : Matrix n n α) (h : B = A.adjugate) :
  B.det = A.det ^ (Fintype.card n - 1) := by sorry
