import Mathlib
open Set Fin Filter Function
open scoped NNReal Topology

/-- Let f : R^n -> R be differentiable with grad f continuous. Show f is Lipschitz on compact subsets if grad f is bounded on those subsets. More precisely: Let E be a finite-dimensional normed real vector space, s a compact subset of E, U an open set with s ⊆ U. Let f : E → ℝ be differentiable on U with continuous derivative fderiv on U. If there exists M ≥ 0 such that for all x ∈ s, ‖fderiv ℝ f x‖₊ ≤ M, then f is Lipschitz on s with constant M (i.e., LipschitzOnWith M f s). -/
theorem lipschitzOnWith_of_nnnorm_fderiv_le_of_isCompact {E : Type*} [NormedAddCommGroup E]
    [NormedSpace ℝ E] [FiniteDimensional ℝ E] {s : Set E} {f : E → ℝ} {U : Set E} (hs : IsCompact s)
    (hU : IsOpen U) (h₁ : s ⊆ U) (h₂ : DifferentiableOn ℝ f U) (h₃ : ContinuousOn (fderiv ℝ f) U)
    {M : ℝ≥0} (h₄ : ∀ x ∈ s, ‖fderiv ℝ f x‖₊ ≤ M) : LipschitzOnWith M f s := by sorry