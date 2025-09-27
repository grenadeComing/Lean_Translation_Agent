import Mathlib
open Classical

/-- Take an invertible matrix (presented as a linear equivalence) A with at least one eigenvalue
    l_pos satisfying l_pos > 1 and at least one eigenvalue satisfying l_neg < -1. Then the induced map
    A : ℝ^n → ℝ^n is a covering map. -/
theorem benmckay_top_covering_spaces_216 {n : ℕ} (A : (Fin n → ℝ) ≃ₗ[ℝ] (Fin n → ℝ))
  (h_pos : ∃ (l_pos : ℝ) (v : Fin n → ℝ), v ≠ 0 ∧ A v = l_pos • v ∧ l_pos > 1)
  (h_neg : ∃ (l_neg : ℝ) (w : Fin n → ℝ), w ≠ 0 ∧ A w = l_neg • w ∧ l_neg < -1) :
  IsCoveringMap (A : (Fin n → ℝ) → (Fin n → ℝ)) := by sorry
