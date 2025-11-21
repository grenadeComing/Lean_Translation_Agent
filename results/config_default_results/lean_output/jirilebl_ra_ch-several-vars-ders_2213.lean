import Mathlib

open Matrix

variable {n : Type*} [Fintype n] [DecidableEq n]
variable {α : Type*} [Field α]

theorem det_zero_cols_linear_dependent (A : Matrix n n α) (h : A.det = 0) :
  ¬ LinearIndependent α (fun j => A.col j) := by sorry

theorem det_nonzero_cols_linear_independent (A : Matrix n n α) (h : A.det ≠ 0) :
  LinearIndependent α (fun j => A.col j) := by sorry

theorem det_zero_rows_linear_dependent (A : Matrix n n α) (h : A.det = 0) :
  ¬ LinearIndependent α (fun i => A.row i) := by sorry

theorem det_nonzero_rows_linear_independent (A : Matrix n n α) (h : A.det ≠ 0) :
  LinearIndependent α (fun i => A.row i) := by sorry