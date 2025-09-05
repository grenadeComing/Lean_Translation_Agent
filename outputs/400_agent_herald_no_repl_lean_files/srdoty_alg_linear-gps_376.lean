import Mathlib

open Matrix

lemma orthogonal_matrix_cols_orthonormal {n : ℕ} (A : Matrix (Fin n) (Fin n) ℝ)
  (h : Aᵀ ⬝ A = 1) :
  ∀ i j : Fin n, (∑ k : Fin n, A k i * A k j) = if i = j then 1 else 0 := by sorry
