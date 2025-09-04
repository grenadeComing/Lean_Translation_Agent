import Mathlib

open Matrix

variable {R : Type _} [CommRing R]
variable {n : Type _} [DecidableEq n] [Fintype n]

theorem det_eq_zero_iff_cols_linear_dependent (A : Matrix n n R) :
  A.det = 0 ↔ ¬ LinearIndependent R (A.col) := by
  sorry

theorem det_ne_zero_iff_cols_linear_independent (A : Matrix n n R) :
  A.det ≠ 0 ↔ LinearIndependent R (A.col) := by
  sorry

theorem det_eq_zero_iff_rows_linear_dependent (A : Matrix n n R) :
  A.det = 0 ↔ ¬ LinearIndependent R (A.transpose.col) := by
  sorry

theorem det_ne_zero_iff_rows_linear_independent (A : Matrix n n R) :
  A.det ≠ 0 ↔ LinearIndependent R (A.transpose.col) := by
  sorry
