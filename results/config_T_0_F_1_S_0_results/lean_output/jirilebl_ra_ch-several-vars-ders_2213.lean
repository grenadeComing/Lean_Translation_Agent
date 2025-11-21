import Mathlib

open Matrix

variable {K : Type _} [Field K]
variable {n : Type _} [Fintype n] [DecidableEq n]

/-- For an n × n matrix over a field K, det A = 0 iff the columns of A are linearly dependent.
    Linear dependence is expressed by the existence of a nonzero vector c with A.mulVec c = 0. -/
theorem det_eq_zero_iff_columns_linear_dependent (A : Matrix n n K) :
  A.det = 0 ↔ ∃ (c : n → K), c ≠ 0 ∧ A.mulVec c = 0 := by sorry

/-- Equivalent formulation: det A ≠ 0 iff the columns of A are linearly independent. -/
theorem det_ne_zero_iff_columns_linear_independent (A : Matrix n n K) :
  A.det ≠ 0 ↔ (∀ (c : n → K), A.mulVec c = 0 → c = 0) := by sorry

/-- The same statements hold for rows, since rows are the columns of Aᵀ. -/
theorem det_eq_zero_iff_rows_linear_dependent (A : Matrix n n K) :
  A.det = 0 ↔ ∃ (c : n → K), c ≠ 0 ∧ (Aᵀ).mulVec c = 0 := by sorry

theorem det_ne_zero_iff_rows_linear_independent (A : Matrix n n K) :
  A.det ≠ 0 ↔ (∀ (c : n → K), (Aᵀ).mulVec c = 0 → c = 0) := by sorry
