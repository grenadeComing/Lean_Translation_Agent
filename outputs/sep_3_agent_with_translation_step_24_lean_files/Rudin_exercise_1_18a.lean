import Mathlib
open BigOperators

theorem exists_orthogonal_of_k_ge_two {k : Nat} (hk : k ≥ 2) (x : Fin k → ℝ) :
  ∃ y : Fin k → ℝ, y ≠ 0 ∧ ∑ i, x i * y i = 0 := by sorry
