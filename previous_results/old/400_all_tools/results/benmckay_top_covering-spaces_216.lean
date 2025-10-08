import Mathlib

/-- Let A be an invertible real n-by-n matrix with at least one eigenvalue > 1 and at least one eigenvalue < -1. Then the linear map A : ℝ^n → ℝ^n is a covering map. -/
theorem matrix_with_pos_and_neg_eig_is_covering {n : Type _} [Fintype n] [DecidableEq n]
  (A : Matrix n n ℝ)
  (h_inv : A.det ≠ 0)
  (h_pos : ∃ (lam : ℝ) (v : n → ℝ), 1 < lam ∧ v ≠ 0 ∧ A.mulVec v = lam • v)
  (h_neg : ∃ (mu : ℝ) (w : n → ℝ), mu < -1 ∧ w ≠ 0 ∧ A.mulVec w = mu • w) :
  IsCoveringMap (A.mulVec : (n → ℝ) → (n → ℝ)) := by sorry
