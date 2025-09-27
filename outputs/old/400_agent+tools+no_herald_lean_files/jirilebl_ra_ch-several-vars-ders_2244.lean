import Mathlib

open Matrix

variable {n : Type*} [Fintype n] [DecidableEq n] {R : Type*} [CommRing R]

/-- The permutation matrix associated to a permutation σ: put `1` in column `σ i` of row `i`. -/
def perm_matrix (σ : Equiv.Perm n) : Matrix n n R := fun i j => if j = σ i then (1 : R) else 0

/-- The determinant of a permutation matrix is either `-1` or `1`. -/
theorem det_perm_matrix_eq_neg_one_or_one (σ : Equiv.Perm n) :
  Matrix.det (perm_matrix σ) = (-1 : R) ∨ Matrix.det (perm_matrix σ) = (1 : R) := by
  sorry
