import Mathlib
open scoped BigOperators

variables {F : Type*} [Field F] {n : Type*} [Fintype n] [DecidableEq n]

/-- If the determinant of an n-by-n matrix A over a field F is zero, then the columns of A are linearly dependent (there exists a nontrivial linear relation among the columns). -/
theorem det_eq_zero_columns_linear_dependent (A : Matrix n n F) (h : A.det = 0) :
  ∃ c : n → F, (∃ j, c j ≠ 0) ∧ ∀ i : n, ∑ j : n, A i j * c j = 0 := by sorry

/-- If the determinant of an n-by-n matrix A over a field F is nonzero, then the columns of A are linearly independent. -/
theorem det_ne_zero_columns_linear_independent (A : Matrix n n F) (h : A.det ≠ 0) :
  ∀ c : n → F, (∀ i : n, ∑ j : n, A i j * c j = 0) → ∀ j : n, c j = 0 := by sorry

/-- If the determinant of an n-by-n matrix A over a field F is zero, then the rows of A are linearly dependent. -/
theorem det_eq_zero_rows_linear_dependent (A : Matrix n n F) (h : A.det = 0) :
  ∃ r : n → F, (∃ i, r i ≠ 0) ∧ ∀ j : n, ∑ i : n, r i * A i j = 0 := by sorry

/-- If the determinant of an n-by-n matrix A over a field F is nonzero, then the rows of A are linearly independent. -/
theorem det_ne_zero_rows_linear_independent (A : Matrix n n F) (h : A.det ≠ 0) :
  ∀ r : n → F, (∀ j : n, ∑ i : n, r i * A i j = 0) → ∀ i : n, r i = 0 := by sorry