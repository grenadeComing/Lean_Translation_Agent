import Mathlib

open Set Metric

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

/-- If f : E → ℝ is differentiable on s and the derivative is bounded on s (a compact set),
    then f is Lipschitz on s. -/
theorem differentiable_on.lipschitz_on_of_bounded_fderiv {f : E → ℝ} {s : Set E}
  (h_diff : DifferentiableOn ℝ f s)
  (h_bound : ∃ C : ℝ, 0 ≤ C ∧ ∀ x ∈ s, ‖fderiv ℝ f x‖ ≤ C)
  (h_compact : IsCompact s) : ∃ K : NNReal, LipschitzOnWith K f s := by
  -- proof omitted
  sorry
