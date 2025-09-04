import Mathlib

/-!
We state that for an orthogonal matrix A (Aᵀ * A = I), the column vectors
are orthonormal, i.e. their dot product equals the Kronecker delta.
-/

theorem orthogonal_matrix_columns_dot {n : Nat} (A : Matrix (Fin n) (Fin n) ℝ)
  (h : A.transpose * A = 1) :
  ∀ i j : Fin n, (Finset.univ.sum fun k : Fin n => A k i * A k j) = if i = j then 1 else 0 := by sorry
