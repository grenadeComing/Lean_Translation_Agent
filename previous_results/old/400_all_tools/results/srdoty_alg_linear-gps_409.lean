import Mathlib

/-- Elementary matrix obtained from the identity by adding t times row j to row i. -/
def elementary_add_row {n : Type _} [Fintype n] [DecidableEq n] (i j : n) (t : Real) : Matrix n n Real :=
  fun a b => if a = b then 1 else if a = i ∧ b = j then t else 0

/-- For i ≠ j the determinant of this elementary matrix is 1 (so it lies in SL(n)). -/
theorem det_elementary_add_row {n : Type _} [Fintype n] [DecidableEq n] {i j : n} (h : i ≠ j) (t : Real) :
  Matrix.det (elementary_add_row i j t) = 1 := by sorry
