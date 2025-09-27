import Mathlib

/-!
If A is an n-by-n matrix and B is the matrix of cofactors of A (the adjugate),
then det(B) = det(A)^(n-1).
This file states that fact using Mathlib's `Matrix.adjugate` and `Matrix.det`.
-/

theorem det_of_cofactor_matrix {n : Type _} [Fintype n] [DecidableEq n]
  {α : Type _} [CommRing α] (A : Matrix n n α) :
  (Matrix.adjugate A).det = A.det ^ (Fintype.card n - 1) := by
  sorry
