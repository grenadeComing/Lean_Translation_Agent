import Mathlib

universe u v

open Matrix

/-- If an n×n matrix A over a commutative ring has determinant 0, then its columns are
    linearly dependent; equivalently, det A ≠ 0 implies the columns are linearly independent. -/
theorem det_eq_zero_iff_cols_linear_dependent {n : Type u} [DecidableEq n] [Fintype n]
  {R : Type v} [CommRing R] (A : Matrix n n R) :
  Matrix.det A = 0 ↔ ¬ LinearIndependent R (fun i => A.col i) := by sorry

/-- Corollary: nonzero determinant implies column linear independence. -/
theorem det_ne_zero_imp_cols_linear_independent {n : Type u} [DecidableEq n] [Fintype n]
  {R : Type v} [CommRing R] (A : Matrix n n R) :
  Matrix.det A ≠ 0 → LinearIndependent R (fun i => A.col i) := by sorry

/-- The same statements for the rows of A. -/
theorem det_eq_zero_iff_rows_linear_dependent {n : Type u} [DecidableEq n] [Fintype n]
  {R : Type v} [CommRing R] (A : Matrix n n R) :
  Matrix.det A = 0 ↔ ¬ LinearIndependent R (fun i => A.row i) := by sorry

theorem det_ne_zero_imp_rows_linear_independent {n : Type u} [DecidableEq n] [Fintype n]
  {R : Type v} [CommRing R] (A : Matrix n n R) :
  Matrix.det A ≠ 0 → LinearIndependent R (fun i => A.row i) := by sorry
