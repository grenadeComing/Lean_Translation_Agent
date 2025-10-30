import Mathlib

/-- Any nonsingular n×n real matrix A can be expressed as a product of elementary matrices. -/
theorem nonsingular_matrix_is_product_of_elementary_matrices
  {n : ℕ} (A : Matrix (Fin n) (Fin n) ℝ) (hA : IsUnit A) :
  ∃ (E : List (Matrix (Fin n) (Fin n) ℝ)), E.prod = A := by
  sorry
