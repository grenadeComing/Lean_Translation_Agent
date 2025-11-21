import Mathlib

/-- Take an invertible matrix A with at least one eigenvalue λ satisfying λ > 1 and at least one
    eigenvalue satisfying λ < -1. Then the linear map A : ℝ^n → ℝ^n is a covering map. -/
theorem matrix_covering_map_of_eigenvalue_gt1_and_eigenvalue_lt_neg1 {n : Nat} (A : Matrix (Fin n) (Fin n) ℝ)
  (h_det : A.det ≠ 0)
  (h_pos : ∃ (λ : ℝ) (v : Fin n → ℝ), v ≠ 0 ∧ A.mulVec v = λ • v ∧ λ > 1)
  (h_neg : ∃ (μ : ℝ) (w : Fin n → ℝ), w ≠ 0 ∧ A.mulVec w = μ • w ∧ μ < -1) :
  IsCoveringMap (fun x : Fin n → ℝ => A.mulVec x) := by sorry