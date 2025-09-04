import Mathlib

variable {K : Type _} [Field K]
variable {n : Nat} {A : Matrix (Fin n) (Fin n) K}

lemma det_eq_zero_implies_cols_linear_dependent (h : Matrix.det A = 0) :
  ∃ c : Fin n → K, c ≠ 0 ∧ A.mulVec c = 0 := by
  sorry

lemma det_ne_zero_implies_cols_linear_independent (h : Matrix.det A ≠ 0) :
  ∀ c : Fin n → K, A.mulVec c = 0 → c = 0 := by
  sorry
