import Mathlib

open Matrix

variable {n : ℕ}

/-- Elementary matrix obtained from the identity by adding `t` times row `j` to row `i`. -/
def elementary_matrix (i j : Fin n) (t : ℝ) : Matrix (Fin n) (Fin n) ℝ :=
  1 + fun r c => if r = i ∧ c = j then t else 0

/-- For i ≠ j, the elementary row-add matrix has determinant 1, hence lies in SL(n). -/
theorem elementary_matrix_det_eq_one (i j : Fin n) (t : ℝ) (h : i ≠ j) :
    det (elementary_matrix i j t) = (1 : ℝ) := by sorry