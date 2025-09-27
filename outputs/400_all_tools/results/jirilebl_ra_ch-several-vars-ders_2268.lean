import Mathlib

/-- If A is an n-by-n matrix over a commutative ring and B is the matrix of cofactors of A,
then det(B) = det(A)^(n-1). In Mathlib the matrix of cofactors is `A.adjugate`, and this
statement is `Matrix.det_adjugate`. -/
theorem det_cofactor_matrix {n : Type _} [DecidableEq n] [Fintype n] {α : Type _} [CommRing α]
  (A : Matrix n n α) :
  A.adjugate.det = A.det ^ (Fintype.card n - 1) := by sorry
