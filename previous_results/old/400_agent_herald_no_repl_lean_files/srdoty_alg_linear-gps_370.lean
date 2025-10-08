import Mathlib
open BigOperators
open Matrix

/--
If A ∈ O(n) is written as A = [A₁ | A₂ | … | Aₙ] with A_i ∈ ℝ^n, then the columns are orthonormal.
Equivalently, the dot product of distinct columns is 0 and of a column with itself is 1.
-/
theorem orthogonal_matrix_columns_orthonormal {n : ℕ} (A : Matrix (Fin n) (Fin n) ℝ) (h : IsOrthogonal A) :
  ∀ i j : Fin n, (∑ k : Fin n, A k i * A k j) = if i = j then 1 else 0 := by sorry
