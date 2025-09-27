import Mathlib

/-
For each θ ∈ ℝ, the reflection of ℝ^2 across the line through the origin making angle θ with the x-axis is a linear operator, and its matrix H_θ is an improper orthogonal matrix (i.e., H_θ ∈ O(2) and det H_θ = -1).
-/

open Matrix

noncomputable section

/-- The 2x2 matrix of the reflection across the line making angle θ with the x-axis. -/
noncomputable def H (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  ![![Real.cos (2 * θ), Real.sin (2 * θ)], ![Real.sin (2 * θ), -Real.cos (2 * θ)]]

theorem H_linear (θ : ℝ) :
  ∀ (v w : Fin 2 → ℝ) (a b : ℝ), (H θ).mulVec (a • v + b • w) = a • (H θ).mulVec v + b • (H θ).mulVec w := by
  intros v w a b
  simp [mulVec_add, mulVec_smul]

theorem H_is_orthogonal (θ : ℝ) : (H θ)ᵀ * (H θ) = (1 : Matrix (Fin 2) (Fin 2) ℝ) := by
  sorry

theorem H_det_neg_one (θ : ℝ) : (H θ).det = -1 := by
  sorry

end
