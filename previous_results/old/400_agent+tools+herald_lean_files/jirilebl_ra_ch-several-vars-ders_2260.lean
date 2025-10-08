import Mathlib

variable {n : Type _} [Fintype n] [DecidableEq n]
variable {R : Type _} [CommRing R]

theorem matrix_adjugate_mul (A : Matrix n n R) : A * Matrix.adjugate A = Matrix.det A • (1 : Matrix n n R) := by
  sorry

theorem adjugate_transpose_inverse_of_det_unit {A : Matrix n n R} (h : IsUnit (Matrix.det A)) :
  ((↑((IsUnit.unit h)⁻¹) : R) • (Matrix.adjugate A).transpose) * A.transpose = (1 : Matrix n n R) ∧
  A.transpose * ((↑((IsUnit.unit h)⁻¹) : R) • (Matrix.adjugate A).transpose) = (1 : Matrix n n R) := by
  sorry
