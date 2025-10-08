import Mathlib

open Set

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] {s : Set E} {f : E → ℝ}

/-- If the (Fréchet) derivative of f is bounded by K (a nonnegative real) on s, then f is Lipschitz on s. -/
theorem fderiv_bounded_on.lipschitz_on_with (K : NNReal)
  (h_bound : ∀ x ∈ s, ‖(fderiv ℝ f x : E →L[ℝ] ℝ)‖ ≤ (K : ℝ)) :
  LipschitzOnWith K f s := by sorry
