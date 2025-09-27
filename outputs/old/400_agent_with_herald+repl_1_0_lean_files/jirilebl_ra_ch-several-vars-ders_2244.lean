import Mathlib

variable {n : Type _} [Fintype n] [DecidableEq n]

/-- The permutation matrix associated to an equivalence `σ : n ≃ n`, over the reals. -/
def perm_matrix (σ : n ≃ n) : Matrix n n ℝ := fun i j => if σ j = i then (1 : ℝ) else 0

/-- The determinant of a permutation matrix is either `1` or `-1`. -/
theorem det_perm_matrix_eq_one_or_neg_one (σ : n ≃ n) :
  Matrix.det (perm_matrix σ) = 1 ∨ Matrix.det (perm_matrix σ) = -1 := by sorry
