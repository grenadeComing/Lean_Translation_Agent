import Mathlib
open Matrix
open BigOperators

/-- If A is orthogonal (Aᵀ * A = 1), then the columns of A are orthonormal.
    In particular, the inner product of column i and column j equals δ_{ij}. -/
theorem orthogonal_columns_inner {n : ℕ} (A : Matrix (Fin n) (Fin n) ℝ) (h : Aᵀ * A = 1) :
  ∀ (i j : Fin n), (∑ k : Fin n, A k i * A k j) = if i = j then 1 else 0 := by sorry
