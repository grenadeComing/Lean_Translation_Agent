import Mathlib

/-!
Let E be a finite-dimensional normed real vector space. Let f : E → ℝ be differentiable on a set s and
suppose the Fréchet derivative map x ↦ fderiv ℝ f x is bounded on s. Then f is Lipschitz on s.
-/

theorem differentiable_on.lipschitz_on_of_bounded_fderiv_on {E : Type*} [NormedAddCommGroup E]
  [NormedSpace ℝ E] [FiniteDimensional ℝ E] {s : Set E} {f : E → ℝ}
  (hd : DifferentiableOn ℝ f s) (hbound : ∃ M, ∀ x ∈ s, ‖fderiv ℝ f x‖ ≤ M) :
  ∃ M, LipschitzOnWith M f s := by sorry
