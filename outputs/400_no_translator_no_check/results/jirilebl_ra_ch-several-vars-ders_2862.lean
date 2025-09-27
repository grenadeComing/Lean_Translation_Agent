import Mathlib

open Metric Set

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]

variable {f : E → ℝ} {s : Set E}

/-- If f is differentiable on s, its derivative fderiv is continuous on s, s is compact, and
    the operator norm of fderiv is bounded on s, then f is Lipschitz on s. -/
lemma differentiable_on.continuous_fderiv_bounded_on_compact.implies_lipschitz_on_of_bounded_fderiv
  (h_diff : DifferentiableOn ℝ f s)
  (h_cont : ContinuousOn (fderiv ℝ f) s)
  (h_compact : IsCompact s)
  (h_bound : ∃ M, 0 ≤ M ∧ ∀ x ∈ s, ‖(fderiv ℝ f x)‖ ≤ M) :
  ∃ M, 0 ≤ M ∧ LipschitzOnWith M f s := by sorry
