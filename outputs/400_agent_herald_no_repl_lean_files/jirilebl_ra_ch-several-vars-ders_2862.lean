import Mathlib

open Set

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable {f : E → ℝ} {s : Set E}

theorem differentiable_on.lipschitz_on_of_bounded_fderiv
  {M : ℝ} (hf : DifferentiableOn ℝ f s)
  (hcont : ContinuousOn (fun x => fderiv ℝ f x) s)
  (hbound : 0 ≤ M ∧ ∀ x ∈ s, ‖(fderiv ℝ f x : E →L[ℝ] ℝ)‖ ≤ M)
  (hs : IsCompact s) : LipschitzOnWith M f s := by sorry
