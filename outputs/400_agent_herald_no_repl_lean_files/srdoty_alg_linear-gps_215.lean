import Mathlib
open Matrix

/-- Any nonsingular n×n real matrix can be expressed as a product of elementary matrices. -/
theorem nonsingular_matrix_is_product_of_elementary_matrices {n : Type _} [Fintype n] [DecidableEq n]
  (A : Matrix n n ℝ) (h : A.det ≠ 0) :
  ∃ (k : ℕ) (E : Fin k → Matrix n n ℝ), (∀ i, IsElementary (E i)) ∧ A = ∏ i, E i := by sorry
