import Mathlib
open BigOperators

theorem orthogonal_columns {n : Nat} (A : Matrix (Fin n) (Fin n) Real)
  (h : Matrix.transpose A * A = 1) :
  ∀ i j : Fin n, (∑ k : Fin n, A k i * A k j) = if i = j then 1 else 0 := by sorry
